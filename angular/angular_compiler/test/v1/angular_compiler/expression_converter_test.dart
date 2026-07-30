import 'package:angulardart_compiler/v1/src/compiler/analyzed_class.dart';
import 'package:angulardart_compiler/v1/src/compiler/expression_parser/ast.dart' as ast;
import 'package:angulardart_compiler/v1/src/compiler/output/output_ast.dart' as o;
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
  group('visitBinary', () {
    test('should handle || with nullable operands', () {
      // Créer des expressions nullable (PropertyRead)
      final left = ast.PropertyRead(ast.ImplicitReceiver(), 'valid');
      final right = ast.PropertyRead(ast.ImplicitReceiver(), 'pristine');
      final binary = ast.Binary('||', left, right);
      
      final converter = _MockExpressionConverter();
      final result = binary.visit<o.Expression, Object?, Object?>(converter, null);
      
      // Vérifier que le résultat est une expression binaire
      expect(result, isA<o.BinaryOperatorExpr>());
      final binaryExpr = result as o.BinaryOperatorExpr;
      
      // Vérifier que les deux opérandes sont enveloppées avec ?? false
      expect(binaryExpr.lhs, isA<o.IfNullExpr>());
      expect(binaryExpr.rhs, isA<o.IfNullExpr>());
      
      final leftIfNull = binaryExpr.lhs as o.IfNullExpr;
      expect(leftIfNull.nullCase, isA<o.LiteralExpr>());
      expect((leftIfNull.nullCase as o.LiteralExpr).value, equals(false));
      
      final rightIfNull = binaryExpr.rhs as o.IfNullExpr;
      expect(rightIfNull.nullCase, isA<o.LiteralExpr>());
      expect((rightIfNull.nullCase as o.LiteralExpr).value, equals(false));
    });

    test('should handle && with nullable operands', () {
      // Créer des expressions nullable (PropertyRead)
      final left = ast.PropertyRead(ast.ImplicitReceiver(), 'valid');
      final right = ast.PropertyRead(ast.ImplicitReceiver(), 'pristine');
      final binary = ast.Binary('&&', left, right);
      
      final converter = _MockExpressionConverter();
      final result = binary.visit<o.Expression, Object?, Object?>(converter, null);
      
      // Vérifier que le résultat est une expression binaire
      expect(result, isA<o.BinaryOperatorExpr>());
      final binaryExpr = result as o.BinaryOperatorExpr;
      
      // Vérifier que les deux opérandes sont enveloppées avec ?? false
      expect(binaryExpr.lhs, isA<o.IfNullExpr>());
      expect(binaryExpr.rhs, isA<o.IfNullExpr>());
    });

    test('should handle mixed nullable and non-nullable operands', () {
      // Créer une expression nullable et une non-nullable
      final nullable = ast.PropertyRead(ast.ImplicitReceiver(), 'valid');
      final nonNullable = ast.LiteralPrimitive(true);
      final binary = ast.Binary('||', nullable, nonNullable);
      
      final converter = _MockExpressionConverter();
      final result = binary.visit<o.Expression, Object?, Object?>(converter, null);
      
      // Vérifier que le résultat est une expression binaire
      expect(result, isA<o.BinaryOperatorExpr>());
      final binaryExpr = result as o.BinaryOperatorExpr;
      
      // Vérifier que seul l'opérande nullable est enveloppé avec ?? false
      expect(binaryExpr.lhs, isA<o.IfNullExpr>());
      expect(binaryExpr.rhs, isA<o.LiteralExpr>());
      expect(binaryExpr.rhs, isNot(isA<o.IfNullExpr>()));
    });

    test('should not add ?? false for non-logical operators', () {
      // Créer des expressions nullable avec un opérateur +
      final left = ast.PropertyRead(ast.ImplicitReceiver(), 'a');
      final right = ast.PropertyRead(ast.ImplicitReceiver(), 'b');
      final binary = ast.Binary('+', left, right);
      
      final converter = _MockExpressionConverter();
      final result = binary.visit<o.Expression, Object?, Object?>(converter, null);
      
      // Vérifier que le résultat est une expression binaire
      expect(result, isA<o.BinaryOperatorExpr>());
      final binaryExpr = result as o.BinaryOperatorExpr;
      
      // Vérifier que les opérandes ne sont PAS enveloppées avec ?? false
      expect(binaryExpr.lhs, isNot(isA<o.IfNullExpr>()));
      expect(binaryExpr.rhs, isNot(isA<o.IfNullExpr>()));
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
  o.Expression visitBinary(ast.Binary ast, [Object? context]) {
    o.BinaryOperator op;
    switch (ast.operator) {
      case '+':
        op = o.BinaryOperator.Plus;
        break;
      case '-':
        op = o.BinaryOperator.Minus;
        break;
      case '*':
        op = o.BinaryOperator.Multiply;
        break;
      case '/':
        op = o.BinaryOperator.Divide;
        break;
      case '%':
        op = o.BinaryOperator.Modulo;
        break;
      case '&&':
        op = o.BinaryOperator.And;
        break;
      case '||':
        op = o.BinaryOperator.Or;
        break;
      case '==':
        op = o.BinaryOperator.Equals;
        break;
      case '!=':
        op = o.BinaryOperator.NotEquals;
        break;
      case '===':
        op = o.BinaryOperator.Identical;
        break;
      case '!==':
        op = o.BinaryOperator.NotIdentical;
        break;
      case '<':
        op = o.BinaryOperator.Lower;
        break;
      case '>':
        op = o.BinaryOperator.Bigger;
        break;
      case '<=':
        op = o.BinaryOperator.LowerEquals;
        break;
      case '>=':
        op = o.BinaryOperator.BiggerEquals;
        break;
      default:
        throw Exception('Unsupported operation "${ast.operator}"');
    }
    
    var left = ast.left.visit(this, false);
    var right = ast.right.visit(this, false);
    
    // Pour && et ||, ajouter ?? false aux opérandes nullable
    if (ast.operator == '&&' || ast.operator == '||') {
      if (canBeNull(ast.left)) {
        left = left.ifNull(o.literal(false));
      }
      if (canBeNull(ast.right)) {
        right = right.ifNull(o.literal(false));
      }
    }
    
    return o.BinaryOperatorExpr(op, left, right);
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
