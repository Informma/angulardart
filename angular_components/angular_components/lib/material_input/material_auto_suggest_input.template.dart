// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_auto_suggest_input.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'material_input.template.dart' as _ref0;

import 'package:angulardart/angulardart.template.dart' as _ref1;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref2;
import 'package:angulardart_components/content/deferred_content.template.dart' as _ref3;
import 'package:angulardart_components/dynamic_component/dynamic_component.template.dart' as _ref4;
import 'package:angulardart_components/focus/focus.template.dart' as _ref5;
import 'package:angulardart_components/focus/focus_trap.template.dart' as _ref6;
import 'package:angulardart_components/focus/keyboard_only_focus_indicator.template.dart' as _ref7;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref8;
import 'package:angulardart_components/laminate/enums/alignment.template.dart' as _ref9;
import 'package:angulardart_components/laminate/popup/popup.template.dart' as _ref10;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref11;
import 'package:angulardart_components/material_input/input_wrapper.template.dart' as _ref12;
import 'package:angulardart_components/material_list/material_list.template.dart' as _ref13;
import 'package:angulardart_components/material_popup/material_popup.template.dart' as _ref14;
import 'package:angulardart_components/material_select/material_select_base.template.dart' as _ref15;
import 'package:angulardart_components/material_select/material_select_dropdown_item.template.dart' as _ref16;
import 'package:angulardart_components/material_spinner/material_spinner.template.dart' as _ref17;
import 'package:angulardart_components/material_tooltip/material_tooltip.template.dart' as _ref18;
import 'package:angulardart_components/mixins/highlight_assistant_mixin.template.dart' as _ref19;
import 'package:angulardart_components/mixins/material_dropdown_base.template.dart' as _ref20;
import 'package:angulardart_components/mixins/selection_input_adapter.template.dart' as _ref21;
import 'package:angulardart_components/model/a11y/active_item.template.dart' as _ref22;
import 'package:angulardart_components/model/a11y/active_item_directive.template.dart' as _ref23;
import 'package:angulardart_components/model/a11y/keyboard_handler_mixin.template.dart' as _ref24;
import 'package:angulardart_components/model/selection/select.template.dart' as _ref25;
import 'package:angulardart_components/model/selection/selection_container.template.dart' as _ref26;
import 'package:angulardart_components/model/selection/selection_model.template.dart' as _ref27;
import 'package:angulardart_components/model/selection/selection_options.template.dart' as _ref28;
import 'package:angulardart_components/model/selection/string_selection_options.template.dart' as _ref29;
import 'package:angulardart_components/model/ui/has_factory.template.dart' as _ref30;
import 'package:angulardart_components/model/ui/highlight_provider.template.dart' as _ref31;
import 'package:angulardart_components/model/ui/template_support.template.dart' as _ref32;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref33;
import 'package:angulardart_components/stop_propagation/stop_propagation.template.dart' as _ref34;
import 'package:angulardart_components/utils/angular/properties/properties.template.dart' as _ref35;
import 'package:angulardart_components/utils/async/async.template.dart' as _ref36;
import 'package:angulardart_components/utils/id_generator/id_generator.template.dart' as _ref37;
import 'package:angulardart_forms/angulardart_forms.template.dart' as _ref38;
import 'package:angulardart_components/material_input/material_auto_suggest_input.scss.css.shim.dart' as import0;
import 'package:angulardart_components/material_input/material_input_wrapper.scss.css.shim.dart' as import1;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import2;

import 'material_auto_suggest_input.dart' as import3;
import '../material_popup/material_popup.dart' as import4;
import 'material_input.template.dart' as import5;
import 'deferred_validator.dart' as import6;

import 'dart:core';

import 'package:angulardart_forms/src/directives/ng_model.dart' as import8;

import 'material_input.dart' as import9;
import 'material_input_default_value_accessor.dart' as import10;
import '../src/laminate/popup/popup_source_directive.dart' as import11;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';

import '../material_popup/material_popup.template.dart' as import14;
import '../focus/keyboard_only_focus_indicator.dart' as import15;
import '../content/deferred_content.dart' as import16;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import17;
import 'package:angulardart/src/core/linker/views/view.dart' as import18;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import20;
import 'package:angulardart/src/utilities.dart' as import21;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import22;
import 'package:angulardart/src/di/errors.dart' as import23;

import '../src/laminate/popup/dom_popup_source.dart' as import24;

import 'package:angulardart/src/devtools.dart' as import25;
import 'package:angulardart/src/core/linker/template_ref.dart';

import '../src/laminate/popup/popup_hierarchy.dart' as import27;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import28;

import '../src/laminate/overlay/overlay_service.dart' as import29;
import '../utils/browser/dom_service/dom_service.dart' as import30;
import '../laminate/overlay/zindexer.dart' as import31;

import 'package:angulardart_meta/src/di_tokens.dart' as import32;
import 'package:angulardart_components/laminate/enums/alignment.dart' as import33;

import '../src/laminate/popup/popup_size_provider.dart' as import34;

import 'package:angulardart/src/core/linker/element_ref.dart';
import 'package:angulardart_forms/src/directives/ng_control.dart' as import36;

import 'base_material_input.dart' as import37;
import '../utils/angular/reference/reference.dart' as import38;
import '../focus/focus_interface.dart' as import39;
import '../interfaces/has_disabled.dart' as import40;
import '../content/deferred_content_aware.dart' as import41;
import '../mixins/material_dropdown_base.dart' as import42;
import '../src/laminate/popup/popup_ref.dart' as import43;

import 'package:angulardart/src/runtime/check_binding.dart' as import44;
import 'package:angulardart/src/runtime/interpolate.dart' as import45;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import47;

import '../src/material_tooltip/tooltip_controller.dart' as import48;
import '../material_tooltip/module.dart' as import49;
import '../utils/disposer/disposer.dart' as import50;
import '../material_icon/material_icon.template.dart' as import51;
import '../button_decorator/button_decorator.template.dart' as import52;
import '../material_icon/material_icon.dart' as import53;
import '../src/material_tooltip/tooltip.dart' as import54;
import '../stop_propagation/stop_propagation.dart' as import55;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import56;

import '../button_decorator/button_decorator.dart' as import57;

import 'package:angulardart_components/src/dom/dom_apis.dart' as import58;

import '../focus/focus_trap.template.dart' as import59;
import '../focus/focus_trap.dart' as import60;
import '../material_spinner/material_spinner.template.dart' as import61;
import '../material_spinner/material_spinner.dart' as import62;

import 'package:angulardart/src/runtime/text_binding.dart' as import63;

import '../material_list/material_list.template.dart' as import64;
import '../material_list/material_list.dart' as import65;

import 'package:angulardart/src/common/directives/ng_for.dart' as import66;

import '../dynamic_component/dynamic_component.template.dart' as import67;
import '../dynamic_component/dynamic_component.dart' as import68;

import 'package:angulardart/src/core/linker/dynamic_component_loader.dart' as import69;

import '../material_select/material_select_dropdown_item.template.dart' as import70;
import '../material_select/material_select_dropdown_item.dart' as import71;
import '../material_select/activation_handler.dart' as import72;
import '../utils/id_generator/id_generator.dart' as import73;
import '../model/selection/selection_container.dart' as import74;
import '../model/ui/has_renderer.dart' as import75;
import '../model/a11y/active_item_directive.template.dart' as import76;
import '../model/a11y/active_item_directive.dart' as import77;
import '../laminate/components/modal/modal.dart' as import78;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import79;

import '../model/ui/highlight_provider.dart' as import80;
import '../model/ui/has_factory.dart' as import81;

final List<Object> styles$MaterialAutoSuggestInputComponent = [import0.styles, import1.styles];

