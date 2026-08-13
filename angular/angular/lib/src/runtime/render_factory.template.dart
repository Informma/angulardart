// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'render_factory.dart';
import 'browser_render_node.template.dart' if (dart.library.io) 'browser_render_node_vm.template.dart' as _ref0;
import 'dom_apis.template.dart' as _ref1;
import 'render_node.template.dart' as _ref2;
import 'server_render_node.template.dart' as _ref3;

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
