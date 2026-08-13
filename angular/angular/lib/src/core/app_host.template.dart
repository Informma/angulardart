// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'app_host.dart';

import 'package:angulardart/src/di/injector.template.dart' as _ref0;
import 'package:angulardart/src/testability.template.dart' as _ref1;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ref0.initReflector();
  _ref1.initReflector();
}
