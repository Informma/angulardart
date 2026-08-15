// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_button.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'material_button_base.template.dart' as _ref0;

import 'package:angulardart/angulardart.template.dart' as _ref1;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref2;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref3;
import 'package:angulardart_components/material_ripple/material_ripple.template.dart' as _ref4;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref5;
import 'package:angulardart_components/theme/dark_theme.template.dart' as _ref6;
import 'package:angulardart_components/material_button/material_button.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_button.dart' as import2;
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
import 'package:angulardart/src/di/errors.dart' as import14;

import '../theme/dark_theme.dart' as import15;

import 'package:angulardart_meta/src/di_tokens.dart' as import16;

import 'dart:core';

import '../button_decorator/button_decorator.dart' as import18;
import '../interfaces/has_disabled.dart' as import19;

final List<Object> styles$MaterialButtonComponent = [import0.styles];

class ViewMaterialButtonComponent0 extends import1.ComponentView<import2.MaterialButtonComponent> {
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
  ViewMaterialButtonComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-button');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/material_button/material_button.dart' : null);
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
    final currVal_7 = _ctx.hostElevation;
    if (import11.checkBinding(this._expr_7, currVal_7, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'elevation', currVal_7);
      this._expr_7 = currVal_7;
    }
    final currVal_8 = import2.MaterialButtonComponent.hostAnimated;
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
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialButtonComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialButtonComponentNgFactory = ComponentFactory<import2.MaterialButtonComponent>('material-button', viewFactory_MaterialButtonComponentHost0);
ComponentFactory<import2.MaterialButtonComponent> get MaterialButtonComponentNgFactory {
  return _MaterialButtonComponentNgFactory;
}

ComponentFactory<import2.MaterialButtonComponent> createMaterialButtonComponentFactory() {
  return ComponentFactory('material-button', viewFactory_MaterialButtonComponentHost0);
}

final List<Object> styles$MaterialButtonComponentHost = const [];

class _ViewMaterialButtonComponentHost0 extends import13.HostView<import2.MaterialButtonComponent> {
  late final dynamic _AcxDarkTheme_0_5;
  @override
  void build() {
    this.componentView = ViewMaterialButtonComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this._AcxDarkTheme_0_5 = (import9.isDevMode
        ? import14.debugInjectorWrap(import15.AcxDarkTheme, () {
            return import15.AcxDarkTheme(this.injectorGetOptional(const import16.OpaqueToken<Object>('acxDarkTheme'), this.parentIndex));
          })
        : import15.AcxDarkTheme(this.injectorGetOptional(const import16.OpaqueToken<Object>('acxDarkTheme'), this.parentIndex)));
    this.component = import2.MaterialButtonComponent(import10.unwrapNode(_el_0), this._AcxDarkTheme_0_5, this.componentView, null);
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import15.AcxDarkTheme)) {
        return this._AcxDarkTheme_0_5;
      }
      if (((identical(token, import2.MaterialButtonComponent) || identical(token, import18.ButtonDirective)) || identical(token, import19.HasDisabled))) {
        return this.component;
      }
    }
    return notFoundResult;
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

import13.HostView<import2.MaterialButtonComponent> viewFactory_MaterialButtonComponentHost0() {
  return _ViewMaterialButtonComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialButtonComponent, createMaterialButtonComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
}
