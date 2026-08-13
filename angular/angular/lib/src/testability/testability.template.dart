// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'testability.dart';
import 'js_api.template.dart' as _ref0;

import 'package:angulardart/src/core/zone/ng_zone.template.dart' as _ref1;
import 'package:angulardart/src/utilities.template.dart' as _ref2;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
}
