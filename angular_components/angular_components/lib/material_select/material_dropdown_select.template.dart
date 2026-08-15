// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_dropdown_select.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/annotations/rtl_annotation.template.dart' as _ref1;
import 'package:angulardart_components/content/deferred_content.template.dart' as _ref2;
import 'package:angulardart_components/content/deferred_content_aware.template.dart' as _ref3;
import 'package:angulardart_components/dynamic_component/dynamic_component.template.dart' as _ref4;
import 'package:angulardart_components/focus/focus.template.dart' as _ref5;
import 'package:angulardart_components/focus/keyboard_only_focus_indicator.template.dart' as _ref6;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref7;
import 'package:angulardart_components/laminate/enums/alignment.template.dart' as _ref8;
import 'package:angulardart_components/laminate/popup/popup.template.dart' as _ref9;
import 'package:angulardart_components/material_list/material_list.template.dart' as _ref10;
import 'package:angulardart_components/material_popup/material_popup.template.dart' as _ref11;
import 'package:angulardart_components/material_select/activation_handler.template.dart' as _ref12;
import 'package:angulardart_components/material_select/dropdown_button.template.dart' as _ref13;
import 'package:angulardart_components/material_select/material_select_base.template.dart' as _ref14;
import 'package:angulardart_components/material_select/material_select_dropdown_item.template.dart' as _ref15;
import 'package:angulardart_components/material_select/shift_click_selection.template.dart' as _ref16;
import 'package:angulardart_components/mixins/button_wrapper.template.dart' as _ref17;
import 'package:angulardart_components/mixins/material_dropdown_base.template.dart' as _ref18;
import 'package:angulardart_components/mixins/selection_input_adapter.template.dart' as _ref19;
import 'package:angulardart_components/mixins/track_layout_changes.template.dart' as _ref20;
import 'package:angulardart_components/model/a11y/active_item.template.dart' as _ref21;
import 'package:angulardart_components/model/a11y/active_item_directive.template.dart' as _ref22;
import 'package:angulardart_components/model/a11y/keyboard_handler_mixin.template.dart' as _ref23;
import 'package:angulardart_components/model/selection/select.template.dart' as _ref24;
import 'package:angulardart_components/model/selection/selection_container.template.dart' as _ref25;
import 'package:angulardart_components/model/selection/selection_model.template.dart' as _ref26;
import 'package:angulardart_components/model/selection/selection_options.template.dart' as _ref27;
import 'package:angulardart_components/model/ui/has_factory.template.dart' as _ref28;
import 'package:angulardart_components/model/ui/template_support.template.dart' as _ref29;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref30;
import 'package:angulardart_components/utils/angular/css/css.template.dart' as _ref31;
import 'package:angulardart_components/utils/id_generator/id_generator.template.dart' as _ref32;
import 'package:angulardart_components/material_select/material_dropdown_select.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_dropdown_select.dart' as import2;
import '../material_popup/material_popup.dart' as import3;
import 'dropdown_button.template.dart' as import4;
import 'dropdown_button.dart' as import5;
import '../src/laminate/popup/popup_source_directive.dart' as import6;
import '../material_popup/material_popup.template.dart' as import7;

import 'package:angulardart/src/core/linker/view_container.dart';

import '../content/deferred_content.dart' as import9;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import10;
import 'package:angulardart/src/core/linker/views/view.dart' as import11;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import13;
import 'package:angulardart/src/utilities.dart' as import14;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import15;
import 'package:angulardart/src/di/errors.dart' as import16;

import '../src/laminate/popup/dom_popup_source.dart' as import17;
import '../utils/angular/reference/reference.dart' as import18;

import 'package:angulardart/src/devtools.dart' as import19;

import '../src/laminate/popup/popup_hierarchy.dart' as import20;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import21;

import '../src/laminate/overlay/overlay_service.dart' as import22;
import '../utils/browser/dom_service/dom_service.dart' as import23;
import '../laminate/overlay/zindexer.dart' as import24;

import 'package:angulardart_meta/src/di_tokens.dart' as import25;

import 'dart:core';

import 'package:angulardart_components/laminate/enums/alignment.dart' as import27;

import '../src/laminate/popup/popup_size_provider.dart' as import28;

import 'package:angulardart/src/core/linker/element_ref.dart';
import 'package:angulardart/src/core/linker/template_ref.dart';

import '../focus/focus_interface.dart' as import31;
import '../interfaces/has_disabled.dart' as import32;
import '../content/deferred_content_aware.dart' as import33;
import '../mixins/material_dropdown_base.dart' as import34;
import '../src/laminate/popup/popup_ref.dart' as import35;

import 'package:angulardart/src/runtime/check_binding.dart' as import36;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import38;

import '../material_list/material_list.template.dart' as import39;
import '../focus/focus.dart' as import40;
import '../material_list/material_list.dart' as import41;

import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/views/render_view.dart' as import43;

import '../laminate/components/modal/modal.dart' as import44;

import 'package:angulardart/src/common/directives/ng_for.dart' as import45;

import 'material_select_dropdown_item.template.dart' as import46;
import '../model/a11y/active_item_directive.template.dart' as import47;
import 'material_select_dropdown_item.dart' as import48;
import '../model/a11y/active_item_directive.dart' as import49;
import 'activation_handler.dart' as import50;
import '../utils/id_generator/id_generator.dart' as import51;
import '../model/selection/selection_container.dart' as import52;
import '../model/ui/has_renderer.dart' as import53;

import 'package:angulardart/src/runtime/text_binding.dart' as import54;
import 'package:angulardart/src/runtime/interpolate.dart' as import55;

import '../dynamic_component/dynamic_component.template.dart' as import56;
import '../dynamic_component/dynamic_component.dart' as import57;

import 'package:angulardart/src/core/linker/dynamic_component_loader.dart' as import58;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import59;

import '../model/a11y/active_item.dart' as import60;

final List<Object> styles$MaterialDropdownSelectComponent = [import0.styles];

