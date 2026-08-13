// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'angulardart_server.dart';
import 'src/hydration.template.dart' as _ref0;
import 'src/platform_server.template.dart' as _ref1;
import 'src/server_zone.template.dart' as _ref2;
import 'src/transfer_state.template.dart' as _ref3;

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
