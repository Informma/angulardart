// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'devtools.dart';
import 'devtools/devtools_browser.template.dart' if (dart.library.io) 'devtools/devtools_vm.template.dart' as _ref0;
import 'devtools/model.template.dart' as _ref1;

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
