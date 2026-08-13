// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'component_loader.dart';
import '../../di/injector.template.dart' as _ref0;
import 'component_factory.template.dart' as _ref1;
import 'view_container_ref.template.dart' as _ref2;

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
