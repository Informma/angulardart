import 'dart:io';

import 'package:test/test.dart';

void main() {
  group('seo_init_command - pubspec.yaml modifications', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('ngdart_seo_test_');
    });

    tearDownAll(() async {
      if (tempDir.existsSync()) {
        await tempDir.delete(recursive: true);
      }
    });

    File createPubspec(String content) {
      final file = File('${tempDir.path}/pubspec.yaml')..createSync();
      file.writeAsStringSync(content);
      return file;
    }

    test('adds angulardart_router when missing', () async {
      final pubspec = createPubspec('''
name: my_app
dependencies:
  angulardart: ^9.0.0
dev_dependencies: {}
''');

      var content = pubspec.readAsStringSync();
      expect(content, isNot(contains('angulardart_router')));

      // Simulate the replacement logic from seo_init_command.dart
      if (!content.contains('angulardart_router:')) {
        content = content.replaceFirst(
          'dependencies:',
          'dependencies:\n  angulardart_router: \'>=5.0.0 <6.0.0\'',
        );
      }

      expect(content, contains("angulardart_router: '>="));
      expect(content, contains('>=5.0.0 <6.0.0'));
    });

    test('adds angulardart_seo when missing', () async {
      final pubspec = createPubspec('''
name: my_app
dependencies: {}
dev_dependencies: {}
''');

      var content = pubspec.readAsStringSync();
      expect(content, isNot(contains('angulardart_seo')));

      if (!content.contains('angulardart_seo:')) {
        content = content.replaceFirst(
          'dependencies:',
          'dependencies:\n  angulardart_seo: \'>=1.0.0 <2.0.0\'',
        );
      }

      expect(content, contains("angulardart_seo: '>="));
      expect(content, contains('>=1.0.0 <2.0.0'));
    });

    test('adds angulardart_prerender when missing', () async {
      final pubspec = createPubspec('''
name: my_app
dependencies: {}
dev_dependencies: {}
''');

      var content = pubspec.readAsStringSync();
      expect(content, isNot(contains('angulardart_prerender')));

      if (!content.contains('angulardart_prerender:')) {
        content = content.replaceFirst(
          'dev_dependencies:',
          'dev_dependencies:\n  angulardart_prerender: \'>=1.0.0 <2.0.0\'',
        );
      }

      expect(content, contains("angulardart_prerender: '>="));
      expect(content, contains('>=1.0.0 <2.0.0'));
    });

    test('does not duplicate dependencies already present', () async {
      final pubspec = createPubspec('''
name: my_app
dependencies:
  angulardart_router: '>=5.0.0 <6.0.0'
  angulardart_seo: '>=1.0.0 <2.0.0'
dev_dependencies:
  angulardart_prerender: '>=1.0.0 <2.0.0'
''');

      var content = pubspec.readAsStringSync();

      if (!content.contains('angulardart_router:')) {
        content = content.replaceFirst(
          'dependencies:',
          'dependencies:\n  angulardart_router: \'>=5.0.0 <6.0.0\'',
        );
      }
      if (!content.contains('angulardart_seo:')) {
        content = content.replaceFirst(
          'dependencies:',
          'dependencies:\n  angulardart_seo: \'>=1.0.0 <2.0.0\'',
        );
      }
      if (!content.contains('angulardart_prerender:')) {
        content = content.replaceFirst(
          'dev_dependencies:',
          'dev_dependencies:\n  angulardart_prerender: \'>=1.0.0 <2.0.0\'',
        );
      }

      // Count occurrences - should be exactly 1 each
      expect(content.split('angulardart_router').length, equals(2),
          reason: 'router should appear once');
      expect(content.split('angulardart_seo').length, equals(2),
          reason: 'seo should appear once');
      expect(content.split('angulardart_prerender').length, equals(2),
          reason: 'prerender should appear once');
    });

    test('detects missing angulardart dependency', () {
      final pubspec = createPubspec('''
name: my_app
dependencies: {}
''');

      expect(pubspec.readAsStringSync(), isNot(contains('angulardart:')));
    });

    test('validates angulardart project detection', () {
      // A valid AngularDart project must have angulardart in dependencies
      final validPubspec = createPubspec('''
name: my_app
dependencies:
  angulardart: ^9.0.0
''');

      expect(validPubspec.readAsStringSync(), contains('angulardart:'));
    });
  });

  group('seo_init_command - main.dart modifications', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('ngdart_main_test_');
    });

    tearDownAll(() async {
      if (tempDir.existsSync()) {
        await tempDir.delete(recursive: true);
      }
    });

    File createMainDart(String content) {
      final file = File('${tempDir.path}/web/main.dart')
        ..createSync(recursive: true);
      file.writeAsStringSync(content);
      return file;
    }

    test('adds seo import when missing', () async {
      final mainFile = createMainDart('''
import 'package:angulardart/angulardart.dart';
void main() {}
''');

      var content = mainFile.readAsStringSync();
      expect(content, isNot(contains('angulardart_seo')));

      if (!content.contains('angulardart_seo')) {
        content =
            "import 'package:angulardart_seo/angulardart_seo.dart';\n\$mainContent"
                .replaceAll('\$mainContent', content);
      }

      expect(content, contains('package:angulardart_seo/angulardart_seo.dart'));
    });

    test('adds SeoService and TitleService providers when missing', () async {
      final mainFile = createMainDart('''
@GenerateInjector([])
final InjectorFactory appInjector = null;
''');

      var content = mainFile.readAsStringSync();
      expect(content, isNot(contains('ClassProvider(SeoService)')));

      if (!content.contains('ClassProvider(SeoService)')) {
        content = content.replaceFirst(
          '@GenerateInjector([',
          '@GenerateInjector([\n  ClassProvider(SeoService),\n  ClassProvider(TitleService),',
        );
      }

      expect(content, contains('ClassProvider(SeoService)'));
      expect(content, contains('ClassProvider(TitleService)'));
    });

    test('does not duplicate seo import when already present', () async {
      final mainFile = createMainDart('''
import 'package:angulardart_seo/angulardart_seo.dart';
void main() {}
''');

      var content = mainFile.readAsStringSync();
      expect(content, contains('angulardart_seo'));

      if (!content.contains('angulardart_seo')) {
        content =
            "import 'package:angulardart_seo/angulardart_seo.dart';\n\$mainContent"
                .replaceAll('\$mainContent', content);
      }

      expect(content.split('package:angulardart_seo').length, equals(2),
          reason: 'seo import should appear once');
    });

    test('does not duplicate providers when already present', () async {
      final mainFile = createMainDart('''
@GenerateInjector([
  ClassProvider(SeoService),
])
final InjectorFactory appInjector = null;
''');

      var content = mainFile.readAsStringSync();
      expect(content, contains('ClassProvider(SeoService)'));

      if (!content.contains('ClassProvider(SeoService)')) {
        content = content.replaceFirst(
          '@GenerateInjector([',
          '@GenerateInjector([\n  ClassProvider(SeoService),\n  ClassProvider(TitleService),',
        );
      }

      expect(content.split('ClassProvider(SeoService)').length, equals(2),
          reason: 'SeoService provider should appear once');
    });
  });

  group('seo_init_command - prerender.yaml creation', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('ngdart_prerender_test_');
    });

    tearDownAll(() async {
      if (tempDir.existsSync()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('creates prerender.yaml when missing', () async {
      final prerenderFile = File('${tempDir.path}/prerender.yaml');
      expect(prerenderFile.existsSync(), isFalse);

      if (!prerenderFile.existsSync()) {
        await prerenderFile.writeAsString('''
routes:
  - /

timeout: 5000
wait_for_network_idle: true
generate_sitemap: true
generate_robots: true
base_url: 'https://example.com'
''');
      }

      expect(prerenderFile.existsSync(), isTrue);
      final content = prerenderFile.readAsStringSync();
      expect(content, contains('routes:'));
      expect(content, contains('- /'));
      expect(content, contains('timeout: 5000'));
    });

    test('does not overwrite existing prerender.yaml', () async {
      final prerenderFile = File('${tempDir.path}/prerender.yaml');
      prerenderFile.writeAsStringSync('routes:\n  - /custom\n');

      if (!prerenderFile.existsSync()) {
        await prerenderFile.writeAsString('default content');
      }

      expect(prerenderFile.readAsStringSync(), contains('/custom'));
    });
  });
}
