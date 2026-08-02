import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

extension NullableDartType on DartType? {
  bool get isExplicitlyNonNullable {
    var type = this;
    if (type == null || type is DynamicType) {
      return false;
    }
    if (_isFutureOrWithExplicitlyNullableValue) {
      return false;
    }
    return type.nullabilitySuffix == NullabilitySuffix.none;
  }

  bool get isExplicitlyNullable {
    var type = this;
    if (type == null || type is DynamicType) {
      return false;
    }
    if (_isFutureOrWithExplicitlyNullableValue) {
      return true;
    }
    return type.nullabilitySuffix == NullabilitySuffix.question;
  }

  bool get _isFutureOrWithExplicitlyNullableValue =>
      this!.isDartAsyncFutureOr &&
      (this as ParameterizedType).typeArguments.first.isExplicitlyNullable;
}
