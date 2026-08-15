// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'tooltip_source.dart';

import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/laminate/popup/popup.template.dart' as _ref1;
import 'package:angulardart_components/model/action/delayed_action.template.dart' as _ref2;
import 'package:angulardart_components/model/ui/toggle.template.dart' as _ref3;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref4;
import 'package:angulardart/src/core/change_detection/directive_change_detector.dart' as import0;

import 'tooltip_source.dart' as import1;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import2;
import 'package:angulardart/src/runtime/check_binding.dart' as import3;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import4;

class MaterialTooltipSourceDirectiveNgCd extends import0.DirectiveChangeDetector {
  final import1.MaterialTooltipSourceDirective instance;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  MaterialTooltipSourceDirectiveNgCd(this.instance);
  void detectHostChanges(import2.RenderView view, dynamic el) {
    final currVal_0 = import1.MaterialTooltipSourceDirective.hostStyleCursor;
    if (import3.checkBinding(this._expr_0, currVal_0, null, null)) {
      import4.updateRenderStyle(el, 'cursor', currVal_0);
      this._expr_0 = currVal_0;
    }
    final currVal_1 = import1.MaterialTooltipSourceDirective.hostTabIndex;
    if (import3.checkBinding(this._expr_1, currVal_1, null, null)) {
      el.setProperty('tabIndex', currVal_1);
      this._expr_1 = currVal_1;
    }
    final currVal_2 = import1.MaterialTooltipSourceDirective.tooltipLabel;
    if (import3.checkBinding(this._expr_2, currVal_2, null, null)) {
      import4.updateRenderAttribute(el, 'aria-label', currVal_2);
      this._expr_2 = currVal_2;
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
}
