// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_checkbox.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/focus/focus.template.dart' as _ref1;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref2;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref3;
import 'package:angulardart_components/material_ripple/material_ripple.template.dart' as _ref4;
import 'package:angulardart_components/model/ui/icon.template.dart' as _ref5;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref6;
import 'package:angulardart_components/utils/browser/events/events.template.dart' as _ref7;
import 'package:angulardart_components/utils/id_generator/id_generator.template.dart' as _ref8;
import 'package:angulardart_forms/angulardart_forms.template.dart' as _ref9;
import 'package:angulardart_components/material_checkbox/material_checkbox.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_checkbox.dart' as import2;

import 'package:angulardart/src/runtime/text_binding.dart' as import3;

import '../material_icon/material_icon.template.dart' as import4;
import '../material_icon/material_icon.dart' as import5;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import8;
import 'package:angulardart/src/core/linker/views/view.dart' as import9;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import11;
import 'package:angulardart/src/utilities.dart' as import12;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import13;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import15;
import 'package:angulardart/src/runtime/check_binding.dart' as import16;
import 'package:angulardart/src/runtime/interpolate.dart' as import17;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import19;

import '../material_ripple/material_ripple.template.dart' as import20;
import '../material_ripple/material_ripple.dart' as import21;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import22;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import23;

import '../interfaces/has_disabled.dart' as import24;

final List<Object> styles$MaterialCheckboxComponent = [import0.styles];

