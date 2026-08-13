// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'router_link_directive.dart';
import '../location.template.dart' as _ref0;
import '../router/navigation_params.template.dart' as _ref1;
import '../router/router.template.dart' as _ref2;
import '../url.template.dart' as _ref3;

import 'package:angulardart/angulardart.template.dart' as _ref4;
import 'package:angulardart/src/runtime/render_node.template.dart' as _ref5;
import 'package:angulardart/src/core/change_detection/directive_change_detector.dart' as import0;

import 'router_link_directive.dart' as import1;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import2;
import 'package:angulardart/src/runtime/check_binding.dart' as import3;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import4;

class RouterLinkNgCd extends import0.DirectiveChangeDetector {
  final import1.RouterLink instance;
  Object? _expr_0;
  RouterLinkNgCd(this.instance);
  void detectHostChanges(import2.RenderView view, dynamic el) {
    final currVal_0 = this.instance.visibleHref;
    if (import3.checkBinding(this._expr_0, currVal_0, null, null)) {
      import4.updateRenderAttribute(el, 'href', currVal_0);
      this._expr_0 = currVal_0;
    }
  }
}

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
  _ref5.initReflector();
}
