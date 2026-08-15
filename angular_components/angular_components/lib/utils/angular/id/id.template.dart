// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'id.dart';

import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/utils/id_generator/id_generator.template.dart' as _ref1;
import 'package:angulardart/src/core/change_detection/directive_change_detector.dart' as import0;

import 'id.dart' as import1;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import2;
import 'package:angulardart/src/runtime/check_binding.dart' as import3;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import4;

class AutoIdDirectiveNgCd extends import0.DirectiveChangeDetector {
  final import1.AutoIdDirective instance;
  Object? _expr_0;
  AutoIdDirectiveNgCd(this.instance);
  void detectHostChanges(import2.RenderView view, dynamic el) {
    final currVal_0 = this.instance.id;
    if (import3.checkBinding(this._expr_0, currVal_0, null, null)) {
      import4.updateRenderAttribute(el, 'id', currVal_0);
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
}