class ViewMaterialAutoSuggestInputComponent0<T> extends import2.ComponentView<import3.MaterialAutoSuggestInputComponent<T>> {
  late dynamic _PopupRef_3_11 = import4.getResolvedPopupRef(this._MaterialPopupComponent_3_8);
  late dynamic _PopupHierarchy_3_12 = import4.getHierarchy(this._MaterialPopupComponent_3_8);
  late final import5.ViewMaterialInputComponent0 _compView_0;
  late final import6.DeferredValidator _DeferredValidator_0_5;
  late final List<Object> _NgValidators_0_6;
  late final import8.NgModel _NgModel_0_7;
  late final import9.MaterialInputComponent _MaterialInputComponent_0_9;
  late final import10.MaterialInputDefaultValueAccessor _MaterialInputDefaultValueAccessor_0_11;
  late final import11.PopupSourceDirective _PopupSourceDirective_0_14;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final import14.ViewMaterialPopupComponent0 _compView_3;
  late final ViewContainer _appEl_3;
  late final import4.MaterialPopupComponent _MaterialPopupComponent_3_8;
  late final import15.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_4_5;
  late final ViewContainer _appEl_5;
  late final import16.CachingDeferredContentDirective _CachingDeferredContentDirective_5_9;
  late final import15.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_6_5;
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
  Object? _expr_11;
  Object? _expr_12;
  Object? _expr_13;
  Object? _expr_14;
  Object? _expr_15;
  Object? _expr_16;
  Object? _expr_17;
  Object? _expr_19;
  Object? _expr_20;
  Object? _expr_22;
  Object? _expr_24;
  Object? _expr_25;
  Object? _expr_26;
  Object? _expr_27;
  Object? _expr_29;
  Object? _expr_30;
  Object? _expr_31;
  Object? _expr_32;
  Object? _expr_33;
  Object? _expr_34;
  Object? _expr_36;
  Object? _expr_37;
  Object? _expr_38;
  late final _el_0;
  late final _el_3;
  static import17.ComponentStyles? _componentStyles;
  ViewMaterialAutoSuggestInputComponent0(import18.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import20.renderFactory.createElement('material-auto-suggest-input');
  }
  static String? get _debugComponentUrl {
    return (import21.isDevMode ? 'asset:angulardart_components/lib/material_input/material_auto_suggest_input.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._compView_0 = import5.ViewMaterialInputComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import22.appendRenderChild(parentRenderNode, this._el_0);
    import22.updateRenderAttribute(this._el_0, 'alignPositionY', 'after');
    import22.updateRenderAttribute(this._el_0, 'initPopupAriaAttributes', 'false');
    import22.updateRenderAttribute(this._el_0, 'inputAriaAutocomplete', 'list');
    import22.updateRenderAttribute(this._el_0, 'inputAriaHasPopup', 'listbox');
    import22.updateRenderAttribute(this._el_0, 'popupSource', '');
    import22.updateRenderAttribute(this._el_0, 'role', 'combobox');
    this.addShimC(this._el_0);
    this._DeferredValidator_0_5 = import6.DeferredValidator();
    this._NgValidators_0_6 = [this._DeferredValidator_0_5];
    this._NgModel_0_7 = import8.NgModel(this._NgValidators_0_6, null);
    this._MaterialInputComponent_0_9 = import9.MaterialInputComponent(null, null, this._NgModel_0_7, this._compView_0, this._DeferredValidator_0_5);
    this._MaterialInputDefaultValueAccessor_0_11 = import10.MaterialInputDefaultValueAccessor(this._MaterialInputComponent_0_9, this._NgModel_0_7);
    this._PopupSourceDirective_0_14 = (import21.isDevMode
        ? import23.debugInjectorWrap(import11.PopupSourceDirective, () {
            return import11.PopupSourceDirective((this.parentView!).injectorGet(import24.DomPopupSourceFactory, this.parentIndex), import22.unwrapNode(this._el_0), this._MaterialInputComponent_0_9, this._MaterialInputComponent_0_9, 'false');
          })
        : import11.PopupSourceDirective((this.parentView!).injectorGet(import24.DomPopupSourceFactory, this.parentIndex), import22.unwrapNode(this._el_0), this._MaterialInputComponent_0_9, this._MaterialInputComponent_0_9, 'false'));
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(this._el_0, this._NgModel_0_7);
      import25.Inspector.instance.registerDirective(this._el_0, this._MaterialInputDefaultValueAccessor_0_11);
      import25.Inspector.instance.registerDirective(this._el_0, this._PopupSourceDirective_0_14);
    }
    final _el_1 = import22.createRenderElement('span');
    import22.updateRenderAttribute(_el_1, 'trailing', '');
    this.addShimC(_el_1);
    final _anchor_2 = import22.createRenderAnchor();
    import22.appendRenderChild(_el_1, _anchor_2);
    this._appEl_2 = ViewContainer(2, 1, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialAutoSuggestInputComponent1<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    this.project(_el_1, 0);
    this._compView_0.createAndProject(this._MaterialInputComponent_0_9, [
      <Object>[_el_1],
      const <Object>[],
    ]);
    this._compView_3 = import14.ViewMaterialPopupComponent0(this, 3);
    this._el_3 = this._compView_3.rootElement;
    import22.appendRenderChild(parentRenderNode, this._el_3);
    import22.updateRenderAttribute(this._el_3, 'trackLayoutChanges', '');
    this.addShimC(this._el_3);
    this._appEl_3 = ViewContainer(3, null, this, this._el_3);
    this._MaterialPopupComponent_3_8 = (import21.isDevMode
        ? import23.debugInjectorWrap(import4.MaterialPopupComponent, () {
            return import4.MaterialPopupComponent((this.parentView!).injectorGetOptional(import27.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import4.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import28.NgZone, this.parentIndex), (this.parentView!).injectorGet(import29.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import30.DomService, this.parentIndex), (this.parentView!).injectorGet(import31.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import32.OpaqueToken<List<import33.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import32.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import32.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import34.PopupSizeProvider, this.parentIndex), this._compView_3, this._appEl_3, ElementRef(import22.unwrapNode(this._el_3)));
          })
        : import4.MaterialPopupComponent((this.parentView!).injectorGetOptional(import27.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import4.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import28.NgZone, this.parentIndex), (this.parentView!).injectorGet(import29.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import30.DomService, this.parentIndex), (this.parentView!).injectorGet(import31.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import32.OpaqueToken<List<import33.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import32.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import32.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import34.PopupSizeProvider, this.parentIndex), this._compView_3, this._appEl_3, ElementRef(import22.unwrapNode(this._el_3))));
    final _el_4 = import22.createRenderElement('div');
    import22.updateRenderAttribute(_el_4, 'header', '');
    import22.updateRenderAttribute(_el_4, 'keyboardOnlyFocusIndicator', '');
    import22.updateRenderTabIndex(_el_4, -1);
    this.addShimC(_el_4);
    this._KeyboardOnlyFocusIndicatorDirective_4_5 = (import21.isDevMode
        ? import23.debugInjectorWrap(import15.KeyboardOnlyFocusIndicatorDirective, () {
            return import15.KeyboardOnlyFocusIndicatorDirective(import22.unwrapNode(_el_4), (this.parentView!).injectorGet(import30.DomService, this.parentIndex));
          })
        : import15.KeyboardOnlyFocusIndicatorDirective(import22.unwrapNode(_el_4), (this.parentView!).injectorGet(import30.DomService, this.parentIndex)));
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_el_4, this._KeyboardOnlyFocusIndicatorDirective_4_5);
    }
    this.project(_el_4, 1);
    final _anchor_5 = import22.createRenderAnchor();
    this._appEl_5 = ViewContainer(5, 3, this, _anchor_5);
    var _TemplateRef_5_8 = TemplateRef(this._appEl_5, (parentView, parentIndex) {
      return viewFactory_MaterialAutoSuggestInputComponent2<T>(parentView, parentIndex);
    });
    this._CachingDeferredContentDirective_5_9 = import16.CachingDeferredContentDirective(this._appEl_5, _TemplateRef_5_8, this._MaterialPopupComponent_3_8, this);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_5, this._CachingDeferredContentDirective_5_9);
    }
    final _el_6 = import22.createRenderElement('div');
    import22.updateRenderAttribute(_el_6, 'footer', '');
    import22.updateRenderAttribute(_el_6, 'keyboardOnlyFocusIndicator', '');
    import22.updateRenderTabIndex(_el_6, -1);
    this.addShimC(_el_6);
    this._KeyboardOnlyFocusIndicatorDirective_6_5 = (import21.isDevMode
        ? import23.debugInjectorWrap(import15.KeyboardOnlyFocusIndicatorDirective, () {
            return import15.KeyboardOnlyFocusIndicatorDirective(import22.unwrapNode(_el_6), (this.parentView!).injectorGet(import30.DomService, this.parentIndex));
          })
        : import15.KeyboardOnlyFocusIndicatorDirective(import22.unwrapNode(_el_6), (this.parentView!).injectorGet(import30.DomService, this.parentIndex)));
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_el_6, this._KeyboardOnlyFocusIndicatorDirective_6_5);
    }
    this.project(_el_6, 2);
    this._compView_3.createAndProject(this._MaterialPopupComponent_3_8, [
      <Object>[_el_4],
      <Object>[this._appEl_5],
      <Object>[_el_6],
    ]);
    import22.addRenderEventListener(this._el_0, 'click', this.eventHandler1(_ctx.handleClick));
    import22.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(_ctx.onKeyDown));
    import22.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(_ctx.onKeyPress));
    final subscription_0 = this._NgModel_0_7.update.listen(this.eventHandler1(_ctx.handleChange));
    final subscription_1 = this._MaterialInputComponent_0_9.onFocus.listen(this.eventHandler1(_ctx.handleFocus));
    final subscription_2 = this._MaterialInputComponent_0_9.onBlur.listen(this.eventHandler1(_ctx.handleBlur));
    final subscription_3 = this._MaterialPopupComponent_3_8.onVisible.listen(this.eventHandler1(this._handleEvent_0));
    import22.addRenderEventListener(_el_4, 'keyup', this.eventHandler1(_ctx.onKeyUp));
    import22.addRenderEventListener(_el_4, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_4_5.keydown));
    import22.addRenderEventListener(_el_4, 'blur', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_4_5.resetOutline));
    import22.addRenderEventListener(_el_4, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_4_5.onMouseInteraction));
    import22.addRenderEventListener(_el_4, 'click', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_4_5.onMouseInteraction));
    import22.addRenderEventListener(_el_4, 'focus', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_4_5.onFocus));
    import22.addRenderEventListener(_el_6, 'keyup', this.eventHandler1(_ctx.onKeyUp));
    import22.addRenderEventListener(_el_6, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_6_5.keydown));
    import22.addRenderEventListener(_el_6, 'blur', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_6_5.resetOutline));
    import22.addRenderEventListener(_el_6, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_6_5.onMouseInteraction));
    import22.addRenderEventListener(_el_6, 'click', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_6_5.onMouseInteraction));
    import22.addRenderEventListener(_el_6, 'focus', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_6_5.onFocus));
    import18.View.queryChangeDetectorRefs[this._MaterialInputComponent_0_9] = this._compView_0;
    _ctx.input = this._MaterialInputComponent_0_9;
    this.initSubscriptions([subscription_0, subscription_1, subscription_2, subscription_3]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 2)) {
      if (identical(token, import6.DeferredValidator)) {
        return this._DeferredValidator_0_5;
      }
      if (identical(token, const import32.MultiToken<Object>('NgValidators'))) {
        return this._NgValidators_0_6;
      }
      if ((identical(token, import8.NgModel) || identical(token, import36.NgControl))) {
        return this._NgModel_0_7;
      }
      if (((((identical(token, import9.MaterialInputComponent) || identical(token, import37.BaseMaterialInput)) || identical(token, import38.ReferenceDirective)) || identical(token, import39.Focusable)) || identical(token, import40.HasDisabled))) {
        return this._MaterialInputComponent_0_9;
      }
    }
    if (((3 <= nodeIndex) && (nodeIndex <= 6))) {
      if (((identical(token, import4.MaterialPopupComponent) || identical(token, import41.DeferredContentAware)) || identical(token, import42.DropdownHandle))) {
        return this._MaterialPopupComponent_3_8;
      }
      if (identical(token, import43.PopupRef)) {
        return this._PopupRef_3_11;
      }
      if (identical(token, import27.PopupHierarchy)) {
        return this._PopupHierarchy_3_12;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_input = this._PopupSourceDirective_0_14;
    changed = false;
    final currVal_1 = _ctx.inputText;
    if (import44.checkBinding(this._expr_1, currVal_1, 'inputText', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._NgModel_0_7, 'ngModel', currVal_1);
      }
      this._NgModel_0_7.model = (currVal_1!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:378:399 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    if (changed) {
      this._NgModel_0_7.ngAfterChanges();
    }
    if (((!import44.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_0_7.ngOnInit();
    }
    changed = false;
    if (firstCheck) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'role', 'combobox');
      }
      this._MaterialInputComponent_0_9.role = 'combobox' /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:793:808 */;
      changed = true;
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'inputAriaHasPopup', 'listbox');
      }
      this._MaterialInputComponent_0_9.inputAriaHasPopup = 'listbox' /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:948:975 */;
      changed = true;
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'inputAriaAutocomplete', 'list');
      }
      this._MaterialInputComponent_0_9.inputAriaAutocomplete = 'list' /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1090:1118 */;
      changed = true;
    }
    final currVal_2 = _ctx.label;
    if (import44.checkBinding(this._expr_2, currVal_2, 'label', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'label', currVal_2);
      }
      this._MaterialInputComponent_0_9.label = (currVal_2!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:358:373 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.ariaLabel;
    if (import44.checkBinding(this._expr_3, currVal_3, 'ariaLabel', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'inputAriaLabel', currVal_3);
      }
      this._MaterialInputComponent_0_9.inputAriaLabel = (currVal_3!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:813:841 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.inputAutocomplete;
    if (import44.checkBinding(this._expr_4, currVal_4, 'inputAutocomplete', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'inputAutocomplete', currVal_4);
      }
      this._MaterialInputComponent_0_9.inputAutocomplete = (currVal_4!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1123:1162 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.maxCount;
    if (import44.checkBinding(this._expr_5, currVal_5, 'maxCount', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'maxCount', currVal_5);
      }
      this._MaterialInputComponent_0_9.maxCount = (currVal_5!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1233:1254 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.displayBottomPanel;
    if (import44.checkBinding(this._expr_6, currVal_6, 'displayBottomPanel', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'displayBottomPanel', currVal_6);
      }
      this._MaterialInputComponent_0_9.displayBottomPanel = (currVal_6!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:687:728 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.floatingLabel;
    if (import44.checkBinding(this._expr_7, currVal_7, 'floatingLabel', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'floatingLabel', currVal_7);
      }
      this._MaterialInputComponent_0_9.floatingLabel = (currVal_7!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:757:788 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.errorText;
    if (import44.checkBinding(this._expr_8, currVal_8, 'errorText', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'error', currVal_8);
      }
      this._MaterialInputComponent_0_9.error = (currVal_8!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:733:752 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.hintText;
    if (import44.checkBinding(this._expr_9, currVal_9, 'hintText', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'hintText', currVal_9);
      }
      this._MaterialInputComponent_0_9.hintText = (currVal_9!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:404:425 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.requiredErrorMsg;
    if (import44.checkBinding(this._expr_10, currVal_10, 'requiredErrorMsg', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'requiredErrorMsg', currVal_10);
      }
      this._MaterialInputComponent_0_9.requiredErrorMsg = (currVal_10!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1285:1322 */;
      changed = true;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.checkValid;
    if (import44.checkBinding(this._expr_11, currVal_11, 'checkValid', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'checkValid', currVal_11);
      }
      this._MaterialInputComponent_0_9.checkValid = (currVal_11!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:631:656 */;
      changed = true;
      this._expr_11 = currVal_11;
    }
    final currVal_12 = _ctx.characterCounter;
    if (import44.checkBinding(this._expr_12, currVal_12, 'characterCounter', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'characterCounter', currVal_12);
      }
      this._MaterialInputComponent_0_9.characterCounter = (currVal_12!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:589:626 */;
      changed = true;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = _ctx.disabled;
    if (import44.checkBinding(this._expr_13, currVal_13, 'disabled', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'disabled', currVal_13);
      }
      this._MaterialInputComponent_0_9.disabled = (currVal_13!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:661:682 */;
      changed = true;
      this._expr_13 = currVal_13;
    }
    final currVal_14 = _ctx.showHintOnlyOnFocus;
    if (import44.checkBinding(this._expr_14, currVal_14, 'showHintOnlyOnFocus', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'showHintOnlyOnFocus', currVal_14);
      }
      this._MaterialInputComponent_0_9.showHintOnlyOnFocus = (currVal_14!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:430:473 */;
      changed = true;
      this._expr_14 = currVal_14;
    }
    final currVal_15 = _ctx.required;
    if (import44.checkBinding(this._expr_15, currVal_15, 'required', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'required', currVal_15);
      }
      this._MaterialInputComponent_0_9.required = (currVal_15!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1259:1280 */;
      changed = true;
      this._expr_15 = currVal_15;
    }
    final currVal_16 = _ctx.leadingGlyph;
    if (import44.checkBinding(this._expr_16, currVal_16, 'leadingGlyph', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'leadingGlyph', currVal_16);
      }
      this._MaterialInputComponent_0_9.leadingGlyph = (currVal_16!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1199:1228 */;
      changed = true;
      this._expr_16 = currVal_16;
    }
    final currVal_17 = _ctx.trailingGlyph;
    if (import44.checkBinding(this._expr_17, currVal_17, 'trailingGlyph', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'trailingGlyph', currVal_17);
      }
      this._MaterialInputComponent_0_9.trailingGlyph = (currVal_17!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1357:1388 */;
      changed = true;
      this._expr_17 = currVal_17;
    }
    final currVal_19 = (_ctx.showPopup ? _ctx.popupId : null);
    if (import44.checkBinding(this._expr_19, currVal_19, 'showPopup ? popupId : null', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'inputAriaOwns', currVal_19);
      }
      this._MaterialInputComponent_0_9.inputAriaOwns = (currVal_19!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:846:890 */;
      changed = true;
      this._expr_19 = currVal_19;
    }
    final currVal_20 = (_ctx.showPopup ? _ctx.activeModel.activeId : null);
    if (import44.checkBinding(this._expr_20, currVal_20, 'showPopup ? activeModel.activeId : null', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'inputAriaActivedescendent', currVal_20);
      }
      this._MaterialInputComponent_0_9.inputAriaActivedescendent = (currVal_20!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1016:1085 */;
      changed = true;
      this._expr_20 = currVal_20;
    }
    final currVal_22 = _ctx.showPopup;
    if (import44.checkBinding(this._expr_22, currVal_22, 'showPopup', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'inputAriaExpanded', currVal_22);
      }
      this._MaterialInputComponent_0_9.inputAriaExpanded = (currVal_22!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:980:1011 */;
      changed = true;
      this._expr_22 = currVal_22;
    }
    final currVal_24 = (_ctx.showPopup ? _ctx.popupId : null);
    if (import44.checkBinding(this._expr_24, currVal_24, 'showPopup ? popupId : null', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'inputAriaControls', currVal_24);
      }
      this._MaterialInputComponent_0_9.inputAriaControls = (currVal_24!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:895:943 */;
      changed = true;
      this._expr_24 = currVal_24;
    }
    final currVal_25 = _ctx.leadingText;
    if (import44.checkBinding(this._expr_25, currVal_25, 'leadingText', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'leadingText', currVal_25);
      }
      this._MaterialInputComponent_0_9.leadingText = (currVal_25!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1167:1194 */;
      changed = true;
      this._expr_25 = currVal_25;
    }
    final currVal_26 = _ctx.trailingText;
    if (import44.checkBinding(this._expr_26, currVal_26, 'trailingText', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'trailingText', currVal_26);
      }
      this._MaterialInputComponent_0_9.trailingText = (currVal_26!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1393:1422 */;
      changed = true;
      this._expr_26 = currVal_26;
    }
    final currVal_27 = _ctx.rightAlign;
    if (import44.checkBinding(this._expr_27, currVal_27, 'rightAlign', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'rightAlign', currVal_27);
      }
      this._MaterialInputComponent_0_9.rightAlign = (currVal_27!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1327:1352 */;
      changed = true;
      this._expr_27 = currVal_27;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._PopupSourceDirective_0_14, 'alignPositionY', 'after');
      }
      this._PopupSourceDirective_0_14.alignY = 'after' /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:287:309 */;
    }
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', _ctx.showClearIcon);
    }
    this._NgIf_2_9.ngIf = (_ctx.showClearIcon ?? false) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1523:1544 */;
    changed = false;
    if (firstCheck) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_3_8, 'trackLayoutChanges', true);
      }
      this._MaterialPopupComponent_3_8.trackLayoutChanges = true /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2005:2023 */;
      changed = true;
    }
    final currVal_30 = _ctx.autoDismiss;
    if (import44.checkBinding(this._expr_30, currVal_30, 'autoDismiss', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_3_8, 'autoDismiss', currVal_30);
      }
      this._MaterialPopupComponent_3_8.autoDismiss = (currVal_30!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2075:2102 */;
      changed = true;
      this._expr_30 = currVal_30;
    }
    final currVal_31 = _ctx.enforceSpaceConstraints;
    if (import44.checkBinding(this._expr_31, currVal_31, 'enforceSpaceConstraints', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_3_8, 'enforceSpaceConstraints', currVal_31);
      }
      this._MaterialPopupComponent_3_8.enforceSpaceConstraints = (currVal_31!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2107:2158 */;
      changed = true;
      this._expr_31 = currVal_31;
    }
    final currVal_32 = _ctx.popupMatchInputWidth;
    if (import44.checkBinding(this._expr_32, currVal_32, 'popupMatchInputWidth', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_3_8, 'matchMinSourceWidth', currVal_32);
      }
      this._MaterialPopupComponent_3_8.matchMinSourceWidth = (currVal_32!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2211:2255 */;
      changed = true;
      this._expr_32 = currVal_32;
    }
    final currVal_33 = _ctx.popupPositions;
    if (import44.checkBinding(this._expr_33, currVal_33, 'popupPositions', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_3_8, 'preferredPositions', currVal_33);
      }
      this._MaterialPopupComponent_3_8.preferredPositions = (currVal_33!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2260:2297 */;
      changed = true;
      this._expr_33 = currVal_33;
    }
    final currVal_34 = local_input;
    if (import44.checkBinding(this._expr_34, currVal_34, 'input', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_3_8, 'source', currVal_34);
      }
      this._MaterialPopupComponent_3_8.source = (currVal_34!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2322:2338 */;
      changed = true;
      this._expr_34 = currVal_34;
    }
    final currVal_36 = _ctx.constrainToViewport;
    if (import44.checkBinding(this._expr_36, currVal_36, 'constrainToViewport', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_3_8, 'constrainToViewport', currVal_36);
      }
      this._MaterialPopupComponent_3_8.constrainToViewport = (currVal_36!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2163:2206 */;
      changed = true;
      this._expr_36 = currVal_36;
    }
    final currVal_37 = _ctx.showPopup;
    if (import44.checkBinding(this._expr_37, currVal_37, 'showPopup', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_3_8, 'visible', currVal_37);
      }
      this._MaterialPopupComponent_3_8.visible = (currVal_37!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2343:2364 */;
      changed = true;
      this._expr_37 = currVal_37;
    }
    final currVal_38 = _ctx.slide;
    if (import44.checkBinding(this._expr_38, currVal_38, 'slide', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_3_8, 'slide', currVal_38);
      }
      this._MaterialPopupComponent_3_8.slide = (currVal_38!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2302:2317 */;
      changed = true;
      this._expr_38 = currVal_38;
    }
    if (changed) {
      this._compView_3.markAsCheckOnce();
    }
    final currVal_0 = _ctx.inputId;
    if (import44.checkBinding(this._expr_0, currVal_0, 'inputId', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      this._el_0.setProperty('id', currVal_0) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:339:353 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectHostChanges(firstCheck);
    final currVal_29 = import45.interpolateString1('selections ', _ctx.popupShadowCssClass, '');
    if (import44.checkBinding(this._expr_29, currVal_29, 'selections {{popupShadowCssClass}}', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      this._compView_3.updateChildClassNonHtml(this._el_3, currVal_29) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2028:2070 */;
      this._expr_29 = currVal_29;
    }
    this._compView_3.detectHostChanges(firstCheck);
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_3.detectChangesInNestedViews();
    this._appEl_5.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
    this._compView_3.detectChangesDeprecated();
    if ((!import44.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialInputComponent_0_9.ngAfterViewInit();
        this._PopupSourceDirective_0_14.ngAfterViewInit();
        this._MaterialPopupComponent_3_8.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._appEl_3.destroyNestedViews();
    this._appEl_5.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._compView_3.destroyInternalState();
    this._MaterialInputComponent_0_9.ngOnDestroy();
    this._MaterialInputDefaultValueAccessor_0_11.ngOnDestroy();
    this._PopupSourceDirective_0_14.ngOnDestroy();
    this._CachingDeferredContentDirective_5_9.ngOnDestroy();
    this._MaterialPopupComponent_3_8.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.showPopup = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import17.ComponentStyles.scoped(styles$MaterialAutoSuggestInputComponent, _debugComponentUrl));
      if (import21.isDevMode) {
        import17.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialAutoSuggestInputComponentNgFactory = ComponentFactory<import3.MaterialAutoSuggestInputComponent>('material-auto-suggest-input', viewFactory_MaterialAutoSuggestInputComponentHost0);
ComponentFactory<import3.MaterialAutoSuggestInputComponent> get MaterialAutoSuggestInputComponentNgFactory {
  return _MaterialAutoSuggestInputComponentNgFactory;
}

ComponentFactory<import3.MaterialAutoSuggestInputComponent<T>> createMaterialAutoSuggestInputComponentFactory<T>() {
  return ComponentFactory('material-auto-suggest-input', viewFactory_MaterialAutoSuggestInputComponentHost0);
}

class _ViewMaterialAutoSuggestInputComponent1<T> extends import47.EmbeddedView<import3.MaterialAutoSuggestInputComponent<T>> {
  late dynamic _TooltipController_0_13 = (import21.isDevMode
      ? import23.debugInjectorWrap(import48.TooltipController, () {
          return import49.createTooltipController(((this.parentView!).parentView!).injectorGetOptional(import48.TooltipController, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import50.Disposer, (this.parentView!).parentIndex));
        })
      : import49.createTooltipController(((this.parentView!).parentView!).injectorGetOptional(import48.TooltipController, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import50.Disposer, (this.parentView!).parentIndex)));
  late final import51.ViewMaterialIconComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import52.ButtonDirectiveNgCd _ButtonDirective_0_8;
  late final import15.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_9;
  late final import53.MaterialIconComponent _MaterialIconComponent_0_10;
  late final import54.MaterialTooltipDirective _MaterialTooltipDirective_0_11;
  late final import55.StopPropagationDirective _StopPropagationDirective_0_12;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_3;
  Object? _expr_4;
  late final _el_0;
  _ViewMaterialAutoSuggestInputComponent1(import56.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import51.ViewMaterialIconComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import22.updateRenderAttribute(this._el_0, 'buttonDecorator', '');
    this.updateChildClassNonHtml(this._el_0, 'clear-icon');
    import22.updateRenderAttribute(this._el_0, 'icon', 'clear');
    import22.updateRenderAttribute(this._el_0, 'keyboardOnlyFocusIndicator', '');
    import22.updateRenderAttribute(this._el_0, 'stopPropagation', '');
    this.addShimC(this._el_0);
    this._appEl_0 = ViewContainer(0, null, this, this._el_0);
    this._ButtonDirective_0_8 = import52.ButtonDirectiveNgCd(import57.ButtonDirective(import22.unwrapNode(this._el_0), null));
    this._KeyboardOnlyFocusIndicatorDirective_0_9 = (import21.isDevMode
        ? import23.debugInjectorWrap(import15.KeyboardOnlyFocusIndicatorDirective, () {
            return import15.KeyboardOnlyFocusIndicatorDirective(import22.unwrapNode(this._el_0), ((this.parentView!).parentView!).injectorGet(import30.DomService, (this.parentView!).parentIndex));
          })
        : import15.KeyboardOnlyFocusIndicatorDirective(import22.unwrapNode(this._el_0), ((this.parentView!).parentView!).injectorGet(import30.DomService, (this.parentView!).parentIndex)));
    this._MaterialIconComponent_0_10 = import53.MaterialIconComponent(import22.unwrapNode(this._el_0));
    this._MaterialTooltipDirective_0_11 = (import21.isDevMode
        ? import23.debugInjectorWrap(import54.MaterialTooltipDirective, () {
            return import54.MaterialTooltipDirective(((this.parentView!).parentView!).injectorGet(import24.DomPopupSourceFactory, (this.parentView!).parentIndex), this._appEl_0, import22.unwrapNode(this._el_0), this._appEl_0, this._compView_0, ((this.parentView!).parentView!).injectorGet(import58.Window, (this.parentView!).parentIndex), null, null);
          })
        : import54.MaterialTooltipDirective(((this.parentView!).parentView!).injectorGet(import24.DomPopupSourceFactory, (this.parentView!).parentIndex), this._appEl_0, import22.unwrapNode(this._el_0), this._appEl_0, this._compView_0, ((this.parentView!).parentView!).injectorGet(import58.Window, (this.parentView!).parentIndex), null, null));
    this._StopPropagationDirective_0_12 = import55.StopPropagationDirective(import22.unwrapNode(this._el_0));
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(this._el_0, this._ButtonDirective_0_8.instance);
      import25.Inspector.instance.registerDirective(this._el_0, this._KeyboardOnlyFocusIndicatorDirective_0_9);
      import25.Inspector.instance.registerDirective(this._el_0, this._MaterialTooltipDirective_0_11);
      import25.Inspector.instance.registerDirective(this._el_0, this._StopPropagationDirective_0_12);
    }
    this._compView_0.create(this._MaterialIconComponent_0_10);
    import22.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._handleEvent_0));
    import22.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(this._ButtonDirective_0_8.instance.handleKeyPress));
    import22.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_9.keydown));
    import22.addRenderEventListener(this._el_0, 'blur', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_9.resetOutline));
    import22.addRenderEventListener(this._el_0, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_9.onMouseInteraction));
    import22.addRenderEventListener(this._el_0, 'focus', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_9.onFocus));
    final subscription_0 = this._ButtonDirective_0_8.instance.trigger.listen(this.eventHandler0(_ctx.onClearIcon));
    this.initRootNodesAndSubscriptions(import21.unsafeCast(<Object>[this._appEl_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import57.ButtonDirective)) {
        return this._ButtonDirective_0_8.instance;
      }
      if (identical(token, import48.TooltipController)) {
        return this._TooltipController_0_13;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final currVal_1 = _ctx.disabled;
    if (import44.checkBinding(this._expr_1, currVal_1, 'disabled', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._ButtonDirective_0_8.instance, 'disabled', currVal_1);
      }
      this._ButtonDirective_0_8.instance.disabled = (currVal_1!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1684:1705 */;
      this._expr_1 = currVal_1;
    }
    changed = false;
    if (firstCheck) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialIconComponent_0_10, 'icon', 'clear');
      }
      this._MaterialIconComponent_0_10.icon = 'clear' /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1553:1565 */;
      changed = true;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_3 = _ctx.clearIconTooltip;
    if (import44.checkBinding(this._expr_3, currVal_3, 'clearIconTooltip', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialTooltipDirective_0_11, 'materialTooltip', currVal_3);
      }
      this._MaterialTooltipDirective_0_11.text = (currVal_3!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1714:1750 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.hasClearIconTooltip;
    if (import44.checkBinding(this._expr_4, currVal_4, 'hasClearIconTooltip', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialTooltipDirective_0_11, 'showTooltipIf', currVal_4);
      }
      this._MaterialTooltipDirective_0_11.canShow = (currVal_4!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1759:1796 */;
      this._expr_4 = currVal_4;
    }
    if (((!import44.debugThrowIfChanged) && firstCheck)) {
      this._MaterialTooltipDirective_0_11.ngOnInit();
    }
    final currVal_0 = _ctx.clearIconTooltip;
    if (import44.checkBinding(this._expr_0, currVal_0, 'clearIconTooltip', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      import22.updateRenderAttribute(this._el_0, 'aria-label', currVal_0) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:1805:1841 */;
      this._expr_0 = currVal_0;
    }
    this._ButtonDirective_0_8.detectHostChanges(this._compView_0, this._el_0);
    this._appEl_0.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
    if ((!import44.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialTooltipDirective_0_11.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._MaterialTooltipDirective_0_11.ngOnDestroy();
    this._StopPropagationDirective_0_12.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    this._ButtonDirective_0_8.instance.handleClick($event);
    this._KeyboardOnlyFocusIndicatorDirective_0_9.onMouseInteraction();
  }
}

import47.EmbeddedView<void> viewFactory_MaterialAutoSuggestInputComponent1<T>(import56.RenderView parentView, int parentIndex) {
  return _ViewMaterialAutoSuggestInputComponent1<T>(parentView, parentIndex);
}

class _ViewMaterialAutoSuggestInputComponent2<T> extends import47.EmbeddedView<import3.MaterialAutoSuggestInputComponent<T>> {
  late final import59.ViewFocusTrapComponent0 _compView_0;
  late final import60.FocusTrapComponent _FocusTrapComponent_0_5;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final ViewContainer _appEl_3;
  late final NgIf _NgIf_3_9;
  _ViewMaterialAutoSuggestInputComponent2(import56.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import59.ViewFocusTrapComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.addShimC(_el_0);
    this._FocusTrapComponent_0_5 = import60.FocusTrapComponent();
    final _anchor_1 = import22.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialAutoSuggestInputComponent3<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import22.createRenderAnchor();
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialAutoSuggestInputComponent4<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _anchor_3 = import22.createRenderAnchor();
    this._appEl_3 = ViewContainer(3, 0, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, (parentView, parentIndex) {
      return viewFactory_MaterialAutoSuggestInputComponent5<T>(parentView, parentIndex);
    });
    this._NgIf_3_9 = NgIf(this._appEl_3, _TemplateRef_3_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_3, this._NgIf_3_9);
    }
    this._compView_0.createAndProject(this._FocusTrapComponent_0_5, [
      <Object>[this._appEl_1, this._appEl_2, this._appEl_3],
    ]);
    import22.addRenderEventListener(_el_0, 'keydown', this.eventHandler1(_ctx.onKeyDown));
    import22.addRenderEventListener(_el_0, 'keypress', this.eventHandler1(_ctx.onKeyPress));
    import22.addRenderEventListener(_el_0, 'keyup', this.eventHandler1(_ctx.onKeyUp));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.showLoadingSpinner);
    }
    this._NgIf_1_9.ngIf = (_ctx.showLoadingSpinner ?? false) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2760:2786 */;
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', _ctx.showEmptyPlaceholder);
    }
    this._NgIf_2_9.ngIf = (_ctx.showEmptyPlaceholder ?? false) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2868:2896 */;
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.recordInput(this._NgIf_3_9, 'ngIf', _ctx.hasOptions);
    }
    this._NgIf_3_9.ngIf = (_ctx.hasOptions ?? false) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2969:2987 */;
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_3.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
    this._appEl_3.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._FocusTrapComponent_0_5.ngOnDestroy();
  }
}

