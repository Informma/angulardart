// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'ng_control_status.dart';
import 'ng_control.template.dart' as _ref0;

import 'package:angulardart/angulardart.template.dart' as _ref1;
import 'package:angulardart/src/core/change_detection/directive_change_detector.dart' as import0;

import 'ng_control_status.dart' as import1;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import2;
import 'package:angulardart/src/runtime/check_binding.dart' as import3;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import4;

class NgControlStatusNgCd extends import0.DirectiveChangeDetector {
  final import1.NgControlStatus instance;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  NgControlStatusNgCd(this.instance);
  void detectHostChanges(import2.RenderView view, dynamic el) {
    final currVal_0 = this.instance.ngClassUntouched;
    if (import3.checkBinding(this._expr_0, currVal_0, null, null)) {
      import4.updateRenderClass(el, 'ng-untouched', (currVal_0 ?? false));
      this._expr_0 = currVal_0;
    }
    final currVal_1 = this.instance.ngClassTouched;
    if (import3.checkBinding(this._expr_1, currVal_1, null, null)) {
      import4.updateRenderClass(el, 'ng-touched', (currVal_1 ?? false));
      this._expr_1 = currVal_1;
    }
    final currVal_2 = this.instance.ngClassPristine;
    if (import3.checkBinding(this._expr_2, currVal_2, null, null)) {
      import4.updateRenderClass(el, 'ng-pristine', (currVal_2 ?? false));
      this._expr_2 = currVal_2;
    }
    final currVal_3 = this.instance.ngClassDirty;
    if (import3.checkBinding(this._expr_3, currVal_3, null, null)) {
      import4.updateRenderClass(el, 'ng-dirty', (currVal_3 ?? false));
      this._expr_3 = currVal_3;
    }
    final currVal_4 = this.instance.ngClassValid;
    if (import3.checkBinding(this._expr_4, currVal_4, null, null)) {
      import4.updateRenderClass(el, 'ng-valid', (currVal_4 ?? false));
      this._expr_4 = currVal_4;
    }
    final currVal_5 = this.instance.ngClassInvalid;
    if (import3.checkBinding(this._expr_5, currVal_5, null, null)) {
      import4.updateRenderClass(el, 'ng-invalid', (currVal_5 ?? false));
      this._expr_5 = currVal_5;
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
