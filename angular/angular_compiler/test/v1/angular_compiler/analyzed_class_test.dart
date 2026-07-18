import 'package:angular_compiler/v1/src/compiler/analyzed_class.dart';
import 'package:angular_compiler/v1/src/compiler/expression_parser/ast.dart' as ast;
import 'package:test/test.dart';

void main() {
  group('canBeNull', () {
    test('should return false for PostfixNotNull', () {
      final expr = ast.PropertyRead(ast.ImplicitReceiver(), 'value');
      final notNullExpr = ast.PostfixNotNull(expr);
      expect(canBeNull(notNullExpr), isFalse);
    });

    test('should return true for PropertyRead', () {
      final expr = ast.PropertyRead(ast.ImplicitReceiver(), 'value');
      expect(canBeNull(expr), isTrue);
    });

    test('should return false for LiteralPrimitive', () {
      final expr = ast.LiteralPrimitive(true);
      expect(canBeNull(expr), isFalse);
    });

    test('should return false for IfNull with non-nullable condition', () {
      final condition = ast.LiteralPrimitive(true);
      final nullExp = ast.LiteralPrimitive(false);
      final expr = ast.IfNull(condition, nullExp);
      expect(canBeNull(expr), isFalse);
    });

    test('should return true for IfNull with nullable condition and nullable nullExp', () {
      final condition = ast.PropertyRead(ast.ImplicitReceiver(), 'value');
      final nullExp = ast.PropertyRead(ast.ImplicitReceiver(), 'other');
      final expr = ast.IfNull(condition, nullExp);
      expect(canBeNull(expr), isTrue);
    });

    test('should return false for IfNull with nullable condition but non-nullable nullExp', () {
      final condition = ast.PropertyRead(ast.ImplicitReceiver(), 'value');
      final nullExp = ast.LiteralPrimitive(false);
      final expr = ast.IfNull(condition, nullExp);
      expect(canBeNull(expr), isFalse);
    });
  });
}