import47.EmbeddedView<void> viewFactory_MaterialAutoSuggestInputComponent2<T>(import56.RenderView parentView, int parentIndex) {
  return _ViewMaterialAutoSuggestInputComponent2<T>(parentView, parentIndex);
}

class _ViewMaterialAutoSuggestInputComponent3<T> extends import47.EmbeddedView<import3.MaterialAutoSuggestInputComponent<T>> {
  late final import61.ViewMaterialSpinnerComponent0 _compView_1;
  late final import62.MaterialSpinnerComponent _MaterialSpinnerComponent_1_5;
  _ViewMaterialAutoSuggestInputComponent3(import56.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import22.createRenderElement('div');
    this.updateChildClass(_el_0, 'loading');
    this.addShimC(_el_0);
    this._compView_1 = import61.ViewMaterialSpinnerComponent0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    import22.appendRenderChild(_el_0, _el_1);
    this.addShimC(_el_1);
    this._MaterialSpinnerComponent_1_5 = import62.MaterialSpinnerComponent();
    this._compView_1.create(this._MaterialSpinnerComponent_1_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    this._compView_1.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_1.destroyInternalState();
  }
}

import47.EmbeddedView<void> viewFactory_MaterialAutoSuggestInputComponent3<T>(import56.RenderView parentView, int parentIndex) {
  return _ViewMaterialAutoSuggestInputComponent3<T>(parentView, parentIndex);
}

class _ViewMaterialAutoSuggestInputComponent4<T> extends import47.EmbeddedView<import3.MaterialAutoSuggestInputComponent<T>> {
  final import63.TextBinding _textBinding_1 = import63.TextBinding();
  _ViewMaterialAutoSuggestInputComponent4(import56.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import22.createRenderElement('div');
    this.updateChildClass(_el_0, 'empty');
    this.addShimC(_el_0);
    import22.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import45.interpolateString0(_ctx.emptyPlaceholder)) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2918:2938 */;
  }
}

