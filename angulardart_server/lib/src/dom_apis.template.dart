// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'dom_apis.dart';
import 'browser_dom_apis.template.dart' if (dart.library.io) 'native_dom_apis.template.dart' as _ref0;

var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ref0.initReflector();
}
