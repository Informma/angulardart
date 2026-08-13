import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart' as path;

import '../templates.dart';
import 'command.dart';

class AddHybridCommand extends NgDartCommand {
  @override
  String get name => 'hybrid';

  @override
  String get description => 'Add hybrid SSR + routing + RenderMode support to an existing project.';

  @override
  String get invocation => 'ngdart add hybrid';

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

    if (pubspecContent.contains('angulardart_server:') && pubspecContent.contains('angulardart_router:')) {
      print('Hybrid SSR is already enabled in this project.');
      return;
    }

    final mainFile = File('web/main.dart');
    if (!mainFile.existsSync()) {
      throw UsageException(
        'web/main.dart not found. Run this command from the root of an AngularDart project.',
        usage,
      );
    }

    print('Adding hybrid SSR support...');

    // Extract project name for platform_dom import
    final nameMatch = RegExp(r'^name:\s*(.+)$', multiLine: true).firstMatch(pubspecContent);
    final projectName = nameMatch?.group(1)?.trim() ?? 'my_app';

    // 1. Modify pubspec.yaml
    if (!pubspecContent.contains('angulardart_router:')) {
      pubspecContent = pubspecContent.replaceFirst(
        'dependencies:',
        "dependencies:\n  angulardart_router: '>=5.0.0 <6.0.0'",
      );
      print('  Added angulardart_router');
    }

