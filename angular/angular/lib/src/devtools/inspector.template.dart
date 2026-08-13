// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'inspector.dart';
import '../core/application_ref.template.dart' as _ref0;
import '../core/linker/views/component_view.template.dart' as _ref1;
import '../core/linker/views/view.template.dart' as _ref2;
import 'model.template.dart' as _ref3;
import 'reference_counter.template.dart' as _ref4;

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
  _ref4.initReflector();
}
