// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_select_item.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angulardart_components/dynamic_component/dynamic_component.template.dart' as _ref2;
import 'package:angulardart_components/glyph/glyph.template.dart' as _ref3;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref4;
import 'package:angulardart_components/material_checkbox/material_checkbox.template.dart' as _ref5;
import 'package:angulardart_components/material_select/activation_handler.template.dart' as _ref6;
import 'package:angulardart_components/mixins/material_dropdown_base.template.dart' as _ref7;
import 'package:angulardart_components/model/selection/selection_container.template.dart' as _ref8;
import 'package:angulardart_components/model/selection/selection_model.template.dart' as _ref9;
import 'package:angulardart_components/model/ui/has_factory.template.dart' as _ref10;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref11;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref12;
import 'package:angulardart_components/material_select/material_select_item.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_select_item.dart' as import2;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import5;
import 'package:angulardart/src/core/linker/views/view.dart' as import6;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import8;
import 'package:angulardart/src/utilities.dart' as import9;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import10;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import12;
import 'package:angulardart/src/runtime/check_binding.dart' as import13;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import15;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import16;

import '../material_checkbox/material_checkbox.template.dart' as import17;
import '../material_checkbox/material_checkbox.dart' as import18;
import '../interfaces/has_disabled.dart' as import19;
import '../glyph/glyph.template.dart' as import20;
import '../glyph/glyph.dart' as import21;

import 'package:angulardart/src/runtime/text_binding.dart' as import22;
import 'package:angulardart/src/runtime/interpolate.dart' as import23;

import '../dynamic_component/dynamic_component.template.dart' as import24;
import '../dynamic_component/dynamic_component.dart' as import25;

import 'package:angulardart/src/di/errors.dart' as import26;
import 'package:angulardart/src/core/linker/dynamic_component_loader.dart' as import27;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import28;

import '../mixins/material_dropdown_base.dart' as import29;
import 'activation_handler.dart' as import30;
import '../model/selection/selection_container.dart' as import31;
import '../model/ui/has_renderer.dart' as import32;

final List<Object> styles$MaterialSelectItemComponent = [import0.styles];

