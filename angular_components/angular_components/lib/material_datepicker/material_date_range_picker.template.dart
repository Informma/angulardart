// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_date_range_picker.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angulardart_components/content/deferred_content.template.dart' as _ref2;
import 'package:angulardart_components/focus/focus.template.dart' as _ref3;
import 'package:angulardart_components/focus/focus_trap.template.dart' as _ref4;
import 'package:angulardart_components/focus/keyboard_only_focus_indicator.template.dart' as _ref5;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref6;
import 'package:angulardart_components/laminate/enums/alignment.template.dart' as _ref7;
import 'package:angulardart_components/laminate/popup/popup.template.dart' as _ref8;
import 'package:angulardart_components/material_button/material_button.template.dart' as _ref9;
import 'package:angulardart_components/material_datepicker/comparison_option.template.dart' as _ref10;
import 'package:angulardart_components/material_datepicker/config.template.dart' as _ref11;
import 'package:angulardart_components/material_datepicker/date_range_editor.template.dart' as _ref12;
import 'package:angulardart_components/material_datepicker/date_range_editor_host.template.dart' as _ref13;
import 'package:angulardart_components/material_datepicker/model.template.dart' as _ref14;
import 'package:angulardart_components/material_datepicker/module.template.dart' as _ref15;
import 'package:angulardart_components/material_datepicker/next_prev_buttons.template.dart' as _ref16;
import 'package:angulardart_components/material_datepicker/preset.template.dart' as _ref17;
import 'package:angulardart_components/material_datepicker/range.template.dart' as _ref18;
import 'package:angulardart_components/material_popup/material_popup.template.dart' as _ref19;
import 'package:angulardart_components/material_select/dropdown_button.template.dart' as _ref20;
import 'package:angulardart_components/mixins/focusable_mixin.template.dart' as _ref21;
import 'package:angulardart_components/model/date/date.template.dart' as _ref22;
import 'package:angulardart_components/model/date/date_formatter.template.dart' as _ref23;
import 'package:angulardart_components/model/observable/observable.template.dart' as _ref24;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref25;
import 'package:angulardart_components/utils/angular/css/css.template.dart' as _ref26;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.template.dart' as _ref27;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref28;
import 'package:angulardart_components/material_datepicker/material_date_range_picker.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_date_range_picker.dart' as import2;
import '../material_popup/material_popup.dart' as import3;
import '../button_decorator/button_decorator.template.dart' as import4;
import '../focus/keyboard_only_focus_indicator.dart' as import5;
import '../src/laminate/popup/popup_source_directive.dart' as import6;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';

import '../material_select/dropdown_button.template.dart' as import9;
import '../material_select/dropdown_button.dart' as import10;
import '../material_popup/material_popup.template.dart' as import11;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import12;
import 'package:angulardart/src/core/linker/views/view.dart' as import13;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import15;
import 'package:angulardart/src/utilities.dart' as import16;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import17;

import '../button_decorator/button_decorator.dart' as import18;

import 'package:angulardart/src/di/errors.dart' as import19;

import '../utils/browser/dom_service/dom_service.dart' as import20;
import '../src/laminate/popup/dom_popup_source.dart' as import21;
import '../utils/angular/reference/reference.dart' as import22;
import '../focus/focus_interface.dart' as import23;

import 'package:angulardart/src/devtools.dart' as import24;
import 'package:angulardart/src/core/linker/template_ref.dart';

import '../src/laminate/popup/popup_hierarchy.dart' as import26;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import27;

import '../src/laminate/overlay/overlay_service.dart' as import28;
import '../laminate/overlay/zindexer.dart' as import29;

import 'package:angulardart_meta/src/di_tokens.dart' as import30;

import 'dart:core';

import 'package:angulardart_components/laminate/enums/alignment.dart' as import32;

import '../src/laminate/popup/popup_size_provider.dart' as import33;

import 'package:angulardart/src/core/linker/element_ref.dart';

import '../interfaces/has_disabled.dart' as import35;
import '../content/deferred_content_aware.dart' as import36;
import '../mixins/material_dropdown_base.dart' as import37;
import '../src/laminate/popup/popup_ref.dart' as import38;

import 'package:angulardart/src/runtime/check_binding.dart' as import39;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import41;
import 'package:angulardart/src/runtime/text_binding.dart' as import42;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import43;
import 'package:angulardart/src/runtime/interpolate.dart' as import44;

import 'next_prev_buttons.template.dart' as import45;
import 'next_prev_buttons.dart' as import46;
import '../focus/focus_trap.template.dart' as import47;
import '../focus/focus_trap.dart' as import48;
import 'date_range_editor.template.dart' as import49;
import 'date_range_editor.dart' as import50;
import '../material_button/material_button.template.dart' as import51;
import '../material_button/material_button.dart' as import52;
import 'date_range_editor_host.dart' as import53;

import 'package:quiver/src/time/clock.dart' as import54;

import '../theme/dark_theme.dart' as import55;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import56;

import 'config.dart' as import57;

final List<Object> styles$MaterialDateRangePickerComponent = [import0.styles];