import47.EmbeddedView<void> viewFactory_MaterialAutoSuggestInputComponent4<T>(import56.RenderView parentView, int parentIndex) {
  return _ViewMaterialAutoSuggestInputComponent4<T>(parentView, parentIndex);
}

class _ViewMaterialAutoSuggestInputComponent5<T> extends import47.EmbeddedView<import3.MaterialAutoSuggestInputComponent<T>> {
  late final import64.ViewMaterialListComponent0 _compView_0;
  late final import15.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_5;
  late final import65.MaterialListComponent _MaterialListComponent_0_6;
  late final ViewContainer _appEl_1;
  late final import66.NgFor _NgFor_1_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  late final _el_0;
  _ViewMaterialAutoSuggestInputComponent5(import56.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import64.ViewMaterialListComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'suggestion-list');
    import22.updateRenderAttribute(this._el_0, 'keyboardOnlyFocusIndicator', '');
    import22.updateRenderAttribute(this._el_0, 'role', 'listbox');
    import22.updateRenderTabIndex(this._el_0, -1);
    this.addShimC(this._el_0);
    this._KeyboardOnlyFocusIndicatorDirective_0_5 = (import21.isDevMode
        ? import23.debugInjectorWrap(import15.KeyboardOnlyFocusIndicatorDirective, () {
            return import15.KeyboardOnlyFocusIndicatorDirective(import22.unwrapNode(this._el_0), (((this.parentView!).parentView!).parentView!).injectorGet(import30.DomService, ((this.parentView!).parentView!).parentIndex));
          })
        : import15.KeyboardOnlyFocusIndicatorDirective(import22.unwrapNode(this._el_0), (((this.parentView!).parentView!).parentView!).injectorGet(import30.DomService, ((this.parentView!).parentView!).parentIndex)));
    this._MaterialListComponent_0_6 = import65.MaterialListComponent();
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(this._el_0, this._KeyboardOnlyFocusIndicatorDirective_0_5);
    }
    final _anchor_1 = import22.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialAutoSuggestInputComponent6<T>(parentView, parentIndex);
    });
    this._NgFor_1_9 = import66.NgFor(this._appEl_1, _TemplateRef_1_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_1, this._NgFor_1_9);
    }
    this._compView_0.createAndProject(this._MaterialListComponent_0_6, [
      <Object>[this._appEl_1],
    ]);
    import22.addRenderEventListener(this._el_0, 'mouseleave', this.eventHandler1(this._handleEvent_0));
    import22.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_5.keydown));
    import22.addRenderEventListener(this._el_0, 'blur', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_5.resetOutline));
    import22.addRenderEventListener(this._el_0, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_5.onMouseInteraction));
    import22.addRenderEventListener(this._el_0, 'click', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_5.onMouseInteraction));
    import22.addRenderEventListener(this._el_0, 'focus', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_5.onFocus));
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialListComponent_0_6, 'role', 'listbox');
      }
      this._MaterialListComponent_0_6.role = 'listbox' /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:3089:3103 */;
      changed = true;
    }
    final currVal_4 = _ctx.width;
    if (import44.checkBinding(this._expr_4, currVal_4, 'width', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialListComponent_0_6, 'width', currVal_4);
      }
      this._MaterialListComponent_0_6.width = (currVal_4!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:3224:3239 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_5 = _ctx.visibleSuggestionGroups;
    if (import44.checkBinding(this._expr_5, currVal_5, 'visibleSuggestionGroups', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForOf', currVal_5);
      }
      this._NgFor_1_9.ngForOf = (currVal_5!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:3321:3401 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.trackByIndexFn;
    if (import44.checkBinding(this._expr_6, currVal_6, 'trackByIndexFn', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForTrackBy', currVal_6);
      }
      this._NgFor_1_9.ngForTrackBy = (currVal_6!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:3321:3401 */;
      this._expr_6 = currVal_6;
    }
    if ((!import44.debugThrowIfChanged)) {
      this._NgFor_1_9.ngDoCheck();
    }
    final currVal_0 = _ctx.isMultiSelect;
    if (import44.checkBinding(this._expr_0, currVal_0, 'isMultiSelect', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      import22.updateRenderAttribute(this._el_0, 'aria-multiselectable', currVal_0?.toString()) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:2996:3039 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.inputId;
    if (import44.checkBinding(this._expr_1, currVal_1, 'inputId', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      import22.updateRenderAttribute(this._el_0, 'aria-labelledby', currVal_1) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:3048:3080 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.popupId;
    if (import44.checkBinding(this._expr_2, currVal_2, 'popupId', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      this._el_0.setProperty('id', currVal_2) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:3201:3215 */;
      this._expr_2 = currVal_2;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_1.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._compView_0.destroyInternalState();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.activeModel.activate(null);
  }
}

import47.EmbeddedView<void> viewFactory_MaterialAutoSuggestInputComponent5<T>(import56.RenderView parentView, int parentIndex) {
  return _ViewMaterialAutoSuggestInputComponent5<T>(parentView, parentIndex);
}

class _ViewMaterialAutoSuggestInputComponent6<T> extends import47.EmbeddedView<import3.MaterialAutoSuggestInputComponent<T>> {
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  _ViewMaterialAutoSuggestInputComponent6(import56.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _anchor_0 = import22.createRenderAnchor();
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialAutoSuggestInputComponent7<T>(parentView, parentIndex);
    });
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    final local_suggestionGroup = this.locals['\$implicit'];
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', ((local_suggestionGroup.isNotEmpty ?? false) || (local_suggestionGroup.hasEmptyLabel ?? false)));
    }
    this._NgIf_0_9.ngIf = (((local_suggestionGroup.isNotEmpty ?? false) || (local_suggestionGroup.hasEmptyLabel ?? false)) ?? false) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:3428:3495 */;
    this._appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
  }
}

import47.EmbeddedView<void> viewFactory_MaterialAutoSuggestInputComponent6<T>(import56.RenderView parentView, int parentIndex) {
  return _ViewMaterialAutoSuggestInputComponent6<T>(parentView, parentIndex);
}

class _ViewMaterialAutoSuggestInputComponent7<T> extends import47.EmbeddedView<import3.MaterialAutoSuggestInputComponent<T>> {
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final ViewContainer _appEl_3;
  late final NgIf _NgIf_3_9;
  late final ViewContainer _appEl_4;
  late final import66.NgFor _NgFor_4_9;
  Object? _expr_0;
  _ViewMaterialAutoSuggestInputComponent7(import56.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import22.createRenderElement('div');
    this.updateChildClass(_el_0, 'list-group');
    import22.updateRenderAttribute(_el_0, 'group', '');
    this.addShimC(_el_0);
    final _anchor_1 = import22.createRenderAnchor();
    import22.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialAutoSuggestInputComponent8<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import22.createRenderAnchor();
    import22.appendRenderChild(_el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialAutoSuggestInputComponent9<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _anchor_3 = import22.createRenderAnchor();
    import22.appendRenderChild(_el_0, _anchor_3);
    this._appEl_3 = ViewContainer(3, 0, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, (parentView, parentIndex) {
      return viewFactory_MaterialAutoSuggestInputComponent10<T>(parentView, parentIndex);
    });
    this._NgIf_3_9 = NgIf(this._appEl_3, _TemplateRef_3_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_3, this._NgIf_3_9);
    }
    final _anchor_4 = import22.createRenderAnchor();
    import22.appendRenderChild(_el_0, _anchor_4);
    this._appEl_4 = ViewContainer(4, 0, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, (parentView, parentIndex) {
      return viewFactory_MaterialAutoSuggestInputComponent11<T>(parentView, parentIndex);
    });
    this._NgFor_4_9 = import66.NgFor(this._appEl_4, _TemplateRef_4_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_4, this._NgFor_4_9);
    }
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final local_suggestionGroup = import21.unsafeCast<_ViewMaterialAutoSuggestInputComponent6>((this.parentView!)).locals['\$implicit'];
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', ((local_suggestionGroup.hasLabel ?? false) && ((!(_ctx.hasCustomLabelRenderer ?? false)) ?? false)));
    }
    this._NgIf_1_9.ngIf = (((local_suggestionGroup.hasLabel ?? false) && ((!(_ctx.hasCustomLabelRenderer ?? false)) ?? false)) ?? false) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:3560:3619 */;
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', _ctx.hasCustomLabelRenderer);
    }
    this._NgIf_2_9.ngIf = (_ctx.hasCustomLabelRenderer ?? false) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:3825:3855 */;
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.recordInput(this._NgIf_3_9, 'ngIf', ((local_suggestionGroup.isEmpty ?? false) && (local_suggestionGroup.hasEmptyLabel ?? false)));
    }
    this._NgIf_3_9.ngIf = (((local_suggestionGroup.isEmpty ?? false) && (local_suggestionGroup.hasEmptyLabel ?? false)) ?? false) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:4254:4318 */;
    final currVal_0 = local_suggestionGroup;
    if (import44.checkBinding(this._expr_0, currVal_0, 'suggestionGroup', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._NgFor_4_9, 'ngForOf', currVal_0);
      }
      this._NgFor_4_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:4542:4584 */;
      this._expr_0 = currVal_0;
    }
    if ((!import44.debugThrowIfChanged)) {
      this._NgFor_4_9.ngDoCheck();
    }
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_3.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
    this._appEl_3.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
  }
}

