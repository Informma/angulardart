import 'package:test/test.dart';
import 'package:angulardart_compiler/v1/src/compiler/expression_parser/parser.dart';
import 'package:angulardart_compiler/v1/src/compiler/expression_parser/ast.dart' as ast;

void main() {
  group('Map literals', () {
    late ExpressionParser parser;

    setUp(() {
      parser = ExpressionParser();
    });

    test('should parse empty map literal', () {
      final result = parser.parseBinding('{}', 'test', []);
      expect(result.ast, isA<ast.LiteralMap>());
      expect((result.ast as ast.LiteralMap).entries, isEmpty);
    });

    test('should parse map literal with string keys and bool values', () {
      final result = parser.parseBinding(
        "{'special': isSpecial, 'active': isActive}",
        'test',
        [],
      );
      expect(result.ast, isA<ast.LiteralMap>());
      final map = result.ast as ast.LiteralMap;
      expect(map.entries.length, 2);

      expect(map.entries[0][0], isA<ast.LiteralPrimitive>());
      expect((map.entries[0][0] as ast.LiteralPrimitive).value, 'special');
      expect(map.entries[0][1], isA<ast.PropertyRead>());
      expect((map.entries[0][1] as ast.PropertyRead).name, 'isSpecial');

      expect(map.entries[1][0], isA<ast.LiteralPrimitive>());
      expect((map.entries[1][0] as ast.LiteralPrimitive).value, 'active');
      expect(map.entries[1][1], isA<ast.PropertyRead>());
      expect((map.entries[1][1] as ast.PropertyRead).name, 'isActive');
    });

    test('should parse map literal with expression values', () {
      final result = parser.parseBinding(
        "{'font-weight': isBold ? 'bold' : 'normal', 'color': color}",
        'test',
        [],
      );
      expect(result.ast, isA<ast.LiteralMap>());
      final map = result.ast as ast.LiteralMap;
      expect(map.entries.length, 2);
      expect(map.entries[0][1], isA<ast.Conditional>());
      expect(map.entries[1][1], isA<ast.PropertyRead>());
    });

    test('should reject set literals', () {
      expect(
        () => parser.parseBinding("{'a', 'b'}", 'test', []),
        throwsA(isA<ParseException>()),
      );
    });
  });
}
