// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_radio.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/focus/focus.template.dart' as _ref1;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref2;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref3;
import 'package:angulardart_components/material_radio/material_radio_group.template.dart' as _ref4;
import 'package:angulardart_components/material_ripple/material_ripple.template.dart' as _ref5;
import 'package:angulardart_components/model/ui/icon.template.dart' as _ref6;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref7;
import 'package:angulardart_components/utils/browser/events/events.template.dart' as _ref8;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref9;
import 'package:angulardart_forms/angulardart_forms.template.dart' as _ref10;
import 'package:angulardart_components/material_radio/material_radio.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_radio.dart' as import2;
import '../material_icon/material_icon.template.dart' as import3;
import '../material_icon/material_icon.dart' as import4;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import7;
import 'package:angulardart/src/core/linker/views/view.dart' as import8;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import10;
import 'package:angulardart/src/utilities.dart' as import11;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import12;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import14;
import 'package:angulardart/src/runtime/check_binding.dart' as import15;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import17;

import '../material_ripple/material_ripple.template.dart' as import18;
import '../material_ripple/material_ripple.dart' as import19;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import20;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import21;
import 'package:angulardart/src/di/errors.dart' as import22;

import 'material_radio_group.dart' as import23;
import '../interfaces/has_disabled.dart' as import24;

final List<Object> styles$MaterialRadioComponent = [import0.styles];

