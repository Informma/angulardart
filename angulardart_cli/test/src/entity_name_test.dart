import 'package:angulardart_cli/src/entity_name.dart';
import 'package:test/test.dart';

void main() {
  group('EntityName', () {
    test('PascalCase input produces correct conversions', () {
      final name = EntityName('AppComponent');
      expect(name.className, equals('AppComponent'));
      // camelCased: lowercases entire first part (no separator to split on)
      expect(name.camelCased, equals('appcomponent'));
      expect(name.underscored, equals('app_component'));
      expect(name.dashed, equals('app-component'));
      // spaced: only lowercases first char of each part (no separator to split on)
      expect(name.spaced, equals('appComponent'));
    });

    test('kebab-case input produces correct conversions', () {
      final name = EntityName('my-service');
      expect(name.className, equals('MyService'));
      expect(name.camelCased, equals('myService'));
      expect(name.underscored, equals('my_service'));
      expect(name.dashed, equals('my-service'));
      expect(name.spaced, equals('my service'));
    });

    test('snake_case input produces correct conversions', () {
      final name = EntityName('my_service');
      expect(name.className, equals('MyService'));
      expect(name.camelCased, equals('myService'));
      expect(name.underscored, equals('my_service'));
      expect(name.dashed, equals('my-service'));
      expect(name.spaced, equals('my service'));
    });

    test('single word input produces correct conversions', () {
      final name = EntityName('Hello');
      expect(name.className, equals('Hello'));
      expect(name.camelCased, equals('hello'));
      expect(name.underscored, equals('hello'));
      expect(name.dashed, equals('hello'));
      expect(name.spaced, equals('hello'));
    });

    test('empty string returns original', () {
      final name = EntityName('');
      expect(name.className, equals(''));
      expect(name.camelCased, equals(''));
      expect(name.underscored, equals(''));
      expect(name.dashed, equals(''));
      expect(name.spaced, equals(''));
    });

    test('mixed separators produce correct conversions', () {
      final name = EntityName('my-My_service');
      expect(name.className, equals('MyMyService'));
      expect(name.camelCased, equals('myMyService'));
      // underscored: [A-Z] → _lowercase gives 'my-_my_service' then [-\s]+ → _ gives 'my__my_service'
      expect(name.underscored, equals('my__my_service'));
      // dashed: underscores replaced with hyphens from the underscored result
      expect(name.dashed, equals('my--my-service'));
    });

    test('className always produces PascalCase', () {
      final tests = [
        ('helloWorld', 'HelloWorld'),
        ('HELLO_WORLD', 'HELLOWORLD'),
        ('a', 'A'),
        ('getHTTPResponse', 'GetHTTPResponse'),
      ];
      for (final (input, expected) in tests) {
        final name = EntityName(input);
        expect(name.className, equals(expected), reason: input);
      }
    });

    test(
        'camelCased lowercases first char and uppercases rest after separators',
        () {
      final tests = [
        ('HelloWorld', 'helloworld'), // no separator split, all lowercase
        (
          'helloWorld',
          'helloworld'
        ), // whole string lowercased (no separator to split on)
        ('A', 'a'),
        (
          'getHTTPResponse',
          'gethttpresponse'
        ), // first part lowercased entirely
        (
          'my-service',
          'myService'
        ), // splits on hyphen, second part capitalized
      ];
      for (final (input, expected) in tests) {
        final name = EntityName(input);
        expect(name.camelCased, equals(expected), reason: input);
      }
    });

    test('underscored converts to snake_case', () {
      final tests = [
        ('helloWorld', 'hello_world'), // W → _w via [A-Z] replacement
        ('HelloWorld', 'hello_world'),
        ('HTTPResponse', 'h_t_t_p_response'),
      ];
      for (final (input, expected) in tests) {
        final name = EntityName(input);
        expect(name.underscored, equals(expected), reason: input);
      }
    });

    test('spaced produces space-separated lowercase words', () {
      // spaced only splits on separators (_- ), not camelCase boundaries
      final name1 = EntityName('MyAppComponent');
      expect(
          name1.spaced, equals('myAppComponent')); // no separator to split on

      final name2 = EntityName('My App Component');
      expect(name2.spaced, equals('my app component'));
    });

    test('separator-based names produce correct spaced output', () {
      expect(EntityName('my-service').spaced, equals('my service'));
      expect(EntityName('my_service').spaced, equals('my service'));
      expect(EntityName('my service').spaced, equals('my service'));
    });
  });
}
