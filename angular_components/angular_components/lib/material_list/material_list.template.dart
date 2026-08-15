// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_list.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'material_list_size.template.dart' as _ref0;
import 'material_list_size.template.dart' as _ref1;

import 'package:angulardart/angulardart.template.dart' as _ref2;
import 'package:angulardart_components/model/ui/accepts_width.template.dart' as _ref3;
import 'package:angulardart_components/utils/angular/properties/properties.template.dart' as _ref4;
import 'package:angulardart_components/material_list/material_list.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_list.dart' as import2;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import3;
import 'package:angulardart/src/core/linker/views/view.dart' as import4;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import6;
import 'package:angulardart/src/utilities.dart' as import7;
import 'package:angulardart/src/runtime/check_binding.dart' as import8;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import9;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import11;

final List<Object> styles$MaterialListComponent = [import0.styles];

class ViewMaterialListComponent0 extends import1.ComponentView<import2.MaterialListComponent> {
  Object? _expr_0;
  Object? _expr_1;
  static import3.ComponentStyles? _componentStyles;
  ViewMaterialListComponent0(import4.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import6.renderFactory.createElement('material-list');
  }
  static String? get _debugComponentUrl {
    return (import7.isDevMode ? 'asset:angulardart_components/lib/material_list/material_list.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    this.project(parentRenderNode, 0);
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.size;
    if (import8.checkBinding(this._expr_0, currVal_0, null, null)) {
      import9.updateRenderAttribute(this.rootElement, 'size', currVal_0);
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.role;
    if (import8.checkBinding(this._expr_1, currVal_1, null, null)) {
      import9.updateRenderAttribute(this.rootElement, 'role', currVal_1);
      this._expr_1 = currVal_1;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import3.ComponentStyles.scoped(styles$MaterialListComponent, _debugComponentUrl));
      if (import7.isDevMode) {
        import3.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialListComponentNgFactory = ComponentFactory<import2.MaterialListComponent>('material-list', viewFactory_MaterialListComponentHost0);
ComponentFactory<import2.MaterialListComponent> get MaterialListComponentNgFactory {
  return _MaterialListComponentNgFactory;
}

ComponentFactory<import2.MaterialListComponent> createMaterialListComponentFactory() {
  return ComponentFactory('material-list', viewFactory_MaterialListComponentHost0);
}

final List<Object> styles$MaterialListComponentHost = const [];

class _ViewMaterialListComponentHost0 extends import11.HostView<import2.MaterialListComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialListComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialListComponent();
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
  }
}

import11.HostView<import2.MaterialListComponent> viewFactory_MaterialListComponentHost0() {
  return _ViewMaterialListComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialListComponent, createMaterialListComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
}