class ViewMaterialDropdownSelectComponent0<T> extends import1.ComponentView<import2.MaterialDropdownSelectComponent<T>> {
  late dynamic _PopupRef_2_10 = import3.getResolvedPopupRef(this._MaterialPopupComponent_2_8);
  late dynamic _PopupHierarchy_2_12 = import3.getHierarchy(this._MaterialPopupComponent_2_8);
  late final import4.ViewDropdownButtonComponent0 _compView_0;
  late final import5.DropdownButtonComponent _DropdownButtonComponent_0_5;
  late final import6.PopupSourceDirective _PopupSourceDirective_0_7;
  late final import7.ViewMaterialPopupComponent0 _compView_2;
  late final ViewContainer _appEl_2;
  late final import3.MaterialPopupComponent _MaterialPopupComponent_2_8;
  late final ViewContainer _appEl_4;
  late final import9.DeferredContentDirective _DeferredContentDirective_4_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_7;
  Object? _expr_8;
  Object? _expr_9;
  Object? _expr_10;
  Object? _expr_11;
  Object? _expr_12;
  Object? _expr_13;
  Object? _expr_14;
  Object? _expr_15;
  Object? _expr_17;
  Object? _expr_18;
  Object? _expr_19;
  Object? _expr_20;
  Object? _expr_21;
  Object? _expr_22;
  late final _el_2;
  static import10.ComponentStyles? _componentStyles;
  ViewMaterialDropdownSelectComponent0(import11.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import13.renderFactory.createElement('material-dropdown-select');
  }
  static String? get _debugComponentUrl {
    return (import14.isDevMode ? 'asset:angulardart_components/lib/material_select/material_dropdown_select.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._compView_0 = import4.ViewDropdownButtonComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import15.appendRenderChild(parentRenderNode, _el_0);
    import15.updateRenderAttribute(_el_0, 'initPopupAriaAttributes', 'false');
    import15.updateRenderAttribute(_el_0, 'popupSource', '');
    import15.updateRenderAttribute(_el_0, 'popupType', 'listbox');
    this.addShimC(_el_0);
    this._DropdownButtonComponent_0_5 = import5.DropdownButtonComponent();
    this._PopupSourceDirective_0_7 = (import14.isDevMode
        ? import16.debugInjectorWrap(import6.PopupSourceDirective, () {
            return import6.PopupSourceDirective((this.parentView!).injectorGet(import17.DomPopupSourceFactory, this.parentIndex), import15.unwrapNode(_el_0), (this.parentView!).injectorGetOptional(import18.ReferenceDirective, this.parentIndex), this._DropdownButtonComponent_0_5, 'false');
          })
        : import6.PopupSourceDirective((this.parentView!).injectorGet(import17.DomPopupSourceFactory, this.parentIndex), import15.unwrapNode(_el_0), (this.parentView!).injectorGetOptional(import18.ReferenceDirective, this.parentIndex), this._DropdownButtonComponent_0_5, 'false'));
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(_el_0, this._PopupSourceDirective_0_7);
    }
    final _text_1 = import15.createRenderText(' ');
    this._compView_0.createAndProject(this._DropdownButtonComponent_0_5, [
      <Object>[_text_1]..addAll(import14.unsafeCast(this.projectedNodes[0])),
    ]);
    this._compView_2 = import7.ViewMaterialPopupComponent0(this, 2);
    this._el_2 = this._compView_2.rootElement;
    import15.appendRenderChild(parentRenderNode, this._el_2);
    import15.updateRenderAttribute(this._el_2, 'enforceSpaceConstraints', '');
    this.addShimC(this._el_2);
    this._appEl_2 = ViewContainer(2, null, this, this._el_2);
    this._MaterialPopupComponent_2_8 = (import14.isDevMode
        ? import16.debugInjectorWrap(import3.MaterialPopupComponent, () {
            return import3.MaterialPopupComponent((this.parentView!).injectorGetOptional(import20.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import3.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import21.NgZone, this.parentIndex), (this.parentView!).injectorGet(import22.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import23.DomService, this.parentIndex), (this.parentView!).injectorGet(import24.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import25.OpaqueToken<List<import27.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import25.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import25.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import28.PopupSizeProvider, this.parentIndex), this._compView_2, this._appEl_2, ElementRef(import15.unwrapNode(this._el_2)));
          })
        : import3.MaterialPopupComponent((this.parentView!).injectorGetOptional(import20.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import3.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import21.NgZone, this.parentIndex), (this.parentView!).injectorGet(import22.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import23.DomService, this.parentIndex), (this.parentView!).injectorGet(import24.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import25.OpaqueToken<List<import27.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import25.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import25.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import28.PopupSizeProvider, this.parentIndex), this._compView_2, this._appEl_2, ElementRef(import15.unwrapNode(this._el_2))));
    final _el_3 = import15.createRenderElement('div');
    import15.updateRenderAttribute(_el_3, 'header', '');
    this.addShimC(_el_3);
    this.project(_el_3, 1);
    final _anchor_4 = import15.createRenderAnchor();
    this._appEl_4 = ViewContainer(4, 2, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, (parentView, parentIndex) {
      return viewFactory_MaterialDropdownSelectComponent1<T>(parentView, parentIndex);
    });
    this._DeferredContentDirective_4_9 = import9.DeferredContentDirective(this._appEl_4, _TemplateRef_4_8, this._MaterialPopupComponent_2_8, this);
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(_anchor_4, this._DeferredContentDirective_4_9);
    }
    final _el_5 = import15.createRenderElement('div');
    import15.updateRenderAttribute(_el_5, 'footer', '');
    this.addShimC(_el_5);
    this.project(_el_5, 5);
    this._compView_2.createAndProject(this._MaterialPopupComponent_2_8, [
      <Object>[_el_3],
      <Object>[this._appEl_4],
      <Object>[_el_5],
    ]);
    import15.addRenderEventListener(_el_0, 'keydown', this.eventHandler1(_ctx.onKeyDown));
    import15.addRenderEventListener(_el_0, 'keypress', this.eventHandler1(_ctx.onKeyPress));
    final subscription_0 = this._DropdownButtonComponent_0_5.onFocus.listen(this.eventHandler1(_ctx.onFocus));
    final subscription_1 = this._DropdownButtonComponent_0_5.onBlur.listen(this.eventHandler1(_ctx.onBlur));
    final subscription_2 = this._DropdownButtonComponent_0_5.trigger.listen(this.eventHandler1(_ctx.handleClick));
    final subscription_3 = this._MaterialPopupComponent_2_8.onVisible.listen(this.eventHandler1(_ctx.onVisible));
    import15.addRenderEventListener(_el_3, 'keydown', this.eventHandler1(_ctx.onKeyDown));
    import15.addRenderEventListener(_el_3, 'keypress', this.eventHandler1(_ctx.onKeyPress));
    import15.addRenderEventListener(_el_3, 'keyup', this.eventHandler1(_ctx.onKeyUp));
    import15.addRenderEventListener(_el_5, 'keydown', this.eventHandler1(_ctx.onKeyDown));
    import15.addRenderEventListener(_el_5, 'keypress', this.eventHandler1(_ctx.onKeyPress));
    import15.addRenderEventListener(_el_5, 'keyup', this.eventHandler1(_ctx.onKeyUp));
    import11.View.queryChangeDetectorRefs[this._DropdownButtonComponent_0_5] = this._compView_0;
    _ctx.dropdownButton = this._DropdownButtonComponent_0_5;
    this.initSubscriptions([subscription_0, subscription_1, subscription_2, subscription_3]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import31.Focusable) || identical(token, import32.HasDisabled)) && (nodeIndex <= 1))) {
      return this._DropdownButtonComponent_0_5;
    }
    if (((2 <= nodeIndex) && (nodeIndex <= 5))) {
      if (((identical(token, import3.MaterialPopupComponent) || identical(token, import33.DeferredContentAware)) || identical(token, import34.DropdownHandle))) {
        return this._MaterialPopupComponent_2_8;
      }
      if (identical(token, import35.PopupRef)) {
        return this._PopupRef_2_10;
      }
      if (identical(token, import20.PopupHierarchy)) {
        return this._PopupHierarchy_2_12;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_source = this._PopupSourceDirective_0_7;
    changed = false;
    if (firstCheck) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'popupType', 'listbox');
      }
      this._DropdownButtonComponent_0_5.popupType = 'listbox' /* REF:package:angulardart_components/material_select/material_dropdown_select.html:824:843 */;
      changed = true;
    }
    final currVal_0 = _ctx.buttonText;
    if (import36.checkBinding(this._expr_0, currVal_0, 'buttonText', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'buttonText', currVal_0);
      }
      this._DropdownButtonComponent_0_5.buttonText = (currVal_0!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:398:423 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.buttonAriaLabel;
    if (import36.checkBinding(this._expr_1, currVal_1, 'buttonAriaLabel', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'buttonAriaLabel', currVal_1);
      }
      this._DropdownButtonComponent_0_5.buttonAriaLabel = (currVal_1!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:268:303 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.disabled;
    if (import36.checkBinding(this._expr_2, currVal_2, 'disabled', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'disabled', currVal_2);
      }
      this._DropdownButtonComponent_0_5.disabled = (currVal_2!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:490:511 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.icon;
    if (import36.checkBinding(this._expr_3, currVal_3, 'icon', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'icon', currVal_3);
      }
      this._DropdownButtonComponent_0_5.icon = (currVal_3!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:542:555 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.iconName;
    if (import36.checkBinding(this._expr_4, currVal_4, 'iconName', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'iconName', currVal_4);
      }
      this._DropdownButtonComponent_0_5.iconName = (currVal_4!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:516:537 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.raised;
    if (import36.checkBinding(this._expr_5, currVal_5, 'raised', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'raised', currVal_5);
      }
      this._DropdownButtonComponent_0_5.raised = (currVal_5!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:560:577 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_7 = _ctx.error;
    if (import36.checkBinding(this._expr_7, currVal_7, 'error', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'error', currVal_7);
      }
      this._DropdownButtonComponent_0_5.error = (currVal_7!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:428:443 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = (_ctx.visible ? _ctx.listId : null);
    if (import36.checkBinding(this._expr_8, currVal_8, 'visible ? listId : null', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'ariaOwns', currVal_8);
      }
      this._DropdownButtonComponent_0_5.ariaOwns = (currVal_8!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:848:884 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.visible;
    if (import36.checkBinding(this._expr_9, currVal_9, 'visible', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'ariaExpanded', currVal_9);
      }
      this._DropdownButtonComponent_0_5.ariaExpanded = (currVal_9!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:889:913 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.buttonAriaDescribedBy;
    if (import36.checkBinding(this._expr_10, currVal_10, 'buttonAriaDescribedBy', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'ariaDescribedBy', currVal_10);
      }
      this._DropdownButtonComponent_0_5.ariaDescribedBy = (currVal_10!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:352:393 */;
      changed = true;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.buttonAriaRole;
    if (import36.checkBinding(this._expr_11, currVal_11, 'buttonAriaRole', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'role', currVal_11);
      }
      this._DropdownButtonComponent_0_5.role = (currVal_11!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:240:263 */;
      changed = true;
      this._expr_11 = currVal_11;
    }
    final currVal_12 = _ctx.buttonAriaLabelledBy;
    if (import36.checkBinding(this._expr_12, currVal_12, 'buttonAriaLabelledBy', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'ariaLabelledBy', currVal_12);
      }
      this._DropdownButtonComponent_0_5.ariaLabelledBy = (currVal_12!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:308:347 */;
      changed = true;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = _ctx.showButtonBorder;
    if (import36.checkBinding(this._expr_13, currVal_13, 'showButtonBorder', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DropdownButtonComponent_0_5, 'showButtonBorder', currVal_13);
      }
      this._DropdownButtonComponent_0_5.showButtonBorder = (currVal_13!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:448:485 */;
      changed = true;
      this._expr_13 = currVal_13;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (((!import36.debugThrowIfChanged) && firstCheck)) {
      this._DropdownButtonComponent_0_5.ngOnInit();
    }
    changed = false;
    if (firstCheck) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialPopupComponent_2_8, 'enforceSpaceConstraints', true);
      }
      this._MaterialPopupComponent_2_8.enforceSpaceConstraints = true /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1009:1032 */;
      changed = true;
    }
    final currVal_15 = _ctx.autoDismiss;
    if (import36.checkBinding(this._expr_15, currVal_15, 'autoDismiss', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialPopupComponent_2_8, 'autoDismiss', currVal_15);
      }
      this._MaterialPopupComponent_2_8.autoDismiss = (currVal_15!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1214:1241 */;
      changed = true;
      this._expr_15 = currVal_15;
    }
    final currVal_17 = _ctx.popupMatchInputWidth;
    if (import36.checkBinding(this._expr_17, currVal_17, 'popupMatchInputWidth', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialPopupComponent_2_8, 'matchMinSourceWidth', currVal_17);
      }
      this._MaterialPopupComponent_2_8.matchMinSourceWidth = (currVal_17!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1123:1167 */;
      changed = true;
      this._expr_17 = currVal_17;
    }
    final currVal_18 = _ctx.preferredPositions;
    if (import36.checkBinding(this._expr_18, currVal_18, 'preferredPositions', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialPopupComponent_2_8, 'preferredPositions', currVal_18);
      }
      this._MaterialPopupComponent_2_8.preferredPositions = (currVal_18!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1077:1118 */;
      changed = true;
      this._expr_18 = currVal_18;
    }
    final currVal_19 = local_source;
    if (import36.checkBinding(this._expr_19, currVal_19, 'source', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialPopupComponent_2_8, 'source', currVal_19);
      }
      this._MaterialPopupComponent_2_8.source = (currVal_19!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1192:1209 */;
      changed = true;
      this._expr_19 = currVal_19;
    }
    final currVal_20 = _ctx.trackLayoutChanges;
    if (import36.checkBinding(this._expr_20, currVal_20, 'trackLayoutChanges', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialPopupComponent_2_8, 'trackLayoutChanges', currVal_20);
      }
      this._MaterialPopupComponent_2_8.trackLayoutChanges = (currVal_20!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1246:1287 */;
      changed = true;
      this._expr_20 = currVal_20;
    }
    final currVal_21 = _ctx.visible;
    if (import36.checkBinding(this._expr_21, currVal_21, 'visible', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialPopupComponent_2_8, 'visible', currVal_21);
      }
      this._MaterialPopupComponent_2_8.visible = (currVal_21!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1292:1311 */;
      changed = true;
      this._expr_21 = currVal_21;
    }
    final currVal_22 = _ctx.slide;
    if (import36.checkBinding(this._expr_22, currVal_22, 'slide', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialPopupComponent_2_8, 'slide', currVal_22);
      }
      this._MaterialPopupComponent_2_8.slide = (currVal_22!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1172:1187 */;
      changed = true;
      this._expr_22 = currVal_22;
    }
    if (changed) {
      this._compView_2.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DeferredContentDirective_4_9, 'deferredContent', true);
      }
      this._DeferredContentDirective_4_9.preserveDimensions = true /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1702:1725 */;
    }
    final currVal_14 = _ctx.popupClassName;
    if (import36.checkBinding(this._expr_14, currVal_14, 'popupClassName', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      this._compView_2.updateChildClassNonHtml(this._el_2, currVal_14) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1048:1072 */;
      this._expr_14 = currVal_14;
    }
    this._compView_2.detectHostChanges(firstCheck);
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
    this._compView_2.detectChangesDeprecated();
    if ((!import36.debugThrowIfChanged)) {
      if (firstCheck) {
        this._PopupSourceDirective_0_7.ngAfterViewInit();
        this._MaterialPopupComponent_2_8.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._compView_2.destroyInternalState();
    this._PopupSourceDirective_0_7.ngOnDestroy();
    this._DeferredContentDirective_4_9.ngOnDestroy();
    this._MaterialPopupComponent_2_8.ngOnDestroy();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import10.ComponentStyles.scoped(styles$MaterialDropdownSelectComponent, _debugComponentUrl));
      if (import14.isDevMode) {
        import10.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialDropdownSelectComponentNgFactory = ComponentFactory<import2.MaterialDropdownSelectComponent>('material-dropdown-select', viewFactory_MaterialDropdownSelectComponentHost0);
ComponentFactory<import2.MaterialDropdownSelectComponent> get MaterialDropdownSelectComponentNgFactory {
  return _MaterialDropdownSelectComponentNgFactory;
}

ComponentFactory<import2.MaterialDropdownSelectComponent<T>> createMaterialDropdownSelectComponentFactory<T>() {
  return ComponentFactory('material-dropdown-select', viewFactory_MaterialDropdownSelectComponentHost0);
}

class _ViewMaterialDropdownSelectComponent1<T> extends import38.EmbeddedView<import2.MaterialDropdownSelectComponent<T>> {
  late final import39.ViewMaterialListComponent0 _compView_0;
  late final import40.AutoFocusDirective _AutoFocusDirective_0_5;
  late final import41.MaterialListComponent _MaterialListComponent_0_6;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_4;
  late final _el_0;
  _ViewMaterialDropdownSelectComponent1(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import39.ViewMaterialListComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'options-list');
    import15.updateRenderAttribute(this._el_0, 'role', 'listbox');
    import15.updateRenderTabIndex(this._el_0, 0);
    this.addShimC(this._el_0);
    this._AutoFocusDirective_0_5 = (import14.isDevMode
        ? import16.debugInjectorWrap(import40.AutoFocusDirective, () {
            return import40.AutoFocusDirective(import15.unwrapNode(this._el_0), ((this.parentView!).parentView!).injectorGetOptional(import23.DomService, (this.parentView!).parentIndex), null, ((this.parentView!).parentView!).injectorGetOptional(import44.ModalComponent, (this.parentView!).parentIndex), import14.unsafeCast<ViewMaterialDropdownSelectComponent0>((this.parentView!))._PopupRef_2_10);
          })
        : import40.AutoFocusDirective(import15.unwrapNode(this._el_0), ((this.parentView!).parentView!).injectorGetOptional(import23.DomService, (this.parentView!).parentIndex), null, ((this.parentView!).parentView!).injectorGetOptional(import44.ModalComponent, (this.parentView!).parentIndex), import14.unsafeCast<ViewMaterialDropdownSelectComponent0>((this.parentView!))._PopupRef_2_10));
    this._MaterialListComponent_0_6 = import41.MaterialListComponent();
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(this._el_0, this._AutoFocusDirective_0_5);
    }
    final _text_1 = import15.createRenderText(' ');
    final _anchor_2 = import15.createRenderAnchor();
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialDropdownSelectComponent2<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    this._compView_0.createAndProject(this._MaterialListComponent_0_6, [
      <Object>[this.projectedNodes[2]]
        ..addAll(<Object>[_text_1])
        ..addAll(import14.unsafeCast(this.projectedNodes[3]))
        ..addAll(<Object>[this._appEl_2])
        ..addAll(import14.unsafeCast(this.projectedNodes[4])),
    ]);
    import15.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(_ctx.onKeyDown));
    import15.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(_ctx.onKeyPress));
    import15.addRenderEventListener(this._el_0, 'keyup', this.eventHandler1(_ctx.onKeyUp));
    import15.addRenderEventListener(this._el_0, 'mouseout', this.eventHandler1(this._handleEvent_0));
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final currVal_2 = _ctx.listAutoFocus;
    if (import36.checkBinding(this._expr_2, currVal_2, 'listAutoFocus', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._AutoFocusDirective_0_5, 'autoFocus', currVal_2);
      }
      this._AutoFocusDirective_0_5.autoFocus = (currVal_2!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1554:1581 */;
      this._expr_2 = currVal_2;
    }
    if (((!import36.debugThrowIfChanged) && firstCheck)) {
      this._AutoFocusDirective_0_5.ngOnInit();
    }
    changed = false;
    if (firstCheck) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialListComponent_0_6, 'role', 'listbox');
      }
      this._MaterialListComponent_0_6.role = 'listbox' /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1615:1629 */;
      changed = true;
    }
    final currVal_4 = _ctx.width;
    if (import36.checkBinding(this._expr_4, currVal_4, 'width', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialListComponent_0_6, 'width', currVal_4);
      }
      this._MaterialListComponent_0_6.width = (currVal_4!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1661:1676 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', (_ctx.options != null));
    }
    this._NgIf_2_9.ngIf = ((_ctx.options != null) ?? false) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2052:2075 */;
    final currVal_0 = _ctx.listId;
    if (import36.checkBinding(this._expr_0, currVal_0, 'listId', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      import15.updateRenderAttribute(this._el_0, 'id', currVal_0) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1636:1654 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.ariaActiveDescendant;
    if (import36.checkBinding(this._expr_1, currVal_1, 'ariaActiveDescendant', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      import15.updateRenderAttribute(this._el_0, 'aria-activedescendant', currVal_1) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:1884:1935 */;
      this._expr_1 = currVal_1;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_2.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._AutoFocusDirective_0_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.activeModel.activate(null);
  }
}

import38.EmbeddedView<void> viewFactory_MaterialDropdownSelectComponent1<T>(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDropdownSelectComponent1<T>(parentView, parentIndex);
}

class _ViewMaterialDropdownSelectComponent2<T> extends import38.EmbeddedView<import2.MaterialDropdownSelectComponent<T>> {
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final import45.NgFor _NgFor_2_9;
  Object? _expr_0;
  Object? _expr_1;
  _ViewMaterialDropdownSelectComponent2(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import15.createRenderElement('div');
    this.updateChildClass(_el_0, 'options-wrapper');
    this.addShimC(_el_0);
    final _anchor_1 = import15.createRenderAnchor();
    import15.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialDropdownSelectComponent3<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import15.createRenderAnchor();
    import15.appendRenderChild(_el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialDropdownSelectComponent4<T>(parentView, parentIndex);
    });
    this._NgFor_2_9 = import45.NgFor(this._appEl_2, _TemplateRef_2_8);
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(_anchor_2, this._NgFor_2_9);
    }
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.showDeselectItem);
    }
    this._NgIf_1_9.ngIf = (_ctx.showDeselectItem ?? false) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2148:2172 */;
    final currVal_0 = _ctx.options.optionGroups;
    if (import36.checkBinding(this._expr_0, currVal_0, 'options.optionGroups', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._NgFor_2_9, 'ngForOf', currVal_0);
      }
      this._NgFor_2_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2630:2697 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.trackByIndexFn;
    if (import36.checkBinding(this._expr_1, currVal_1, 'trackByIndexFn', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._NgFor_2_9, 'ngForTrackBy', currVal_1);
      }
      this._NgFor_2_9.ngForTrackBy = (currVal_1!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2630:2697 */;
      this._expr_1 = currVal_1;
    }
    if ((!import36.debugThrowIfChanged)) {
      this._NgFor_2_9.ngDoCheck();
    }
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
  }
}

import38.EmbeddedView<void> viewFactory_MaterialDropdownSelectComponent2<T>(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDropdownSelectComponent2<T>(parentView, parentIndex);
}

class _ViewMaterialDropdownSelectComponent3<T> extends import38.EmbeddedView<import2.MaterialDropdownSelectComponent<T>> {
  late final import46.ViewMaterialSelectDropdownItemComponent0<String> _compView_0;
  late final import47.ActiveItemDirectiveNgCd _ActiveItemDirective_0_5;
  late final import48.MaterialSelectDropdownItemComponent<String> _MaterialSelectDropdownItemComponent_0_6;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  late final _el_0;
  _ViewMaterialDropdownSelectComponent3(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import46.ViewMaterialSelectDropdownItemComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.addShimC(this._el_0);
    this._ActiveItemDirective_0_5 = import47.ActiveItemDirectiveNgCd(
      (import14.isDevMode
          ? import16.debugInjectorWrap(import49.ActiveItemDirective, () {
              return import49.ActiveItemDirective(import15.unwrapNode(this._el_0), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import23.DomService, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import44.Modal, (((this.parentView!).parentView!).parentView!).parentIndex), import14.unsafeCast<ViewMaterialDropdownSelectComponent0>((((this.parentView!).parentView!).parentView!))._PopupRef_2_10);
            })
          : import49.ActiveItemDirective(import15.unwrapNode(this._el_0), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import23.DomService, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import44.Modal, (((this.parentView!).parentView!).parentView!).parentIndex), import14.unsafeCast<ViewMaterialDropdownSelectComponent0>((((this.parentView!).parentView!).parentView!))._PopupRef_2_10)),
    );
    this._MaterialSelectDropdownItemComponent_0_6 = (import14.isDevMode
        ? import16.debugInjectorWrap(import48.MaterialSelectDropdownItemComponent, () {
            return import48.MaterialSelectDropdownItemComponent(import15.unwrapNode(this._el_0), null, import14.unsafeCast<ViewMaterialDropdownSelectComponent0>((((this.parentView!).parentView!).parentView!))._MaterialPopupComponent_2_8, ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import50.ActivationHandler, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import51.IdGenerator, (((this.parentView!).parentView!).parentView!).parentIndex), this._compView_0);
          })
        : import48.MaterialSelectDropdownItemComponent(import15.unwrapNode(this._el_0), null, import14.unsafeCast<ViewMaterialDropdownSelectComponent0>((((this.parentView!).parentView!).parentView!))._MaterialPopupComponent_2_8, ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import50.ActivationHandler, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import51.IdGenerator, (((this.parentView!).parentView!).parentView!).parentIndex), this._compView_0));
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(this._el_0, this._ActiveItemDirective_0_5.instance);
    }
    this._compView_0.createAndProject(this._MaterialSelectDropdownItemComponent_0_6, [const <Object>[]]);
    import15.addRenderEventListener(this._el_0, 'mouseenter', this.eventHandler1(this._handleEvent_0));
    import15.addRenderEventListener(this._el_0, 'mouseleave', this.eventHandler0(this._ActiveItemDirective_0_5.instance.onMouseLeave));
    final subscription_0 = this._MaterialSelectDropdownItemComponent_0_6.trigger.listen(this.eventHandler0(_ctx.deselectCurrentSelection));
    this.initRootNodesAndSubscriptions(import14.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import52.SelectionItem) || identical(token, import53.HasRenderer)) && (0 == nodeIndex))) {
      return this._MaterialSelectDropdownItemComponent_0_6;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_popup = import14.unsafeCast<ViewMaterialDropdownSelectComponent0>((((this.parentView!).parentView!).parentView!))._MaterialPopupComponent_2_8;
    final currVal_1 = ((local_popup.showPopup ?? false) && (_ctx.activeModel.isActive(_ctx.deselectLabel) ?? false));
    if (import36.checkBinding(this._expr_1, currVal_1, 'popup.showPopup && activeModel.isActive(deselectLabel)', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._ActiveItemDirective_0_5.instance, 'itemActive', currVal_1);
      }
      this._ActiveItemDirective_0_5.instance.itemActive = (currVal_1!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2401:2470 */;
      this._expr_1 = currVal_1;
    }
    changed = false;
    if (firstCheck) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'tabbable', false);
      }
      this._MaterialSelectDropdownItemComponent_0_6.tabbable = false /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2242:2260 */;
      changed = true;
    }
    final currVal_3 = (_ctx.deselectLabel!);
    if (import36.checkBinding(this._expr_3, currVal_3, 'deselectLabel!', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'value', currVal_3);
      }
      this._MaterialSelectDropdownItemComponent_0_6.value = currVal_3 /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2317:2341 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.isDeselectItemSelected;
    if (import36.checkBinding(this._expr_4, currVal_4, 'isDeselectItemSelected', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'selected', currVal_4);
      }
      this._MaterialSelectDropdownItemComponent_0_6.selected = (currVal_4!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2271:2306 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.activeModel.id(_ctx.deselectLabel);
    if (import36.checkBinding(this._expr_5, currVal_5, 'activeModel.id(deselectLabel)', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'id', currVal_5);
      }
      this._MaterialSelectDropdownItemComponent_0_6.id = (currVal_5!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2481:2517 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_0 = (_ctx.options.optionGroups.length == 1);
    if (import36.checkBinding(this._expr_0, currVal_0, 'options.optionGroups.length == 1', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      import15.updateRenderClass(this._el_0, 'empty', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2183:2231 */;
      this._expr_0 = currVal_0;
    }
    this._ActiveItemDirective_0_5.detectHostChanges(this._compView_0, this._el_0);
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
    if ((!import36.debugThrowIfChanged)) {
      if (firstCheck) {
        this._ActiveItemDirective_0_5.instance.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._ActiveItemDirective_0_5.instance.ngOnDestroy();
    this._MaterialSelectDropdownItemComponent_0_6.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.activeModel.activate(_ctx.deselectLabel);
    this._ActiveItemDirective_0_5.instance.onMouseEnter();
  }
}

import38.EmbeddedView<void> viewFactory_MaterialDropdownSelectComponent3<T>(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDropdownSelectComponent3<T>(parentView, parentIndex);
}

class _ViewMaterialDropdownSelectComponent4<T> extends import38.EmbeddedView<import2.MaterialDropdownSelectComponent<T>> {
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  Object? _expr_0;
  late final _el_0;
  _ViewMaterialDropdownSelectComponent4(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import15.createRenderElement('div');
    import15.updateRenderAttribute(this._el_0, 'group', '');
    this.addShimC(this._el_0);
    final _anchor_1 = import15.createRenderAnchor();
    import15.appendRenderChild(this._el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialDropdownSelectComponent5<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final local_group = this.locals['\$implicit'];
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', ((local_group.isNotEmpty ?? false) || (local_group.hasEmptyLabel ?? false)));
    }
    this._NgIf_1_9.ngIf = (((local_group.isNotEmpty ?? false) || (local_group.hasEmptyLabel ?? false)) ?? false) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2797:2845 */;
    final currVal_0 = ((local_group.isEmpty ?? false) && ((!(local_group.hasEmptyLabel ?? false)) ?? false));
    if (import36.checkBinding(this._expr_0, currVal_0, 'group.isEmpty && !group.hasEmptyLabel', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      import15.updateRenderClass(this._el_0, 'empty', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2724:2777 */;
      this._expr_0 = currVal_0;
    }
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }
}

import38.EmbeddedView<void> viewFactory_MaterialDropdownSelectComponent4<T>(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDropdownSelectComponent4<T>(parentView, parentIndex);
}

class _ViewMaterialDropdownSelectComponent5<T> extends import38.EmbeddedView<import2.MaterialDropdownSelectComponent<T>> {
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final ViewContainer _appEl_3;
  late final NgIf _NgIf_3_9;
  _ViewMaterialDropdownSelectComponent5(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _anchor_0 = import15.createRenderAnchor();
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialDropdownSelectComponent6<T>(parentView, parentIndex);
    });
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
    final _anchor_1 = import15.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialDropdownSelectComponent7<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import15.createRenderAnchor();
    this._appEl_2 = ViewContainer(2, null, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialDropdownSelectComponent8<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _anchor_3 = import15.createRenderAnchor();
    this._appEl_3 = ViewContainer(3, null, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, (parentView, parentIndex) {
      return viewFactory_MaterialDropdownSelectComponent10<T>(parentView, parentIndex);
    });
    this._NgIf_3_9 = NgIf(this._appEl_3, _TemplateRef_3_8);
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(_anchor_3, this._NgIf_3_9);
    }
    this.initRootNodesAndSubscriptions(import14.unsafeCast(<Object>[this._appEl_0, this._appEl_1, this._appEl_2, this._appEl_3]), null);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final local_group = import14.unsafeCast<_ViewMaterialDropdownSelectComponent4>((this.parentView!)).locals['\$implicit'];
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', ((local_group.hasLabel ?? false) && ((!(_ctx.hasCustomLabelRenderer ?? false)) ?? false)));
    }
    this._NgIf_0_9.ngIf = (((local_group.hasLabel ?? false) && ((!(_ctx.hasCustomLabelRenderer ?? false)) ?? false)) ?? false) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2863:2912 */;
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.hasCustomLabelRenderer);
    }
    this._NgIf_1_9.ngIf = (_ctx.hasCustomLabelRenderer ?? false) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3017:3047 */;
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', local_group.isNotEmpty);
    }
    this._NgIf_2_9.ngIf = (local_group.isNotEmpty ?? false) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3186:3211 */;
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.recordInput(this._NgIf_3_9, 'ngIf', ((local_group.isEmpty ?? false) && (local_group.hasEmptyLabel ?? false)));
    }
    this._NgIf_3_9.ngIf = (((local_group.isEmpty ?? false) && (local_group.hasEmptyLabel ?? false)) ?? false) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:4036:4080 */;
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_3.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
    this._appEl_3.destroyNestedViews();
  }
}

