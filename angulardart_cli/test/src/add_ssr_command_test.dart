import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:angulardart_cli/src/templates.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

/// Test harness that runs the add-ssr logic directly without CLI overhead.
class AddSsrTestHarness {
  final List<String> messages = [];

  static const _usage = 'ngdart add ssr';

  Future<void> run({required Directory projectDir}) async {
    final pubspecFile = File(path.join(projectDir.path, 'pubspec.yaml'));

    if (!pubspecFile.existsSync()) {
      throw UsageException(
        'pubspec.yaml not found. Run this command from the root of an AngularDart project.',
        _usage,
      );
    }

    var pubspecContent = await pubspecFile.readAsString();

    if (!pubspecContent.contains('angulardart:')) {
      throw UsageException(
        'This does not appear to be an AngularDart project (angulardart not found in dependencies).',
        _usage,
      );
    }

    if (pubspecContent.contains('angulardart_seo:')) {
      throw UsageException(
        'Cannot add SSR to a project that already has SEO support. Use --ssr with ngdart new instead.',
        _usage,
      );
    }

    if (pubspecContent.contains('angulardart_server:')) {
      messages.add('SSR is already enabled in this project.');
      return;
    }

    final mainFile = File(path.join(projectDir.path, 'web', 'main.dart'));
    if (!mainFile.existsSync()) {
      throw UsageException(
        'web/main.dart not found. Run this command from the root of an AngularDart project.',
        _usage,
      );
    }

    messages.add('Adding SSR support...');

    // 1. Modify pubspec.yaml
    if (!pubspecContent.contains('angulardart_server:')) {
      pubspecContent = pubspecContent.replaceFirst(
        'dependencies:',
        "dependencies:\n  angulardart_server: '>=1.2.0 <2.0.0'",
      );
      messages.add('  Added angulardart_server');
    }

    if (!pubspecContent.contains('web:')) {
      pubspecContent = pubspecContent.replaceFirst(
        'angulardart_server:',
        "angulardart_server: '>=1.2.0 <2.0.0'\n  web: '>=1.0.0 <2.0.0'",
      );
      messages.add('  Added web');
    }

    await pubspecFile.writeAsString(pubspecContent);

    // 2. Modify build.yaml
    final buildYaml = File(path.join(projectDir.path, 'build.yaml'));
    if (buildYaml.existsSync()) {
      var buildContent = await buildYaml.readAsString();
      if (!buildContent.contains('web/main.server.dart')) {
        buildContent = buildContent.replaceFirst(
          '- web/main.dart',
          '- web/main.dart\n          - web/main.server.dart',
        );
        await buildYaml.writeAsString(buildContent);
        messages.add('  Updated build.yaml');
      }
    }

    // 3. Modify index.html
    final indexHtml = File(path.join(projectDir.path, 'web', 'index.html'));
    if (indexHtml.existsSync()) {
      var htmlContent = await indexHtml.readAsString();
      if (!htmlContent.contains('ng-client-context')) {
        htmlContent = htmlContent.replaceAll(
          '<html',
          '<html ng-client-context="csr"',
        );
        await indexHtml.writeAsString(htmlContent);
        messages.add('  Updated web/index.html');
      }
    }

    // 4. Transform main.dart
    var mainContent = await mainFile.readAsString();

    if (mainContent.contains('hydrateApplication')) {
      messages.add('web/main.dart already has SSR support.');
    } else {
      final factoryMatch = RegExp(r'runApp\((.+?)\)').firstMatch(mainContent);
      final factoryArg = factoryMatch != null ? factoryMatch.group(1)!.trim() : 'ng.AppComponentNgFactory';

      // Extract createInjector if present
      final injectorMatch = RegExp(r',\s*createInjector:\s*(\w+)').firstMatch(factoryArg);
      final injectorName = injectorMatch?.group(1);

      String newMain;
      if (injectorName != null) {
        final cleanFactory = factoryArg.replaceFirst(', createInjector: $injectorName', '').trim();
        newMain = '''void main() async {
  final isServerRendered =
      web.window.document.documentElement?.getAttribute('ng-server-context') == 'ssr';

  if (isServerRendered) {
    await hydrateApplication($cleanFactory, createInjector: $injectorName);
  } else {
    runApp($cleanFactory, createInjector: $injectorName);
  }
}''';
      } else {
        newMain = '''void main() async {
  final isServerRendered =
      web.window.document.documentElement?.getAttribute('ng-server-context') == 'ssr';

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
      final hasWebImport = mainContent.contains("import 'package:web/web.dart' as web") ||
          mainContent.contains("import 'dart:js_interop' as web");

      if (!hasServerImport) {
        mainContent = "import 'package:angulardart_server/angulardart_server.dart';\n$mainContent";
      }

      if (!hasWebImport) {
        mainContent = "import 'package:web/web.dart' as web;\n$mainContent";
      }

      await mainFile.writeAsString(mainContent);
      messages.add('  Updated web/main.dart');
    }

    // 5. Create main.server.dart
    final mainServerFile = File(path.join(projectDir.path, 'web', 'main.server.dart'));
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
      messages.add('  Created web/main.server.dart');
    }

    // 6. Create bin/server.dart
    final binDir = Directory(path.join(projectDir.path, 'bin'));
    await binDir.create(recursive: true);
    final serverBin = File(path.join(binDir.path, 'server.dart'));
    if (!serverBin.existsSync()) {
      await serverBin.writeAsString(Templates.projectMainServerDartFixed);
      messages.add('  Created bin/server.dart');
    }

    // 7. Create platform_dom files
    final libDir = Directory(path.join(projectDir.path, 'lib'));
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
        messages.add('  Created lib/${entry.key}');
      }
    }

    messages.add('');
    messages.add('SSR support added successfully!');
    messages.add('');
    messages.add('Next steps:');
    messages.add('  1. dart pub get');
    messages.add('  2. # Développement (client uniquement) :');
    messages.add('  3. dart run build_runner serve');
    messages.add('  4. # Build SSR :');
    messages.add('  5. dart run build_runner build web');
    messages.add('  6. dart bin/server.dart');
  }
}

Directory _createBasicProject(String path) {
  final projectDir = Directory(path);
  projectDir.createSync(recursive: true);

  File('${projectDir.path}/pubspec.yaml').writeAsStringSync('''name: test_app
description: Test App
version: 0.0.1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  angulardart: '>=9.0.0 <10.0.0'

dev_dependencies:
  build_runner: '>=2.16.0 <3.0.0'
''');

  Directory('${projectDir.path}/web').createSync(recursive: true);
  File('${projectDir.path}/web/main.dart').writeAsStringSync('''import 'package:angulardart/angulardart.dart';

void main() {
  runApp(ng.AppComponentNgFactory);
}
''');

  return projectDir;
}

void main() {
  group('AddSsrCommand - validation', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('ngdart_add_ssr_test_');
    });

    tearDownAll(() async {
      if (tempDir.existsSync()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('rejects when pubspec.yaml is missing', () async {
      final projectDir = Directory('${tempDir.path}/no_pubspec');
      await projectDir.create();

      expect(
        () => AddSsrTestHarness().run(projectDir: projectDir),
        throwsA(isA<UsageException>()),
      );
    });

    test('rejects when angulardart is not in dependencies', () async {
      final pubspec = File('${tempDir.path}/no_angulardart/pubspec.yaml');
      await pubspec.parent.create();
      await pubspec.writeAsString('''name: test_app
dependencies:
  some_other_package: '>=1.0.0'
''');

      expect(
        () => AddSsrTestHarness().run(projectDir: pubspec.parent),
        throwsA(isA<UsageException>()),
      );
    });

    test('rejects when SEO is already present', () async {
      final pubspec = File('${tempDir.path}/seo_project/pubspec.yaml');
      await pubspec.parent.create();
      await pubspec.writeAsString('''name: seo_app
dependencies:
  angulardart: '>=9.0.0 <10.0.0'
  angulardart_seo: '>=1.0.0 <2.0.0'
''');

      expect(
        () => AddSsrTestHarness().run(projectDir: pubspec.parent),
        throwsA(isA<UsageException>()),
      );
    });

    test('exits cleanly when SSR is already enabled', () async {
      final project = _createBasicProject('${tempDir.path}/ssr_project');
      var content = await File('${project.path}/pubspec.yaml').readAsString();
      content = content.replaceFirst('dependencies:', "dependencies:\n  angulardart_server: '>=1.2.0 <2.0.0'");
      await File('${project.path}/pubspec.yaml').writeAsString(content);

      final harness = AddSsrTestHarness();
      await harness.run(projectDir: project);
      expect(harness.messages, contains('SSR is already enabled in this project.'));
    });

    test('rejects when web/main.dart is missing', () async {
      final pubspec = File('${tempDir.path}/no_main/pubspec.yaml');
      await pubspec.parent.create();
      await pubspec.writeAsString('''name: no_main_app
dependencies:
  angulardart: '>=9.0.0 <10.0.0'
''');

      expect(
        () => AddSsrTestHarness().run(projectDir: pubspec.parent),
        throwsA(isA<UsageException>()),
      );
    });
  });

  group('AddSsrCommand - file modifications', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('ngdart_add_ssr_mod_test_');
    });

    tearDownAll(() async {
      if (tempDir.existsSync()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('adds angulardart_server and web to pubspec.yaml', () async {
      final project = _createBasicProject('${tempDir.path}/pubspec_mod_test');

      await AddSsrTestHarness().run(projectDir: project);

      final pubspec = File('${project.path}/pubspec.yaml').readAsStringSync();
      expect(pubspec, contains("angulardart_server: '>=1.2.0 <2.0.0'"));
      expect(pubspec, contains("web: '>=1.0.0 <2.0.0'"));
    });

    test('updates build.yaml to include main.server.dart', () async {
      final project = _createBasicProject('${tempDir.path}/build_yaml_test');
      File('${project.path}/build.yaml').writeAsStringSync(r'''targets:
  \$default:
    builders:
      build_web_compilers|entrypoint:
        generate_for:
          - web/main.dart
        release_options:
          dart2js_args:
            - -O4
''');

      await AddSsrTestHarness().run(projectDir: project);

      final buildYaml = File('${project.path}/build.yaml').readAsStringSync();
      expect(buildYaml, contains('web/main.server.dart'));
    });

    test('updates index.html with ng-client-context', () async {
      final project = _createBasicProject('${tempDir.path}/index_html_test');
      File('${project.path}/web/index.html').writeAsStringSync('''<!DOCTYPE html>
<html lang="en">
<head><title>Test</title></head>
<body><app-root></app-root></body>
</html>
''');

      await AddSsrTestHarness().run(projectDir: project);

      final indexHtml = File('${project.path}/web/index.html').readAsStringSync();
      expect(indexHtml, contains('ng-client-context="csr"'));
    });

    test('transforms main.dart with hydration logic', () async {
      final project = _createBasicProject('${tempDir.path}/main_transform_test');

      await AddSsrTestHarness().run(projectDir: project);

      final mainDart = File('${project.path}/web/main.dart').readAsStringSync();
      expect(mainDart, contains('hydrateApplication'));
      expect(mainDart, contains("getAttribute('ng-server-context')"));
      expect(mainDart, contains("import 'package:angulardart_server/angulardart_server.dart'"));
      expect(mainDart, contains("import 'package:web/web.dart' as web"));
    });

    test('preserves createInjector in main.dart transformation', () async {
      final project = _createBasicProject('${tempDir.path}/injector_test');
      File('${project.path}/web/main.dart').writeAsStringSync('''import 'package:angulardart/angulardart.dart';

final InjectorFactory appInjector = myApp\$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: appInjector);
}
''');

      await AddSsrTestHarness().run(projectDir: project);

      final mainDart = File('${project.path}/web/main.dart').readAsStringSync();
      expect(mainDart, contains('hydrateApplication'));
      expect(mainDart, contains('createInjector: appInjector'));
    });

    test('creates web/main.server.dart', () async {
      final project = _createBasicProject('${tempDir.path}/server_test');

      await AddSsrTestHarness().run(projectDir: project);

      expect(File('${project.path}/web/main.server.dart').existsSync(), isTrue);
    });

    test('creates bin/server.dart', () async {
      final project = _createBasicProject('${tempDir.path}/bin_server_test');

      await AddSsrTestHarness().run(projectDir: project);

      expect(File('${project.path}/bin/server.dart').existsSync(), isTrue);
    });

    test('creates platform_dom files in lib/', () async {
      final project = _createBasicProject('${tempDir.path}/platform_dom_test');

      await AddSsrTestHarness().run(projectDir: project);

      expect(File('${project.path}/lib/platform_dom.dart').existsSync(), isTrue);
      expect(File('${project.path}/lib/platform_dom_browser.dart').existsSync(), isTrue);
      expect(File('${project.path}/lib/platform_dom_vm.dart').existsSync(), isTrue);
    });

    test('is idempotent - does not duplicate changes', () async {
      final project = _createBasicProject('${tempDir.path}/idempotent_test');

      await AddSsrTestHarness().run(projectDir: project);

      final pubspec = File('${project.path}/pubspec.yaml').readAsStringSync();
      // Should only have one angulardart_server entry
      expect(pubspec.split('angulardart_server:').length, equals(2));
    });
  });
}
