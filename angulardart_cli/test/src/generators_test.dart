import 'dart:io';

import 'package:angulardart_cli/src/entity_name.dart';
import 'package:angulardart_cli/src/generators/component_generator.dart';
import 'package:angulardart_cli/src/generators/directive_generator.dart';
import 'package:angulardart_cli/src/generators/pipe_generator.dart';
import 'package:angulardart_cli/src/generators/service_generator.dart';
import 'package:test/test.dart';

void main() {
  late Directory tempDir;

  setUp(() async {
    tempDir = await Directory.systemTemp.createTemp('ngdart_test_');
  });

  tearDownAll(() async {
    if (tempDir.existsSync()) {
      await tempDir.delete(recursive: true);
    }
  });

  group('ComponentGenerator', () {
    test('generates component dart file with correct content', () async {
      final generator = ComponentGenerator(
        EntityName('MyTest'),
        '${tempDir.path}/lib',
      );
      await generator.generate();

      final dartFile = File('${tempDir.path}/lib/my_test.dart');
      expect(dartFile.existsSync(), isTrue, reason: 'Dart file should exist');

      final content = dartFile.readAsStringSync();
      expect(content, contains('package:angulardart/angulardart.dart'));
      expect(content, contains('@Component('));
      expect(content, contains("selector: 'my-test'"));
      expect(content, contains("'my_test.html'"));
      expect(content, contains('class MyTest'));
    });

    test('generates component html file', () async {
      final generator = ComponentGenerator(
        EntityName('MyTest'),
        '${tempDir.path}/lib',
      );
      await generator.generate();

      final htmlFile = File('${tempDir.path}/lib/my_test.html');
      expect(htmlFile.existsSync(), isTrue, reason: 'HTML file should exist');

      final content = htmlFile.readAsStringSync();
      expect(content, contains('<h1>'));
    });

    test('generates component with different name formats', () async {
      final tests = [
        (
          'HelloWorld',
          'hello-world',
          'hello_world'
        ), // H→_h, W→_w via [A-Z] replacement
        ('my_service', 'my-service', 'my_service'),
        ('app', 'app', 'app'),
      ];

      for (final (input, _, expectedTargetName) in tests) {
        final subDir = Directory(
            '${tempDir.path}/sub_${input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '_')}')
          ..createSync(recursive: true);

        final generator = ComponentGenerator(EntityName(input), subDir.path);
        await generator.generate();

        expect(
          File('${subDir.path}/$expectedTargetName.dart').existsSync(),
          isTrue,
          reason: 'Dart file for $input should exist',
        );
      }
    });
  });

  group('ServiceGenerator', () {
    test('generates service dart file with correct content', () async {
      final generator = ServiceGenerator(
        EntityName('MyTest'),
        '${tempDir.path}/lib',
      );
      await generator.generate();

      final dartFile = File('${tempDir.path}/lib/my_test.dart');
      expect(dartFile.existsSync(), isTrue, reason: 'Dart file should exist');

      final content = dartFile.readAsStringSync();
      expect(content, contains('package:angulardart/angulardart.dart'));
      expect(content, contains('@Injectable()'));
      expect(content, contains('class MyTest'));
    });

    test('generates only a single dart file', () async {
      final generator = ServiceGenerator(
        EntityName('MyService'),
        '${tempDir.path}/lib',
      );
      await generator.generate();

      final libDir = Directory('${tempDir.path}/lib');
      expect(libDir.existsSync(), isTrue);
      expect(libDir.listSync().length, equals(1),
          reason: 'Should generate exactly 1 file');
    });
  });

  group('DirectiveGenerator', () {
    test('generates directive dart file with correct content', () async {
      final generator = DirectiveGenerator(
        EntityName('MyDir'),
        '${tempDir.path}/lib',
      );
      await generator.generate();

      final dartFile = File('${tempDir.path}/lib/my_dir.dart');
      expect(dartFile.existsSync(), isTrue, reason: 'Dart file should exist');

      final content = dartFile.readAsStringSync();
      expect(content, contains('package:angulardart/angulardart.dart'));
      expect(content, contains('@Directive('));
      expect(content, contains('[my-dir]'));
      expect(content, contains('class MyDir'));
    });

    test('generates only a single dart file', () async {
      final generator = DirectiveGenerator(
        EntityName('MyDirective'),
        '${tempDir.path}/lib',
      );
      await generator.generate();

      final libDir = Directory('${tempDir.path}/lib');
      expect(libDir.existsSync(), isTrue);
      expect(libDir.listSync().length, equals(1),
          reason: 'Should generate exactly 1 file');
    });
  });

  group('PipeGenerator', () {
    test('generates pipe dart file with correct content', () async {
      final generator = PipeGenerator(
        EntityName('MyPipe'),
        '${tempDir.path}/lib',
      );
      await generator.generate();

      final dartFile = File('${tempDir.path}/lib/my_pipe.dart');
      expect(dartFile.existsSync(), isTrue, reason: 'Dart file should exist');

      final content = dartFile.readAsStringSync();
      expect(content, contains('package:angulardart/angulardart.dart'));
      expect(content, contains("@Pipe('MyPipe')"));
      expect(content, contains('class MyPipe'));
      expect(content, contains('implements PipeTransform'));
    });

    test('generates only a single dart file', () async {
      final generator = PipeGenerator(
        EntityName('MyPipe'),
        '${tempDir.path}/lib',
      );
      await generator.generate();

      final libDir = Directory('${tempDir.path}/lib');
      expect(libDir.existsSync(), isTrue);
      expect(libDir.listSync().length, equals(1),
          reason: 'Should generate exactly 1 file');
    });
  });

  group('Generated Dart code validity', () {
    test('component dart has valid class declaration structure', () async {
      final generator =
          ComponentGenerator(EntityName('Valid'), '${tempDir.path}/lib');
      await generator.generate();

      final content = File('${tempDir.path}/lib/valid.dart').readAsStringSync();
      // Check basic Dart syntax patterns
      expect(content, matches(r'class\s+Valid'));
      expect(content, contains('{'));
      expect(content, contains('}'));
    });

    test('service dart has valid class declaration structure', () async {
      final generator =
          ServiceGenerator(EntityName('ValidService'), '${tempDir.path}/lib');
      await generator.generate();

      final content =
          File('${tempDir.path}/lib/valid_service.dart').readAsStringSync();
      expect(content, matches(r'class\s+ValidService'));
    });

    test('directive dart has valid class declaration structure', () async {
      final generator =
          DirectiveGenerator(EntityName('ValidDir'), '${tempDir.path}/lib');
      await generator.generate();

      final content =
          File('${tempDir.path}/lib/valid_dir.dart').readAsStringSync();
      expect(content, matches(r'class\s+ValidDir'));
    });

    test('pipe dart has valid class declaration structure', () async {
      final generator =
          PipeGenerator(EntityName('ValidPipe'), '${tempDir.path}/lib');
      await generator.generate();

      final content =
          File('${tempDir.path}/lib/valid_pipe.dart').readAsStringSync();
      expect(content, matches(r'class\s+ValidPipe'));
    });
  });
}