import38.EmbeddedView<void> viewFactory_MaterialDropdownSelectComponent5<T>(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDropdownSelectComponent5<T>(parentView, parentIndex);
}

class _ViewMaterialDropdownSelectComponent6<T> extends import38.EmbeddedView<import2.MaterialDropdownSelectComponent<T>> {
  final import54.TextBinding _textBinding_1 = import54.TextBinding();
  _ViewMaterialDropdownSelectComponent6(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import15.createRenderElement('span');
    import15.updateRenderAttribute(_el_0, 'label', '');
    this.addShimC(_el_0);
    import15.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final local_group = import14.unsafeCast<_ViewMaterialDropdownSelectComponent4>(((this.parentView!).parentView!)).locals['\$implicit'];
    this._textBinding_1.updateText(import55.interpolate0(local_group.uiDisplayName)) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:2932:2955 */;
  }
}

import38.EmbeddedView<void> viewFactory_MaterialDropdownSelectComponent6<T>(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDropdownSelectComponent6<T>(parentView, parentIndex);
}

class _ViewMaterialDropdownSelectComponent7<T> extends import38.EmbeddedView<import2.MaterialDropdownSelectComponent<T>> {
  late final import56.ViewDynamicComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import57.DynamicComponent _DynamicComponent_0_8;
  Object? _expr_0;
  Object? _expr_1;
  _ViewMaterialDropdownSelectComponent7(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import56.ViewDynamicComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.addShimC(_el_0);
    this._appEl_0 = ViewContainer(0, null, this, _el_0);
    this._DynamicComponent_0_8 = (import14.isDevMode
        ? import16.debugInjectorWrap(import57.DynamicComponent, () {
            return import57.DynamicComponent(((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import58.SlowComponentLoader, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._appEl_0);
          })
        : import57.DynamicComponent(((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import58.SlowComponentLoader, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._appEl_0));
    this._compView_0.create(this._DynamicComponent_0_8);
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    final local_group = import14.unsafeCast<_ViewMaterialDropdownSelectComponent4>(((this.parentView!).parentView!)).locals['\$implicit'];
    changed = false;
    final currVal_0 = (_ctx.labelFactory!)(local_group);
    if (import36.checkBinding(this._expr_0, currVal_0, 'labelFactory!(group)', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'componentFactory', currVal_0);
      }
      this._DynamicComponent_0_8.componentFactory = (currVal_0!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3062:3103 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = local_group;
    if (import36.checkBinding(this._expr_1, currVal_1, 'group', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'value', currVal_1);
      }
      this._DynamicComponent_0_8.value = (currVal_1!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3118:3133 */;
      changed = true;
      this._expr_1 = currVal_1;
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

import38.EmbeddedView<void> viewFactory_MaterialDropdownSelectComponent7<T>(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDropdownSelectComponent7<T>(parentView, parentIndex);
}

class _ViewMaterialDropdownSelectComponent8<T> extends import38.EmbeddedView<import2.MaterialDropdownSelectComponent<T>> {
  late final ViewContainer _appEl_0;
  late final import45.NgFor _NgFor_0_9;
  Object? _expr_0;
  _ViewMaterialDropdownSelectComponent8(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _anchor_0 = import15.createRenderAnchor();
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialDropdownSelectComponent9<T>(parentView, parentIndex);
    });
    this._NgFor_0_9 = import45.NgFor(this._appEl_0, _TemplateRef_0_8);
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(_anchor_0, this._NgFor_0_9);
    }
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    final local_group = import14.unsafeCast<_ViewMaterialDropdownSelectComponent4>(((this.parentView!).parentView!)).locals['\$implicit'];
    final currVal_0 = local_group;
    if (import36.checkBinding(this._expr_0, currVal_0, 'group', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._NgFor_0_9, 'ngForOf', currVal_0);
      }
      this._NgFor_0_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3256:3282 */;
      this._expr_0 = currVal_0;
    }
    if ((!import36.debugThrowIfChanged)) {
      this._NgFor_0_9.ngDoCheck();
    }
    this._appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
  }
}

import38.EmbeddedView<void> viewFactory_MaterialDropdownSelectComponent8<T>(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDropdownSelectComponent8<T>(parentView, parentIndex);
}

class _ViewMaterialDropdownSelectComponent9<T> extends import38.EmbeddedView<import2.MaterialDropdownSelectComponent<T>> {
  late final import46.ViewMaterialSelectDropdownItemComponent0<T> _compView_0;
  late final import47.ActiveItemDirectiveNgCd _ActiveItemDirective_0_5;
  late final import48.MaterialSelectDropdownItemComponent<T> _MaterialSelectDropdownItemComponent_0_6;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  Object? _expr_9;
  Object? _expr_10;
  late final _el_0;
  _ViewMaterialDropdownSelectComponent9(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import46.ViewMaterialSelectDropdownItemComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.addShimC(this._el_0);
    this._ActiveItemDirective_0_5 = import47.ActiveItemDirectiveNgCd(
      (import14.isDevMode
          ? import16.debugInjectorWrap(import49.ActiveItemDirective, () {
              return import49.ActiveItemDirective(import15.unwrapNode(this._el_0), (((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import23.DomService, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), (((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import44.Modal, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), import14.unsafeCast<ViewMaterialDropdownSelectComponent0>(((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!))._PopupRef_2_10);
            })
          : import49.ActiveItemDirective(import15.unwrapNode(this._el_0), (((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import23.DomService, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), (((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import44.Modal, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), import14.unsafeCast<ViewMaterialDropdownSelectComponent0>(((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!))._PopupRef_2_10)),
    );
    this._MaterialSelectDropdownItemComponent_0_6 = (import14.isDevMode
        ? import16.debugInjectorWrap(import48.MaterialSelectDropdownItemComponent, () {
            return import48.MaterialSelectDropdownItemComponent(import15.unwrapNode(this._el_0), null, import14.unsafeCast<ViewMaterialDropdownSelectComponent0>(((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!))._MaterialPopupComponent_2_8, (((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import50.ActivationHandler, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), (((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import51.IdGenerator, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0);
          })
        : import48.MaterialSelectDropdownItemComponent(import15.unwrapNode(this._el_0), null, import14.unsafeCast<ViewMaterialDropdownSelectComponent0>(((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!))._MaterialPopupComponent_2_8, (((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import50.ActivationHandler, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), (((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import51.IdGenerator, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0));
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(this._el_0, this._ActiveItemDirective_0_5.instance);
    }
    this._compView_0.createAndProject(this._MaterialSelectDropdownItemComponent_0_6, [const <Object>[]]);
    import15.addRenderEventListener(this._el_0, 'mouseenter', this.eventHandler1(this._handleEvent_0));
    import15.addRenderEventListener(this._el_0, 'mouseleave', this.eventHandler0(this._ActiveItemDirective_0_5.instance.onMouseLeave));
    this.initRootNode(this._el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import52.SelectionItem) || identical(token, import53.HasRenderer)) && (0 == nodeIndex))) {
      return this._MaterialSelectDropdownItemComponent_0_6;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_popup = import14.unsafeCast<ViewMaterialDropdownSelectComponent0>(((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!))._MaterialPopupComponent_2_8;
    final local_item = this.locals['\$implicit'];
    final currVal_0 = ((local_popup.showPopup ?? false) && (_ctx.activeModel.isActive(local_item) ?? false));
    if (import36.checkBinding(this._expr_0, currVal_0, 'popup.showPopup && activeModel.isActive(item)', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._ActiveItemDirective_0_5.instance, 'itemActive', currVal_0);
      }
      this._ActiveItemDirective_0_5.instance.itemActive = (currVal_0!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3661:3721 */;
      this._expr_0 = currVal_0;
    }
    changed = false;
    if (firstCheck) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'tabbable', false);
      }
      this._MaterialSelectDropdownItemComponent_0_6.tabbable = false /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3299:3317 */;
      changed = true;
    }
    final currVal_1 = _ctx.isOptionDisabled(local_item);
    if (import36.checkBinding(this._expr_1, currVal_1, 'isOptionDisabled(item)', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'disabled', currVal_1);
      }
      this._MaterialSelectDropdownItemComponent_0_6.disabled = (currVal_1!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3528:3563 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_3 = _ctx.isOptionHidden(local_item);
    if (import36.checkBinding(this._expr_3, currVal_3, 'isOptionHidden(item)', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'isHidden', currVal_3);
      }
      this._MaterialSelectDropdownItemComponent_0_6.isHidden = (currVal_3!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3580:3613 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = local_item;
    if (import36.checkBinding(this._expr_4, currVal_4, 'item', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'value', currVal_4);
      }
      this._MaterialSelectDropdownItemComponent_0_6.value = (currVal_4!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3630:3644 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.itemRenderer;
    if (import36.checkBinding(this._expr_5, currVal_5, 'itemRenderer', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'itemRenderer', currVal_5);
      }
      this._MaterialSelectDropdownItemComponent_0_6.itemRenderer = (currVal_5!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3334:3363 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.componentRenderer;
    if (import36.checkBinding(this._expr_6, currVal_6, 'componentRenderer', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'componentRenderer', currVal_6);
      }
      this._MaterialSelectDropdownItemComponent_0_6.componentRenderer = (currVal_6!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3380:3419 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.factoryRenderer;
    if (import36.checkBinding(this._expr_7, currVal_7, 'factoryRenderer', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'factoryRenderer', currVal_7);
      }
      this._MaterialSelectDropdownItemComponent_0_6.factoryRenderer = (currVal_7!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3436:3471 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.deselectOnActivate;
    if (import36.checkBinding(this._expr_8, currVal_8, 'deselectOnActivate', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'deselectOnActivate', currVal_8);
      }
      this._MaterialSelectDropdownItemComponent_0_6.deselectOnActivate = (currVal_8!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3782:3823 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.selection;
    if (import36.checkBinding(this._expr_9, currVal_9, 'selection', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'selection', currVal_9);
      }
      this._MaterialSelectDropdownItemComponent_0_6.selection = (currVal_9!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3488:3511 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.activeModel.id(local_item);
    if (import36.checkBinding(this._expr_10, currVal_10, 'activeModel.id(item)', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_6, 'id', currVal_10);
      }
      this._MaterialSelectDropdownItemComponent_0_6.id = (currVal_10!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:3738:3765 */;
      changed = true;
      this._expr_10 = currVal_10;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._ActiveItemDirective_0_5.detectHostChanges(this._compView_0, this._el_0);
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
    if ((!import36.debugThrowIfChanged)) {
      if (firstCheck) {
        this._ActiveItemDirective_0_5.instance.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._ActiveItemDirective_0_5.instance.ngOnDestroy();
    this._MaterialSelectDropdownItemComponent_0_6.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final local_item = this.locals['\$implicit'];
    final _ctx = this.ctx;
    _ctx.activeModel.activate(local_item);
    this._ActiveItemDirective_0_5.instance.onMouseEnter();
  }
}

import38.EmbeddedView<void> viewFactory_MaterialDropdownSelectComponent9<T>(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDropdownSelectComponent9<T>(parentView, parentIndex);
}

class _ViewMaterialDropdownSelectComponent10<T> extends import38.EmbeddedView<import2.MaterialDropdownSelectComponent<T>> {
  late final import46.ViewMaterialSelectDropdownItemComponent0<String> _compView_0;
  late final import48.MaterialSelectDropdownItemComponent<String> _MaterialSelectDropdownItemComponent_0_5;
  Object? _expr_2;
  _ViewMaterialDropdownSelectComponent10(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import46.ViewMaterialSelectDropdownItemComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.addShimC(_el_0);
    this._MaterialSelectDropdownItemComponent_0_5 = (import14.isDevMode
        ? import16.debugInjectorWrap(import48.MaterialSelectDropdownItemComponent, () {
            return import48.MaterialSelectDropdownItemComponent(import15.unwrapNode(_el_0), null, import14.unsafeCast<ViewMaterialDropdownSelectComponent0>((((((this.parentView!).parentView!).parentView!).parentView!).parentView!))._MaterialPopupComponent_2_8, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import50.ActivationHandler, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import51.IdGenerator, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0);
          })
        : import48.MaterialSelectDropdownItemComponent(import15.unwrapNode(_el_0), null, import14.unsafeCast<ViewMaterialDropdownSelectComponent0>((((((this.parentView!).parentView!).parentView!).parentView!).parentView!))._MaterialPopupComponent_2_8, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import50.ActivationHandler, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import51.IdGenerator, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0));
    this._compView_0.createAndProject(this._MaterialSelectDropdownItemComponent_0_5, [const <Object>[]]);
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import52.SelectionItem) || identical(token, import53.HasRenderer)) && (0 == nodeIndex))) {
      return this._MaterialSelectDropdownItemComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_group = import14.unsafeCast<_ViewMaterialDropdownSelectComponent4>(((this.parentView!).parentView!)).locals['\$implicit'];
    changed = false;
    if (firstCheck) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_5, 'disabled', true);
      }
      this._MaterialSelectDropdownItemComponent_0_5.disabled = true /* REF:package:angulardart_components/material_select/material_dropdown_select.html:4128:4145 */;
      changed = true;
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_5, 'tabbable', false);
      }
      this._MaterialSelectDropdownItemComponent_0_5.tabbable = false /* REF:package:angulardart_components/material_select/material_dropdown_select.html:4095:4113 */;
      changed = true;
    }
    final currVal_2 = local_group.emptyLabel;
    if (import36.checkBinding(this._expr_2, currVal_2, 'group.emptyLabel', 'package:angulardart_components/material_select/material_dropdown_select.html')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialSelectDropdownItemComponent_0_5, 'value', currVal_2);
      }
      this._MaterialSelectDropdownItemComponent_0_5.value = (currVal_2!) /* REF:package:angulardart_components/material_select/material_dropdown_select.html:4160:4186 */;
      changed = true;
      this._expr_2 = currVal_2;
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
    this._MaterialSelectDropdownItemComponent_0_5.ngOnDestroy();
  }
}

import38.EmbeddedView<void> viewFactory_MaterialDropdownSelectComponent10<T>(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDropdownSelectComponent10<T>(parentView, parentIndex);
}

final List<Object> styles$MaterialDropdownSelectComponentHost = const [];

class _ViewMaterialDropdownSelectComponentHost0<T> extends import59.HostView<import2.MaterialDropdownSelectComponent<T>> {
  late import60.ActiveItemModel<dynamic> _ActiveItemModel_0_13 = import2.fromDropdown(this.component);
  @override
  void build() {
    this.componentView = ViewMaterialDropdownSelectComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import14.isDevMode
        ? import16.debugInjectorWrap(import2.MaterialDropdownSelectComponent, () {
            return import2.MaterialDropdownSelectComponent(this.injectorGetOptional(import51.IdGenerator, this.parentIndex), this.injectorGetOptional(import28.PopupSizeProvider, this.parentIndex), this.injectorGetOptional(const import25.OpaqueToken<Object>('isRtl'), this.parentIndex), null, null, this.componentView, import15.unwrapNode(_el_0));
          })
        : import2.MaterialDropdownSelectComponent(this.injectorGetOptional(import51.IdGenerator, this.parentIndex), this.injectorGetOptional(import28.PopupSizeProvider, this.parentIndex), this.injectorGetOptional(const import25.OpaqueToken<Object>('isRtl'), this.parentIndex), null, null, this.componentView, import15.unwrapNode(_el_0)));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if ((((((((identical(token, import2.MaterialDropdownSelectComponent) || identical(token, import34.DropdownHandle)) || identical(token, import32.HasDisabled)) || identical(token, import53.HasRenderer)) || identical(token, import33.DeferredContentAware)) || identical(token, import52.SelectionContainer)) || identical(token, import28.PopupSizeProvider)) || identical(token, import50.ActivationHandler))) {
        return this.component;
      }
      if (identical(token, import60.ActiveItemModel)) {
        return this._ActiveItemModel_0_13;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import59.HostView<import2.MaterialDropdownSelectComponent<T>> viewFactory_MaterialDropdownSelectComponentHost0<T>() {
  return _ViewMaterialDropdownSelectComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialDropdownSelectComponent, createMaterialDropdownSelectComponentFactory());
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
}