class ViewMaterialSelectItemComponent0<T> extends import1.ComponentView<import2.MaterialSelectItemComponent<T>> {
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
  late final ViewContainer _appEl_6;
  late final NgIf _NgIf_6_9;
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
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialSelectItemComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-select-item');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/material_select/material_select_item.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _anchor_0 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_0);
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialSelectItemComponent1<T>(parentView, parentIndex);
    });
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
    final _text_1 = import10.createRenderText(' ');
    import10.appendRenderChild(parentRenderNode, _text_1);
    final _anchor_2 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_2);
    this._appEl_2 = ViewContainer(2, null, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialSelectItemComponent2<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _text_3 = import10.createRenderText('\n \n');
    import10.appendRenderChild(parentRenderNode, _text_3);
    final _anchor_4 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_4);
    this._appEl_4 = ViewContainer(4, null, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, (parentView, parentIndex) {
      return viewFactory_MaterialSelectItemComponent6<T>(parentView, parentIndex);
    });
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
    final _text_5 = import10.createRenderText('\n ');
    import10.appendRenderChild(parentRenderNode, _text_5);
    final _anchor_6 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_6);
    this._appEl_6 = ViewContainer(6, null, this, _anchor_6);
    var _TemplateRef_6_8 = TemplateRef(this._appEl_6, (parentView, parentIndex) {
      return viewFactory_MaterialSelectItemComponent7<T>(parentView, parentIndex);
    });
    this._NgIf_6_9 = NgIf(this._appEl_6, _TemplateRef_6_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_6, this._NgIf_6_9);
    }
    this.project(parentRenderNode, 0);
    import10.addRenderEventListener(parentRenderNode, 'click', this.eventHandler1(_ctx.handleClick));
    import10.addRenderEventListener(parentRenderNode, 'keypress', this.eventHandler1(_ctx.handleKeyPress));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', (((!(_ctx.supportsMultiSelect ?? false)) ?? false) && (_ctx.isSelected ?? false)));
    }
    this._NgIf_0_9.ngIf = ((((!(_ctx.supportsMultiSelect ?? false)) ?? false) && (_ctx.isSelected ?? false)) ?? false) /* REF:package:angulardart_components/material_select/material_select_item.html:224:266 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', ((_ctx.supportsMultiSelect ?? false) && ((!(_ctx.hideCheckbox ?? false)) ?? false)));
    }
    this._NgIf_2_9.ngIf = (((_ctx.supportsMultiSelect ?? false) && ((!(_ctx.hideCheckbox ?? false)) ?? false)) ?? false) /* REF:package:angulardart_components/material_select/material_select_item.html:326:371 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', _ctx.valueHasLabel);
    }
    this._NgIf_4_9.ngIf = (_ctx.valueHasLabel ?? false) /* REF:package:angulardart_components/material_select/material_select_item.html:721:742 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_6_9, 'ngIf', (((_ctx.componentType != null) ?? false) || ((_ctx.componentFactory != null) ?? false)));
    }
    this._NgIf_6_9.ngIf = ((((_ctx.componentType != null) ?? false) || ((_ctx.componentFactory != null) ?? false)) ?? false) /* REF:package:angulardart_components/material_select/material_select_item.html:805:862 */;
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
    this._appEl_6.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
    this._appEl_6.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.tabIndex;
    if (import13.checkBinding(this._expr_0, currVal_0, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'tabindex', currVal_0);
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.ariaRole;
    if (import13.checkBinding(this._expr_1, currVal_1, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'role', currVal_1);
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.disabledStr;
    if (import13.checkBinding(this._expr_2, currVal_2, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'aria-disabled', currVal_2);
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.disabled;
    if (import13.checkBinding(this._expr_3, currVal_3, null, null)) {
      import10.updateRenderClass(this.rootElement, 'is-disabled', (currVal_3 ?? false));
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.disabled;
    if (import13.checkBinding(this._expr_4, currVal_4, null, null)) {
      import10.updateRenderClass(this.rootElement, 'disabled', (currVal_4 ?? false));
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.supportsMultiSelect;
    if (import13.checkBinding(this._expr_5, currVal_5, null, null)) {
      import10.updateRenderClass(this.rootElement, 'multiselect', (currVal_5 ?? false));
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.isAriaChecked;
    if (import13.checkBinding(this._expr_6, currVal_6, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'aria-checked', currVal_6?.toString());
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.isSelected;
    if (import13.checkBinding(this._expr_7, currVal_7, null, null)) {
      import10.updateRenderClass(this.rootElement, 'selected', (currVal_7 ?? false));
      this._expr_7 = currVal_7;
    }
    final currVal_8 = import2.MaterialSelectItemComponent.hostClass;
    if (import13.checkBinding(this._expr_8, currVal_8, null, null)) {
      this.updateChildClassNonHtml(this.rootElement, currVal_8);
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.isHidden;
    if (import13.checkBinding(this._expr_9, currVal_9, null, null)) {
      import10.updateRenderClass(this.rootElement, 'hidden', (currVal_9 ?? false));
      this._expr_9 = currVal_9;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialSelectItemComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialSelectItemComponentNgFactory = ComponentFactory<import2.MaterialSelectItemComponent>('material-select-item', viewFactory_MaterialSelectItemComponentHost0);
ComponentFactory<import2.MaterialSelectItemComponent> get MaterialSelectItemComponentNgFactory {
  return _MaterialSelectItemComponentNgFactory;
}

ComponentFactory<import2.MaterialSelectItemComponent<T>> createMaterialSelectItemComponentFactory<T>() {
  return ComponentFactory('material-select-item', viewFactory_MaterialSelectItemComponentHost0);
}

class _ViewMaterialSelectItemComponent1<T> extends import15.EmbeddedView<import2.MaterialSelectItemComponent<T>> {
  _ViewMaterialSelectItemComponent1(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'selected-accent mixin');
    this.addShimC(_el_0);
    this.initRootNode(_el_0);
  }
}

import15.EmbeddedView<void> viewFactory_MaterialSelectItemComponent1<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialSelectItemComponent1<T>(parentView, parentIndex);
}

class _ViewMaterialSelectItemComponent2<T> extends import15.EmbeddedView<import2.MaterialSelectItemComponent<T>> {
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  _ViewMaterialSelectItemComponent2(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _anchor_0 = import10.createRenderAnchor();
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialSelectItemComponent3<T>(parentView, parentIndex);
    });
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
    final _text_1 = import10.createRenderText('  ');
    final _anchor_2 = import10.createRenderAnchor();
    this._appEl_2 = ViewContainer(2, null, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialSelectItemComponent4<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[this._appEl_0, _text_1, this._appEl_2]), null);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', (!(_ctx.useCheckMarks ?? false)));
    }
    this._NgIf_0_9.ngIf = ((!(_ctx.useCheckMarks ?? false)) ?? false) /* REF:package:angulardart_components/material_select/material_select_item.html:394:416 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', _ctx.useCheckMarks);
    }
    this._NgIf_2_9.ngIf = (_ctx.useCheckMarks ?? false) /* REF:package:angulardart_components/material_select/material_select_item.html:535:556 */;
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
  }
}

import15.EmbeddedView<void> viewFactory_MaterialSelectItemComponent2<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialSelectItemComponent2<T>(parentView, parentIndex);
}

class _ViewMaterialSelectItemComponent3<T> extends import15.EmbeddedView<import2.MaterialSelectItemComponent<T>> {
  late final import17.ViewMaterialCheckboxComponent0 _compView_0;
  late final import18.MaterialCheckboxComponent _MaterialCheckboxComponent_0_5;
  Object? _expr_0;
  Object? _expr_1;
  _ViewMaterialSelectItemComponent3(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import17.ViewMaterialCheckboxComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import10.updateRenderTabIndex(_el_0, -1);
    this.addShimC(_el_0);
    this._MaterialCheckboxComponent_0_5 = import18.MaterialCheckboxComponent(import10.unwrapNode(_el_0), this._compView_0, null, '-1', null);
    this._compView_0.createAndProject(this._MaterialCheckboxComponent_0_5, [const <Object>[]]);
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import19.HasDisabled) && (0 == nodeIndex))) {
      return this._MaterialCheckboxComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    final currVal_0 = _ctx.disabled;
    if (import13.checkBinding(this._expr_0, currVal_0, 'disabled', 'package:angulardart_components/material_select/material_select_item.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialCheckboxComponent_0_5, 'disabled', currVal_0);
      }
      this._MaterialCheckboxComponent_0_5.disabled = (currVal_0!) /* REF:package:angulardart_components/material_select/material_select_item.html:472:493 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.isSelected;
    if (import13.checkBinding(this._expr_1, currVal_1, 'isSelected', 'package:angulardart_components/material_select/material_select_item.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialCheckboxComponent_0_5, 'checked', currVal_1);
      }
      this._MaterialCheckboxComponent_0_5.checked = (currVal_1!) /* REF:package:angulardart_components/material_select/material_select_item.html:443:465 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MaterialCheckboxComponent_0_5.ngOnDestroy();
  }
}

import15.EmbeddedView<void> viewFactory_MaterialSelectItemComponent3<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialSelectItemComponent3<T>(parentView, parentIndex);
}

class _ViewMaterialSelectItemComponent4<T> extends import15.EmbeddedView<import2.MaterialSelectItemComponent<T>> {
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  _ViewMaterialSelectItemComponent4(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('span');
    this.updateChildClass(_el_0, 'check-container');
    this.addShimC(_el_0);
    final _anchor_1 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialSelectItemComponent5<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.isSelected);
    }
    this._NgIf_1_9.ngIf = (_ctx.isSelected ?? false) /* REF:package:angulardart_components/material_select/material_select_item.html:593:611 */;
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }
}

import15.EmbeddedView<void> viewFactory_MaterialSelectItemComponent4<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialSelectItemComponent4<T>(parentView, parentIndex);
}

