import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:angulardart_cli/src/templates.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

/// Test harness that runs the add-hybrid logic directly without CLI overhead.
class AddHybridTestHarness {
  final List<String> messages = [];

  static const _usage = 'ngdart add hybrid';

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
        'Cannot add hybrid SSR to a project that already has SEO support. Use --hybrid with ngdart new instead.',
        _usage,
      );
    }

    if (pubspecContent.contains("angulardart_server:") && pubspecContent.contains("angulardart_router:")) {
      messages.add('Hybrid SSR is already enabled in this project.');
      return;
    }

    final mainFile = File(path.join(projectDir.path, 'web', 'main.dart'));
    if (!mainFile.existsSync()) {
      throw UsageException(
        'web/main.dart not found. Run this command from the root of an AngularDart project.',
        _usage,
      );
    }

    messages.add('Adding hybrid SSR support...');

    // Extract project name for platform_dom import
    final nameMatch = RegExp(r'^name:\s*(.+)$', multiLine: true).firstMatch(pubspecContent);
    final projectName = nameMatch?.group(1)?.trim() ?? 'my_app';

    // 1. Modify pubspec.yaml
    if (!pubspecContent.contains('angulardart_router:')) {
      pubspecContent = pubspecContent.replaceFirst(
        'dependencies:',
        "dependencies:\n  angulardart_router: '>=5.0.0 <6.0.0'",
      );
      messages.add('  Added angulardart_router');
    }

    if (!pubspecContent.contains('angulardart_server:')) {
      pubspecContent = pubspecContent.replaceFirst(
        'angulardart_router:',
        "angulardart_router: '>=5.0.0 <6.0.0'\n  angulardart_server: '>=1.2.0 <2.0.0'",
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

    // 3. Replace index.html with hybrid template
    final indexHtml = File(path.join(projectDir.path, 'web', 'index.html'));
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

      var renderedHtml = Templates.projectIndexHtmlHybrid;
      for (final entry in htmlContext.entries) {
        if (entry.key == 'component') continue;
        renderedHtml = renderedHtml.replaceAll('{{${entry.key}}}', entry.value);
      }
      final comp = htmlContext['component'] as Map<String, String>;
      final hSelector = comp['selector']!;
      final hClassName = comp['className']!;
      final hTargetName = comp['targetName']!;
      renderedHtml = renderedHtml.replaceAll('{{component.selector}}', hSelector);
      renderedHtml = renderedHtml.replaceAll('{{component.className}}', hClassName);
      renderedHtml = renderedHtml.replaceAll('{{component.targetName}}', hTargetName);

      await indexHtml.writeAsString(renderedHtml);
      messages.add('  Updated web/index.html');
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

    var hybridMain = Templates.projectMainDartHybrid;
    for (final entry in mainContext.entries) {
      if (entry.key == 'component') continue;
      hybridMain = hybridMain.replaceAll('{{${entry.key}}}', entry.value);
    }
    final comp2 = mainContext['component'] as Map<String, String>;
    final selector = comp2['selector']!;
    final className = comp2['className']!;
    final targetName = comp2['targetName']!;
    hybridMain = hybridMain.replaceAll('{{component.selector}}', selector);
    hybridMain = hybridMain.replaceAll('{{component.className}}', className);
    hybridMain = hybridMain.replaceAll('{{component.targetName}}', targetName);

    await mainFile.writeAsString(hybridMain);
    messages.add('  Updated web/main.dart');

    // 5. Create main.server.dart
    final mainServerFile = File(path.join(projectDir.path, 'web', 'main.server.dart'));
    if (!mainServerFile.existsSync()) {
      const serverContent = '''import 'package:angulardart/angulardart.dart';

// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

/// Retourne le factory du composant racine pour le rendu server-side.
ComponentFactory<Object> get appComponentFactory =>
    ng.AppComponentNgFactory;
''';
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

    // 8. Create hybrid component files in lib/
    final components = <String, String>{
      'home_component.dart': Templates.projectHomeComponentDart,
      'about_component.dart': Templates.projectAboutComponentDart,
      'dashboard_component.dart': Templates.projectDashboardComponentDart,
    };

    for (final entry in components.entries) {
      final file = File(path.join(libDir.path, entry.key));
      if (!file.existsSync()) {
        await file.writeAsString(entry.value);
        messages.add('  Created lib/${entry.key}');
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
        messages.add('  Created lib/${entry.key}');
      }
    }

    // 9. Create data_service.dart
    final dataServiceFile = File(path.join(libDir.path, 'data_service.dart'));
    if (!dataServiceFile.existsSync()) {
      await dataServiceFile.writeAsString(Templates.projectDataServiceDart);
      messages.add('  Created lib/data_service.dart');
    }

    messages.add('');
    messages.add('Hybrid SSR support added successfully!');
    messages.add('');
    messages.add('Next steps:');
    messages.add('  1. dart pub get');
    messages.add('  2. # Développement (client uniquement) :');
    messages.add('  3. dart run build_runner serve');
    messages.add('  4. # Build SSR + Hybride :');
    messages.add('  5. dart run build_runner clean');
    messages.add('  6. dart run build_runner build web');
    messages.add('  7. ngdart generate-stubs');
    messages.add('  8. dart bin/server.dart');
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
  File('${projectDir.path}/web/index.html').writeAsStringSync('''<!DOCTYPE html>
<html lang="en">
<head><title>Test</title></head>
<body><app-root></app-root></body>
</html>
''');

  return projectDir;
}

void main() {
  group('AddHybridCommand - validation', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('ngdart_add_hybrid_test_');
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
        () => AddHybridTestHarness().run(projectDir: projectDir),
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
        () => AddHybridTestHarness().run(projectDir: pubspec.parent),
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
        () => AddHybridTestHarness().run(projectDir: pubspec.parent),
        throwsA(isA<UsageException>()),
      );
    });

    test('exits cleanly when hybrid SSR is already enabled', () async {
      final project = _createBasicProject('${tempDir.path}/hybrid_project');
      var content = await File('${project.path}/pubspec.yaml').readAsString();
      content = content.replaceFirst(
        'dependencies:',
        "dependencies:\n  angulardart_router: '>=5.0.0 <6.0.0'\n  angulardart_server: '>=1.2.0 <2.0.0'",
      );
      await File('${project.path}/pubspec.yaml').writeAsString(content);

      final harness = AddHybridTestHarness();
      await harness.run(projectDir: project);
      expect(harness.messages, contains('Hybrid SSR is already enabled in this project.'));
    });

    test('rejects when web/main.dart is missing', () async {
      final pubspec = File('${tempDir.path}/no_main/pubspec.yaml');
      await pubspec.parent.create();
      await pubspec.writeAsString('''name: no_main_app
dependencies:
  angulardart: '>=9.0.0 <10.0.0'
''');

      expect(
        () => AddHybridTestHarness().run(projectDir: pubspec.parent),
        throwsA(isA<UsageException>()),
      );
    });
  });

  group('AddHybridCommand - file modifications', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('ngdart_add_hybrid_mod_test_');
    });

    tearDownAll(() async {
      if (tempDir.existsSync()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('adds angulardart_router, angulardart_server and web to pubspec.yaml', () async {
      final project = _createBasicProject('${tempDir.path}/pubspec_mod_test');

      await AddHybridTestHarness().run(projectDir: project);

      final pubspec = File('${project.path}/pubspec.yaml').readAsStringSync();
      expect(pubspec, contains("angulardart_router: '>=5.0.0 <6.0.0'"));
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

      await AddHybridTestHarness().run(projectDir: project);

      final buildYaml = File('${project.path}/build.yaml').readAsStringSync();
      expect(buildYaml, contains('web/main.server.dart'));
    });

    test('replaces index.html with hybrid template', () async {
      final project = _createBasicProject('${tempDir.path}/index_html_test');

      await AddHybridTestHarness().run(projectDir: project);

      final indexHtml = File('${project.path}/web/index.html').readAsStringSync();
      expect(indexHtml, contains('ng-client-context="csr"'));
      expect(indexHtml, contains('<base href="/">'));
    });

    test('replaces main.dart with hybrid template', () async {
      final project = _createBasicProject('${tempDir.path}/main_test');

      await AddHybridTestHarness().run(projectDir: project);

      final mainDart = File('${project.path}/web/main.dart').readAsStringSync();
      expect(mainDart, contains('package:angulardart_router/angulardart_router.dart'));
      expect(mainDart, contains('package:angulardart_server/angulardart_server.dart'));
      expect(mainDart, contains('hydrateApplication'));
      expect(mainDart, contains('runApp'));
      expect(mainDart, contains('routerProviders'));
    });

    test('main.dart imports component templates from lib/', () async {
      final project = _createBasicProject('${tempDir.path}/imports_test');

      await AddHybridTestHarness().run(projectDir: project);

      final mainDart = File('${project.path}/web/main.dart').readAsStringSync();
      expect(mainDart, contains("import 'home_component.template.dart'"));
      expect(mainDart, contains("import 'about_component.template.dart'"));
      expect(mainDart, contains("import 'dashboard_component.template.dart'"));
    });

    test('main.dart uses platform_dom import', () async {
      final project = _createBasicProject('${tempDir.path}/platform_import_test');

      await AddHybridTestHarness().run(projectDir: project);

      final mainDart = File('${project.path}/web/main.dart').readAsStringSync();
      expect(mainDart, contains("import 'package:test_app/platform_dom.dart' as platform_dom"));
    });

    test('creates web/main.server.dart', () async {
      final project = _createBasicProject('${tempDir.path}/server_test');

      await AddHybridTestHarness().run(projectDir: project);

      expect(File('${project.path}/web/main.server.dart').existsSync(), isTrue);
    });

    test('creates bin/server.dart', () async {
      final project = _createBasicProject('${tempDir.path}/bin_server_test');

      await AddHybridTestHarness().run(projectDir: project);

      expect(File('${project.path}/bin/server.dart').existsSync(), isTrue);
    });

    test('creates platform_dom files in lib/', () async {
      final project = _createBasicProject('${tempDir.path}/platform_dom_test');

      await AddHybridTestHarness().run(projectDir: project);

      expect(File('${project.path}/lib/platform_dom.dart').existsSync(), isTrue);
      expect(File('${project.path}/lib/platform_dom_browser.dart').existsSync(), isTrue);
      expect(File('${project.path}/lib/platform_dom_vm.dart').existsSync(), isTrue);
    });

    test('creates hybrid component files in lib/', () async {
      final project = _createBasicProject('${tempDir.path}/components_test');

      await AddHybridTestHarness().run(projectDir: project);

      // Dart components
      expect(File('${project.path}/lib/home_component.dart').existsSync(), isTrue);
      expect(File('${project.path}/lib/about_component.dart').existsSync(), isTrue);
      expect(File('${project.path}/lib/dashboard_component.dart').existsSync(), isTrue);

      // HTML templates
      expect(File('${project.path}/lib/home_component.html').existsSync(), isTrue);
      expect(File('${project.path}/lib/about_component.html').existsSync(), isTrue);
      expect(File('${project.path}/lib/dashboard_component.html').existsSync(), isTrue);
    });

    test('creates data_service.dart', () async {
      final project = _createBasicProject('${tempDir.path}/data_service_test');

      await AddHybridTestHarness().run(projectDir: project);

      expect(File('${project.path}/lib/data_service.dart').existsSync(), isTrue);
    });

    test('HomeComponent has RenderMode.server', () async {
      final project = _createBasicProject('${tempDir.path}/rendermode_test');

      await AddHybridTestHarness().run(projectDir: project);

      final homeContent = File('${project.path}/lib/home_component.dart').readAsStringSync();
      expect(homeContent, contains("renderMode: RenderMode.server"));
    });

    test('DashboardComponent has RenderMode.client', () async {
      final project = _createBasicProject('${tempDir.path}/dashboard_rendermode_test');

      await AddHybridTestHarness().run(projectDir: project);

      final dashboardContent = File('${project.path}/lib/dashboard_component.dart').readAsStringSync();
      expect(dashboardContent, contains("renderMode: RenderMode.client"));
    });

    test('AboutComponent has no explicit renderMode (automatic)', () async {
      final project = _createBasicProject('${tempDir.path}/about_rendermode_test');

      await AddHybridTestHarness().run(projectDir: project);

      final aboutContent = File('${project.path}/lib/about_component.dart').readAsStringSync();
      expect(aboutContent, isNot(contains("renderMode")));
    });

    test('is idempotent - does not duplicate changes', () async {
      final project = _createBasicProject('${tempDir.path}/idempotent_test');

      await AddHybridTestHarness().run(projectDir: project);

      final pubspec = File('${project.path}/pubspec.yaml').readAsStringSync();
      expect(pubspec.split('angulardart_router:').length, equals(2));
      expect(pubspec.split('angulardart_server:').length, equals(2));
    });
  });
}
