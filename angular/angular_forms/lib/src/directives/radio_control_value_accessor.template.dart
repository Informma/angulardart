// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'radio_control_value_accessor.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'control_value_accessor.template.dart' as _ref0;
import 'ng_control.template.dart' as _ref1;

import 'package:angulardart/angulardart.template.dart' as _ref2;
import 'package:angulardart/src/runtime/dom_helpers.template.dart' as _ref3;
import 'package:angulardart_forms/src/directives/shared.template.dart' as _ref4;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerFactory(RadioControlRegistry, () => RadioControlRegistry.new());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
}
