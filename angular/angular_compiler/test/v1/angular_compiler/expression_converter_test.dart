import 'package:angular_compiler/v1/src/compiler/analyzed_class.dart';
import 'package:angular_compiler/v1/src/compiler/expression_parser/ast.dart' as ast;
import 'package:angular_compiler/v1/src/compiler/output/output_ast.dart' as o;
import 'package:test/test.dart';

void main() {
  group('visitPrefixNot', () {
    test('should handle nullable expressions with ?? false', () {
      // Créer une expression nullable (PropertyRead)
      final nullableExpr = ast.PropertyRead(ast.ImplicitReceiver(), 'isNullable');
      final prefixNot = ast.PrefixNot(nullableExpr);
      
      // Créer un converter avec un name resolver mock
      final converter = _MockExpressionConverter();
      
      // Visiter l'expression
      final result = prefixNot.visit<o.Expression, Object?, Object?>(converter, null);
      
      // Vérifier que le résultat contient ?? false
      expect(result, isA<o.NotExpr>());
      final notExpr = result as o.NotExpr;
      expect(notExpr.condition, isA<o.IfNullExpr>());
      
      final ifNullExpr = notExpr.condition as o.IfNullExpr;
      expect(ifNullExpr.nullCase, isA<o.LiteralExpr>());
      expect((ifNullExpr.nullCase as o.LiteralExpr).value, equals(false));
    });

    test('should not add ?? false for non-nullable expressions', () {
      // Créer une expression non-nullable (LiteralPrimitive)
      final nonNullableExpr = ast.LiteralPrimitive(true);
      final prefixNot = ast.PrefixNot(nonNullableExpr);
      
      // Créer un converter avec un name resolver mock
      final converter = _MockExpressionConverter();
      
      // Visiter l'expression
      final result = prefixNot.visit<o.Expression, Object?, Object?>(converter, null);
      
      // Vérifier que le résultat ne contient PAS ?? false
      expect(result, isA<o.NotExpr>());
      final notExpr = result as o.NotExpr;
      expect(notExpr.condition, isA<o.LiteralExpr>());
      expect(notExpr.condition, isNot(isA<o.IfNullExpr>()));
    });
  });
}

class _MockExpressionConverter implements ast.AstVisitor<o.Expression, Object?> {
  @override
  o.Expression visitPrefixNot(ast.PrefixNot ast, [Object? context]) {
    final innerExpr = ast.expression.visit(this, false);
    if (canBeNull(ast.expression)) {
      return o.not(innerExpr.ifNull(o.literal(false)));
    }
    return o.not(innerExpr);
  }

  @override
  o.Expression visitPropertyRead(ast.PropertyRead ast, [Object? context]) {
    return o.variable(ast.name);
  }

  @override
  o.Expression visitLiteralPrimitive(ast.LiteralPrimitive ast, [Object? context]) {
    return o.literal(ast.value);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) {
    throw UnimplementedError();
  }
}
