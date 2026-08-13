// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'dynamic_view.dart';

import 'package:angulardart/src/core/linker/view_container.template.dart' as _ref0;
import 'package:angulardart/src/core/linker/view_fragment.template.dart' as _ref1;
import 'package:angulardart/src/core/linker/view_ref.template.dart' as _ref2;

import 'view.template.dart' as _ref3;

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