class _ViewMaterialSelectItemComponent5<T> extends import15.EmbeddedView<import2.MaterialSelectItemComponent<T>> {
  late final import20.ViewGlyphComponent0 _compView_0;
  late final import21.GlyphComponent _GlyphComponent_0_5;
  _ViewMaterialSelectItemComponent5(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import20.ViewGlyphComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import10.updateRenderAttribute(_el_0, 'baseline', '');
    this.updateChildClassNonHtml(_el_0, 'check');
    import10.updateRenderAttribute(_el_0, 'icon', 'check');
    this.addShimC(_el_0);
    this._GlyphComponent_0_5 = import21.GlyphComponent(import10.unwrapNode(_el_0));
    this._compView_0.create(this._GlyphComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._GlyphComponent_0_5, 'icon', 'check');
      }
      this._GlyphComponent_0_5.icon = 'check' /* REF:package:angulardart_components/material_select/material_select_item.html:659:671 */;
      changed = true;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }
}

import15.EmbeddedView<void> viewFactory_MaterialSelectItemComponent5<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialSelectItemComponent5<T>(parentView, parentIndex);
}

class _ViewMaterialSelectItemComponent6<T> extends import15.EmbeddedView<import2.MaterialSelectItemComponent<T>> {
  final import22.TextBinding _textBinding_1 = import22.TextBinding();
  _ViewMaterialSelectItemComponent6(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('span');
    this.updateChildClass(_el_0, 'label');
    this.addShimC(_el_0);
    import10.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import23.interpolateString0(_ctx.valueLabel)) /* REF:package:angulardart_components/material_select/material_select_item.html:757:771 */;
  }
}

