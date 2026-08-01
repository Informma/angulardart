import 'package:test/test.dart';
import 'package:angulardart_compiler/v1/src/compiler/expression_parser/parser.dart';
import 'package:angulardart_compiler/v1/src/compiler/expression_parser/ast.dart' as ast;

void main() {
  group('List literals', () {
    late ExpressionParser parser;

    setUp(() {
      parser = ExpressionParser();
    });

    test('should parse empty list literal', () {
      final result = parser.parseBinding('[]', 'test', []);
      expect(result.ast, isA<ast.LiteralList>());
      expect((result.ast as ast.LiteralList).elements, isEmpty);
    });

    test('should parse list literal with strings', () {
      final result = parser.parseBinding("['/guide', '/home']", 'test', []);
      expect(result.ast, isA<ast.LiteralList>());
      final list = result.ast as ast.LiteralList;
      expect(list.elements.length, 2);
      expect(list.elements[0], isA<ast.LiteralPrimitive>());
      expect((list.elements[0] as ast.LiteralPrimitive).value, '/guide');
      expect(list.elements[1], isA<ast.LiteralPrimitive>());
      expect((list.elements[1] as ast.LiteralPrimitive).value, '/home');
    });

    test('should parse list literal with mixed types', () {
      final result = parser.parseBinding("['/users', 123, true]", 'test', []);
      expect(result.ast, isA<ast.LiteralList>());
      final list = result.ast as ast.LiteralList;
      expect(list.elements.length, 3);
      expect((list.elements[0] as ast.LiteralPrimitive).value, '/users');
      expect((list.elements[1] as ast.LiteralPrimitive).value, 123);
      expect((list.elements[2] as ast.LiteralPrimitive).value, true);
    });

    test('should parse nested list literals', () {
      final result = parser.parseBinding("[['a', 'b'], ['c', 'd']]", 'test', []);
      expect(result.ast, isA<ast.LiteralList>());
      final list = result.ast as ast.LiteralList;
      expect(list.elements.length, 2);
      expect(list.elements[0], isA<ast.LiteralList>());
      expect(list.elements[1], isA<ast.LiteralList>());
    });
  });
}
