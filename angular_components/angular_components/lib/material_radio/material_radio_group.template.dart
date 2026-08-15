// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_radio_group.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/focus/focus.template.dart' as _ref1;
import 'package:angulardart_components/material_radio/material_radio.template.dart' as _ref2;
import 'package:angulardart_components/model/selection/selection_model.template.dart' as _ref3;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref4;
import 'package:angulardart_forms/angulardart_forms.template.dart' as _ref5;
import 'package:angulardart_components/material_radio/material_radio_group.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_radio_group.dart' as import2;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import3;
import 'package:angulardart/src/core/linker/views/view.dart' as import4;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import6;
import 'package:angulardart/src/utilities.dart' as import7;
import 'package:angulardart/src/runtime/check_binding.dart' as import8;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import9;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import11;
import 'package:angulardart/src/di/errors.dart' as import12;
import 'package:angulardart/src/core/zone/ng_zone.dart' as import13;

final List<Object> styles$MaterialRadioGroupComponent = [import0.styles];

class ViewMaterialRadioGroupComponent0 extends import1.ComponentView<import2.MaterialRadioGroupComponent> {
  Object? _expr_0;
  Object? _expr_1;
  static import3.ComponentStyles? _componentStyles;
  ViewMaterialRadioGroupComponent0(import4.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import6.renderFactory.createElement('material-radio-group');
  }
  static String? get _debugComponentUrl {
    return (import7.isDevMode ? 'asset:angulardart_components/lib/material_radio/material_radio_group.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    this.project(parentRenderNode, 0);
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_0 = import2.MaterialRadioGroupComponent.role;
    if (import8.checkBinding(this._expr_0, currVal_0, null, null)) {
      import9.updateRenderAttribute(this.rootElement, 'role', currVal_0);
      this._expr_0 = currVal_0;
    }
    final currVal_1 = import2.MaterialRadioGroupComponent.tabIndex;
    if (import8.checkBinding(this._expr_1, currVal_1, null, null)) {
      import9.updateRenderAttribute(this.rootElement, 'tabindex', currVal_1?.toString());
      this._expr_1 = currVal_1;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import3.ComponentStyles.scoped(styles$MaterialRadioGroupComponent, _debugComponentUrl));
      if (import7.isDevMode) {
        import3.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialRadioGroupComponentNgFactory = ComponentFactory<import2.MaterialRadioGroupComponent>('material-radio-group', viewFactory_MaterialRadioGroupComponentHost0);
ComponentFactory<import2.MaterialRadioGroupComponent> get MaterialRadioGroupComponentNgFactory {
  return _MaterialRadioGroupComponentNgFactory;
}

ComponentFactory<import2.MaterialRadioGroupComponent> createMaterialRadioGroupComponentFactory() {
  return ComponentFactory('material-radio-group', viewFactory_MaterialRadioGroupComponentHost0);
}

final List<Object> styles$MaterialRadioGroupComponentHost = const [];

class _ViewMaterialRadioGroupComponentHost0 extends import11.HostView<import2.MaterialRadioGroupComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialRadioGroupComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import7.isDevMode
        ? import12.debugInjectorWrap(import2.MaterialRadioGroupComponent, () {
            return import2.MaterialRadioGroupComponent(this.injectorGet(import13.NgZone, this.parentIndex), null);
          })
        : import2.MaterialRadioGroupComponent(this.injectorGet(import13.NgZone, this.parentIndex), null));
    this.component.radioComponents = [];
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.MaterialRadioGroupComponent) && (0 == nodeIndex))) {
      return this.component;
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
    if ((!import8.debugThrowIfChanged)) {
      if (firstCheck) {
        this.component.ngAfterContentInit();
      }
    }
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import11.HostView<import2.MaterialRadioGroupComponent> viewFactory_MaterialRadioGroupComponentHost0() {
  return _ViewMaterialRadioGroupComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialRadioGroupComponent, createMaterialRadioGroupComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
}