import15.EmbeddedView<void> viewFactory_MaterialSelectItemComponent6<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialSelectItemComponent6<T>(parentView, parentIndex);
}

class _ViewMaterialSelectItemComponent7<T> extends import15.EmbeddedView<import2.MaterialSelectItemComponent<T>> {
  late final import24.ViewDynamicComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import25.DynamicComponent _DynamicComponent_0_8;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  _ViewMaterialSelectItemComponent7(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import24.ViewDynamicComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'dynamic-item');
    this.addShimC(_el_0);
    this._appEl_0 = ViewContainer(0, null, this, _el_0);
    this._DynamicComponent_0_8 = (import9.isDevMode
        ? import26.debugInjectorWrap(import25.DynamicComponent, () {
            return import25.DynamicComponent((this.parentView!).injectorGet(import27.SlowComponentLoader, this.parentIndex), this._appEl_0);
          })
        : import25.DynamicComponent((this.parentView!).injectorGet(import27.SlowComponentLoader, this.parentIndex), this._appEl_0));
    this._compView_0.create(this._DynamicComponent_0_8);
    final subscription_0 = this._DynamicComponent_0_8.onLoad.listen(this.eventHandler1(_ctx.onLoadCustomComponent));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[this._appEl_0]), [subscription_0]);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    final currVal_0 = _ctx.componentType;
    if (import13.checkBinding(this._expr_0, currVal_0, 'componentType', 'package:angulardart_components/material_select/material_select_item.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'componentType', currVal_0);
      }
      this._DynamicComponent_0_8.componentType = (currVal_0!) /* REF:package:angulardart_components/material_select/material_select_item.html:937:968 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.componentFactory;
    if (import13.checkBinding(this._expr_1, currVal_1, 'componentFactory', 'package:angulardart_components/material_select/material_select_item.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'componentFactory', currVal_1);
      }
      this._DynamicComponent_0_8.componentFactory = (currVal_1!) /* REF:package:angulardart_components/material_select/material_select_item.html:973:1010 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.value;
    if (import13.checkBinding(this._expr_2, currVal_2, 'value', 'package:angulardart_components/material_select/material_select_item.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'value', currVal_2);
      }
      this._DynamicComponent_0_8.value = (currVal_2!) /* REF:package:angulardart_components/material_select/material_select_item.html:1015:1030 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (changed) {
      this._DynamicComponent_0_8.ngAfterChanges();
    }
    this._appEl_0.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._DynamicComponent_0_8.ngOnDestroy();
  }
}

import15.EmbeddedView<void> viewFactory_MaterialSelectItemComponent7<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialSelectItemComponent7<T>(parentView, parentIndex);
}

final List<Object> styles$MaterialSelectItemComponentHost = const [];

class _ViewMaterialSelectItemComponentHost0<T> extends import28.HostView<import2.MaterialSelectItemComponent<T>> {
  @override
  void build() {
    this.componentView = ViewMaterialSelectItemComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import9.isDevMode
        ? import26.debugInjectorWrap(import2.MaterialSelectItemComponent, () {
            return import2.MaterialSelectItemComponent(import10.unwrapNode(_el_0), this.injectorGetOptional(import29.DropdownHandle, this.parentIndex), this.injectorGetOptional(import30.ActivationHandler, this.parentIndex), this.componentView, null);
          })
        : import2.MaterialSelectItemComponent(import10.unwrapNode(_el_0), this.injectorGetOptional(import29.DropdownHandle, this.parentIndex), this.injectorGetOptional(import30.ActivationHandler, this.parentIndex), this.componentView, null));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import31.SelectionItem) || identical(token, import19.HasDisabled)) || identical(token, import32.HasRenderer)) && (0 == nodeIndex))) {
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

import28.HostView<import2.MaterialSelectItemComponent<T>> viewFactory_MaterialSelectItemComponentHost0<T>() {
  return _ViewMaterialSelectItemComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialSelectItemComponent, createMaterialSelectItemComponentFactory());
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
  _ref11.initReflector();
  _ref12.initReflector();
}
