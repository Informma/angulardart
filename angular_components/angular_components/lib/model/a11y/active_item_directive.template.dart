// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'active_item_directive.dart';

import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/laminate/components/modal/modal.template.dart' as _ref1;
import 'package:angulardart_components/laminate/popup/popup.template.dart' as _ref2;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref3;
import 'package:angulardart_components/src/dom/js_apis.template.dart' as _ref4;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.template.dart' as _ref5;
import 'package:angulardart/src/core/change_detection/directive_change_detector.dart' as import0;

import 'active_item_directive.dart' as import1;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import2;
import 'package:angulardart/src/runtime/check_binding.dart' as import3;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import4;

class ActiveItemDirectiveNgCd extends import0.DirectiveChangeDetector {
  final import1.ActiveItemDirective instance;
  Object? _expr_0;
  ActiveItemDirectiveNgCd(this.instance);
  void detectHostChanges(import2.RenderView view, dynamic el) {
    final currVal_0 = this.instance.active;
    if (import3.checkBinding(this._expr_0, currVal_0, null, null)) {
      import4.updateRenderClass(el, 'active', (currVal_0 ?? false));
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
