// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'focus_list.dart';

import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/focus/focus.template.dart' as _ref1;
import 'package:angulardart_components/utils/angular/properties/properties.template.dart' as _ref2;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref3;
import 'package:angulardart/src/core/change_detection/directive_change_detector.dart' as import0;

import 'focus_list.dart' as import1;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import2;
import 'package:angulardart/src/runtime/check_binding.dart' as import3;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import4;

class FocusListDirectiveNgCd extends import0.DirectiveChangeDetector {
  final import1.FocusListDirective instance;
  Object? _expr_0;
  Object? _expr_1;
  FocusListDirectiveNgCd(this.instance);
  void detectHostChanges(import2.RenderView view, dynamic el) {
    final currVal_0 = this.instance.role;
    if (import3.checkBinding(this._expr_0, currVal_0, null, null)) {
      import4.updateRenderAttribute(el, 'role', currVal_0);
      this._expr_0 = currVal_0;
    }
    final currVal_1 = this.instance.ignoreUpAndDown;
    if (import3.checkBinding(this._expr_1, currVal_1, null, null)) {
      import4.updateRenderAttribute(el, 'ignoreUpAndDown', currVal_1?.toString());
      this._expr_1 = currVal_1;
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
}
