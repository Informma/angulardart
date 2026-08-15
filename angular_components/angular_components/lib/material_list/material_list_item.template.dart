// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_list_item.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref2;
import 'package:angulardart_components/mixins/material_dropdown_base.template.dart' as _ref3;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref4;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref5;
import 'package:angulardart_components/material_list/material_list_item.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_list_item.dart' as import2;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import3;
import 'package:angulardart/src/core/linker/views/view.dart' as import4;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import6;
import 'package:angulardart/src/utilities.dart' as import7;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import8;
import 'package:angulardart/src/runtime/check_binding.dart' as import9;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import11;
import 'package:angulardart/src/di/errors.dart' as import12;

import '../mixins/material_dropdown_base.dart' as import13;
import '../interfaces/has_disabled.dart' as import14;

final List<Object> styles$MaterialListItemComponent = [import0.styles];

class ViewMaterialListItemComponent0 extends import1.ComponentView<import2.MaterialListItemComponent> {
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  static import3.ComponentStyles? _componentStyles;
  ViewMaterialListItemComponent0(import4.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import6.renderFactory.createElement('material-list-item');
  }
  static String? get _debugComponentUrl {
    return (import7.isDevMode ? 'asset:angulardart_components/lib/material_list/material_list_item.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this.project(parentRenderNode, 0);
    import8.addRenderEventListener(parentRenderNode, 'click', this.eventHandler1(_ctx.handleClick));
    import8.addRenderEventListener(parentRenderNode, 'keypress', this.eventHandler1(_ctx.handleKeyPress));
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.tabIndex;
    if (import9.checkBinding(this._expr_0, currVal_0, null, null)) {
      import8.updateRenderAttribute(this.rootElement, 'tabindex', currVal_0);
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.ariaRole;
    if (import9.checkBinding(this._expr_1, currVal_1, null, null)) {
      import8.updateRenderAttribute(this.rootElement, 'role', currVal_1);
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.disabledStr;
    if (import9.checkBinding(this._expr_2, currVal_2, null, null)) {
      import8.updateRenderAttribute(this.rootElement, 'aria-disabled', currVal_2);
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.disabled;
    if (import9.checkBinding(this._expr_3, currVal_3, null, null)) {
      import8.updateRenderClass(this.rootElement, 'is-disabled', (currVal_3 ?? false));
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.disabled;
    if (import9.checkBinding(this._expr_4, currVal_4, null, null)) {
      import8.updateRenderClass(this.rootElement, 'disabled', (currVal_4 ?? false));
      this._expr_4 = currVal_4;
    }
    final currVal_5 = import2.MaterialListItemComponent.hostClass;
    if (import9.checkBinding(this._expr_5, currVal_5, null, null)) {
      this.updateChildClassNonHtml(this.rootElement, currVal_5);
      this._expr_5 = currVal_5;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import3.ComponentStyles.scoped(styles$MaterialListItemComponent, _debugComponentUrl));
      if (import7.isDevMode) {
        import3.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialListItemComponentNgFactory = ComponentFactory<import2.MaterialListItemComponent>('material-list-item', viewFactory_MaterialListItemComponentHost0);
ComponentFactory<import2.MaterialListItemComponent> get MaterialListItemComponentNgFactory {
  return _MaterialListItemComponentNgFactory;
}

ComponentFactory<import2.MaterialListItemComponent> createMaterialListItemComponentFactory() {
  return ComponentFactory('material-list-item', viewFactory_MaterialListItemComponentHost0);
}

final List<Object> styles$MaterialListItemComponentHost = const [];

class _ViewMaterialListItemComponentHost0 extends import11.HostView<import2.MaterialListItemComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialListItemComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import7.isDevMode
        ? import12.debugInjectorWrap(import2.MaterialListItemComponent, () {
            return import2.MaterialListItemComponent(import8.unwrapNode(_el_0), this.injectorGetOptional(import13.DropdownHandle, this.parentIndex), null, null);
          })
        : import2.MaterialListItemComponent(import8.unwrapNode(_el_0), this.injectorGetOptional(import13.DropdownHandle, this.parentIndex), null, null));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import14.HasDisabled) && (0 == nodeIndex))) {
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
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import11.HostView<import2.MaterialListItemComponent> viewFactory_MaterialListItemComponentHost0() {
  return _ViewMaterialListItemComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialListItemComponent, createMaterialListItemComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
}
