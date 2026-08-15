// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_icon_toggle.dart';
import 'material_icon.template.dart' as _ref0;

import 'package:angulardart/angulardart.template.dart' as _ref1;
import 'package:angulardart/src/core/change_detection/directive_change_detector.dart' as import0;

import 'material_icon_toggle.dart' as import1;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import2;
import 'package:angulardart/src/runtime/check_binding.dart' as import3;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import4;

class MaterialIconToggleDirectiveNgCd extends import0.DirectiveChangeDetector {
  final import1.MaterialIconToggleDirective instance;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  MaterialIconToggleDirectiveNgCd(this.instance);
  void detectHostChanges(import2.RenderView view, dynamic el) {
    final currVal_0 = this.instance.showBasic;
    if (import3.checkBinding(this._expr_0, currVal_0, null, null)) {
      import4.updateRenderClass(el, 'basic-icon', (currVal_0 ?? false));
      this._expr_0 = currVal_0;
    }
    final currVal_1 = this.instance.showToggled;
    if (import3.checkBinding(this._expr_1, currVal_1, null, null)) {
      import4.updateRenderClass(el, 'toggled-icon', (currVal_1 ?? false));
      this._expr_1 = currVal_1;
    }
    final currVal_2 = this.instance.hideIcon;
    if (import3.checkBinding(this._expr_2, currVal_2, null, null)) {
      import4.updateRenderClass(el, 'hide-icon', (currVal_2 ?? false));
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
}
