// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'host.dart';
import 'change_detector_ref.template.dart' as _ref0;

import 'package:angulardart/src/core/linker/views/view.template.dart' as _ref1;
import 'package:angulardart/src/runtime/check_binding.template.dart' as _ref2;
import 'package:angulardart/src/utilities.template.dart' as _ref3;

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