import47.EmbeddedView<void> viewFactory_MaterialAutoSuggestInputComponent7<T>(import56.RenderView parentView, int parentIndex) {
  return _ViewMaterialAutoSuggestInputComponent7<T>(parentView, parentIndex);
}

class _ViewMaterialAutoSuggestInputComponent8<T> extends import47.EmbeddedView<import3.MaterialAutoSuggestInputComponent<T>> {
  final import63.TextBinding _textBinding_1 = import63.TextBinding();
  _ViewMaterialAutoSuggestInputComponent8(import56.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import22.createRenderElement('span');
    this.updateChildClass(_el_0, 'list-group-label');
    import22.updateRenderAttribute(_el_0, 'label', '');
    this.addShimC(_el_0);
    import22.appendRenderChild(_el_0, this._textBinding_1.element);
    import22.addRenderEventListener(_el_0, 'mouseenter', this.eventHandler1(this._handleEvent_0));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final local_suggestionGroup = import21.unsafeCast<_ViewMaterialAutoSuggestInputComponent6>(((this.parentView!).parentView!)).locals['\$implicit'];
    this._textBinding_1.updateText(import45.interpolate0(local_suggestionGroup.uiDisplayName)) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:3746:3779 */;
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.activeModel.activate(null);
  }
}

import47.EmbeddedView<void> viewFactory_MaterialAutoSuggestInputComponent8<T>(import56.RenderView parentView, int parentIndex) {
  return _ViewMaterialAutoSuggestInputComponent8<T>(parentView, parentIndex);
}

