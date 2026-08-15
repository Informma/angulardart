// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'button_decorator.dart';

import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/focus/focus.template.dart' as _ref1;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref2;
import 'package:angulardart_components/mixins/has_tab_index.template.dart' as _ref3;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref4;
import 'package:angulardart_components/utils/browser/events/events.template.dart' as _ref5;
import 'package:angulardart/src/core/change_detection/directive_change_detector.dart' as import0;

import 'button_decorator.dart' as import1;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import2;
import 'package:angulardart/src/runtime/check_binding.dart' as import3;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import4;

class ButtonDirectiveNgCd extends import0.DirectiveChangeDetector {
  final import1.ButtonDirective instance;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  ButtonDirectiveNgCd(this.instance);
  void detectHostChanges(import2.RenderView view, dynamic el) {
    final currVal_0 = this.instance.tabIndex;
    if (import3.checkBinding(this._expr_0, currVal_0, null, null)) {
      import4.updateRenderAttribute(el, 'tabindex', currVal_0);
      this._expr_0 = currVal_0;
    }
    final currVal_1 = this.instance.ariaRole;
    if (import3.checkBinding(this._expr_1, currVal_1, null, null)) {
      import4.updateRenderAttribute(el, 'role', currVal_1);
      this._expr_1 = currVal_1;
    }
    final currVal_2 = this.instance.disabledStr;
    if (import3.checkBinding(this._expr_2, currVal_2, null, null)) {
      import4.updateRenderAttribute(el, 'aria-disabled', currVal_2);
      this._expr_2 = currVal_2;
    }
    final currVal_3 = this.instance.disabled;
    if (import3.checkBinding(this._expr_3, currVal_3, null, null)) {
      import4.updateRenderClass(el, 'is-disabled', (currVal_3 ?? false));
      this._expr_3 = currVal_3;
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