class ViewMaterialDateRangePickerComponent0 extends import1.ComponentView<import2.MaterialDateRangePickerComponent> {
  late dynamic _PopupHierarchy_7_11 = import3.getHierarchy(this._MaterialPopupComponent_7_8);
  late dynamic _PopupRef_7_12 = import3.getResolvedPopupRef(this._MaterialPopupComponent_7_8);
  late final import4.ButtonDirectiveNgCd _ButtonDirective_0_5;
  late final import5.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_6;
  late final import6.PopupSourceDirective _PopupSourceDirective_0_7;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final import9.ViewDropdownButtonComponent0 _compView_4;
  late final import10.DropdownButtonComponent _DropdownButtonComponent_4_5;
  late final ViewContainer _appEl_5;
  late final NgIf _NgIf_5_9;
  late final ViewContainer _appEl_6;
  late final NgIf _NgIf_6_9;
  late final import11.ViewMaterialPopupComponent0 _compView_7;
  late final ViewContainer _appEl_7;
  late final import3.MaterialPopupComponent _MaterialPopupComponent_7_8;
  late final ViewContainer _appEl_8;
  late final NgIf _NgIf_8_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_5;
  Object? _expr_7;
  Object? _expr_8;
  Object? _expr_9;
  Object? _expr_10;
  late final _el_0;
  late final _el_7;
  static import12.ComponentStyles? _componentStyles;
  ViewMaterialDateRangePickerComponent0(import13.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import15.renderFactory.createElement('material-date-range-picker');
  }
  static String? get _debugComponentUrl {
    return (import16.isDevMode ? 'asset:angulardart_components/lib/material_datepicker/material_date_range_picker.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._el_0 = import17.createRenderElement('div');
    import17.appendRenderChild(parentRenderNode, this._el_0);
    import17.updateRenderAttribute(this._el_0, 'buttonDecorator', '');
    this.updateChildClass(this._el_0, 'main-content');
    import17.updateRenderAttribute(this._el_0, 'keyboardOnlyFocusIndicator', '');
    import17.updateRenderAttribute(this._el_0, 'popupSource', '');
    this.addShimC(this._el_0);
    this._ButtonDirective_0_5 = import4.ButtonDirectiveNgCd(import18.ButtonDirective(import17.unwrapNode(this._el_0), null));
    this._KeyboardOnlyFocusIndicatorDirective_0_6 = (import16.isDevMode
        ? import19.debugInjectorWrap(import5.KeyboardOnlyFocusIndicatorDirective, () {
            return import5.KeyboardOnlyFocusIndicatorDirective(import17.unwrapNode(this._el_0), (this.parentView!).injectorGet(import20.DomService, this.parentIndex));
          })
        : import5.KeyboardOnlyFocusIndicatorDirective(import17.unwrapNode(this._el_0), (this.parentView!).injectorGet(import20.DomService, this.parentIndex)));
    this._PopupSourceDirective_0_7 = (import16.isDevMode
        ? import19.debugInjectorWrap(import6.PopupSourceDirective, () {
            return import6.PopupSourceDirective((this.parentView!).injectorGet(import21.DomPopupSourceFactory, this.parentIndex), import17.unwrapNode(this._el_0), (this.parentView!).injectorGetOptional(import22.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import23.Focusable, this.parentIndex), null);
          })
        : import6.PopupSourceDirective((this.parentView!).injectorGet(import21.DomPopupSourceFactory, this.parentIndex), import17.unwrapNode(this._el_0), (this.parentView!).injectorGetOptional(import22.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import23.Focusable, this.parentIndex), null));
    if (import24.isDevToolsEnabled) {
      import24.Inspector.instance.registerDirective(this._el_0, this._ButtonDirective_0_5.instance);
      import24.Inspector.instance.registerDirective(this._el_0, this._KeyboardOnlyFocusIndicatorDirective_0_6);
      import24.Inspector.instance.registerDirective(this._el_0, this._PopupSourceDirective_0_7);
    }
    final _anchor_1 = import17.createRenderAnchor();
    import17.appendRenderChild(this._el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MaterialDateRangePickerComponent1);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import24.isDevToolsEnabled) {
      import24.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _el_2 = import17.createRenderElement('div');
    import17.appendRenderChild(this._el_0, _el_2);
    this.updateChildClass(_el_2, 'dropdown-and-comparison');
    this.addShimC(_el_2);
    final _el_3 = import17.createRenderElement('span');
    import17.appendRenderChild(_el_2, _el_3);
    this.updateChildClass(_el_3, 'main-line');
    this.addShimC(_el_3);
    this._compView_4 = import9.ViewDropdownButtonComponent0(this, 4);
    final _el_4 = this._compView_4.rootElement;
    import17.appendRenderChild(_el_3, _el_4);
    this.updateChildClassNonHtml(_el_4, 'menu-lookalike primary-range');
    this.addShimC(_el_4);
    this._DropdownButtonComponent_4_5 = import10.DropdownButtonComponent();
    this._compView_4.createAndProject(this._DropdownButtonComponent_4_5, [const <Object>[]]);
    final _anchor_5 = import17.createRenderAnchor();
    import17.appendRenderChild(_el_3, _anchor_5);
    this._appEl_5 = ViewContainer(5, 3, this, _anchor_5);
    var _TemplateRef_5_8 = TemplateRef(this._appEl_5, viewFactory_MaterialDateRangePickerComponent2);
    this._NgIf_5_9 = NgIf(this._appEl_5, _TemplateRef_5_8);
    if (import24.isDevToolsEnabled) {
      import24.Inspector.instance.registerDirective(_anchor_5, this._NgIf_5_9);
    }
    final _anchor_6 = import17.createRenderAnchor();
    import17.appendRenderChild(_el_2, _anchor_6);
    this._appEl_6 = ViewContainer(6, 2, this, _anchor_6);
    var _TemplateRef_6_8 = TemplateRef(this._appEl_6, viewFactory_MaterialDateRangePickerComponent3);
    this._NgIf_6_9 = NgIf(this._appEl_6, _TemplateRef_6_8);
    if (import24.isDevToolsEnabled) {
      import24.Inspector.instance.registerDirective(_anchor_6, this._NgIf_6_9);
    }
    this._compView_7 = import11.ViewMaterialPopupComponent0(this, 7);
    this._el_7 = this._compView_7.rootElement;
    import17.appendRenderChild(parentRenderNode, this._el_7);
    import17.updateRenderAttribute(this._el_7, 'enforceSpaceConstraints', '');
    this.addShimC(this._el_7);
    this._appEl_7 = ViewContainer(7, null, this, this._el_7);
    this._MaterialPopupComponent_7_8 = (import16.isDevMode
        ? import19.debugInjectorWrap(import3.MaterialPopupComponent, () {
            return import3.MaterialPopupComponent((this.parentView!).injectorGetOptional(import26.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import3.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import27.NgZone, this.parentIndex), (this.parentView!).injectorGet(import28.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import20.DomService, this.parentIndex), (this.parentView!).injectorGet(import29.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import30.OpaqueToken<List<import32.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import30.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import30.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import33.PopupSizeProvider, this.parentIndex), this._compView_7, this._appEl_7, ElementRef(import17.unwrapNode(this._el_7)));
          })
        : import3.MaterialPopupComponent((this.parentView!).injectorGetOptional(import26.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import3.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import27.NgZone, this.parentIndex), (this.parentView!).injectorGet(import28.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import20.DomService, this.parentIndex), (this.parentView!).injectorGet(import29.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import30.OpaqueToken<List<import32.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import30.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import30.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import33.PopupSizeProvider, this.parentIndex), this._compView_7, this._appEl_7, ElementRef(import17.unwrapNode(this._el_7))));
    final _anchor_8 = import17.createRenderAnchor();
    this._appEl_8 = ViewContainer(8, 7, this, _anchor_8);
    var _TemplateRef_8_8 = TemplateRef(this._appEl_8, viewFactory_MaterialDateRangePickerComponent4);
    this._NgIf_8_9 = NgIf(this._appEl_8, _TemplateRef_8_8);
    if (import24.isDevToolsEnabled) {
      import24.Inspector.instance.registerDirective(_anchor_8, this._NgIf_8_9);
    }
    this._compView_7.createAndProject(this._MaterialPopupComponent_7_8, [
      const <Object>[],
      <Object>[this._appEl_8],
      const <Object>[],
    ]);
    import17.addRenderEventListener(this._el_0, 'focus', this.eventHandler1(this._handleEvent_0));
    import17.addRenderEventListener(this._el_0, 'mouseenter', this.eventHandler0(_ctx.initEditor));
    import17.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._handleEvent_1));
    import17.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(this._ButtonDirective_0_5.instance.handleKeyPress));
    import17.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_6.keydown));
    import17.addRenderEventListener(this._el_0, 'blur', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_6.resetOutline));
    import17.addRenderEventListener(this._el_0, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_6.onMouseInteraction));
    final subscription_0 = this._ButtonDirective_0_5.instance.trigger.listen(this.eventHandler0(_ctx.open));
    final subscription_1 = this._MaterialPopupComponent_7_8.onOpen.listen(this.eventHandler0(_ctx.open));
    final subscription_2 = this._MaterialPopupComponent_7_8.onClose.listen(this.eventHandler0(_ctx.close));
    _ctx.focusOnClose = this._KeyboardOnlyFocusIndicatorDirective_0_6;
    import13.View.queryChangeDetectorRefs[this._MaterialPopupComponent_7_8] = this._compView_7;
    _ctx.popup = this._MaterialPopupComponent_7_8;
    _ctx.focusableElement = this._ButtonDirective_0_5.instance;
    this.initSubscriptions([subscription_0, subscription_1, subscription_2]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 6)) {
      if (((identical(token, import35.HasDisabled) || identical(token, import23.Focusable)) && (4 == nodeIndex))) {
        return this._DropdownButtonComponent_4_5;
      }
      if (identical(token, import18.ButtonDirective)) {
        return this._ButtonDirective_0_5.instance;
      }
    }
    if (((7 <= nodeIndex) && (nodeIndex <= 8))) {
      if (((identical(token, import3.MaterialPopupComponent) || identical(token, import36.DeferredContentAware)) || identical(token, import37.DropdownHandle))) {
        return this._MaterialPopupComponent_7_8;
      }
      if (identical(token, import26.PopupHierarchy)) {
        return this._PopupHierarchy_7_11;
      }
      if (identical(token, import38.PopupRef)) {
        return this._PopupRef_7_12;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_button = this._PopupSourceDirective_0_7;
    if (import24.isDevToolsEnabled) {
      import24.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', ((_ctx.hasTitle ?? false) && (_ctx.presets.isNotEmpty ?? false)));
    }
    this._NgIf_1_9.ngIf = (((_ctx.hasTitle ?? false) && (_ctx.presets.isNotEmpty ?? false)) ?? false) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:504:542 */;
    changed = false;
    if (firstCheck) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DropdownButtonComponent_4_5, 'tabbable', false);
      }
      this._DropdownButtonComponent_4_5.tabbable = false /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:711:729 */;
      changed = true;
    }
    final currVal_0 = _ctx.formattedRange;
    if (import39.checkBinding(this._expr_0, currVal_0, 'formattedRange', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DropdownButtonComponent_4_5, 'buttonText', currVal_0);
      }
      this._DropdownButtonComponent_4_5.buttonText = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:826:855 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.dropdownButtonAriaLabel;
    if (import39.checkBinding(this._expr_1, currVal_1, 'dropdownButtonAriaLabel', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DropdownButtonComponent_4_5, 'buttonAriaLabel', currVal_1);
      }
      this._DropdownButtonComponent_4_5.buttonAriaLabel = (currVal_1!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:772:815 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.disabled;
    if (import39.checkBinding(this._expr_2, currVal_2, 'disabled', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DropdownButtonComponent_4_5, 'disabled', currVal_2);
      }
      this._DropdownButtonComponent_4_5.disabled = (currVal_2!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:740:761 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.error;
    if (import39.checkBinding(this._expr_3, currVal_3, 'error', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DropdownButtonComponent_4_5, 'error', currVal_3);
      }
      this._DropdownButtonComponent_4_5.error = (currVal_3!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:866:881 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_4.markAsCheckOnce();
    }
    if (((!import39.debugThrowIfChanged) && firstCheck)) {
      this._DropdownButtonComponent_4_5.ngOnInit();
    }
    if (import24.isDevToolsEnabled) {
      import24.Inspector.instance.recordInput(this._NgIf_5_9, 'ngIf', _ctx.showNextPrevButtons);
    }
    this._NgIf_5_9.ngIf = (_ctx.showNextPrevButtons ?? false) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:933:960 */;
    if (import24.isDevToolsEnabled) {
      import24.Inspector.instance.recordInput(this._NgIf_6_9, 'ngIf', _ctx.hasComparison);
    }
    this._NgIf_6_9.ngIf = (_ctx.hasComparison ?? false) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:1174:1195 */;
    changed = false;
    if (firstCheck) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._MaterialPopupComponent_7_8, 'enforceSpaceConstraints', true);
      }
      this._MaterialPopupComponent_7_8.enforceSpaceConstraints = true /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:1486:1509 */;
      changed = true;
    }
    final currVal_7 = _ctx.preferredPositions;
    if (import39.checkBinding(this._expr_7, currVal_7, 'preferredPositions', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._MaterialPopupComponent_7_8, 'preferredPositions', currVal_7);
      }
      this._MaterialPopupComponent_7_8.preferredPositions = (currVal_7!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:1567:1608 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = local_button;
    if (import39.checkBinding(this._expr_8, currVal_8, 'button', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._MaterialPopupComponent_7_8, 'source', currVal_8);
      }
      this._MaterialPopupComponent_7_8.source = (currVal_8!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:1625:1642 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    if (changed) {
      this._compView_7.markAsCheckOnce();
    }
    if (import24.isDevToolsEnabled) {
      import24.Inspector.instance.recordInput(this._NgIf_8_9, 'ngIf', _ctx.isEditorCreated);
    }
    this._NgIf_8_9.ngIf = (_ctx.isEditorCreated ?? false) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:1720:1743 */;
    this._ButtonDirective_0_5.detectHostChanges(this, this._el_0);
    final currVal_5 = _ctx.popupClassName;
    if (import39.checkBinding(this._expr_5, currVal_5, 'popupClassName', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      this._compView_7.updateChildClassNonHtml(this._el_7, currVal_5) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:1526:1550 */;
      this._expr_5 = currVal_5;
    }
    this._compView_7.detectHostChanges(firstCheck);
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_5.detectChangesInNestedViews();
    this._appEl_6.detectChangesInNestedViews();
    this._appEl_7.detectChangesInNestedViews();
    this._appEl_8.detectChangesInNestedViews();
    this._compView_4.detectChangesDeprecated();
    this._compView_7.detectChangesDeprecated();
    if ((!import39.debugThrowIfChanged)) {
      if (firstCheck) {
        this._PopupSourceDirective_0_7.ngAfterViewInit();
        this._MaterialPopupComponent_7_8.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_5.destroyNestedViews();
    this._appEl_6.destroyNestedViews();
    this._appEl_7.destroyNestedViews();
    this._appEl_8.destroyNestedViews();
    this._compView_4.destroyInternalState();
    this._compView_7.destroyInternalState();
    this._PopupSourceDirective_0_7.ngOnDestroy();
    this._MaterialPopupComponent_7_8.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.initEditor();
    this._KeyboardOnlyFocusIndicatorDirective_0_6.onFocus($event);
  }

  void _handleEvent_1($event) {
    this._ButtonDirective_0_5.instance.handleClick($event);
    this._KeyboardOnlyFocusIndicatorDirective_0_6.onMouseInteraction();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_9 = _ctx.disabled;
    if (import39.checkBinding(this._expr_9, currVal_9, null, null)) {
      import17.updateRenderClass(this.rootElement, 'disabled', (currVal_9 ?? false));
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.compact;
    if (import39.checkBinding(this._expr_10, currVal_10, null, null)) {
      import17.updateRenderClass(this.rootElement, 'compact', (currVal_10 ?? false));
      this._expr_10 = currVal_10;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import12.ComponentStyles.scoped(styles$MaterialDateRangePickerComponent, _debugComponentUrl));
      if (import16.isDevMode) {
        import12.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialDateRangePickerComponentNgFactory = ComponentFactory<import2.MaterialDateRangePickerComponent>('material-date-range-picker', viewFactory_MaterialDateRangePickerComponentHost0);
ComponentFactory<import2.MaterialDateRangePickerComponent> get MaterialDateRangePickerComponentNgFactory {
  return _MaterialDateRangePickerComponentNgFactory;
}

ComponentFactory<import2.MaterialDateRangePickerComponent> createMaterialDateRangePickerComponentFactory() {
  return ComponentFactory('material-date-range-picker', viewFactory_MaterialDateRangePickerComponentHost0);
}

class _ViewMaterialDateRangePickerComponent1 extends import41.EmbeddedView<import2.MaterialDateRangePickerComponent> {
  final import42.TextBinding _textBinding_1 = import42.TextBinding();
  _ViewMaterialDateRangePickerComponent1(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import17.createRenderElement('div');
    this.updateChildClass(_el_0, 'range-title');
    this.addShimC(_el_0);
    import17.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import44.interpolateString0(_ctx.rangeTitle)) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:548:562 */;
  }
}

import41.EmbeddedView<void> viewFactory_MaterialDateRangePickerComponent1(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDateRangePickerComponent1(parentView, parentIndex);
}

class _ViewMaterialDateRangePickerComponent2 extends import41.EmbeddedView<import2.MaterialDateRangePickerComponent> {
  late final import45.ViewNextPrevComponent0 _compView_0;
  late final import46.NextPrevComponent _NextPrevComponent_0_5;
  Object? _expr_0;
  Object? _expr_1;
  _ViewMaterialDateRangePickerComponent2(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import45.ViewNextPrevComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'next-prev-buttons');
    this.addShimC(_el_0);
    this._NextPrevComponent_0_5 = import46.NextPrevComponent(this._compView_0);
    this._compView_0.create(this._NextPrevComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    final currVal_0 = _ctx.disabled;
    if (import39.checkBinding(this._expr_0, currVal_0, 'disabled', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._NextPrevComponent_0_5, 'disabled', currVal_0);
      }
      this._NextPrevComponent_0_5.disabled = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:1037:1058 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.model;
    if (import39.checkBinding(this._expr_1, currVal_1, 'model', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._NextPrevComponent_0_5, 'model', currVal_1);
      }
      this._NextPrevComponent_0_5.model = (currVal_1!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:1084:1099 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._NextPrevComponent_0_5.ngOnDestroy();
  }
}

import41.EmbeddedView<void> viewFactory_MaterialDateRangePickerComponent2(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDateRangePickerComponent2(parentView, parentIndex);
}

class _ViewMaterialDateRangePickerComponent3 extends import41.EmbeddedView<import2.MaterialDateRangePickerComponent> {
  final import42.TextBinding _textBinding_1 = import42.TextBinding();
  _ViewMaterialDateRangePickerComponent3(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import17.createRenderElement('div');
    this.updateChildClass(_el_0, 'comparison-title');
    this.addShimC(_el_0);
    import17.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import44.interpolateString0(_ctx.formattedComparison)) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:1203:1226 */;
  }
}

import41.EmbeddedView<void> viewFactory_MaterialDateRangePickerComponent3(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDateRangePickerComponent3(parentView, parentIndex);
}

class _ViewMaterialDateRangePickerComponent4 extends import41.EmbeddedView<import2.MaterialDateRangePickerComponent> {
  final import42.TextBinding _textBinding_7 = import42.TextBinding();
  final import42.TextBinding _textBinding_9 = import42.TextBinding();
  late final import47.ViewFocusTrapComponent0 _compView_0;
  late final import48.FocusTrapComponent _FocusTrapComponent_0_5;
  late final import49.ViewDateRangeEditorComponent0 _compView_2;
  late final import50.DateRangeEditorComponent _DateRangeEditorComponent_2_5;
  late final import51.ViewMaterialButtonComponent0 _compView_6;
  late final dynamic _AcxDarkTheme_6_5;
  late final import52.MaterialButtonComponent _MaterialButtonComponent_6_6;
  late final import51.ViewMaterialButtonComponent0 _compView_8;
  late final dynamic _AcxDarkTheme_8_5;
  late final import52.MaterialButtonComponent _MaterialButtonComponent_8_6;
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
  late final _el_0;
  late final _el_3;
  _ViewMaterialDateRangePickerComponent4(import43.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import47.ViewFocusTrapComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'popup-contents');
    this.addShimC(this._el_0);
    this._FocusTrapComponent_0_5 = import48.FocusTrapComponent();
    final _el_1 = import17.createRenderElement('div');
    this.updateChildClass(_el_1, 'wrapper');
    this.addShimC(_el_1);
    this._compView_2 = import49.ViewDateRangeEditorComponent0(this, 2);
    final _el_2 = this._compView_2.rootElement;
    import17.appendRenderChild(_el_1, _el_2);
    this.addShimC(_el_2);
    this._DateRangeEditorComponent_2_5 = (import16.isDevMode
        ? import19.debugInjectorWrap(import50.DateRangeEditorComponent, () {
            return import50.DateRangeEditorComponent(import17.unwrapNode(_el_2), ((this.parentView!).parentView!).injectorGet(import20.DomService, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import53.DateRangeEditorHost, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(const import30.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGet(import54.Clock, (this.parentView!).parentIndex));
          })
        : import50.DateRangeEditorComponent(import17.unwrapNode(_el_2), ((this.parentView!).parentView!).injectorGet(import20.DomService, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import53.DateRangeEditorHost, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(const import30.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGet(import54.Clock, (this.parentView!).parentIndex)));
    this._compView_2.create(this._DateRangeEditorComponent_2_5);
    this.project(_el_1, 0);
    this._el_3 = import17.createRenderElement('div');
    import17.appendRenderChild(_el_1, this._el_3);
    this.updateChildClass(this._el_3, 'apply-bar');
    this.addShimC(this._el_3);
    final _el_4 = import17.createRenderElement('div');
    import17.appendRenderChild(this._el_3, _el_4);
    this.updateChildClass(_el_4, 'separator');
    this.addShimC(_el_4);
    final _text_5 = import17.createRenderText(' ');
    import17.appendRenderChild(_el_4, _text_5);
    this._compView_6 = import51.ViewMaterialButtonComponent0(this, 6);
    final _el_6 = this._compView_6.rootElement;
    import17.appendRenderChild(this._el_3, _el_6);
    this.updateChildClassNonHtml(_el_6, 'cancel');
    this.addShimC(_el_6);
    this._AcxDarkTheme_6_5 = (import16.isDevMode
        ? import19.debugInjectorWrap(import55.AcxDarkTheme, () {
            return import55.AcxDarkTheme(((this.parentView!).parentView!).injectorGetOptional(const import30.OpaqueToken<Object>('acxDarkTheme'), (this.parentView!).parentIndex));
          })
        : import55.AcxDarkTheme(((this.parentView!).parentView!).injectorGetOptional(const import30.OpaqueToken<Object>('acxDarkTheme'), (this.parentView!).parentIndex)));
    this._MaterialButtonComponent_6_6 = import52.MaterialButtonComponent(import17.unwrapNode(_el_6), this._AcxDarkTheme_6_5, this._compView_6, null);
    this._compView_6.createAndProject(this._MaterialButtonComponent_6_6, [
      <Object>[this._textBinding_7.element],
    ]);
    this._compView_8 = import51.ViewMaterialButtonComponent0(this, 8);
    final _el_8 = this._compView_8.rootElement;
    import17.appendRenderChild(this._el_3, _el_8);
    this.updateChildClassNonHtml(_el_8, 'apply');
    this.addShimC(_el_8);
    this._AcxDarkTheme_8_5 = (import16.isDevMode
        ? import19.debugInjectorWrap(import55.AcxDarkTheme, () {
            return import55.AcxDarkTheme(((this.parentView!).parentView!).injectorGetOptional(const import30.OpaqueToken<Object>('acxDarkTheme'), (this.parentView!).parentIndex));
          })
        : import55.AcxDarkTheme(((this.parentView!).parentView!).injectorGetOptional(const import30.OpaqueToken<Object>('acxDarkTheme'), (this.parentView!).parentIndex)));
    this._MaterialButtonComponent_8_6 = import52.MaterialButtonComponent(import17.unwrapNode(_el_8), this._AcxDarkTheme_8_5, this._compView_8, null);
    this._compView_8.createAndProject(this._MaterialButtonComponent_8_6, [
      <Object>[this._textBinding_9.element],
    ]);
    this._compView_0.createAndProject(this._FocusTrapComponent_0_5, [
      <Object>[_el_1],
    ]);
    final subscription_0 = this._DateRangeEditorComponent_2_5.presetRangeSelected.listen(this.eventHandler1(_ctx.onRangeClicked));
    final subscription_1 = this._MaterialButtonComponent_6_6.trigger.listen(this.eventHandler1(_ctx.cancelAndPreventDefault));
    final subscription_2 = this._MaterialButtonComponent_8_6.trigger.listen(this.eventHandler1(_ctx.applyAndPreventDefault));
    this.initRootNodesAndSubscriptions(import16.unsafeCast(<Object>[this._el_0]), [subscription_0, subscription_1, subscription_2]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((6 <= nodeIndex) && (nodeIndex <= 7))) {
      if (identical(token, import55.AcxDarkTheme)) {
        return this._AcxDarkTheme_6_5;
      }
      if (((identical(token, import52.MaterialButtonComponent) || identical(token, import18.ButtonDirective)) || identical(token, import35.HasDisabled))) {
        return this._MaterialButtonComponent_6_6;
      }
    }
    if (((8 <= nodeIndex) && (nodeIndex <= 9))) {
      if (identical(token, import55.AcxDarkTheme)) {
        return this._AcxDarkTheme_8_5;
      }
      if (((identical(token, import52.MaterialButtonComponent) || identical(token, import18.ButtonDirective)) || identical(token, import35.HasDisabled))) {
        return this._MaterialButtonComponent_8_6;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final currVal_1 = _ctx.model;
    if (import39.checkBinding(this._expr_1, currVal_1, 'model', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'model', currVal_1);
      }
      this._DateRangeEditorComponent_2_5.model = (currVal_1!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:1873:1888 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.allowHighlightUpdates;
    if (import39.checkBinding(this._expr_2, currVal_2, 'allowHighlightUpdates', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'allowHighlightUpdates', currVal_2);
      }
      this._DateRangeEditorComponent_2_5.allowHighlightUpdates = (currVal_2!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2429:2476 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.supportsComparison;
    if (import39.checkBinding(this._expr_3, currVal_3, 'supportsComparison', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'supportsComparison', currVal_3);
      }
      this._DateRangeEditorComponent_2_5.supportsComparison = (currVal_3!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2091:2132 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.compact;
    if (import39.checkBinding(this._expr_4, currVal_4, 'compact', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'compact', currVal_4);
      }
      this._DateRangeEditorComponent_2_5.compact = (currVal_4!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2502:2521 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.movingStartMaintainsLength;
    if (import39.checkBinding(this._expr_5, currVal_5, 'movingStartMaintainsLength', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'movingStartMaintainsLength', currVal_5);
      }
      this._DateRangeEditorComponent_2_5.movingStartMaintainsLength = (currVal_5!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2547:2604 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.supportsDaysInputs;
    if (import39.checkBinding(this._expr_6, currVal_6, 'supportsDaysInputs', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'supportsDaysInputs', currVal_6);
      }
      this._DateRangeEditorComponent_2_5.supportsDaysInputs = (currVal_6!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2158:2199 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.dateFormat;
    if (import39.checkBinding(this._expr_7, currVal_7, 'dateFormat', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'dateFormat', currVal_7);
      }
      this._DateRangeEditorComponent_2_5.dateFormat = (currVal_7!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2315:2340 */;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.activeDateFormat;
    if (import39.checkBinding(this._expr_8, currVal_8, 'activeDateFormat', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'activeDateFormat', currVal_8);
      }
      this._DateRangeEditorComponent_2_5.activeDateFormat = (currVal_8!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2366:2403 */;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.supportsClearRange;
    if (import39.checkBinding(this._expr_9, currVal_9, 'supportsClearRange', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'supportsClearRange', currVal_9);
      }
      this._DateRangeEditorComponent_2_5.supportsClearRange = (currVal_9!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2024:2065 */;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.supportsCustomRange;
    if (import39.checkBinding(this._expr_10, currVal_10, 'supportsCustomRange', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'supportsCustomRange', currVal_10);
      }
      this._DateRangeEditorComponent_2_5.supportsCustomRange = (currVal_10!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2693:2736 */;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.relativeDaysToToday;
    if (import39.checkBinding(this._expr_11, currVal_11, 'relativeDaysToToday', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'relativeDaysToToday', currVal_11);
      }
      this._DateRangeEditorComponent_2_5.relativeDaysToToday = (currVal_11!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2762:2805 */;
      this._expr_11 = currVal_11;
    }
    final currVal_12 = _ctx.useMenuForPresets;
    if (import39.checkBinding(this._expr_12, currVal_12, 'useMenuForPresets', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'useMenuForPresets', currVal_12);
      }
      this._DateRangeEditorComponent_2_5.useMenuForPresets = (currVal_12!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:1959:1998 */;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = _ctx.presets;
    if (import39.checkBinding(this._expr_13, currVal_13, 'presets', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'presets', currVal_13);
      }
      this._DateRangeEditorComponent_2_5.presets = (currVal_13!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:1914:1933 */;
      this._expr_13 = currVal_13;
    }
    final currVal_14 = _ctx.minDate;
    if (import39.checkBinding(this._expr_14, currVal_14, 'minDate', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'minDate', currVal_14);
      }
      this._DateRangeEditorComponent_2_5.minDate = (currVal_14!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2225:2244 */;
      this._expr_14 = currVal_14;
    }
    final currVal_15 = _ctx.maxDate;
    if (import39.checkBinding(this._expr_15, currVal_15, 'maxDate', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'maxDate', currVal_15);
      }
      this._DateRangeEditorComponent_2_5.maxDate = (currVal_15!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2270:2289 */;
      this._expr_15 = currVal_15;
    }
    final currVal_16 = _ctx.isCalendarCreated;
    if (import39.checkBinding(this._expr_16, currVal_16, 'isCalendarCreated', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      if (import24.isDevToolsEnabled) {
        import24.Inspector.instance.recordInput(this._DateRangeEditorComponent_2_5, 'calendarCreated', currVal_16);
      }
      this._DateRangeEditorComponent_2_5.isCalendarCreated = (currVal_16!) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2630:2667 */;
      this._expr_16 = currVal_16;
    }
    if (((!import39.debugThrowIfChanged) && firstCheck)) {
      this._DateRangeEditorComponent_2_5.ngOnInit();
    }
    changed = false;
    if (changed) {
      this._compView_6.markAsCheckOnce();
    }
    changed = false;
    if (changed) {
      this._compView_8.markAsCheckOnce();
    }
    final currVal_0 = _ctx.compact;
    if (import39.checkBinding(this._expr_0, currVal_0, 'compact', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      import17.updateRenderClass(this._el_0, 'compact', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:1795:1820 */;
      this._expr_0 = currVal_0;
    }
    this._compView_2.detectHostChanges(firstCheck);
    final currVal_17 = _ctx.applyBarVisible;
    if (import39.checkBinding(this._expr_17, currVal_17, 'applyBarVisible', 'package:angulardart_components/material_datepicker/material_date_range_picker.html')) {
      import17.updateRenderClass(this._el_3, 'visible', (currVal_17 ?? false)) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:2983:3016 */;
      this._expr_17 = currVal_17;
    }
    this._compView_6.detectHostChanges(firstCheck);
    this._compView_8.detectHostChanges(firstCheck);
    this._textBinding_7.updateText(import44.interpolateString0(import2.MaterialDateRangePickerComponent.cancelButtonMsg)) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:3149:3168 */;
    this._textBinding_9.updateText(import44.interpolateString0(_ctx.applyButtonMsg)) /* REF:package:angulardart_components/material_datepicker/material_date_range_picker.html:3281:3299 */;
    this._compView_0.detectChangesDeprecated();
    this._compView_2.detectChangesDeprecated();
    this._compView_6.detectChangesDeprecated();
    this._compView_8.detectChangesDeprecated();
    if ((!import39.debugThrowIfChanged)) {
      if (firstCheck) {
        this._DateRangeEditorComponent_2_5.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._compView_2.destroyInternalState();
    this._compView_6.destroyInternalState();
    this._compView_8.destroyInternalState();
    this._FocusTrapComponent_0_5.ngOnDestroy();
  }
}

import41.EmbeddedView<void> viewFactory_MaterialDateRangePickerComponent4(import43.RenderView parentView, int parentIndex) {
  return _ViewMaterialDateRangePickerComponent4(parentView, parentIndex);
}

final List<Object> styles$MaterialDateRangePickerComponentHost = const [];

class _ViewMaterialDateRangePickerComponentHost0 extends import56.HostView<import2.MaterialDateRangePickerComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialDateRangePickerComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import16.isDevMode
        ? import19.debugInjectorWrap(import2.MaterialDateRangePickerComponent, () {
            return import2.MaterialDateRangePickerComponent(this.injectorGetOptional(const import30.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex), this.injectorGet(import54.Clock, this.parentIndex), this.injectorGetOptional(import57.DatepickerConfig, this.parentIndex), null, this.injectorGetOptional(import33.PopupSizeProvider, this.parentIndex), import17.unwrapNode(_el_0), this.injectorGet(import20.DomService, this.parentIndex), this.injectorGet(import27.NgZone, this.parentIndex));
          })
        : import2.MaterialDateRangePickerComponent(this.injectorGetOptional(const import30.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex), this.injectorGet(import54.Clock, this.parentIndex), this.injectorGetOptional(import57.DatepickerConfig, this.parentIndex), null, this.injectorGetOptional(import33.PopupSizeProvider, this.parentIndex), import17.unwrapNode(_el_0), this.injectorGet(import20.DomService, this.parentIndex), this.injectorGet(import27.NgZone, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((((identical(token, import53.DateRangeEditorHost) || identical(token, import23.Focusable)) || identical(token, import35.HasDisabled)) || identical(token, import33.PopupSizeProvider)) && (0 == nodeIndex))) {
      return this.component;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    if (((!import39.debugThrowIfChanged) && firstCheck)) {
      this.component.ngOnInit();
    }
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import56.HostView<import2.MaterialDateRangePickerComponent> viewFactory_MaterialDateRangePickerComponentHost0() {
  return _ViewMaterialDateRangePickerComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialDateRangePickerComponent, createMaterialDateRangePickerComponentFactory());
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
}