class ViewMaterialRadioComponent0 extends import1.ComponentView<import2.MaterialRadioComponent> {
  late final import3.ViewMaterialIconComponent0 _compView_1;
  late final import4.MaterialIconComponent _MaterialIconComponent_1_5;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  Object? _expr_9;
  late final _el_0;
  static import7.ComponentStyles? _componentStyles;
  ViewMaterialRadioComponent0(import8.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import10.renderFactory.createElement('material-radio');
  }
  static String? get _debugComponentUrl {
    return (import11.isDevMode ? 'asset:angulardart_components/lib/material_radio/material_radio.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._el_0 = import12.createRenderElement('div');
    import12.appendRenderChild(parentRenderNode, this._el_0);
    this.updateChildClass(this._el_0, 'icon-container');
    this.addShimC(this._el_0);
    this._compView_1 = import3.ViewMaterialIconComponent0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    import12.appendRenderChild(this._el_0, _el_1);
    import12.updateRenderAttribute(_el_1, 'aria-hidden', 'true');
    this.updateChildClassNonHtml(_el_1, 'icon');
    this.addShimC(_el_1);
    this._MaterialIconComponent_1_5 = import4.MaterialIconComponent(import12.unwrapNode(_el_1));
    this._compView_1.create(this._MaterialIconComponent_1_5);
    final _anchor_2 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialRadioComponent1);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _el_3 = import12.createRenderElement('div');
    import12.appendRenderChild(parentRenderNode, _el_3);
    this.updateChildClass(_el_3, 'content');
    this.addShimC(_el_3);
    this.project(_el_3, 0);
    import12.addRenderEventListener(parentRenderNode, 'keydown', this.eventHandler1(_ctx.handleKeyDown));
    import12.addRenderEventListener(parentRenderNode, 'keyup', this.eventHandler1(_ctx.handleKeyUp));
    import12.addRenderEventListener(parentRenderNode, 'focus', this.eventHandler0(_ctx.onFocus));
    import12.addRenderEventListener(parentRenderNode, 'blur', this.eventHandler0(_ctx.onBlur));
    import12.addRenderEventListener(parentRenderNode, 'click', this.eventHandler0(_ctx.handleClick));
    import12.addRenderEventListener(parentRenderNode, 'keypress', this.eventHandler1(_ctx.handleKeyPress));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    final currVal_3 = _ctx.icon;
    if (import15.checkBinding(this._expr_3, currVal_3, 'icon', 'package:angulardart_components/material_radio/material_radio.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._MaterialIconComponent_1_5, 'icon', currVal_3);
      }
      this._MaterialIconComponent_1_5.icon = (currVal_3!) /* REF:package:angulardart_components/material_radio/material_radio.html:360:373 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', (!(_ctx.disabled ?? false)));
    }
    this._NgIf_2_9.ngIf = ((!(_ctx.disabled ?? false)) ?? false) /* REF:package:angulardart_components/material_radio/material_radio.html:479:496 */;
    final currVal_0 = _ctx.showFocus;
    if (import15.checkBinding(this._expr_0, currVal_0, 'showFocus', 'package:angulardart_components/material_radio/material_radio.html')) {
      import12.updateRenderClass(this._el_0, 'focus', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_radio/material_radio.html:252:277 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.checked;
    if (import15.checkBinding(this._expr_1, currVal_1, 'checked', 'package:angulardart_components/material_radio/material_radio.html')) {
      import12.updateRenderClass(this._el_0, 'checked', (currVal_1 ?? false)) /* REF:package:angulardart_components/material_radio/material_radio.html:283:308 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.disabled;
    if (import15.checkBinding(this._expr_2, currVal_2, 'disabled', 'package:angulardart_components/material_radio/material_radio.html')) {
      import12.updateRenderClass(this._el_0, 'disabled', (currVal_2 ?? false)) /* REF:package:angulardart_components/material_radio/material_radio.html:314:341 */;
      this._expr_2 = currVal_2;
    }
    this._appEl_2.detectChangesInNestedViews();
    this._compView_1.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._compView_1.destroyInternalState();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_4 = _ctx.checked;
    if (import15.checkBinding(this._expr_4, currVal_4, null, null)) {
      import12.updateRenderAttribute(this.rootElement, 'aria-checked', currVal_4?.toString());
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.tabIndex;
    if (import15.checkBinding(this._expr_5, currVal_5, null, null)) {
      import12.updateRenderAttribute(this.rootElement, 'tabindex', currVal_5?.toString());
      this._expr_5 = currVal_5;
    }
    final currVal_6 = import2.MaterialRadioComponent.hostClass;
    if (import15.checkBinding(this._expr_6, currVal_6, null, null)) {
      this.updateChildClassNonHtml(this.rootElement, currVal_6);
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.role;
    if (import15.checkBinding(this._expr_7, currVal_7, null, null)) {
      import12.updateRenderAttribute(this.rootElement, 'role', currVal_7);
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.disabled;
    if (import15.checkBinding(this._expr_8, currVal_8, null, null)) {
      import12.updateRenderClass(this.rootElement, 'disabled', (currVal_8 ?? false));
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.disabled;
    if (import15.checkBinding(this._expr_9, currVal_9, null, null)) {
      import12.updateRenderAttribute(this.rootElement, 'aria-disabled', currVal_9?.toString());
      this._expr_9 = currVal_9;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import7.ComponentStyles.scoped(styles$MaterialRadioComponent, _debugComponentUrl));
      if (import11.isDevMode) {
        import7.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialRadioComponentNgFactory = ComponentFactory<import2.MaterialRadioComponent>('material-radio', viewFactory_MaterialRadioComponentHost0);
ComponentFactory<import2.MaterialRadioComponent> get MaterialRadioComponentNgFactory {
  return _MaterialRadioComponentNgFactory;
}

ComponentFactory<import2.MaterialRadioComponent> createMaterialRadioComponentFactory() {
  return ComponentFactory('material-radio', viewFactory_MaterialRadioComponentHost0);
}

class _ViewMaterialRadioComponent1 extends import17.EmbeddedView<import2.MaterialRadioComponent> {
  late final import18.ViewMaterialRippleComponent0 _compView_0;
  late final import19.MaterialRippleComponent _MaterialRippleComponent_0_5;
  _ViewMaterialRadioComponent1(import20.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import18.ViewMaterialRippleComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'ripple');
    this.addShimC(_el_0);
    this._MaterialRippleComponent_0_5 = import19.MaterialRippleComponent(import12.unwrapNode(_el_0));
    this._compView_0.create(this._MaterialRippleComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    changed = false;
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MaterialRippleComponent_0_5.ngOnDestroy();
  }
}

import17.EmbeddedView<void> viewFactory_MaterialRadioComponent1(import20.RenderView parentView, int parentIndex) {
  return _ViewMaterialRadioComponent1(parentView, parentIndex);
}

final List<Object> styles$MaterialRadioComponentHost = const [];

class _ViewMaterialRadioComponentHost0 extends import21.HostView<import2.MaterialRadioComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialRadioComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import11.isDevMode
        ? import22.debugInjectorWrap(import2.MaterialRadioComponent, () {
            return import2.MaterialRadioComponent(import12.unwrapNode(_el_0), this.componentView, this.injectorGetOptional(import23.MaterialRadioGroupComponent, this.parentIndex), null, null);
          })
        : import2.MaterialRadioComponent(import12.unwrapNode(_el_0), this.componentView, this.injectorGetOptional(import23.MaterialRadioGroupComponent, this.parentIndex), null, null));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import24.HasDisabled) && (0 == nodeIndex))) {
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

import21.HostView<import2.MaterialRadioComponent> viewFactory_MaterialRadioComponentHost0() {
  return _ViewMaterialRadioComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialRadioComponent, createMaterialRadioComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
  _ref7.initReflector();
  _ref8.initReflector();
  _ref9.initReflector();
  _ref10.initReflector();
}
