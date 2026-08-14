import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart' as path;

import '../templates.dart';
import 'command.dart';

class AddSsrCommand extends NgDartCommand {
  @override
  String get name => 'ssr';

  @override
  String get description => 'Add server-side rendering support to an existing project.';

  @override
  String get invocation => 'ngdart add ssr';

  @override
  Future<void> runCommand() async {
    final pubspecFile = File('pubspec.yaml');
    if (!pubspecFile.existsSync()) {
      throw UsageException(
        'pubspec.yaml not found. Run this command from the root of an AngularDart project.',
        usage,
      );
    }

    var pubspecContent = await pubspecFile.readAsString();

    if (!pubspecContent.contains('angulardart:')) {
      throw UsageException(
        'This does not appear to be an AngularDart project (angulardart not found in dependencies).',
        usage,
      );
    }

    if (pubspecContent.contains('angulardart_server:')) {
      print('SSR is already enabled in this project.');
      return;
    }

    final mainFile = File('web/main.dart');
    if (!mainFile.existsSync()) {
      throw UsageException(
        'web/main.dart not found. Run this command from the root of an AngularDart project.',
        usage,
      );
    }

    print('Adding SSR support...');

    // Extract project name for platform_dom import
    final nameMatch = RegExp(r'^name:\s*(.+)$', multiLine: true).firstMatch(pubspecContent);

    // 1. Modify pubspec.yaml
    if (!pubspecContent.contains('angulardart_server:')) {
      pubspecContent = pubspecContent.replaceFirst(
        'dependencies:',
        "dependencies:\n  angulardart_server: '>=1.2.0 <2.0.0'",
      );
      print('  Added angulardart_server');
    }

    await pubspecFile.writeAsString(pubspecContent);

    // 2. Modify build.yaml
    final buildYaml = File('build.yaml');
    if (buildYaml.existsSync()) {
      var buildContent = await buildYaml.readAsString();
      if (!buildContent.contains('web/main.server.dart')) {
        buildContent = buildContent.replaceFirst(
          '- web/main.dart',
          '- web/main.dart\n          - web/main.server.dart',
        );
        await buildYaml.writeAsString(buildContent);
        print('  Updated build.yaml');
      }
    }

    // 3. Modify index.html
    final indexHtml = File('web/index.html');
    if (indexHtml.existsSync()) {
      var htmlContent = await indexHtml.readAsString();
      if (!htmlContent.contains('ng-client-context')) {
        htmlContent = htmlContent.replaceAll(
          '<html',
          '<html ng-client-context="csr"',
        );
        await indexHtml.writeAsString(htmlContent);
        print('  Updated web/index.html');
      }
    }

    // 4. Transform main.dart
    var mainContent = await mainFile.readAsString();

    if (mainContent.contains('hydrateApplication')) {
      print('web/main.dart already has SSR support.');
    } else {
      final factoryMatch = RegExp(r'runApp\((.+?)\)').firstMatch(mainContent);
      final factoryArg = factoryMatch != null ? factoryMatch.group(1)!.trim() : 'ng.AppComponentNgFactory';

      // Extract createInjector if present
      final injectorMatch = RegExp(r',\s*createInjector:\s*(\w+)').firstMatch(factoryArg);
      final injectorName = injectorMatch?.group(1);

      String newMain;
      final hasPlatformImport = mainContent.contains("import 'platform_dom.dart'") ||
          mainContent.contains("import '/platform_dom.dart'");

      if (injectorName != null) {
        final cleanFactory = factoryArg.replaceFirst(', createInjector: $injectorName', '').trim();
        newMain = '''void main() async {
  final isServerRendered =
      (platform_dom.window as dynamic).document.documentElement?.getAttribute('ng-server-context') == 'ssr';

  if (isServerRendered) {
    await hydrateApplication($cleanFactory, createInjector: $injectorName);
  } else {
    runApp($cleanFactory, createInjector: $injectorName);
  }
}''';
      } else {
        newMain = '''void main() async {
  final isServerRendered =
      (platform_dom.window as dynamic).document.documentElement?.getAttribute('ng-server-context') == 'ssr';

  if (isServerRendered) {
    await hydrateApplication($factoryArg);
  } else {
    runApp($factoryArg);
  }
}''';
      }

      // Replace void main() block
      final mainBlockPattern = RegExp(r'void\s+main\(\)\s*\{[^}]*runApp\([^)]+\)[^}]*\}', multiLine: true);
      if (mainBlockPattern.hasMatch(mainContent)) {
        mainContent = mainContent.replaceFirst(mainBlockPattern, newMain);
      }

      // Add imports
      final hasServerImport = mainContent.contains("import 'package:angulardart_server/");

      if (!hasServerImport) {
        mainContent = "import 'package:angulardart_server/angulardart_server.dart';\n$mainContent";
      }

      if (!hasPlatformImport) {
        final projectName = nameMatch?.group(1)?.trim() ?? 'my_app';
        mainContent = "import 'package:$projectName/platform_dom.dart' as platform_dom;\n$mainContent";
      }

      await mainFile.writeAsString(mainContent);
      print('  Updated web/main.dart');
    }

    // 5. Create main.server.dart
    final mainServerFile = File('web/main.server.dart');
    if (!mainServerFile.existsSync()) {
      var serverContent = '';
      final factoryMatch = RegExp(r'ng\.(\w+NgFactory)').firstMatch(mainContent);
      if (factoryMatch != null) {
        final factoryName = factoryMatch.group(1)!;
        serverContent = '''import 'package:angulardart/angulardart.dart';

// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

/// Retourne le factory du composant racine pour le rendu server-side.
ComponentFactory<Object> get appComponentFactory =>
    ng.${factoryName}NgFactory;
''';
      } else {
        serverContent = '''import 'package:angulardart/angulardart.dart';

// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

/// Retourne le factory du composant racine pour le rendu server-side.
ComponentFactory<Object> get appComponentFactory =>
    ng.AppComponentNgFactory;
''';
      }
      await mainServerFile.writeAsString(serverContent);
      print('  Created web/main.server.dart');
    }

    // 6. Create bin/server.dart
    final binDir = Directory('bin');
    await binDir.create(recursive: true);
    final serverBin = File('bin/server.dart');
    if (!serverBin.existsSync()) {
      await serverBin.writeAsString(Templates.projectMainServerDartFixed);
      print('  Created bin/server.dart');
    }

    // 7. Create platform_dom files
    final libDir = Directory('lib');
    await libDir.create(recursive: true);

    final platformDomFiles = <String, String>{
      'platform_dom.dart': Templates.projectPlatformDom,
      'platform_dom_browser.dart': Templates.projectPlatformDomBrowser,
      'platform_dom_vm.dart': Templates.projectPlatformDomVm,
    };

    for (final entry in platformDomFiles.entries) {
      final file = File(path.join(libDir.path, entry.key));
      if (!file.existsSync()) {
        await file.writeAsString(entry.value);
        print('  Created lib/${entry.key}');
      }
    }

    print('');
    print('SSR support added successfully!');
    print('');
    print('Next steps:');
    print('  1. dart pub get');
    print('  2. # Développement (client uniquement) :');
    print('  3. dart run build_runner serve');
    print('  4. # Build SSR :');
    print('  5. dart run build_runner build web --release');
    print('  6. dart bin/server.dart');
  }
}
