// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'text_binding.dart';
import 'interpolate.template.dart' as _ref0;

import 'package:angulardart/src/runtime/check_binding.template.dart' as _ref1;

import 'render_factory.template.dart' as _ref2;
import 'render_node.template.dart' as _ref3;

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
  _ref3.initReflector();
}
