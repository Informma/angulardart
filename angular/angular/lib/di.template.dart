// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'di.dart';
import 'src/di/injector.template.dart' as _ref0;
import 'src/di/injector/runtime.template.dart' as _ref1;
import 'src/meta.template.dart' as _ref2;

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