    if (!pubspecContent.contains('angulardart_server:')) {
      pubspecContent = pubspecContent.replaceFirst(
        'angulardart_router:',
        "angulardart_router: '>=5.0.0 <6.0.0'\n  angulardart_server: '>=1.2.0 <2.0.0'",
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

    // 3. Replace index.html with hybrid template
    final indexHtml = File('web/index.html');
    if (indexHtml.existsSync()) {
      var htmlContext = <String, dynamic>{
        'name': projectName,
        'description': '',
        'component': <String, String>{
          'selector': 'app-root',
          'className': 'AppComponent',
          'targetName': 'app_component',
        },
      };

      // Try to extract component info from existing main.dart for the template
      if (mainFile.existsSync()) {
        final mainContent = await mainFile.readAsString();
        final selectorMatch = RegExp(r"selector:\s*'([^']+)'").firstMatch(mainContent);
        final classNameMatch = RegExp(r'class\s+(\w+)').firstMatch(mainContent);

        if (selectorMatch != null) {
          (htmlContext['component'] as Map<String, String>)['selector'] = selectorMatch.group(1)!;
        }
        if (classNameMatch != null) {
          (htmlContext['component'] as Map<String, String>)['className'] = classNameMatch.group(1)!;
        }
      }

      var renderedHtml = Templates.projectIndexHtmlHybrid;
      for (final entry in htmlContext.entries) {
        if (entry.key == 'component') continue;
        renderedHtml = renderedHtml.replaceAll('{{${entry.key}}}', entry.value);
      }
      final comp = htmlContext['component'] as Map<String, String>;
      final selector = comp['selector']!;
      final className = comp['className']!;
      final targetName = comp['targetName']!;
      renderedHtml = renderedHtml.replaceAll('{{component.selector}}', selector);
      renderedHtml = renderedHtml.replaceAll('{{component.className}}', className);
      renderedHtml = renderedHtml.replaceAll('{{component.targetName}}', targetName);

      await indexHtml.writeAsString(renderedHtml);
      print('  Updated web/index.html');
    }

    // 4. Replace main.dart with hybrid template
    var mainContext = <String, dynamic>{
      'name': projectName,
      'description': '',
      'platformDomImportStatement': "import 'package:$projectName/platform_dom.dart' as platform_dom;",
      'component': <String, String>{
        'selector': 'app-root',
        'className': 'AppComponent',
        'targetName': 'app_component',
      },
    };

    // Try to extract component info from existing main.dart
    if (mainFile.existsSync()) {
      final mainContent = await mainFile.readAsString();
      final selectorMatch = RegExp(r"selector:\s*'([^']+)'").firstMatch(mainContent);
      final classNameMatch = RegExp(r'class\s+(\w+)').firstMatch(mainContent);

      if (selectorMatch != null) {
        (mainContext['component'] as Map<String, String>)['selector'] = selectorMatch.group(1)!;
      }
      if (classNameMatch != null) {
        (mainContext['component'] as Map<String, String>)['className'] = classNameMatch.group(1)!;
      }
    }

    var hybridMain = Templates.projectMainDartHybrid;
    for (final entry in mainContext.entries) {
      if (entry.key == 'component') continue;
      hybridMain = hybridMain.replaceAll('{{${entry.key}}}', entry.value);
    }
    final comp = mainContext['component'] as Map<String, String>;
    final selector = comp['selector']!;
    final className = comp['className']!;
    final targetName = comp['targetName']!;
    hybridMain = hybridMain.replaceAll('{{component.selector}}', selector);
    hybridMain = hybridMain.replaceAll('{{component.className}}', className);
    hybridMain = hybridMain.replaceAll('{{component.targetName}}', targetName);

    await mainFile.writeAsString(hybridMain);
    print('  Updated web/main.dart');

    // 5. Create main.server.dart
    final mainServerFile = File('web/main.server.dart');
    if (!mainServerFile.existsSync()) {
      final serverContent = '''import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_server/angulardart_server.dart';

// ignore: uri_has_not_been_generated
import 'package:$projectName/app_component.template.dart' as app;
// ignore: uri_has_not_been_generated
import 'main.server.template.dart' as ng;

/// Retourne le factory du composant racine pour le rendu server-side.
ComponentFactory<Object> get appComponentFactory =>
    app.${comp['className']}NgFactory;

/// Injecteur applicatif (routing) pour le rendu server-side.
@GenerateInjector([
  routerProviders,
  ClassProvider(PlatformLocation, useClass: ServerPlatformLocation),
  ValueProvider.forToken(appBaseHref, '/'),
])
final InjectorFactory appInjector = ng.appInjector\$Injector;
''';
      await mainServerFile.writeAsString(serverContent);
      print('  Created web/main.server.dart');
    }

    // 6. Create bin/server.dart
    final binDir = Directory('bin');
    await binDir.create(recursive: true);
    final serverBin = File('bin/server.dart');
    if (!serverBin.existsSync()) {
      await serverBin.writeAsString(Templates.projectMainServerDartRouting);
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

    // 8. Create hybrid component files in lib/
    final appComponentFile = File(path.join(libDir.path, 'app_component.dart'));
    if (!appComponentFile.existsSync()) {
      var appComponent = Templates.projectAppComponentDart;
      appComponent = appComponent.replaceAll('{{component.className}}', comp['className']!);
      appComponent = appComponent.replaceAll('{{component.selector}}', comp['selector']!);
      await appComponentFile.writeAsString(appComponent);
      print('  Created lib/app_component.dart');
    }

    final appComponentHtmlFile = File(path.join(libDir.path, 'app_component.html'));
    if (!appComponentHtmlFile.existsSync()) {
      await appComponentHtmlFile.writeAsString(Templates.projectAppComponentHtml);
      print('  Created lib/app_component.html');
    }

    final components = <String, String>{
      'home_component.dart': Templates.projectHomeComponentDart,
      'about_component.dart': Templates.projectAboutComponentDart,
      'dashboard_component.dart': Templates.projectDashboardComponentDart,
    };

    for (final entry in components.entries) {
      final file = File(path.join(libDir.path, entry.key));
      if (!file.existsSync()) {
        await file.writeAsString(entry.value);
        print('  Created lib/${entry.key}');
      }
    }

    final componentHtmls = <String, String>{
      'home_component.html': Templates.projectHomeComponentHtml,
      'about_component.html': Templates.projectAboutComponentHtml,
      'dashboard_component.html': Templates.projectDashboardComponentHtml,
    };

    for (final entry in componentHtmls.entries) {
      final file = File(path.join(libDir.path, entry.key));
      if (!file.existsSync()) {
        await file.writeAsString(entry.value);
        print('  Created lib/${entry.key}');
      }
    }

    // 9. Create data_service.dart
    final dataServiceFile = File(path.join(libDir.path, 'data_service.dart'));
    if (!dataServiceFile.existsSync()) {
      await dataServiceFile.writeAsString(Templates.projectDataServiceDart);
      print('  Created lib/data_service.dart');
    }

    print('');
    print('Hybrid SSR support added successfully!');
    print('');
    print('Next steps:');
    print('  1. dart pub get');
    print('  2. # Développement (client uniquement) :');
    print('  3. dart run build_runner serve');
    print('  4. # Build SSR + Hybride :');
    print('  5. dart run build_runner clean');
    print('  6. dart run build_runner build web');
    print('  7. ngdart generate-stubs');
    print('  8. dart bin/server.dart');
  }
}
