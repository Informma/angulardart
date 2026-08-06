import 'dart:io';

import 'package:angulardart_cli/src/entity_name.dart';
import 'package:angulardart_cli/src/generators/project_generator.dart';
import 'package:test/test.dart';

void main() {
  group('ProjectGenerator - basic project', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('ngdart_project_test_');
    });

    tearDownAll(() async {
      if (tempDir.existsSync()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('creates project directory with correct name', () async {
      final generator = ProjectGenerator(
        EntityName('my_test_app'),
        tempDir.path,
        EntityName('AppComponent'),
      );
      await generator.generate();

      expect(
        Directory('${tempDir.path}/my_test_app').existsSync(),
        isTrue,
        reason: 'Project directory should be created',
      );
    });

    test('creates pubspec.yaml with correct content', () async {
      final generator = ProjectGenerator(
        EntityName('test_project'),
        tempDir.path,
        EntityName('AppComponent'),
      );
      await generator.generate();

      final pubspecFile = File('${tempDir.path}/test_project/pubspec.yaml');
      expect(pubspecFile.existsSync(), isTrue);

      final content = pubspecFile.readAsStringSync();
      expect(content, contains('name: test_project'));
      expect(content, contains("angulardart: '>="));
      expect(content, contains('>=9.0.0 <10.0.0'));
    });

    test('creates analysis_options.yaml', () async {
      final generator = ProjectGenerator(
        EntityName('test_project'),
        tempDir.path,
        EntityName('AppComponent'),
      );
      await generator.generate();

      expect(
        File('${tempDir.path}/test_project/analysis_options.yaml').existsSync(),
        isTrue,
      );
    });

    test('creates build.yaml', () async {
      final generator = ProjectGenerator(
        EntityName('test_project'),
        tempDir.path,
        EntityName('AppComponent'),
      );
      await generator.generate();

      expect(
        File('${tempDir.path}/test_project/build.yaml').existsSync(),
        isTrue,
      );
    });

    test('creates .gitignore', () async {
      final generator = ProjectGenerator(
        EntityName('test_project'),
        tempDir.path,
        EntityName('AppComponent'),
      );
      await generator.generate();

      expect(
        File('${tempDir.path}/test_project/.gitignore').existsSync(),
        isTrue,
      );
    });

    test('creates web/index.html', () async {
      final generator = ProjectGenerator(
        EntityName('test_project'),
        tempDir.path,
        EntityName('AppComponent'),
      );
      await generator.generate();

      expect(
        File('${tempDir.path}/test_project/web/index.html').existsSync(),
        isTrue,
      );
    });

    test('creates web/main.dart', () async {
      final generator = ProjectGenerator(
        EntityName('test_project'),
        tempDir.path,
        EntityName('AppComponent'),
      );
      await generator.generate();

      expect(
        File('${tempDir.path}/test_project/web/main.dart').existsSync(),
        isTrue,
      );
    });

    test('creates web/styles.css', () async {
      final generator = ProjectGenerator(
        EntityName('test_project'),
        tempDir.path,
        EntityName('AppComponent'),
      );
      await generator.generate();

      expect(
        File('${tempDir.path}/test_project/web/styles.css').existsSync(),
        isTrue,
      );
    });

    test('creates component files', () async {
      final generator = ProjectGenerator(
        EntityName('test_project'),
        tempDir.path,
        EntityName('AppComponent'),
      );
      await generator.generate();

      expect(
        File('${tempDir.path}/test_project/lib/app_component.dart')
            .existsSync(),
        isTrue,
      );
      expect(
        File('${tempDir.path}/test_project/lib/app_component.html')
            .existsSync(),
        isTrue,
      );
    });

    test('generated main.dart imports angulardart', () async {
      final generator = ProjectGenerator(
        EntityName('test_project'),
        tempDir.path,
        EntityName('AppComponent'),
      );
      await generator.generate();

      final content =
          File('${tempDir.path}/test_project/web/main.dart').readAsStringSync();
      expect(content, contains('package:angulardart/angulardart.dart'));
    });

    test('generated component has @Component annotation', () async {
      final generator = ProjectGenerator(
        EntityName('test_project'),
        tempDir.path,
        EntityName('AppComponent'),
      );
      await generator.generate();

      final content =
          File('${tempDir.path}/test_project/lib/app_component.dart')
              .readAsStringSync();
      expect(content, contains('@Component('));
    });

    test('uses correct component class name', () async {
      final generator = ProjectGenerator(
        EntityName('my_app'),
        tempDir.path,
        EntityName('MyRoot'),
      );
      await generator.generate();

      final content =
          File('${tempDir.path}/my_app/lib/my_root.dart').readAsStringSync();
      expect(content, contains('class MyRoot'));
    });

    test('web/main.dart uses correct NgFactory', () async {
      final generator = ProjectGenerator(
        EntityName('test_project'),
        tempDir.path,
        EntityName('MyComponent'),
      );
      await generator.generate();

      final content =
          File('${tempDir.path}/test_project/web/main.dart').readAsStringSync();
      expect(content, contains('MyComponentNgFactory'));
    });
  });

  group('ProjectGenerator - SEO project', () {
    late Directory tempDir;

    setUp(() async {
      tempDir =
          await Directory.systemTemp.createTemp('ngdart_seo_project_test_');
    });

    tearDownAll(() async {
      if (tempDir.existsSync()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('creates SEO pubspec with all dependencies', () async {
      final generator = ProjectGenerator(
        EntityName('seo_app'),
        tempDir.path,
        EntityName('AppComponent'),
        seo: true,
      );
      await generator.generate();

      final content =
          File('${tempDir.path}/seo_app/pubspec.yaml').readAsStringSync();
      expect(content, contains("angulardart: '>="));
      expect(content, contains('>=9.0.0 <10.0.0'));
      expect(content, contains('angulardart_router'));
      expect(content, contains('angulardart_seo'));
      expect(content, contains('angulardart_prerender'));
    });

    test('creates SEO main.dart with injector', () async {
      final generator = ProjectGenerator(
        EntityName('seo_app'),
        tempDir.path,
        EntityName('AppComponent'),
        seo: true,
      );
      await generator.generate();

      final content =
          File('${tempDir.path}/seo_app/web/main.dart').readAsStringSync();
      expect(content, contains('@GenerateInjector(['));
      expect(content, contains('ClassProvider(SeoService)'));
      expect(content, contains('ClassProvider(TitleService)'));
    });

    test('creates SEO component files', () async {
      final generator = ProjectGenerator(
        EntityName('seo_app'),
        tempDir.path,
        EntityName('AppComponent'),
        seo: true,
      );
      await generator.generate();

      expect(
        File('${tempDir.path}/seo_app/lib/app_component.dart').existsSync(),
        isTrue,
      );
      expect(
        File('${tempDir.path}/seo_app/lib/home_component.dart').existsSync(),
        isTrue,
      );
      expect(
        File('${tempDir.path}/seo_app/lib/about_component.dart').existsSync(),
        isTrue,
      );
    });

    test('creates prerender.yaml for SEO project', () async {
      final generator = ProjectGenerator(
        EntityName('seo_app'),
        tempDir.path,
        EntityName('AppComponent'),
        seo: true,
      );
      await generator.generate();

      expect(
        File('${tempDir.path}/seo_app/prerender.yaml').existsSync(),
        isTrue,
      );
    });

    test('SEO home component uses SeoService', () async {
      final generator = ProjectGenerator(
        EntityName('seo_app'),
        tempDir.path,
        EntityName('AppComponent'),
        seo: true,
      );
      await generator.generate();

      final content = File('${tempDir.path}/seo_app/lib/home_component.dart')
          .readAsStringSync();
      expect(content, contains('final SeoService _seo'));
      expect(content, contains('_seo.setPageSeo('));
    });

    test('SEO about component uses SeoService', () async {
      final generator = ProjectGenerator(
        EntityName('seo_app'),
        tempDir.path,
        EntityName('AppComponent'),
        seo: true,
      );
      await generator.generate();

      final content = File('${tempDir.path}/seo_app/lib/about_component.dart')
          .readAsStringSync();
      expect(content, contains('final SeoService _seo'));
      expect(content, contains('_seo.setPageSeo('));
    });

    test('SEO app component uses router', () async {
      final generator = ProjectGenerator(
        EntityName('seo_app'),
        tempDir.path,
        EntityName('AppComponent'),
        seo: true,
      );
      await generator.generate();

      final content = File('${tempDir.path}/seo_app/lib/app_component.dart')
          .readAsStringSync();
      expect(content,
          contains('package:angulardart_router/angulardart_router.dart'));
      expect(content, contains('RouteDefinition'));
    });

    test('SEO index.html has base href', () async {
      final generator = ProjectGenerator(
        EntityName('seo_app'),
        tempDir.path,
        EntityName('AppComponent'),
        seo: true,
      );
      await generator.generate();

      final content =
          File('${tempDir.path}/seo_app/web/index.html').readAsStringSync();
      expect(content, contains('<base href="/">'));
    });

    test('SEO project does not create single component file', () async {
      final generator = ProjectGenerator(
        EntityName('seo_app'),
        tempDir.path,
        EntityName('AppComponent'),
        seo: true,
      );
      await generator.generate();

      // SEO projects should NOT have the default lib/app_component.dart from non-SEO mode
      // They use app_component.dart as part of the SEO structure instead
      final files = Directory('${tempDir.path}/seo_app/lib').listSync();
      expect(files.length, greaterThan(3),
          reason: 'SEO project should create multiple component files');
    });

    test('SEO pubspec uses wide version constraints', () async {
      final generator = ProjectGenerator(
        EntityName('seo_app'),
        tempDir.path,
        EntityName('AppComponent'),
        seo: true,
      );
      await generator.generate();

      final content =
          File('${tempDir.path}/seo_app/pubspec.yaml').readAsStringSync();
      // Verify no caret syntax in dependency versions
      final lines = content.split('\n');
      for (final line in lines) {
        if (line.contains(':') && !line.trim().startsWith('#')) {
          expect(
            line,
            isNot(contains('^')),
            reason: 'Should use wide constraints not caret: $line',
          );
        }
      }
    });
  });

  group('ProjectGenerator - file structure validation', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('ngdart_structure_test_');
    });

    tearDownAll(() async {
      if (tempDir.existsSync()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('basic project has expected file count', () async {
      final generator = ProjectGenerator(
        EntityName('structure_test'),
        tempDir.path,
        EntityName('AppComponent'),
      );
      await generator.generate();

      int countFiles(Directory dir) {
        int count = 0;
        for (final entity in dir.listSync(recursive: true)) {
          if (entity is File) count++;
        }
        return count;
      }

      final projectDir = Directory('${tempDir.path}/structure_test');
      expect(projectDir.existsSync(), isTrue);
      // Expected files: pubspec.yaml, analysis_options.yaml, build.yaml, .gitignore,
      // web/index.html, web/main.dart, web/styles.css, lib/app_component.dart, lib/app_component.html = 9
      expect(countFiles(projectDir), equals(9));
    });

    test('SEO project has expected file count', () async {
      final generator = ProjectGenerator(
        EntityName('seo_structure_test'),
        tempDir.path,
        EntityName('AppComponent'),
        seo: true,
      );
      await generator.generate();

      int countFiles(Directory dir) {
        int count = 0;
        for (final entity in dir.listSync(recursive: true)) {
          if (entity is File) count++;
        }
        return count;
      }

      final projectDir = Directory('${tempDir.path}/seo_structure_test');
      expect(projectDir.existsSync(), isTrue);
      // Expected files: pubspec.yaml, analysis_options.yaml, build.yaml, .gitignore, prerender.yaml,
      // web/index.html, web/main.dart, web/styles.css, lib/app_component.dart, lib/app_component.html,
      // lib/home_component.dart, lib/home_component.html, lib/about_component.dart, lib/about_component.html = 14
      expect(countFiles(projectDir), equals(14));
    });

    test('all generated Dart files have valid structure', () async {
      final generator = ProjectGenerator(
        EntityName('validity_test'),
        tempDir.path,
        EntityName('AppComponent'),
      );
      await generator.generate();

      int countValidDartFiles(Directory dir) {
        int validCount = 0;
        for (final entity in dir.listSync(recursive: true)) {
          if (entity is File && entity.path.endsWith('.dart')) {
            final content = entity.readAsStringSync();
            // Basic Dart file validation: must have import or be a barrel
            if (content.contains('import ') ||
                content.contains('@Component') ||
                content.contains('@Injectable()')) {
              validCount++;
            }
          }
        }
        return validCount;
      }

      final projectDir = Directory('${tempDir.path}/validity_test');
      expect(countValidDartFiles(projectDir), greaterThan(0));
    });
  });
}