class _ViewMaterialAutoSuggestInputComponent9<T> extends import47.EmbeddedView<import3.MaterialAutoSuggestInputComponent<T>> {
  late final import67.ViewDynamicComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import68.DynamicComponent _DynamicComponent_0_8;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  _ViewMaterialAutoSuggestInputComponent9(import56.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import67.ViewDynamicComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.addShimC(_el_0);
    this._appEl_0 = ViewContainer(0, null, this, _el_0);
    this._DynamicComponent_0_8 = (import21.isDevMode
        ? import23.debugInjectorWrap(import68.DynamicComponent, () {
            return import68.DynamicComponent(((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import69.SlowComponentLoader, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._appEl_0);
          })
        : import68.DynamicComponent(((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import69.SlowComponentLoader, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._appEl_0));
    this._compView_0.create(this._DynamicComponent_0_8);
    import22.addRenderEventListener(_el_0, 'mouseenter', this.eventHandler1(this._handleEvent_0));
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    final local_suggestionGroup = import21.unsafeCast<_ViewMaterialAutoSuggestInputComponent6>(((this.parentView!).parentView!)).locals['\$implicit'];
    changed = false;
    final currVal_0 = ((_ctx.labelRenderer != null) ? _ctx.labelRenderer(local_suggestionGroup) : null);
    if (import44.checkBinding(this._expr_0, currVal_0, 'labelRenderer != null ? labelRenderer(suggestionGroup) : null', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'componentType', currVal_0);
      }
      this._DynamicComponent_0_8.componentType = (currVal_0!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:3870:3949 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = ((_ctx.labelFactory != null) ? _ctx.labelFactory(local_suggestionGroup) : null);
    if (import44.checkBinding(this._expr_1, currVal_1, 'labelFactory != null ? labelFactory(suggestionGroup) : null', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'componentFactory', currVal_1);
      }
      this._DynamicComponent_0_8.componentFactory = (currVal_1!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:3964:4044 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = local_suggestionGroup;
    if (import44.checkBinding(this._expr_2, currVal_2, 'suggestionGroup', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'value', currVal_2);
      }
      this._DynamicComponent_0_8.value = (currVal_2!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:4059:4084 */;
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

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.activeModel.activate(null);
  }
}

import47.EmbeddedView<void> viewFactory_MaterialAutoSuggestInputComponent9<T>(import56.RenderView parentView, int parentIndex) {
  return _ViewMaterialAutoSuggestInputComponent9<T>(parentView, parentIndex);
}

class _ViewMaterialAutoSuggestInputComponent10<T> extends import47.EmbeddedView<import3.MaterialAutoSuggestInputComponent<T>> {
  late final import70.ViewMaterialSelectDropdownItemComponent0<String> _compView_0;
  late final import15.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_5;
  late final import71.MaterialSelectDropdownItemComponent<String> _MaterialSelectDropdownItemComponent_0_6;
  Object? _expr_1;
  _ViewMaterialAutoSuggestInputComponent10(import56.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import70.ViewMaterialSelectDropdownItemComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import22.updateRenderAttribute(_el_0, 'keyboardOnlyFocusIndicator', '');
    this.addShimC(_el_0);
    this._KeyboardOnlyFocusIndicatorDirective_0_5 = (import21.isDevMode
        ? import23.debugInjectorWrap(import15.KeyboardOnlyFocusIndicatorDirective, () {
            return import15.KeyboardOnlyFocusIndicatorDirective(import22.unwrapNode(_el_0), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import30.DomService, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex));
          })
        : import15.KeyboardOnlyFocusIndicatorDirective(import22.unwrapNode(_el_0), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import30.DomService, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex)));
    this._MaterialSelectDropdownItemComponent_0_6 = (import21.isDevMode
        ? import23.debugInjectorWrap(import71.MaterialSelectDropdownItemComponent, () {
            return import71.MaterialSelectDropdownItemComponent(import22.unwrapNode(_el_0), null, import21.unsafeCast<ViewMaterialAutoSuggestInputComponent0>((((((this.parentView!).parentView!).parentView!).parentView!).parentView!))._MaterialPopupComponent_3_8, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import72.ActivationHandler, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import73.IdGenerator, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0);
          })
        : import71.MaterialSelectDropdownItemComponent(import22.unwrapNode(_el_0), null, import21.unsafeCast<ViewMaterialAutoSuggestInputComponent0>((((((this.parentView!).parentView!).parentView!).parentView!).parentView!))._MaterialPopupComponent_3_8, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import72.ActivationHandler, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import73.IdGenerator, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0));
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_el_0, this._KeyboardOnlyFocusIndicatorDirective_0_5);
    }
    this._compView_0.createAndProject(this._MaterialSelectDropdownItemComponent_0_6, [const <Object>[]]);
    import22.addRenderEventListener(_el_0, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_5.keydown));
    import22.addRenderEventListener(_el_0, 'blur', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_5.resetOutline));
    import22.addRenderEventListener(_el_0, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_5.onMouseInteraction));
    import22.addRenderEventListener(_el_0, 'click', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_5.onMouseInteraction));
    import22.addRenderEventListener(_el_0, 'focus', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_5.onFocus));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import74.SelectionItem) || identical(token, import75.HasRenderer)) && (0 == nodeIndex))) {
      return this._MaterialSelectDropdownItemComponent_0_6;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_suggestionGroup = import21.unsafeCast<_ViewMaterialAutoSuggestInputComponent6>(((this.parentView!).parentView!)).locals['\$implicit'];
    changed = false;
    if (firstCheck) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'disabled', true);
      }
      this._MaterialSelectDropdownItemComponent_0_6.disabled = true /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:4374:4391 */;
      changed = true;
    }
    final currVal_1 = local_suggestionGroup.emptyLabel;
    if (import44.checkBinding(this._expr_1, currVal_1, 'suggestionGroup.emptyLabel', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'value', currVal_1);
      }
      this._MaterialSelectDropdownItemComponent_0_6.value = (currVal_1!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:4406:4442 */;
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
    this._MaterialSelectDropdownItemComponent_0_6.ngOnDestroy();
  }
}