class ViewMaterialCheckboxComponent0 extends import1.ComponentView<import2.MaterialCheckboxComponent> {
  final import3.TextBinding _textBinding_4 = import3.TextBinding();
  late final import4.ViewMaterialIconComponent0 _compView_1;
  late final import5.MaterialIconComponent _MaterialIconComponent_1_5;
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
  Object? _expr_10;
  late final _el_0;
  late final _el_1;
  late final _el_3;
  static import8.ComponentStyles? _componentStyles;
  ViewMaterialCheckboxComponent0(import9.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import11.renderFactory.createElement('material-checkbox');
  }
  static String? get _debugComponentUrl {
    return (import12.isDevMode ? 'asset:angulardart_components/lib/material_checkbox/material_checkbox.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._el_0 = import13.createRenderElement('div');
    import13.appendRenderChild(parentRenderNode, this._el_0);
    this.updateChildClass(this._el_0, 'icon-container');
    this.addShimC(this._el_0);
    this._compView_1 = import4.ViewMaterialIconComponent0(this, 1);
    this._el_1 = this._compView_1.rootElement;
    import13.appendRenderChild(this._el_0, this._el_1);
    import13.updateRenderAttribute(this._el_1, 'aria-hidden', 'true');
    this.updateChildClassNonHtml(this._el_1, 'icon');
    this.addShimC(this._el_1);
    this._MaterialIconComponent_1_5 = import5.MaterialIconComponent(import13.unwrapNode(this._el_1));
    this._compView_1.create(this._MaterialIconComponent_1_5);
    final _anchor_2 = import13.createRenderAnchor();
    import13.appendRenderChild(this._el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialCheckboxComponent1);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    this._el_3 = import13.createRenderElement('div');
    import13.appendRenderChild(parentRenderNode, this._el_3);
    this.updateChildClass(this._el_3, 'content');
    this.addShimC(this._el_3);
    import13.appendRenderChild(this._el_3, this._textBinding_4.element);
    final _text_5 = import13.createRenderText(' ');
    import13.appendRenderChild(this._el_3, _text_5);
    this.project(this._el_3, 0);
    import13.addRenderEventListener(parentRenderNode, 'keyup', this.eventHandler1(_ctx.handleKeyUp));
    import13.addRenderEventListener(parentRenderNode, 'click', this.eventHandler1(_ctx.handleClick));
    import13.addRenderEventListener(parentRenderNode, 'mousedown', this.eventHandler1(_ctx.handleMouseDown));
    import13.addRenderEventListener(parentRenderNode, 'keypress', this.eventHandler1(_ctx.handleKeyPress));
    import13.addRenderEventListener(parentRenderNode, 'focus', this.eventHandler1(_ctx.handleFocus));
    import13.addRenderEventListener(parentRenderNode, 'blur', this.eventHandler1(_ctx.handleBlur));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    final currVal_3 = _ctx.icon;
    if (import16.checkBinding(this._expr_3, currVal_3, 'icon', 'package:angulardart_components/material_checkbox/material_checkbox.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialIconComponent_1_5, 'icon', currVal_3);
      }
      this._MaterialIconComponent_1_5.icon = (currVal_3!) /* REF:package:angulardart_components/material_checkbox/material_checkbox.html:332:345 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', (!(_ctx.disabled ?? false)));
    }
    this._NgIf_2_9.ngIf = ((!(_ctx.disabled ?? false)) ?? false) /* REF:package:angulardart_components/material_checkbox/material_checkbox.html:528:545 */;
    final currVal_0 = _ctx.showFocus;
    if (import16.checkBinding(this._expr_0, currVal_0, 'showFocus', 'package:angulardart_components/material_checkbox/material_checkbox.html')) {
      import13.updateRenderClass(this._el_0, 'focus', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_checkbox/material_checkbox.html:252:277 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.themeColor;
    if (import16.checkBinding(this._expr_1, currVal_1, 'themeColor', 'package:angulardart_components/material_checkbox/material_checkbox.html')) {
      import13.updateRenderStyle(this._el_1, 'color', currVal_1) /* REF:package:angulardart_components/material_checkbox/material_checkbox.html:296:322 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = ((_ctx.checked ?? false) || (_ctx.indeterminate ?? false));
    if (import16.checkBinding(this._expr_2, currVal_2, 'checked || indeterminate', 'package:angulardart_components/material_checkbox/material_checkbox.html')) {
      import13.updateRenderClass(this._el_1, 'filled', (currVal_2 ?? false)) /* REF:package:angulardart_components/material_checkbox/material_checkbox.html:405:446 */;
      this._expr_2 = currVal_2;
    }
    final currVal_4 = _ctx.contentId;
    if (import16.checkBinding(this._expr_4, currVal_4, 'contentId', 'package:angulardart_components/material_checkbox/material_checkbox.html')) {
      this._el_3.setProperty('id', currVal_4) /* REF:package:angulardart_components/material_checkbox/material_checkbox.html:625:641 */;
      this._expr_4 = currVal_4;
    }
    this._appEl_2.detectChangesInNestedViews();
    this._textBinding_4.updateText(import17.interpolateString0(_ctx.label)) /* REF:package:angulardart_components/material_checkbox/material_checkbox.html:645:654 */;
    this._compView_1.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._compView_1.destroyInternalState();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_5 = _ctx.tabIndex;
    if (import16.checkBinding(this._expr_5, currVal_5, null, null)) {
      import13.updateRenderAttribute(this.rootElement, 'tabindex', currVal_5);
      this._expr_5 = currVal_5;
    }
    final currVal_6 = import2.MaterialCheckboxComponent.hostClass;
    if (import16.checkBinding(this._expr_6, currVal_6, null, null)) {
      this.updateChildClassNonHtml(this.rootElement, currVal_6);
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.role;
    if (import16.checkBinding(this._expr_7, currVal_7, null, null)) {
      import13.updateRenderAttribute(this.rootElement, 'role', currVal_7);
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.disabled;
    if (import16.checkBinding(this._expr_8, currVal_8, null, null)) {
      import13.updateRenderClass(this.rootElement, 'disabled', (currVal_8 ?? false));
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.disabled;
    if (import16.checkBinding(this._expr_9, currVal_9, null, null)) {
      import13.updateRenderAttribute(this.rootElement, 'aria-disabled', currVal_9?.toString());
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.contentId;
    if (import16.checkBinding(this._expr_10, currVal_10, null, null)) {
      import13.updateRenderAttribute(this.rootElement, 'aria-labelledby', currVal_10);
      this._expr_10 = currVal_10;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import8.ComponentStyles.scoped(styles$MaterialCheckboxComponent, _debugComponentUrl));
      if (import12.isDevMode) {
        import8.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialCheckboxComponentNgFactory = ComponentFactory<import2.MaterialCheckboxComponent>('material-checkbox', viewFactory_MaterialCheckboxComponentHost0);
ComponentFactory<import2.MaterialCheckboxComponent> get MaterialCheckboxComponentNgFactory {
  return _MaterialCheckboxComponentNgFactory;
}

ComponentFactory<import2.MaterialCheckboxComponent> createMaterialCheckboxComponentFactory() {
  return ComponentFactory('material-checkbox', viewFactory_MaterialCheckboxComponentHost0);
}

class _ViewMaterialCheckboxComponent1 extends import19.EmbeddedView<import2.MaterialCheckboxComponent> {
  late final import20.ViewMaterialRippleComponent0 _compView_0;
  late final import21.MaterialRippleComponent _MaterialRippleComponent_0_5;
  Object? _expr_0;
  late final _el_0;
  _ViewMaterialCheckboxComponent1(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import20.ViewMaterialRippleComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'ripple');
    this.addShimC(this._el_0);
    this._MaterialRippleComponent_0_5 = import21.MaterialRippleComponent(import13.unwrapNode(this._el_0));
    this._compView_0.create(this._MaterialRippleComponent_0_5);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.rippleColor;
    if (import16.checkBinding(this._expr_0, currVal_0, 'rippleColor', 'package:angulardart_components/material_checkbox/material_checkbox.html')) {
      import13.updateRenderStyle(this._el_0, 'color', currVal_0) /* REF:package:angulardart_components/material_checkbox/material_checkbox.html:486:513 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MaterialRippleComponent_0_5.ngOnDestroy();
  }
}

import19.EmbeddedView<void> viewFactory_MaterialCheckboxComponent1(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialCheckboxComponent1(parentView, parentIndex);
}

final List<Object> styles$MaterialCheckboxComponentHost = const [];

class _ViewMaterialCheckboxComponentHost0 extends import23.HostView<import2.MaterialCheckboxComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialCheckboxComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialCheckboxComponent(import13.unwrapNode(_el_0), this.componentView, null, null, null);
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

import23.HostView<import2.MaterialCheckboxComponent> viewFactory_MaterialCheckboxComponentHost0() {
  return _ViewMaterialCheckboxComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialCheckboxComponent, createMaterialCheckboxComponentFactory());
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
}
