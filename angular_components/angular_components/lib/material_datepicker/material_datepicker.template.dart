// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_datepicker.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angulardart_components/content/deferred_content.template.dart' as _ref2;
import 'package:angulardart_components/focus/focus.template.dart' as _ref3;
import 'package:angulardart_components/focus/focus_trap.template.dart' as _ref4;
import 'package:angulardart_components/focus/keyboard_only_focus_indicator.template.dart' as _ref5;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref6;
import 'package:angulardart_components/laminate/enums/alignment.template.dart' as _ref7;
import 'package:angulardart_components/material_datepicker/calendar.template.dart' as _ref8;
import 'package:angulardart_components/material_datepicker/date_input.template.dart' as _ref9;
import 'package:angulardart_components/material_datepicker/material_calendar_picker.template.dart' as _ref10;
import 'package:angulardart_components/material_datepicker/module.template.dart' as _ref11;
import 'package:angulardart_components/material_datepicker/range.template.dart' as _ref12;
import 'package:angulardart_components/material_input/material_input.template.dart' as _ref13;
import 'package:angulardart_components/material_list/material_list_item.template.dart' as _ref14;
import 'package:angulardart_components/material_popup/material_popup.template.dart' as _ref15;
import 'package:angulardart_components/material_select/dropdown_button.template.dart' as _ref16;
import 'package:angulardart_components/material_select/material_select_item.template.dart' as _ref17;
import 'package:angulardart_components/mixins/focusable_mixin.template.dart' as _ref18;
import 'package:angulardart_components/model/a11y/keyboard_handler_mixin.template.dart' as _ref19;
import 'package:angulardart_components/model/date/date.template.dart' as _ref20;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref21;
import 'package:angulardart_components/utils/angular/css/css.template.dart' as _ref22;
import 'package:angulardart_components/material_datepicker/material_datepicker.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_datepicker.dart' as import2;
import '../material_popup/material_popup.dart' as import3;
import '../src/laminate/popup/popup_source_directive.dart' as import4;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';

import '../material_select/dropdown_button.template.dart' as import7;
import '../material_select/dropdown_button.dart' as import8;
import '../material_popup/material_popup.template.dart' as import9;
import '../focus/focus_trap.template.dart' as import10;
import '../focus/focus_trap.dart' as import11;
import '../content/deferred_content.dart' as import12;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import13;
import 'package:angulardart/src/core/linker/views/view.dart' as import14;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import16;
import 'package:angulardart/src/utilities.dart' as import17;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import18;
import 'package:angulardart/src/di/errors.dart' as import19;

import '../src/laminate/popup/dom_popup_source.dart' as import20;
import '../utils/angular/reference/reference.dart' as import21;
import '../focus/focus_interface.dart' as import22;

import 'package:angulardart/src/devtools.dart' as import23;
import 'package:angulardart/src/core/linker/template_ref.dart';

import '../src/laminate/popup/popup_hierarchy.dart' as import25;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import26;

import '../src/laminate/overlay/overlay_service.dart' as import27;
import '../utils/browser/dom_service/dom_service.dart' as import28;
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
import 'package:angulardart/src/runtime/queries.dart' as import40;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import42;
import 'package:angulardart/src/runtime/text_binding.dart' as import43;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import44;
import 'package:angulardart/src/runtime/interpolate.dart' as import45;

import '../material_input/material_input.template.dart' as import46;
import '../material_input/deferred_validator.dart' as import47;
import '../material_input/material_input.dart' as import48;
import '../focus/focus.dart' as import49;
import 'date_input.dart' as import50;
import '../material_input/material_input_default_value_accessor.dart' as import51;
import 'material_calendar_picker.template.dart' as import52;
import 'material_calendar_picker.dart' as import53;

import 'package:angulardart/src/common/directives/ng_class.dart' as import54;

import '../laminate/components/modal/modal.dart' as import55;

import 'package:quiver/src/time/clock.dart' as import56;

import '../material_input/base_material_input.dart' as import57;

import 'package:angulardart/src/common/directives/ng_for.dart' as import58;

import '../material_select/material_select_item.template.dart' as import59;
import '../material_select/material_select_item.dart' as import60;
import '../material_select/activation_handler.dart' as import61;
import '../model/selection/selection_container.dart' as import62;
import '../model/ui/has_renderer.dart' as import63;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import64;

final List<Object> styles$MaterialDatepickerComponent = [import0.styles];