import47.EmbeddedView<void> viewFactory_MaterialAutoSuggestInputComponent10<T>(import56.RenderView parentView, int parentIndex) {
  return _ViewMaterialAutoSuggestInputComponent10<T>(parentView, parentIndex);
}

class _ViewMaterialAutoSuggestInputComponent11<T> extends import47.EmbeddedView<import3.MaterialAutoSuggestInputComponent<T>> {
  late final import70.ViewMaterialSelectDropdownItemComponent0<T> _compView_0;
  late final import76.ActiveItemDirectiveNgCd _ActiveItemDirective_0_5;
  late final import15.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_6;
  late final import71.MaterialSelectDropdownItemComponent<T> _MaterialSelectDropdownItemComponent_0_7;
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
  Object? _expr_11;
  late final _el_0;
  _ViewMaterialAutoSuggestInputComponent11(import56.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import70.ViewMaterialSelectDropdownItemComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'list-item');
    import22.updateRenderAttribute(this._el_0, 'keyboardOnlyFocusIndicator', '');
    this.addShimC(this._el_0);
    this._ActiveItemDirective_0_5 = import76.ActiveItemDirectiveNgCd(
      (import21.isDevMode
          ? import23.debugInjectorWrap(import77.ActiveItemDirective, () {
              return import77.ActiveItemDirective(import22.unwrapNode(this._el_0), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import30.DomService, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import78.Modal, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), import21.unsafeCast<ViewMaterialAutoSuggestInputComponent0>((((((this.parentView!).parentView!).parentView!).parentView!).parentView!))._PopupRef_3_11);
            })
          : import77.ActiveItemDirective(import22.unwrapNode(this._el_0), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import30.DomService, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import78.Modal, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), import21.unsafeCast<ViewMaterialAutoSuggestInputComponent0>((((((this.parentView!).parentView!).parentView!).parentView!).parentView!))._PopupRef_3_11)),
    );
    this._KeyboardOnlyFocusIndicatorDirective_0_6 = (import21.isDevMode
        ? import23.debugInjectorWrap(import15.KeyboardOnlyFocusIndicatorDirective, () {
            return import15.KeyboardOnlyFocusIndicatorDirective(import22.unwrapNode(this._el_0), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import30.DomService, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex));
          })
        : import15.KeyboardOnlyFocusIndicatorDirective(import22.unwrapNode(this._el_0), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import30.DomService, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex)));
    this._MaterialSelectDropdownItemComponent_0_7 = (import21.isDevMode
        ? import23.debugInjectorWrap(import71.MaterialSelectDropdownItemComponent, () {
            return import71.MaterialSelectDropdownItemComponent(import22.unwrapNode(this._el_0), null, import21.unsafeCast<ViewMaterialAutoSuggestInputComponent0>((((((this.parentView!).parentView!).parentView!).parentView!).parentView!))._MaterialPopupComponent_3_8, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import72.ActivationHandler, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import73.IdGenerator, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0);
          })
        : import71.MaterialSelectDropdownItemComponent(import22.unwrapNode(this._el_0), null, import21.unsafeCast<ViewMaterialAutoSuggestInputComponent0>((((((this.parentView!).parentView!).parentView!).parentView!).parentView!))._MaterialPopupComponent_3_8, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import72.ActivationHandler, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import73.IdGenerator, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0));
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(this._el_0, this._ActiveItemDirective_0_5.instance);
      import25.Inspector.instance.registerDirective(this._el_0, this._KeyboardOnlyFocusIndicatorDirective_0_6);
    }
    this._compView_0.createAndProject(this._MaterialSelectDropdownItemComponent_0_7, [const <Object>[]]);
    import22.addRenderEventListener(this._el_0, 'mouseenter', this.eventHandler1(this._handleEvent_0));
    import22.addRenderEventListener(this._el_0, 'mouseleave', this.eventHandler0(this._ActiveItemDirective_0_5.instance.onMouseLeave));
    import22.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_6.keydown));
    import22.addRenderEventListener(this._el_0, 'blur', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_6.resetOutline));
    import22.addRenderEventListener(this._el_0, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_6.onMouseInteraction));
    import22.addRenderEventListener(this._el_0, 'click', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_6.onMouseInteraction));
    import22.addRenderEventListener(this._el_0, 'focus', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_6.onFocus));
    this.initRootNode(this._el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import74.SelectionItem) || identical(token, import75.HasRenderer)) && (0 == nodeIndex))) {
      return this._MaterialSelectDropdownItemComponent_0_7;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_popup = import21.unsafeCast<ViewMaterialAutoSuggestInputComponent0>((((((this.parentView!).parentView!).parentView!).parentView!).parentView!))._MaterialPopupComponent_3_8;
    final local_suggestion = this.locals['\$implicit'];
    final currVal_0 = ((local_popup.showPopup ?? false) && (_ctx.activeModel.isActive(local_suggestion) ?? false));
    if (import44.checkBinding(this._expr_0, currVal_0, 'popup.showPopup && activeModel.isActive(suggestion)', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._ActiveItemDirective_0_5.instance, 'itemActive', currVal_0);
      }
      this._ActiveItemDirective_0_5.instance.itemActive = (currVal_0!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:5148:5214 */;
      this._expr_0 = currVal_0;
    }
    changed = false;
    final currVal_1 = _ctx.isOptionDisabled(local_suggestion);
    if (import44.checkBinding(this._expr_1, currVal_1, 'isOptionDisabled(suggestion)', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_7, 'disabled', currVal_1);
      }
      this._MaterialSelectDropdownItemComponent_0_7.disabled = (currVal_1!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:4858:4899 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.isOptionHidden(local_suggestion);
    if (import44.checkBinding(this._expr_2, currVal_2, 'isOptionHidden(suggestion)', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_7, 'isHidden', currVal_2);
      }
      this._MaterialSelectDropdownItemComponent_0_7.isHidden = (currVal_2!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:4914:4953 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = local_suggestion;
    if (import44.checkBinding(this._expr_3, currVal_3, 'suggestion', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_7, 'value', currVal_3);
      }
      this._MaterialSelectDropdownItemComponent_0_7.value = (currVal_3!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:4968:4988 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.hideCheckbox;
    if (import44.checkBinding(this._expr_4, currVal_4, 'hideCheckbox', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_7, 'hideCheckbox', currVal_4);
      }
      this._MaterialSelectDropdownItemComponent_0_7.hideCheckbox = (currVal_4!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:5104:5133 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.itemRenderer;
    if (import44.checkBinding(this._expr_5, currVal_5, 'itemRenderer', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_7, 'itemRenderer', currVal_5);
      }
      this._MaterialSelectDropdownItemComponent_0_7.itemRenderer = (currVal_5!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:4672:4701 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.closeOnActivate;
    if (import44.checkBinding(this._expr_6, currVal_6, 'closeOnActivate', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_7, 'closeOnActivate', currVal_6);
      }
      this._MaterialSelectDropdownItemComponent_0_7.closeOnActivate = (currVal_6!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:5003:5038 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.componentRenderer;
    if (import44.checkBinding(this._expr_7, currVal_7, 'componentRenderer', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_7, 'componentRenderer', currVal_7);
      }
      this._MaterialSelectDropdownItemComponent_0_7.componentRenderer = (currVal_7!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:4716:4755 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.factoryRenderer;
    if (import44.checkBinding(this._expr_8, currVal_8, 'factoryRenderer', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_7, 'factoryRenderer', currVal_8);
      }
      this._MaterialSelectDropdownItemComponent_0_7.factoryRenderer = (currVal_8!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:4770:4805 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.isMultiSelect;
    if (import44.checkBinding(this._expr_9, currVal_9, 'isMultiSelect', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_7, 'deselectOnActivate', currVal_9);
      }
      this._MaterialSelectDropdownItemComponent_0_7.deselectOnActivate = (currVal_9!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:5053:5089 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.selection;
    if (import44.checkBinding(this._expr_10, currVal_10, 'selection', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_7, 'selection', currVal_10);
      }
      this._MaterialSelectDropdownItemComponent_0_7.selection = (currVal_10!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:4820:4843 */;
      changed = true;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.activeModel.id(local_suggestion);
    if (import44.checkBinding(this._expr_11, currVal_11, 'activeModel.id(suggestion)', 'package:angulardart_components/material_input/material_auto_suggest_input.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_7, 'id', currVal_11);
      }
      this._MaterialSelectDropdownItemComponent_0_7.id = (currVal_11!) /* REF:package:angulardart_components/material_input/material_auto_suggest_input.html:5229:5262 */;
      changed = true;
      this._expr_11 = currVal_11;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._ActiveItemDirective_0_5.detectHostChanges(this._compView_0, this._el_0);
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
    if ((!import44.debugThrowIfChanged)) {
      if (firstCheck) {
        this._ActiveItemDirective_0_5.instance.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._ActiveItemDirective_0_5.instance.ngOnDestroy();
    this._MaterialSelectDropdownItemComponent_0_7.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final local_suggestion = this.locals['\$implicit'];
    final _ctx = this.ctx;
    _ctx.activeModel.activate(local_suggestion);
    this._ActiveItemDirective_0_5.instance.onMouseEnter();
  }
}

import47.EmbeddedView<void> viewFactory_MaterialAutoSuggestInputComponent11<T>(import56.RenderView parentView, int parentIndex) {
  return _ViewMaterialAutoSuggestInputComponent11<T>(parentView, parentIndex);
}

final List<Object> styles$MaterialAutoSuggestInputComponentHost = const [];

class _ViewMaterialAutoSuggestInputComponentHost0<T> extends import79.HostView<import3.MaterialAutoSuggestInputComponent<T>> {
  @override
  void build() {
    this.componentView = ViewMaterialAutoSuggestInputComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import21.isDevMode
        ? import23.debugInjectorWrap(import3.MaterialAutoSuggestInputComponent, () {
            return import3.MaterialAutoSuggestInputComponent(null, this.injectorGetOptional(import73.IdGenerator, this.parentIndex), this.componentView, this.injectorGetOptional(import34.PopupSizeProvider, this.parentIndex));
          })
        : import3.MaterialAutoSuggestInputComponent(null, this.injectorGetOptional(import73.IdGenerator, this.parentIndex), this.componentView, this.injectorGetOptional(import34.PopupSizeProvider, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((((((((((identical(token, import3.MaterialAutoSuggestInputComponent) || identical(token, import40.HasDisabled)) || identical(token, import75.HasRenderer)) || identical(token, import74.SelectionContainer)) || identical(token, import80.HighlightProvider)) || identical(token, import42.DropdownHandle)) || identical(token, import75.HasComponentRenderer)) || identical(token, import81.HasFactoryRenderer)) || identical(token, import39.Focusable)) || identical(token, import34.PopupSizeProvider)) && (0 == nodeIndex))) {
      return this.component;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    if (((!import44.debugThrowIfChanged) && firstCheck)) {
      this.component.ngOnInit();
    }
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import79.HostView<import3.MaterialAutoSuggestInputComponent<T>> viewFactory_MaterialAutoSuggestInputComponentHost0<T>() {
  return _ViewMaterialAutoSuggestInputComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialAutoSuggestInputComponent, createMaterialAutoSuggestInputComponentFactory());
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
  _ref13.initReflector();
  _ref14.initReflector();
  _ref15.initReflector();
  _ref16.initReflector();
  _ref17.initReflector();
  _ref18.initReflector();
  _ref19.initReflector();
  _ref20.initReflector();
  _ref21.initReflector();
  _ref22.initReflector();
  _ref23.initReflector();
  _ref24.initReflector();
  _ref25.initReflector();
  _ref26.initReflector();
  _ref27.initReflector();
  _ref28.initReflector();
  _ref29.initReflector();
  _ref30.initReflector();
  _ref31.initReflector();
  _ref32.initReflector();
  _ref33.initReflector();
  _ref34.initReflector();
  _ref35.initReflector();
  _ref36.initReflector();
  _ref37.initReflector();
  _ref38.initReflector();
}
