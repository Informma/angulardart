import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
// ignore: implementation_imports
import 'package:analyzer/src/dart/element/type.dart';
// ignore: implementation_imports
import 'package:source_gen/src/utils.dart';

String getTypeImport(DartType type) {
  var aliasElement = type.alias?.element;
  if (aliasElement != null) {
    return normalizeUrl(aliasElement.library.firstFragment.source.uri).toString();
  }
  if (type is DynamicType) {
    return 'dart:core';
  }
  if (type is InterfaceType) {
    return normalizeUrl(type.element.library.firstFragment.source.uri).toString();
  }
  throw UnimplementedError('(${type.runtimeType}) $type');
}

String? getTypeName(DartType type) {
  var aliasElement = type.alias?.element;
  if (aliasElement != null) {
    return aliasElement.name;
  }
  if (type is DynamicType) {
    return 'dynamic';
  }
  if (type is FunctionType) {
    return null;
  }
  if (type is InterfaceType) {
    return type.element.name;
  }
  if (type is VoidType) {
    return 'void';
  }
  throw UnimplementedError('(${type.runtimeType}) $type');
}

DartType typeArgumentOf(DartObject object, [int index = 0]) {
  var type = object.type;
  if (type is ParameterizedType) {
    var typeArguments = type.typeArguments;
    if (typeArguments.isNotEmpty) {
      return type.typeArguments[index];
    }
  }
  return DynamicTypeImpl.instance;
}

String? typeToCode(DartType? type) {
  if (type == null) {
    return null;
  } else if (type is DynamicType) {
    return 'dynamic';
  } else if (type is InterfaceType) {
    var typeArguments = type.typeArguments;
    if (typeArguments.isEmpty) {
      return type.element.name;
    } else {
      final typeArgumentsStr = typeArguments.map(typeToCode).join(', ');
      return '${type.element.name}<$typeArgumentsStr>';
    }
  } else if (type is TypeParameterType) {
    return type.element.name;
  } else if (type is VoidType) {
    return 'void';
  } else {
    throw UnimplementedError('(${type.runtimeType}) $type');
  }
}

Uri urlOf(Element? element, [String? name]) {
  if (element?.library == null) {
    return Uri(scheme: 'dart', path: 'core', fragment: 'dynamic');
  }

  var fragment = name ?? element!.name;
  final enclosing = element!.enclosingElement;
  if (enclosing is ClassElement) {
    fragment = '${enclosing.name}.$fragment';
  }

  return normalizeUrl(element.library!.firstFragment.source.uri).replace(fragment: fragment);
}