class ViewMaterialDatepickerComponent0 extends import1.ComponentView<import2.MaterialDatepickerComponent> {
  late dynamic _PopupRef_3_10 = import3.getResolvedPopupRef(this._MaterialPopupComponent_3_8);
  late dynamic _PopupHierarchy_3_12 = import3.getHierarchy(this._MaterialPopupComponent_3_8);
  bool _viewQuery_MaterialInputComponent_1_isDirty = true;
  bool _query_AutoFocusDirective_4_0_isDirty = true;
  late final import4.PopupSourceDirective _PopupSourceDirective_0_5;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final import7.ViewDropdownButtonComponent0 _compView_2;
  late final import8.DropdownButtonComponent _DropdownButtonComponent_2_5;
  late final import9.ViewMaterialPopupComponent0 _compView_3;
  late final ViewContainer _appEl_3;
  late final import3.MaterialPopupComponent _MaterialPopupComponent_3_8;
  late final import10.ViewFocusTrapComponent0 _compView_4;
  late final import11.FocusTrapComponent _FocusTrapComponent_4_5;
  late final ViewContainer _appEl_5;
  late final import12.DeferredContentDirective _DeferredContentDirective_5_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  Object? _expr_10;
  late final _el_2;
  late final _el_3;
  static import13.ComponentStyles? _componentStyles;
  ViewMaterialDatepickerComponent0(import14.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import16.renderFactory.createElement('material-datepicker');
  }
  static String? get _debugComponentUrl {
    return (import17.isDevMode ? 'asset:angulardart_components/lib/material_datepicker/material_datepicker.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _el_0 = import18.createRenderElement('div');
    import18.appendRenderChild(parentRenderNode, _el_0);
    this.updateChildClass(_el_0, 'main-content');
    import18.updateRenderAttribute(_el_0, 'popupSource', '');
    this.addShimC(_el_0);
    this._PopupSourceDirective_0_5 = (import17.isDevMode
        ? import19.debugInjectorWrap(import4.PopupSourceDirective, () {
            return import4.PopupSourceDirective((this.parentView!).injectorGet(import20.DomPopupSourceFactory, this.parentIndex), import18.unwrapNode(_el_0), (this.parentView!).injectorGetOptional(import21.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import22.Focusable, this.parentIndex), null);
          })
        : import4.PopupSourceDirective((this.parentView!).injectorGet(import20.DomPopupSourceFactory, this.parentIndex), import18.unwrapNode(_el_0), (this.parentView!).injectorGetOptional(import21.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import22.Focusable, this.parentIndex), null));
    if (import23.isDevToolsEnabled) {
      import23.Inspector.instance.registerDirective(_el_0, this._PopupSourceDirective_0_5);
    }
    final _anchor_1 = import18.createRenderAnchor();
    import18.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MaterialDatepickerComponent1);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import23.isDevToolsEnabled) {
      import23.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    this._compView_2 = import7.ViewDropdownButtonComponent0(this, 2);
    this._el_2 = this._compView_2.rootElement;
    import18.appendRenderChild(_el_0, this._el_2);
    this.updateChildClassNonHtml(this._el_2, 'menu-lookalike primary-range');
    this.addShimC(this._el_2);
    this._DropdownButtonComponent_2_5 = import8.DropdownButtonComponent();
    this._compView_2.createAndProject(this._DropdownButtonComponent_2_5, [const <Object>[]]);
    this._compView_3 = import9.ViewMaterialPopupComponent0(this, 3);
    this._el_3 = this._compView_3.rootElement;
    import18.appendRenderChild(parentRenderNode, this._el_3);
    import18.updateRenderAttribute(this._el_3, 'enforceSpaceConstraints', '');
    this.addShimC(this._el_3);
    this._appEl_3 = ViewContainer(3, null, this, this._el_3);
    this._MaterialPopupComponent_3_8 = (import17.isDevMode
        ? import19.debugInjectorWrap(import3.MaterialPopupComponent, () {
            return import3.MaterialPopupComponent((this.parentView!).injectorGetOptional(import25.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import3.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import26.NgZone, this.parentIndex), (this.parentView!).injectorGet(import27.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import28.DomService, this.parentIndex), (this.parentView!).injectorGet(import29.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import30.OpaqueToken<List<import32.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import30.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import30.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import33.PopupSizeProvider, this.parentIndex), this._compView_3, this._appEl_3, ElementRef(import18.unwrapNode(this._el_3)));
          })
        : import3.MaterialPopupComponent((this.parentView!).injectorGetOptional(import25.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import3.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import26.NgZone, this.parentIndex), (this.parentView!).injectorGet(import27.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import28.DomService, this.parentIndex), (this.parentView!).injectorGet(import29.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import30.OpaqueToken<List<import32.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import30.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import30.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import33.PopupSizeProvider, this.parentIndex), this._compView_3, this._appEl_3, ElementRef(import18.unwrapNode(this._el_3))));
    this._compView_4 = import10.ViewFocusTrapComponent0(this, 4);
    final _el_4 = this._compView_4.rootElement;
    this.addShimC(_el_4);
    this._FocusTrapComponent_4_5 = import11.FocusTrapComponent();
    final _anchor_5 = import18.createRenderAnchor();
    this._appEl_5 = ViewContainer(5, 4, this, _anchor_5);
    var _TemplateRef_5_8 = TemplateRef(this._appEl_5, viewFactory_MaterialDatepickerComponent2);
    this._DeferredContentDirective_5_9 = import12.DeferredContentDirective(this._appEl_5, _TemplateRef_5_8, this._MaterialPopupComponent_3_8, this);
    if (import23.isDevToolsEnabled) {
      import23.Inspector.instance.registerDirective(_anchor_5, this._DeferredContentDirective_5_9);
    }
    this._compView_4.createAndProject(this._FocusTrapComponent_4_5, [
      <Object>[this._appEl_5],
    ]);
    this._compView_3.createAndProject(this._MaterialPopupComponent_3_8, [
      const <Object>[],
      <Object>[_el_4],
      const <Object>[],
    ]);
    final subscription_0 = this._DropdownButtonComponent_2_5.trigger.listen(this.eventHandler0(_ctx.onTrigger));
    final subscription_1 = this._MaterialPopupComponent_3_8.onVisible.listen(this.eventHandler1(this._handleEvent_0));
    import14.View.queryChangeDetectorRefs[this._DropdownButtonComponent_2_5] = this._compView_2;
    _ctx.dropdownButton = this._DropdownButtonComponent_2_5;
    this.initSubscriptions([subscription_0, subscription_1]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import35.HasDisabled) || identical(token, import22.Focusable)) && (2 == nodeIndex))) {
      return this._DropdownButtonComponent_2_5;
    }
    if (((3 <= nodeIndex) && (nodeIndex <= 5))) {
      if (((identical(token, import3.MaterialPopupComponent) || identical(token, import36.DeferredContentAware)) || identical(token, import37.DropdownHandle))) {
        return this._MaterialPopupComponent_3_8;
      }
      if (identical(token, import38.PopupRef)) {
        return this._PopupRef_3_10;
      }
      if (identical(token, import25.PopupHierarchy)) {
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
    final local_container = this._PopupSourceDirective_0_5;
    if (import23.isDevToolsEnabled) {
      import23.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.presetDates.isNotEmpty);
    }
    this._NgIf_1_9.ngIf = (_ctx.presetDates.isNotEmpty ?? false) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:300:330 */;
    changed = false;
    final currVal_1 = _ctx.formattedDate;
    if (import39.checkBinding(this._expr_1, currVal_1, 'formattedDate', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._DropdownButtonComponent_2_5, 'buttonText', currVal_1);
      }
      this._DropdownButtonComponent_2_5.buttonText = (currVal_1!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:593:621 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.disabled;
    if (import39.checkBinding(this._expr_2, currVal_2, 'disabled', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._DropdownButtonComponent_2_5, 'disabled', currVal_2);
      }
      this._DropdownButtonComponent_2_5.disabled = (currVal_2!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:519:540 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.error;
    if (import39.checkBinding(this._expr_3, currVal_3, 'error', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._DropdownButtonComponent_2_5, 'error', currVal_3);
      }
      this._DropdownButtonComponent_2_5.error = (currVal_3!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:559:574 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_2.markAsCheckOnce();
    }
    if (((!import39.debugThrowIfChanged) && firstCheck)) {
      this._DropdownButtonComponent_2_5.ngOnInit();
    }
    changed = false;
    if (firstCheck) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._MaterialPopupComponent_3_8, 'enforceSpaceConstraints', true);
      }
      this._MaterialPopupComponent_3_8.enforceSpaceConstraints = true /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:740:763 */;
      changed = true;
    }
    final currVal_6 = _ctx.preferredPositions;
    if (import39.checkBinding(this._expr_6, currVal_6, 'preferredPositions', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._MaterialPopupComponent_3_8, 'preferredPositions', currVal_6);
      }
      this._MaterialPopupComponent_3_8.preferredPositions = (currVal_6!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:824:865 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = local_container;
    if (import39.checkBinding(this._expr_7, currVal_7, 'container', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._MaterialPopupComponent_3_8, 'source', currVal_7);
      }
      this._MaterialPopupComponent_3_8.source = (currVal_7!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:768:788 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.popupVisible;
    if (import39.checkBinding(this._expr_8, currVal_8, 'popupVisible', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._MaterialPopupComponent_3_8, 'visible', currVal_8);
      }
      this._MaterialPopupComponent_3_8.visible = (currVal_8!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:793:819 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    if (changed) {
      this._compView_3.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._DeferredContentDirective_5_9, 'deferredContent', true);
      }
      this._DeferredContentDirective_5_9.preserveDimensions = true /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:939:955 */;
    }
    final currVal_0 = _ctx.ariaLabelForDropdownButton;
    if (import39.checkBinding(this._expr_0, currVal_0, 'ariaLabelForDropdownButton', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      import18.updateRenderAttribute(this._el_2, 'aria-label', currVal_0) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:454:500 */;
      this._expr_0 = currVal_0;
    }
    final currVal_4 = _ctx.popupClassName;
    if (import39.checkBinding(this._expr_4, currVal_4, 'popupClassName', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      this._compView_3.updateChildClassNonHtml(this._el_3, currVal_4) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:711:735 */;
      this._expr_4 = currVal_4;
    }
    this._compView_3.detectHostChanges(firstCheck);
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_3.detectChangesInNestedViews();
    this._appEl_5.detectChangesInNestedViews();
    if ((!import39.debugThrowIfChanged)) {
      if (this._query_AutoFocusDirective_4_0_isDirty) {
        this._FocusTrapComponent_4_5.autoFocus = import40.firstOrNull(
          this._appEl_5.mapNestedViewsWithSingleResult((_ViewMaterialDatepickerComponent2 nestedView) {
            return nestedView._AutoFocusDirective_4_8;
          }),
        );
        this._query_AutoFocusDirective_4_0_isDirty = false;
      }
      if (this._viewQuery_MaterialInputComponent_1_isDirty) {
        _ctx.textInput = import40.firstOrNull(
          this._appEl_5.mapNestedViewsWithSingleResult((_ViewMaterialDatepickerComponent2 nestedView) {
            import14.View.queryChangeDetectorRefs[nestedView._MaterialInputComponent_4_6] = nestedView._compView_4;
            return nestedView._MaterialInputComponent_4_6;
          }),
        );
        this._viewQuery_MaterialInputComponent_1_isDirty = false;
      }
    }
    this._compView_2.detectChangesDeprecated();
    this._compView_3.detectChangesDeprecated();
    this._compView_4.detectChangesDeprecated();
    if ((!import39.debugThrowIfChanged)) {
      if (firstCheck) {
        this._PopupSourceDirective_0_5.ngAfterViewInit();
        this._MaterialPopupComponent_3_8.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_3.destroyNestedViews();
    this._appEl_5.destroyNestedViews();
    this._compView_2.destroyInternalState();
    this._compView_3.destroyInternalState();
    this._compView_4.destroyInternalState();
    this._PopupSourceDirective_0_5.ngOnDestroy();
    this._DeferredContentDirective_5_9.ngOnDestroy();
    this._FocusTrapComponent_4_5.ngOnDestroy();
    this._MaterialPopupComponent_3_8.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.popupVisible = $event;
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_10 = _ctx.compact;
    if (import39.checkBinding(this._expr_10, currVal_10, null, null)) {
      import18.updateRenderClass(this.rootElement, 'compact', (currVal_10 ?? false));
      this._expr_10 = currVal_10;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import13.ComponentStyles.scoped(styles$MaterialDatepickerComponent, _debugComponentUrl));
      if (import17.isDevMode) {
        import13.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialDatepickerComponentNgFactory = ComponentFactory<import2.MaterialDatepickerComponent>('material-datepicker', viewFactory_MaterialDatepickerComponentHost0);
ComponentFactory<import2.MaterialDatepickerComponent> get MaterialDatepickerComponentNgFactory {
  return _MaterialDatepickerComponentNgFactory;
}

ComponentFactory<import2.MaterialDatepickerComponent> createMaterialDatepickerComponentFactory() {
  return ComponentFactory('material-datepicker', viewFactory_MaterialDatepickerComponentHost0);
}

class _ViewMaterialDatepickerComponent1 extends import42.EmbeddedView<import2.MaterialDatepickerComponent> {
  final import43.TextBinding _textBinding_1 = import43.TextBinding();
  _ViewMaterialDatepickerComponent1(import44.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import18.createRenderElement('div');
    this.updateChildClass(_el_0, 'primary-label');
    this.addShimC(_el_0);
    import18.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import45.interpolateString0(_ctx.labelMsg)) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:358:370 */;
  }
}

import42.EmbeddedView<void> viewFactory_MaterialDatepickerComponent1(import44.RenderView parentView, int parentIndex) {
  return _ViewMaterialDatepickerComponent1(parentView, parentIndex);
}

class _ViewMaterialDatepickerComponent2 extends import42.EmbeddedView<import2.MaterialDatepickerComponent> {
  late List<Object> _NgValidators_4_12 = [this._DeferredValidator_4_5];
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final import46.ViewMaterialInputComponent0 _compView_4;
  late final import47.DeferredValidator _DeferredValidator_4_5;
  late final import48.MaterialInputComponent _MaterialInputComponent_4_6;
  late final import49.AutoFocusDirective _AutoFocusDirective_4_8;
  late final import50.DateInputDirective _DateInputDirective_4_9;
  late final import51.MaterialInputDefaultValueAccessor _MaterialInputDefaultValueAccessor_4_11;
  late final ViewContainer _appEl_5;
  late final NgIf _NgIf_5_9;
  late final import52.ViewMaterialCalendarPickerComponent0 _compView_6;
  late final import53.MaterialCalendarPickerComponent _MaterialCalendarPickerComponent_6_5;
  late final import54.NgClass _NgClass_6_6;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  Object? _expr_9;
  Object? _expr_10;
  Object? _expr_11;
  Object? _expr_13;
  late final _el_0;
  _ViewMaterialDatepickerComponent2(import44.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._el_0 = import18.createRenderElement('div');
    this.updateChildClass(this._el_0, 'popup-content');
    this.addShimC(this._el_0);
    final _el_1 = import18.createRenderElement('div');
    import18.appendRenderChild(this._el_0, _el_1);
    this.updateChildClass(_el_1, 'inner-label-wrapper');
    this.addShimC(_el_1);
    final _anchor_2 = import18.createRenderAnchor();
    import18.appendRenderChild(_el_1, _anchor_2);
    this._appEl_2 = ViewContainer(2, 1, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialDatepickerComponent3);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import23.isDevToolsEnabled) {
      import23.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _el_3 = import18.createRenderElement('div');
    import18.appendRenderChild(this._el_0, _el_3);
    this.updateChildClass(_el_3, 'date-input');
    this.addShimC(_el_3);
    this._compView_4 = import46.ViewMaterialInputComponent0(this, 4);
    final _el_4 = this._compView_4.rootElement;
    import18.appendRenderChild(_el_3, _el_4);
    import18.updateRenderAttribute(_el_4, 'autoFocus', '');
    import18.updateRenderAttribute(_el_4, 'dateParsing', '');
    import18.updateRenderAttribute(_el_4, 'type', 'text');
    this.addShimC(_el_4);
    this._DeferredValidator_4_5 = import47.DeferredValidator();
    this._MaterialInputComponent_4_6 = import48.MaterialInputComponent('text', null, null, this._compView_4, this._DeferredValidator_4_5);
    this._AutoFocusDirective_4_8 = (import17.isDevMode
        ? import19.debugInjectorWrap(import49.AutoFocusDirective, () {
            return import49.AutoFocusDirective(import18.unwrapNode(_el_4), ((this.parentView!).parentView!).injectorGetOptional(import28.DomService, (this.parentView!).parentIndex), this._MaterialInputComponent_4_6, ((this.parentView!).parentView!).injectorGetOptional(import55.ModalComponent, (this.parentView!).parentIndex), import17.unsafeCast<ViewMaterialDatepickerComponent0>((this.parentView!))._PopupRef_3_10);
          })
        : import49.AutoFocusDirective(import18.unwrapNode(_el_4), ((this.parentView!).parentView!).injectorGetOptional(import28.DomService, (this.parentView!).parentIndex), this._MaterialInputComponent_4_6, ((this.parentView!).parentView!).injectorGetOptional(import55.ModalComponent, (this.parentView!).parentIndex), import17.unsafeCast<ViewMaterialDatepickerComponent0>((this.parentView!))._PopupRef_3_10));
    this._DateInputDirective_4_9 = (import17.isDevMode
        ? import19.debugInjectorWrap(import50.DateInputDirective, () {
            return import50.DateInputDirective(((this.parentView!).parentView!).injectorGetOptional(const import30.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGet(import56.Clock, (this.parentView!).parentIndex), this._MaterialInputComponent_4_6);
          })
        : import50.DateInputDirective(((this.parentView!).parentView!).injectorGetOptional(const import30.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGet(import56.Clock, (this.parentView!).parentIndex), this._MaterialInputComponent_4_6));
    this._MaterialInputDefaultValueAccessor_4_11 = import51.MaterialInputDefaultValueAccessor(this._MaterialInputComponent_4_6, null);
    if (import23.isDevToolsEnabled) {
      import23.Inspector.instance.registerDirective(_el_4, this._AutoFocusDirective_4_8);
      import23.Inspector.instance.registerDirective(_el_4, this._DateInputDirective_4_9);
      import23.Inspector.instance.registerDirective(_el_4, this._MaterialInputDefaultValueAccessor_4_11);
    }
    this._compView_4.createAndProject(this._MaterialInputComponent_4_6, [const <Object>[], const <Object>[]]);
    final _anchor_5 = import18.createRenderAnchor();
    import18.appendRenderChild(this._el_0, _anchor_5);
    this._appEl_5 = ViewContainer(5, 0, this, _anchor_5);
    var _TemplateRef_5_8 = TemplateRef(this._appEl_5, viewFactory_MaterialDatepickerComponent4);
    this._NgIf_5_9 = NgIf(this._appEl_5, _TemplateRef_5_8);
    if (import23.isDevToolsEnabled) {
      import23.Inspector.instance.registerDirective(_anchor_5, this._NgIf_5_9);
    }
    this._compView_6 = import52.ViewMaterialCalendarPickerComponent0(this, 6);
    final _el_6 = this._compView_6.rootElement;
    import18.appendRenderChild(this._el_0, _el_6);
    import18.updateRenderAttribute(_el_6, 'aria-hidden', 'true');
    this.updateChildClassNonHtml(_el_6, 'calendar-picker');
    import18.updateRenderAttribute(_el_6, 'mode', 'single-date');
    this.addShimC(_el_6);
    this._MaterialCalendarPickerComponent_6_5 = (import17.isDevMode
        ? import19.debugInjectorWrap(import53.MaterialCalendarPickerComponent, () {
            return import53.MaterialCalendarPickerComponent(((this.parentView!).parentView!).injectorGetOptional(const import30.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import56.Clock, (this.parentView!).parentIndex), 'single-date');
          })
        : import53.MaterialCalendarPickerComponent(((this.parentView!).parentView!).injectorGetOptional(const import30.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import56.Clock, (this.parentView!).parentIndex), 'single-date'));
    this._NgClass_6_6 = import54.NgClass(ElementRef(import18.unwrapNode(_el_6)));
    if (import23.isDevToolsEnabled) {
      import23.Inspector.instance.registerDirective(_el_6, this._NgClass_6_6);
    }
    this._compView_6.create(this._MaterialCalendarPickerComponent_6_5);
    import18.addRenderEventListener(this._el_0, 'keyup', this.eventHandler1(_ctx.onKeyUp));
    final subscription_0 = this._DateInputDirective_4_9.dateChange.listen(this.eventHandler1(_ctx.setDateFromInput));
    final subscription_1 = this._MaterialCalendarPickerComponent_6_5.stateChange.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import17.unsafeCast(<Object>[this._el_0]), [subscription_0, subscription_1]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((4 == nodeIndex)) {
      if (identical(token, import47.DeferredValidator)) {
        return this._DeferredValidator_4_5;
      }
      if (((((identical(token, import48.MaterialInputComponent) || identical(token, import22.Focusable)) || identical(token, import57.BaseMaterialInput)) || identical(token, import21.ReferenceDirective)) || identical(token, import35.HasDisabled))) {
        return this._MaterialInputComponent_4_6;
      }
      if (identical(token, const import30.MultiToken<Object>('NgValidators'))) {
        return this._NgValidators_4_12;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    if (import23.isDevToolsEnabled) {
      import23.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', _ctx.presetDates.isNotEmpty);
    }
    this._NgIf_2_9.ngIf = (_ctx.presetDates.isNotEmpty ?? false) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:1039:1069 */;
    changed = false;
    final currVal_1 = _ctx.placeholderMsg;
    if (import39.checkBinding(this._expr_1, currVal_1, 'placeholderMsg', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._MaterialInputComponent_4_6, 'label', currVal_1);
      }
      this._MaterialInputComponent_4_6.label = (currVal_1!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:1565:1589 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.required;
    if (import39.checkBinding(this._expr_2, currVal_2, 'required', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._MaterialInputComponent_4_6, 'required', currVal_2);
      }
      this._MaterialInputComponent_4_6.required = (currVal_2!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:1519:1540 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._compView_4.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._AutoFocusDirective_4_8, 'autoFocus', true);
      }
      this._AutoFocusDirective_4_8.autoFocus = true /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:1215:1224 */;
    }
    if (((!import39.debugThrowIfChanged) && firstCheck)) {
      this._AutoFocusDirective_4_8.ngOnInit();
    }
    final currVal_4 = _ctx.outputFormat;
    if (import39.checkBinding(this._expr_4, currVal_4, 'outputFormat', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._DateInputDirective_4_9, 'dateFormat', currVal_4);
      }
      this._DateInputDirective_4_9.dateFormat = (currVal_4!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:1285:1312 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.maxDate;
    if (import39.checkBinding(this._expr_5, currVal_5, 'maxDate', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._DateInputDirective_4_9, 'maxDate', currVal_5);
      }
      this._DateInputDirective_4_9.maxDate = (currVal_5!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:1337:1356 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.minDate;
    if (import39.checkBinding(this._expr_6, currVal_6, 'minDate', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._DateInputDirective_4_9, 'minDate', currVal_6);
      }
      this._DateInputDirective_4_9.minDate = (currVal_6!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:1381:1400 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.date;
    if (import39.checkBinding(this._expr_7, currVal_7, 'date', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._DateInputDirective_4_9, 'date', currVal_7);
      }
      this._DateInputDirective_4_9.date = (currVal_7!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:1425:1438 */;
      this._expr_7 = currVal_7;
    }
    if (import23.isDevToolsEnabled) {
      import23.Inspector.instance.recordInput(this._NgIf_5_9, 'ngIf', _ctx.presetDates.isNotEmpty);
    }
    this._NgIf_5_9.ngIf = (_ctx.presetDates.isNotEmpty ?? false) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:1733:1763 */;
    changed = false;
    final currVal_8 = _ctx.calendar;
    if (import39.checkBinding(this._expr_8, currVal_8, 'calendar', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._MaterialCalendarPickerComponent_6_5, 'state', currVal_8);
      }
      this._MaterialCalendarPickerComponent_6_5.state = (currVal_8!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:2329:2349 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.minDate;
    if (import39.checkBinding(this._expr_9, currVal_9, 'minDate', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._MaterialCalendarPickerComponent_6_5, 'minDate', currVal_9);
      }
      this._MaterialCalendarPickerComponent_6_5.minDate = (currVal_9!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:2382:2401 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.maxDate;
    if (import39.checkBinding(this._expr_10, currVal_10, 'maxDate', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._MaterialCalendarPickerComponent_6_5, 'maxDate', currVal_10);
      }
      this._MaterialCalendarPickerComponent_6_5.maxDate = (currVal_10!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:2434:2453 */;
      changed = true;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.compact;
    if (import39.checkBinding(this._expr_11, currVal_11, 'compact', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._MaterialCalendarPickerComponent_6_5, 'compact', currVal_11);
      }
      this._MaterialCalendarPickerComponent_6_5.compact = (currVal_11!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:2486:2505 */;
      changed = true;
      this._expr_11 = currVal_11;
    }
    if (changed) {
      this._compView_6.markAsCheckOnce();
    }
    if (changed) {
      this._MaterialCalendarPickerComponent_6_5.ngAfterChanges();
    }
    if (((!import39.debugThrowIfChanged) && firstCheck)) {
      this._MaterialCalendarPickerComponent_6_5.ngOnInit();
    }
    if (firstCheck) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._NgClass_6_6, 'class', 'calendar-picker');
      }
      this._NgClass_6_6.initialClasses = 'calendar-picker' /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:2207:2230 */;
    }
    final currVal_13 = _ctx.calendarWeekRowsStyle;
    if (import39.checkBinding(this._expr_13, currVal_13, 'calendarWeekRowsStyle', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._NgClass_6_6, 'ngClass', currVal_13);
      }
      this._NgClass_6_6.rawClass = (currVal_13!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:2263:2296 */;
      this._expr_13 = currVal_13;
    }
    if ((!import39.debugThrowIfChanged)) {
      this._NgClass_6_6.ngDoCheck();
    }
    final currVal_0 = _ctx.compact;
    if (import39.checkBinding(this._expr_0, currVal_0, 'compact', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      import18.updateRenderClass(this._el_0, 'compact', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:913:938 */;
      this._expr_0 = currVal_0;
    }
    this._compView_4.detectHostChanges(firstCheck);
    this._compView_6.detectHostChanges(firstCheck);
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_5.detectChangesInNestedViews();
    this._compView_4.detectChangesDeprecated();
    this._compView_6.detectChangesDeprecated();
    if ((!import39.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialInputComponent_4_6.ngAfterViewInit();
        this._MaterialCalendarPickerComponent_6_5.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    import17.unsafeCast<ViewMaterialDatepickerComponent0>((this.parentView!))._viewQuery_MaterialInputComponent_1_isDirty = true;
    import17.unsafeCast<ViewMaterialDatepickerComponent0>((this.parentView!))._query_AutoFocusDirective_4_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._appEl_5.destroyNestedViews();
    this._compView_4.destroyInternalState();
    this._compView_6.destroyInternalState();
    this._MaterialInputComponent_4_6.ngOnDestroy();
    this._AutoFocusDirective_4_8.ngOnDestroy();
    this._DateInputDirective_4_9.ngOnDestroy();
    this._MaterialInputDefaultValueAccessor_4_11.ngOnDestroy();
    this._MaterialCalendarPickerComponent_6_5.ngOnDestroy();
    this._NgClass_6_6.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.calendar = $event;
  }
}

import42.EmbeddedView<void> viewFactory_MaterialDatepickerComponent2(import44.RenderView parentView, int parentIndex) {
  return _ViewMaterialDatepickerComponent2(parentView, parentIndex);
}

class _ViewMaterialDatepickerComponent3 extends import42.EmbeddedView<import2.MaterialDatepickerComponent> {
  final import43.TextBinding _textBinding_1 = import43.TextBinding();
  _ViewMaterialDatepickerComponent3(import44.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import18.createRenderElement('span');
    this.updateChildClass(_el_0, 'inner-label');
    this.addShimC(_el_0);
    import18.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import45.interpolateString0(_ctx.labelMsg)) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:1091:1103 */;
  }
}

import42.EmbeddedView<void> viewFactory_MaterialDatepickerComponent3(import44.RenderView parentView, int parentIndex) {
  return _ViewMaterialDatepickerComponent3(parentView, parentIndex);
}

class _ViewMaterialDatepickerComponent4 extends import42.EmbeddedView<import2.MaterialDatepickerComponent> {
  late final ViewContainer _appEl_1;
  late final import58.NgFor _NgFor_1_9;
  Object? _expr_0;
  _ViewMaterialDatepickerComponent4(import44.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import18.createRenderElement('div');
    this.updateChildClass(_el_0, 'preset-dates-wrapper');
    import18.updateRenderAttribute(_el_0, 'role', 'listbox');
    this.addShimC(_el_0);
    final _anchor_1 = import18.createRenderAnchor();
    import18.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MaterialDatepickerComponent5);
    this._NgFor_1_9 = import58.NgFor(this._appEl_1, _TemplateRef_1_8);
    if (import23.isDevToolsEnabled) {
      import23.Inspector.instance.registerDirective(_anchor_1, this._NgFor_1_9);
    }
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.presetDates;
    if (import39.checkBinding(this._expr_0, currVal_0, 'presetDates', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForOf', currVal_0);
      }
      this._NgFor_1_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:1797:1835 */;
      this._expr_0 = currVal_0;
    }
    if ((!import39.debugThrowIfChanged)) {
      this._NgFor_1_9.ngDoCheck();
    }
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }
}

import42.EmbeddedView<void> viewFactory_MaterialDatepickerComponent4(import44.RenderView parentView, int parentIndex) {
  return _ViewMaterialDatepickerComponent4(parentView, parentIndex);
}

class _ViewMaterialDatepickerComponent5 extends import42.EmbeddedView<import2.MaterialDatepickerComponent> {
  final import43.TextBinding _textBinding_1 = import43.TextBinding();
  late final import59.ViewMaterialSelectItemComponent0 _compView_0;
  late final import60.MaterialSelectItemComponent _MaterialSelectItemComponent_0_5;
  Object? _expr_0;
  _ViewMaterialDatepickerComponent5(import44.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import59.ViewMaterialSelectItemComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.addShimC(_el_0);
    this._MaterialSelectItemComponent_0_5 = (import17.isDevMode
        ? import19.debugInjectorWrap(import60.MaterialSelectItemComponent, () {
            return import60.MaterialSelectItemComponent(import18.unwrapNode(_el_0), import17.unsafeCast<ViewMaterialDatepickerComponent0>((((this.parentView!).parentView!).parentView!))._MaterialPopupComponent_3_8, ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import61.ActivationHandler, (((this.parentView!).parentView!).parentView!).parentIndex), this._compView_0, null);
          })
        : import60.MaterialSelectItemComponent(import18.unwrapNode(_el_0), import17.unsafeCast<ViewMaterialDatepickerComponent0>((((this.parentView!).parentView!).parentView!))._MaterialPopupComponent_3_8, ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import61.ActivationHandler, (((this.parentView!).parentView!).parentView!).parentIndex), this._compView_0, null));
    this._compView_0.createAndProject(this._MaterialSelectItemComponent_0_5, [
      <Object>[this._textBinding_1.element],
    ]);
    final subscription_0 = this._MaterialSelectItemComponent_0_5.trigger.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import17.unsafeCast(<Object>[_el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import62.SelectionItem) || identical(token, import35.HasDisabled)) || identical(token, import63.HasRenderer)) && (nodeIndex <= 1))) {
      return this._MaterialSelectItemComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_presetDate = this.locals['\$implicit'];
    changed = false;
    if (firstCheck) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_5, 'closeOnActivate', false);
      }
      this._MaterialSelectItemComponent_0_5.closeOnActivate = false /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:2018:2043 */;
      changed = true;
    }
    final currVal_0 = _ctx.isPresetDateSelected(local_presetDate);
    if (import39.checkBinding(this._expr_0, currVal_0, 'isPresetDateSelected(presetDate)', 'package:angulardart_components/material_datepicker/material_datepicker.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_5, 'selected', currVal_0);
      }
      this._MaterialSelectItemComponent_0_5.selected = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:1940:1985 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._textBinding_1.updateText(import45.interpolate0(local_presetDate.title)) /* REF:package:angulardart_components/material_datepicker/material_datepicker.html:2057:2077 */;
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MaterialSelectItemComponent_0_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final local_presetDate = this.locals['\$implicit'];
    final _ctx = this.ctx;
    _ctx.onPresetClicked(local_presetDate);
  }
}

import42.EmbeddedView<void> viewFactory_MaterialDatepickerComponent5(import44.RenderView parentView, int parentIndex) {
  return _ViewMaterialDatepickerComponent5(parentView, parentIndex);
}

final List<Object> styles$MaterialDatepickerComponentHost = const [];

class _ViewMaterialDatepickerComponentHost0 extends import64.HostView<import2.MaterialDatepickerComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialDatepickerComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import17.isDevMode
        ? import19.debugInjectorWrap(import2.MaterialDatepickerComponent, () {
            return import2.MaterialDatepickerComponent(import18.unwrapNode(_el_0), null, this.injectorGetOptional(const import30.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex));
          })
        : import2.MaterialDatepickerComponent(import18.unwrapNode(_el_0), null, this.injectorGetOptional(const import30.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import35.HasDisabled) && (0 == nodeIndex))) {
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
    if ((!import39.debugThrowIfChanged)) {
      if (firstCheck) {
        this.component.ngAfterViewInit();
      }
    }
  }
}

import64.HostView<import2.MaterialDatepickerComponent> viewFactory_MaterialDatepickerComponentHost0() {
  return _ViewMaterialDatepickerComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialDatepickerComponent, createMaterialDatepickerComponentFactory());
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
}
