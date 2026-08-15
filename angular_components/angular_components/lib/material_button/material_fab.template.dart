// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_fab.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'material_button_base.template.dart' as _ref0;

import 'package:angulardart/angulardart.template.dart' as _ref1;
import 'package:angulardart_components/material_ripple/material_ripple.template.dart' as _ref2;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref3;
import 'package:angulardart_components/material_button/material_fab.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_fab.dart' as import2;
import '../material_ripple/material_ripple.template.dart' as import3;
import '../material_ripple/material_ripple.dart' as import4;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import5;
import 'package:angulardart/src/core/linker/views/view.dart' as import6;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import8;
import 'package:angulardart/src/utilities.dart' as import9;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import10;
import 'package:angulardart/src/runtime/check_binding.dart' as import11;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import13;

final List<Object> styles$MaterialFabComponent = [import0.styles];

class ViewMaterialFabComponent0 extends import1.ComponentView<import2.MaterialFabComponent> {
  late final import3.ViewMaterialRippleComponent0 _compView_2;
  late final import4.MaterialRippleComponent _MaterialRippleComponent_2_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialFabComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-fab');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/material_button/material_fab.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _text_0 = import10.createRenderText('\n');
    import10.appendRenderChild(parentRenderNode, _text_0);
    final _el_1 = import10.createRenderElement('div');
    import10.appendRenderChild(parentRenderNode, _el_1);
    this.updateChildClass(_el_1, 'content');
    this.addShimC(_el_1);
    this.project(_el_1, 0);
    this._compView_2 = import3.ViewMaterialRippleComponent0(this, 2);
    final _el_2 = this._compView_2.rootElement;
    import10.appendRenderChild(parentRenderNode, _el_2);
    this.addShimC(_el_2);
    this._MaterialRippleComponent_2_5 = import4.MaterialRippleComponent(import10.unwrapNode(_el_2));
    this._compView_2.create(this._MaterialRippleComponent_2_5);
    import10.addRenderEventListener(_el_2, 'mousedown', this.eventHandler1(_ctx.onMouseDown));
    import10.addRenderEventListener(_el_2, 'mouseup', this.eventHandler1(_ctx.onMouseUp));
    import10.addRenderEventListener(parentRenderNode, 'click', this.eventHandler1(_ctx.handleClick));
    import10.addRenderEventListener(parentRenderNode, 'keypress', this.eventHandler1(_ctx.handleKeyPress));
    import10.addRenderEventListener(parentRenderNode, 'mousedown', this.eventHandler1(_ctx.onMouseDown));
    import10.addRenderEventListener(parentRenderNode, 'mouseup', this.eventHandler1(_ctx.onMouseUp));
    import10.addRenderEventListener(parentRenderNode, 'focus', this.eventHandler1(_ctx.onFocus));
    import10.addRenderEventListener(parentRenderNode, 'blur', this.eventHandler1(_ctx.onBlur));
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    changed = false;
    if (changed) {
      this._compView_2.markAsCheckOnce();
    }
    this._compView_2.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_2.destroyInternalState();
    this._MaterialRippleComponent_2_5.ngOnDestroy();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.tabIndex;
    if (import11.checkBinding(this._expr_0, currVal_0, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'tabindex', currVal_0);
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.ariaRole;
    if (import11.checkBinding(this._expr_1, currVal_1, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'role', currVal_1);
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.disabledStr;
    if (import11.checkBinding(this._expr_2, currVal_2, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'aria-disabled', currVal_2);
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.disabled;
    if (import11.checkBinding(this._expr_3, currVal_3, null, null)) {
      import10.updateRenderClass(this.rootElement, 'is-disabled', (currVal_3 ?? false));
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.hostDisabled;
    if (import11.checkBinding(this._expr_4, currVal_4, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'disabled', currVal_4);
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.hostRaised;
    if (import11.checkBinding(this._expr_5, currVal_5, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'raised', currVal_5);
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.hostClassIsFocused;
    if (import11.checkBinding(this._expr_6, currVal_6, null, null)) {
      import10.updateRenderClass(this.rootElement, 'is-focused', (currVal_6 ?? false));
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.hostClassIsPressed;
    if (import11.checkBinding(this._expr_7, currVal_7, null, null)) {
      import10.updateRenderClass(this.rootElement, 'is-pressed', (currVal_7 ?? false));
      this._expr_7 = currVal_7;
    }
    final currVal_8 = import2.MaterialFabComponent.hostAnimated;
    if (import11.checkBinding(this._expr_8, currVal_8, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'animated', currVal_8);
      this._expr_8 = currVal_8;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialFabComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialFabComponentNgFactory = ComponentFactory<import2.MaterialFabComponent>('material-fab', viewFactory_MaterialFabComponentHost0);
ComponentFactory<import2.MaterialFabComponent> get MaterialFabComponentNgFactory {
  return _MaterialFabComponentNgFactory;
}

ComponentFactory<import2.MaterialFabComponent> createMaterialFabComponentFactory() {
  return ComponentFactory('material-fab', viewFactory_MaterialFabComponentHost0);
}

final List<Object> styles$MaterialFabComponentHost = const [];

class _ViewMaterialFabComponentHost0 extends import13.HostView<import2.MaterialFabComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialFabComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialFabComponent(import10.unwrapNode(_el_0), this.componentView);
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

import13.HostView<import2.MaterialFabComponent> viewFactory_MaterialFabComponentHost0() {
  return _ViewMaterialFabComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialFabComponent, createMaterialFabComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
}
