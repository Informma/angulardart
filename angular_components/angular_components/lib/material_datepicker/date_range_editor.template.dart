// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'date_range_editor.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angulardart_components/focus/focus.template.dart' as _ref2;
import 'package:angulardart_components/focus/focus_item.template.dart' as _ref3;
import 'package:angulardart_components/focus/focus_list.template.dart' as _ref4;
import 'package:angulardart_components/focus/keyboard_only_focus_indicator.template.dart' as _ref5;
import 'package:angulardart_components/material_button/material_button.template.dart' as _ref6;
import 'package:angulardart_components/material_datepicker/calendar.template.dart' as _ref7;
import 'package:angulardart_components/material_datepicker/date_range_editor_host.template.dart' as _ref8;
import 'package:angulardart_components/material_datepicker/date_range_input.template.dart' as _ref9;
import 'package:angulardart_components/material_datepicker/material_calendar_picker.template.dart' as _ref10;
import 'package:angulardart_components/material_datepicker/material_month_picker.template.dart' as _ref11;
import 'package:angulardart_components/material_datepicker/module.template.dart' as _ref12;
import 'package:angulardart_components/material_datepicker/next_prev_buttons.template.dart' as _ref13;
import 'package:angulardart_components/material_datepicker/preset.template.dart' as _ref14;
import 'package:angulardart_components/material_datepicker/range.template.dart' as _ref15;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref16;
import 'package:angulardart_components/material_input/material_input.template.dart' as _ref17;
import 'package:angulardart_components/material_menu/common/menu_root.template.dart' as _ref18;
import 'package:angulardart_components/material_menu/menu_item_groups.template.dart' as _ref19;
import 'package:angulardart_components/material_popup/material_popup.template.dart' as _ref20;
import 'package:angulardart_components/material_ripple/material_ripple.template.dart' as _ref21;
import 'package:angulardart_components/material_select/material_select.template.dart' as _ref22;
import 'package:angulardart_components/material_select/material_select_item.template.dart' as _ref23;
import 'package:angulardart_components/material_tooltip/material_tooltip.template.dart' as _ref24;
import 'package:angulardart_components/model/date/date.template.dart' as _ref25;
import 'package:angulardart_components/model/date/date_formatter.template.dart' as _ref26;
import 'package:angulardart_components/model/menu/menu.template.dart' as _ref27;
import 'package:angulardart_components/model/menu/selectable_menu.template.dart' as _ref28;
import 'package:angulardart_components/model/observable/observable.template.dart' as _ref29;
import 'package:angulardart_components/model/selection/select.template.dart' as _ref30;
import 'package:angulardart_components/model/selection/selection_model.template.dart' as _ref31;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref32;
import 'package:angulardart_components/src/material_datepicker/comparison_range_editor.template.dart' as _ref33;
import 'package:angulardart_components/src/material_datepicker/date_range_editor_model.template.dart' as _ref34;
import 'package:angulardart_components/src/material_datepicker/date_range_editor_model.template.dart' as _ref35;
import 'package:angulardart_components/utils/angular/scroll_host/angular_2.template.dart' as _ref36;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.template.dart' as _ref37;
import 'package:angulardart_components/utils/showhide/showhide.template.dart' as _ref38;
import 'package:angulardart_components/material_datepicker/date_range_editor.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'date_range_editor.dart' as import2;

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
import 'package:angulardart/src/runtime/queries.dart' as import14;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import16;

import '../material_select/material_select.template.dart' as import17;
import '../focus/focus_list.template.dart' as import18;
import '../material_select/material_select.dart' as import19;

import 'package:quiver/src/time/clock.dart' as import20;

import '../src/utils/angular/scroll_host/gestures.dart' as import21;
import '../utils/angular/scroll_host/angular_2.dart' as import22;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import23;
import 'package:angulardart/src/di/errors.dart' as import24;

import '../focus/focus_list.dart' as import25;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import26;

import '../utils/browser/dom_service/dom_service.dart' as import27;
import '../interfaces/has_disabled.dart' as import28;
import '../model/ui/has_renderer.dart' as import29;
import '../model/selection/selection_container.dart' as import30;
import '../src/utils/angular/scroll_host/scroll_host_interface.dart' as import31;

import 'package:angulardart/src/runtime/text_binding.dart' as import32;

import '../material_select/material_select_item.template.dart' as import33;
import '../focus/focus_item.template.dart' as import34;
import '../material_select/material_select_item.dart' as import35;
import '../focus/focus_item.dart' as import36;
import '../mixins/material_dropdown_base.dart' as import37;
import '../material_select/activation_handler.dart' as import38;
import '../focus/focus.dart' as import39;

import 'package:angulardart/src/runtime/interpolate.dart' as import40;

import '../material_icon/material_icon.template.dart' as import41;
import '../button_decorator/button_decorator.template.dart' as import42;
import '../material_icon/material_icon.dart' as import43;
import '../button_decorator/button_decorator.dart' as import44;

import 'package:angulardart/src/common/directives/ng_for.dart' as import45;

import '../src/material_tooltip/tooltip_controller.dart' as import46;
import '../material_tooltip/module.dart' as import47;
import '../utils/disposer/disposer.dart' as import48;
import '../src/material_tooltip/tooltip.dart' as import49;
import '../src/laminate/popup/dom_popup_source.dart' as import50;

import 'package:angulardart_components/src/dom/dom_apis.dart' as import51;

import '../material_popup/material_popup.dart' as import52;
import '../material_button/material_button.template.dart' as import53;
import '../material_button/material_button.dart' as import54;
import '../src/laminate/popup/popup_source_directive.dart' as import55;
import '../material_popup/material_popup.template.dart' as import56;
import '../theme/dark_theme.dart' as import57;

import 'package:angulardart_meta/src/di_tokens.dart' as import58;

import 'dart:core';

import '../utils/angular/reference/reference.dart' as import60;
import '../focus/focus_interface.dart' as import61;
import '../src/laminate/popup/popup_hierarchy.dart' as import62;
import '../src/laminate/overlay/overlay_service.dart' as import63;
import '../laminate/overlay/zindexer.dart' as import64;

import 'package:angulardart_components/laminate/enums/alignment.dart' as import65;

import '../src/laminate/popup/popup_size_provider.dart' as import66;

import 'package:angulardart/src/core/linker/element_ref.dart';

import '../content/deferred_content_aware.dart' as import68;
import '../src/laminate/popup/popup_ref.dart' as import69;
import '../material_menu/menu_item_groups.template.dart' as import70;
import '../material_menu/common/menu_root.dart' as import71;
import '../material_menu/menu_item_groups.dart' as import72;
import '../utils/id_generator/id_generator.dart' as import73;
import '../material_input/material_input.template.dart' as import74;
import '../material_input/deferred_validator.dart' as import75;

import 'package:angulardart_forms/src/directives/ng_model.dart' as import76;

import '../material_input/material_input.dart' as import77;
import '../material_input/material_input_default_value_accessor.dart' as import78;

import 'package:angulardart_forms/src/directives/ng_control.dart' as import79;

import '../material_input/base_material_input.dart' as import80;
import '../src/material_datepicker/comparison_range_editor.template.dart' as import81;
import '../src/material_datepicker/comparison_range_editor.dart' as import82;
import 'date_range_input.template.dart' as import83;
import 'date_range_input.dart' as import84;
import '../focus/keyboard_only_focus_indicator.dart' as import85;
import 'next_prev_buttons.template.dart' as import86;
import 'next_prev_buttons.dart' as import87;
import 'material_calendar_picker.template.dart' as import88;
import 'material_calendar_picker.dart' as import89;
import '../utils/showhide/showhide.dart' as import90;
import 'material_month_picker.template.dart' as import91;
import 'material_month_picker.dart' as import92;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import93;

import 'date_range_editor_host.dart' as import94;

final List<Object> styles$DateRangeEditorComponent = [import0.styles];

class ViewDateRangeEditorComponent0 extends import1.ComponentView<import2.DateRangeEditorComponent> {
  bool _viewQuery_MaterialCalendarPickerComponent_0_isDirty = true;
  bool _viewQuery_MaterialMonthPickerComponent_1_isDirty = true;
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  Object? _expr_0;
  static import5.ComponentStyles? _componentStyles;
  ViewDateRangeEditorComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('date-range-editor');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/material_datepicker/date_range_editor.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _anchor_0 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_0);
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, viewFactory_DateRangeEditorComponent1);
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
    final _anchor_1 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_1);
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_DateRangeEditorComponent13);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', _ctx.shouldShowPredefinedList);
    }
    this._NgIf_0_9.ngIf = (_ctx.shouldShowPredefinedList ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:414:446 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', ((_ctx.supportsCustomRange ?? false) && (_ctx.shouldShowCustomDateRangeColumn ?? false)));
    }
    this._NgIf_1_9.ngIf = (((_ctx.supportsCustomRange ?? false) && (_ctx.shouldShowCustomDateRangeColumn ?? false)) ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5110:5172 */;
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_1.detectChangesInNestedViews();
    if ((!import13.debugThrowIfChanged)) {
      if (this._viewQuery_MaterialCalendarPickerComponent_0_isDirty) {
        _ctx.calendarPicker = import14.firstOrNull(
          this._appEl_1.mapNestedViews((_ViewDateRangeEditorComponent13 nestedView) {
            return nestedView._appEl_10.mapNestedViewsWithSingleResult((_ViewDateRangeEditorComponent20 nestedView) {
              import6.View.queryChangeDetectorRefs[nestedView._MaterialCalendarPickerComponent_0_5] = nestedView._compView_0;
              return nestedView._MaterialCalendarPickerComponent_0_5;
            });
          }),
        );
        this._viewQuery_MaterialCalendarPickerComponent_0_isDirty = false;
      }
      if (this._viewQuery_MaterialMonthPickerComponent_1_isDirty) {
        _ctx.monthSelector = import14.firstOrNull(
          this._appEl_1.mapNestedViews((_ViewDateRangeEditorComponent13 nestedView) {
            return nestedView._appEl_11.mapNestedViewsWithSingleResult((_ViewDateRangeEditorComponent21 nestedView) {
              import6.View.queryChangeDetectorRefs[nestedView._MaterialMonthPickerComponent_0_5] = nestedView._compView_0;
              return nestedView._MaterialMonthPickerComponent_0_5;
            });
          }),
        );
        this._viewQuery_MaterialMonthPickerComponent_1_isDirty = false;
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_1.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.compact;
    if (import13.checkBinding(this._expr_0, currVal_0, null, null)) {
      import10.updateRenderClass(this.rootElement, 'compact', (currVal_0 ?? false));
      this._expr_0 = currVal_0;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$DateRangeEditorComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _DateRangeEditorComponentNgFactory = ComponentFactory<import2.DateRangeEditorComponent>('date-range-editor', viewFactory_DateRangeEditorComponentHost0);
ComponentFactory<import2.DateRangeEditorComponent> get DateRangeEditorComponentNgFactory {
  return _DateRangeEditorComponentNgFactory;
}

ComponentFactory<import2.DateRangeEditorComponent> createDateRangeEditorComponentFactory() {
  return ComponentFactory('date-range-editor', viewFactory_DateRangeEditorComponentHost0);
}

class _ViewDateRangeEditorComponent1 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  bool _query_SelectionItem_0_1_isDirty = true;
  bool _query_FocusableItem_0_0_isDirty = true;
  late final import17.ViewMaterialSelectComponent0 _compView_0;
  late final import18.FocusListDirectiveNgCd _FocusListDirective_0_5;
  late final import19.MaterialSelectComponent _MaterialSelectComponent_0_6;
  late final import20.Clock _Clock_0_7;
  late final import21.GestureListenerFactory _GestureListenerFactory_0_8;
  late final import22.ElementScrollHost _ElementScrollHost_0_9;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
  late final ViewContainer _appEl_5;
  late final NgIf _NgIf_5_9;
  late final ViewContainer _appEl_6;
  late final NgIf _NgIf_6_9;
  late final ViewContainer _appEl_7;
  late final NgIf _NgIf_7_9;
  Object? _expr_0;
  late final _el_0;
  _ViewDateRangeEditorComponent1(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import17.ViewMaterialSelectComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import10.updateRenderAttribute(this._el_0, 'acxScrollHost', '');
    this.updateChildClassNonHtml(this._el_0, 'preset-list');
    import10.updateRenderAttribute(this._el_0, 'focusList', '');
    import10.updateRenderAttribute(this._el_0, 'role', 'listbox');
    this.addShimC(this._el_0);
    this._FocusListDirective_0_5 = import18.FocusListDirectiveNgCd(
      (import9.isDevMode
          ? import24.debugInjectorWrap(import25.FocusListDirective, () {
              return import25.FocusListDirective((this.parentView!).injectorGet(import26.NgZone, this.parentIndex), 'listbox', null);
            })
          : import25.FocusListDirective((this.parentView!).injectorGet(import26.NgZone, this.parentIndex), 'listbox', null)),
    );
    this._MaterialSelectComponent_0_6 = import19.MaterialSelectComponent();
    this._Clock_0_7 = const import20.Clock.new();
    this._GestureListenerFactory_0_8 = import21.GestureListenerFactory(this._Clock_0_7);
    this._ElementScrollHost_0_9 = (import9.isDevMode
        ? import24.debugInjectorWrap(import22.ElementScrollHost, () {
            return import22.ElementScrollHost((this.parentView!).injectorGet(import27.DomService, this.parentIndex), (this.parentView!).injectorGet(import26.NgZone, this.parentIndex), this._GestureListenerFactory_0_8, import10.unwrapNode(this._el_0));
          })
        : import22.ElementScrollHost((this.parentView!).injectorGet(import27.DomService, this.parentIndex), (this.parentView!).injectorGet(import26.NgZone, this.parentIndex), this._GestureListenerFactory_0_8, import10.unwrapNode(this._el_0)));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_0, this._FocusListDirective_0_5.instance);
      import12.Inspector.instance.registerDirective(this._el_0, this._ElementScrollHost_0_9);
    }
    final _anchor_1 = import10.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_DateRangeEditorComponent2);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import10.createRenderAnchor();
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_DateRangeEditorComponent3);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _el_3 = import10.createRenderElement('div');
    this.updateChildClass(_el_3, 'group');
    import10.updateRenderAttribute(_el_3, 'role', 'listbox');
    this.addShimC(_el_3);
    final _anchor_4 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_3, _anchor_4);
    this._appEl_4 = ViewContainer(4, 3, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_DateRangeEditorComponent6);
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
    final _anchor_5 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_3, _anchor_5);
    this._appEl_5 = ViewContainer(5, 3, this, _anchor_5);
    var _TemplateRef_5_8 = TemplateRef(this._appEl_5, viewFactory_DateRangeEditorComponent10);
    this._NgIf_5_9 = NgIf(this._appEl_5, _TemplateRef_5_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_5, this._NgIf_5_9);
    }
    final _anchor_6 = import10.createRenderAnchor();
    this._appEl_6 = ViewContainer(6, 0, this, _anchor_6);
    var _TemplateRef_6_8 = TemplateRef(this._appEl_6, viewFactory_DateRangeEditorComponent11);
    this._NgIf_6_9 = NgIf(this._appEl_6, _TemplateRef_6_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_6, this._NgIf_6_9);
    }
    final _anchor_7 = import10.createRenderAnchor();
    this._appEl_7 = ViewContainer(7, 0, this, _anchor_7);
    var _TemplateRef_7_8 = TemplateRef(this._appEl_7, viewFactory_DateRangeEditorComponent12);
    this._NgIf_7_9 = NgIf(this._appEl_7, _TemplateRef_7_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_7, this._NgIf_7_9);
    }
    this._compView_0.createAndProject(this._MaterialSelectComponent_0_6, [
      <Object>[this._appEl_1, this._appEl_2, _el_3, this._appEl_6, this._appEl_7],
    ]);
    this.initRootNode(this._el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 7)) {
      if (((identical(token, import28.HasDisabled) || identical(token, import29.HasRenderer)) || identical(token, import30.SelectionContainer))) {
        return this._MaterialSelectComponent_0_6;
      }
      if (identical(token, import20.Clock)) {
        return this._Clock_0_7;
      }
      if (identical(token, import21.GestureListenerFactory)) {
        return this._GestureListenerFactory_0_8;
      }
      if ((identical(token, import22.ElementScrollHost) || identical(token, import31.ScrollHost))) {
        return this._ElementScrollHost_0_9;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectComponent_0_6, 'width', 0);
      }
      this._MaterialSelectComponent_0_6.width = 0 /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:295:306 */;
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._MaterialSelectComponent_0_6.ngOnInit();
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._ElementScrollHost_0_9.ngOnInit();
    }
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.supportsClearRange);
    }
    this._NgIf_1_9.ngIf = (_ctx.supportsClearRange ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:469:495 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', _ctx.supportsCustomRange);
    }
    this._NgIf_2_9.ngIf = (_ctx.supportsCustomRange ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:648:675 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', (!(_ctx.useMenuForPresets ?? false)));
    }
    this._NgIf_4_9.ngIf = ((!(_ctx.useMenuForPresets ?? false)) ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1433:1459 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_5_9, 'ngIf', _ctx.useMenuForPresets);
    }
    this._NgIf_5_9.ngIf = (_ctx.useMenuForPresets ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:3590:3615 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_6_9, 'ngIf', _ctx.supportsDaysInputs);
    }
    this._NgIf_6_9.ngIf = (_ctx.supportsDaysInputs ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:3736:3762 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_7_9, 'ngIf', _ctx.supportsComparison);
    }
    this._NgIf_7_9.ngIf = (_ctx.supportsComparison ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:4950:4976 */;
    final currVal_0 = _ctx.isBasic;
    if (import13.checkBinding(this._expr_0, currVal_0, 'isBasic', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      import10.updateRenderClass(this._el_0, 'basic-preset-list', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:361:396 */;
      this._expr_0 = currVal_0;
    }
    this._FocusListDirective_0_5.detectHostChanges(this._compView_0, this._el_0);
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
    this._appEl_5.detectChangesInNestedViews();
    this._appEl_6.detectChangesInNestedViews();
    this._appEl_7.detectChangesInNestedViews();
    if ((!import13.debugThrowIfChanged)) {
      if (this._query_FocusableItem_0_0_isDirty) {
        this._FocusListDirective_0_5.instance.listItems = [
          ...this._appEl_1.mapNestedViewsWithSingleResult((_ViewDateRangeEditorComponent2 nestedView) {
            return nestedView._FocusItemDirective_1_5.instance;
          }),
          ...this._appEl_2.mapNestedViewsWithSingleResult((_ViewDateRangeEditorComponent3 nestedView) {
            return nestedView._FocusItemDirective_1_5.instance;
          }),
          ...this._appEl_4.mapNestedViews((_ViewDateRangeEditorComponent6 nestedView) {
            return nestedView._appEl_0.mapNestedViewsWithSingleResult((_ViewDateRangeEditorComponent7 nestedView) {
              return nestedView._FocusItemDirective_0_8.instance;
            });
          }),
        ];
        this._query_FocusableItem_0_0_isDirty = false;
      }
      if (this._query_SelectionItem_0_1_isDirty) {
        this._MaterialSelectComponent_0_6.selectItems = [
          ...this._appEl_1.mapNestedViewsWithSingleResult((_ViewDateRangeEditorComponent2 nestedView) {
            import6.View.queryChangeDetectorRefs[nestedView._MaterialSelectItemComponent_1_6] = nestedView._compView_1;
            return nestedView._MaterialSelectItemComponent_1_6;
          }),
          ...this._appEl_2.mapNestedViewsWithSingleResult((_ViewDateRangeEditorComponent3 nestedView) {
            import6.View.queryChangeDetectorRefs[nestedView._MaterialSelectItemComponent_1_6] = nestedView._compView_1;
            return nestedView._MaterialSelectItemComponent_1_6;
          }),
          ...this._appEl_4.mapNestedViews((_ViewDateRangeEditorComponent6 nestedView) {
            return nestedView._appEl_0.mapNestedViews((_ViewDateRangeEditorComponent7 nestedView) {
              import6.View.queryChangeDetectorRefs[nestedView._MaterialSelectItemComponent_0_9] = nestedView._compView_0;
              return [
                nestedView._MaterialSelectItemComponent_0_9,
                ...nestedView._appEl_2.mapNestedViews((_ViewDateRangeEditorComponent8 nestedView) {
                  return nestedView._appEl_3.mapNestedViewsWithSingleResult((_ViewDateRangeEditorComponent9 nestedView) {
                    import6.View.queryChangeDetectorRefs[nestedView._MaterialSelectItemComponent_0_8] = nestedView._compView_0;
                    return nestedView._MaterialSelectItemComponent_0_8;
                  });
                }),
              ];
            });
          }),
          ...this._appEl_6.mapNestedViews((_ViewDateRangeEditorComponent11 nestedView) {
            import6.View.queryChangeDetectorRefs[nestedView._MaterialSelectItemComponent_1_5] = nestedView._compView_1;
            import6.View.queryChangeDetectorRefs[nestedView._MaterialSelectItemComponent_5_5] = nestedView._compView_5;
            return [nestedView._MaterialSelectItemComponent_1_5, nestedView._MaterialSelectItemComponent_5_5];
          }),
        ];
        this._query_SelectionItem_0_1_isDirty = false;
      }
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
    this._appEl_5.destroyNestedViews();
    this._appEl_6.destroyNestedViews();
    this._appEl_7.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._FocusListDirective_0_5.instance.ngOnDestroy();
    this._ElementScrollHost_0_9.ngOnDestroy();
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent1(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent1(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent2 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  final import32.TextBinding _textBinding_2 = import32.TextBinding();
  late final import33.ViewMaterialSelectItemComponent0 _compView_1;
  late final import34.FocusItemDirectiveNgCd _FocusItemDirective_1_5;
  late final import35.MaterialSelectItemComponent _MaterialSelectItemComponent_1_6;
  late final _el_1;
  _ViewDateRangeEditorComponent2(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'group');
    this.addShimC(_el_0);
    this._compView_1 = import33.ViewMaterialSelectItemComponent0(this, 1);
    this._el_1 = this._compView_1.rootElement;
    import10.appendRenderChild(_el_0, this._el_1);
    import10.updateRenderAttribute(this._el_1, 'focusItem', '');
    this.addShimC(this._el_1);
    this._FocusItemDirective_1_5 = import34.FocusItemDirectiveNgCd(import36.FocusItemDirective(import10.unwrapNode(this._el_1), this._compView_1, null));
    this._MaterialSelectItemComponent_1_6 = (import9.isDevMode
        ? import24.debugInjectorWrap(import35.MaterialSelectItemComponent, () {
            return import35.MaterialSelectItemComponent(import10.unwrapNode(this._el_1), ((this.parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import38.ActivationHandler, (this.parentView!).parentIndex), this._compView_1, null);
          })
        : import35.MaterialSelectItemComponent(import10.unwrapNode(this._el_1), ((this.parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import38.ActivationHandler, (this.parentView!).parentIndex), this._compView_1, null));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_1, this._FocusItemDirective_1_5.instance);
    }
    this._compView_1.createAndProject(this._MaterialSelectItemComponent_1_6, [
      <Object>[this._textBinding_2.element],
    ]);
    import10.addRenderEventListener(this._el_1, 'keydown', this.eventHandler1(this._FocusItemDirective_1_5.instance.keydown));
    final subscription_0 = this._MaterialSelectItemComponent_1_6.trigger.listen(this.eventHandler1(_ctx.onClearRangeClicked));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((1 <= nodeIndex) && (nodeIndex <= 2))) {
      if (identical(token, import39.FocusableItem)) {
        return this._FocusItemDirective_1_5.instance;
      }
      if (((identical(token, import30.SelectionItem) || identical(token, import28.HasDisabled)) || identical(token, import29.HasRenderer))) {
        return this._MaterialSelectItemComponent_1_6;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    this._FocusItemDirective_1_5.detectHostChanges(this._compView_1, this._el_1);
    this._compView_1.detectHostChanges(firstCheck);
    this._textBinding_2.updateText(import40.interpolateString0(import2.DateRangeEditorComponent.clearRangeMsg)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:586:603 */;
    this._compView_1.detectChangesDeprecated();
  }

  @override
  void dirtyParentQueriesInternal() {
    import9.unsafeCast<_ViewDateRangeEditorComponent1>((this.parentView!))._query_SelectionItem_0_1_isDirty = true;
    import9.unsafeCast<_ViewDateRangeEditorComponent1>((this.parentView!))._query_FocusableItem_0_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_1.destroyInternalState();
    this._MaterialSelectItemComponent_1_6.ngOnDestroy();
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent2(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent2(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent3 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  final import32.TextBinding _textBinding_3 = import32.TextBinding();
  late final import33.ViewMaterialSelectItemComponent0 _compView_1;
  late final import34.FocusItemDirectiveNgCd _FocusItemDirective_1_5;
  late final import35.MaterialSelectItemComponent _MaterialSelectItemComponent_1_6;
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
  late final ViewContainer _appEl_5;
  late final NgIf _NgIf_5_9;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_3;
  late final _el_1;
  late final _el_2;
  _ViewDateRangeEditorComponent3(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'group');
    this.addShimC(_el_0);
    this._compView_1 = import33.ViewMaterialSelectItemComponent0(this, 1);
    this._el_1 = this._compView_1.rootElement;
    import10.appendRenderChild(_el_0, this._el_1);
    import10.updateRenderAttribute(this._el_1, 'focusItem', '');
    this.addShimC(this._el_1);
    this._FocusItemDirective_1_5 = import34.FocusItemDirectiveNgCd(import36.FocusItemDirective(import10.unwrapNode(this._el_1), this._compView_1, null));
    this._MaterialSelectItemComponent_1_6 = (import9.isDevMode
        ? import24.debugInjectorWrap(import35.MaterialSelectItemComponent, () {
            return import35.MaterialSelectItemComponent(import10.unwrapNode(this._el_1), ((this.parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import38.ActivationHandler, (this.parentView!).parentIndex), this._compView_1, null);
          })
        : import35.MaterialSelectItemComponent(import10.unwrapNode(this._el_1), ((this.parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import38.ActivationHandler, (this.parentView!).parentIndex), this._compView_1, null));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_1, this._FocusItemDirective_1_5.instance);
    }
    this._el_2 = import10.createRenderElement('div');
    this.addShimC(this._el_2);
    import10.appendRenderChild(this._el_2, this._textBinding_3.element);
    final _anchor_4 = import10.createRenderAnchor();
    import10.appendRenderChild(this._el_2, _anchor_4);
    this._appEl_4 = ViewContainer(4, 2, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_DateRangeEditorComponent4);
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
    final _anchor_5 = import10.createRenderAnchor();
    this._appEl_5 = ViewContainer(5, 1, this, _anchor_5);
    var _TemplateRef_5_8 = TemplateRef(this._appEl_5, viewFactory_DateRangeEditorComponent5);
    this._NgIf_5_9 = NgIf(this._appEl_5, _TemplateRef_5_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_5, this._NgIf_5_9);
    }
    this._compView_1.createAndProject(this._MaterialSelectItemComponent_1_6, [
      <Object>[this._el_2, this._appEl_5],
    ]);
    import10.addRenderEventListener(this._el_1, 'keydown', this.eventHandler1(this._FocusItemDirective_1_5.instance.keydown));
    final subscription_0 = this._MaterialSelectItemComponent_1_6.trigger.listen(this.eventHandler0(_ctx.onCustomClicked));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((1 <= nodeIndex) && (nodeIndex <= 5))) {
      if (identical(token, import39.FocusableItem)) {
        return this._FocusItemDirective_1_5.instance;
      }
      if (((identical(token, import30.SelectionItem) || identical(token, import28.HasDisabled)) || identical(token, import29.HasRenderer))) {
        return this._MaterialSelectItemComponent_1_6;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_1_6, 'closeOnActivate', false);
      }
      this._MaterialSelectItemComponent_1_6.closeOnActivate = false /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:868:893 */;
      changed = true;
    }
    final currVal_0 = _ctx.isCustomRangeSelected;
    if (import13.checkBinding(this._expr_0, currVal_0, 'isCustomRangeSelected', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_1_6, 'selected', currVal_0);
      }
      this._MaterialSelectItemComponent_1_6.selected = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:807:841 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', ((_ctx.isBasic ?? false) && (_ctx.isCustomRangeSelected ?? false)));
    }
    this._NgIf_4_9.ngIf = (((_ctx.isBasic ?? false) && (_ctx.isCustomRangeSelected ?? false)) ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1086:1126 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_5_9, 'ngIf', _ctx.isBasic);
    }
    this._NgIf_5_9.ngIf = (_ctx.isBasic ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1253:1268 */;
    this._FocusItemDirective_1_5.detectHostChanges(this._compView_1, this._el_1);
    this._compView_1.detectHostChanges(firstCheck);
    final currVal_2 = ((_ctx.isBasic ?? false) && ((!(_ctx.isCustomRangeSelected ?? false)) ?? false));
    if (import13.checkBinding(this._expr_2, currVal_2, 'isBasic && !isCustomRangeSelected', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      import10.updateRenderClass(this._el_2, 'custom-tab-left', (currVal_2 ?? false)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:906:965 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = ((_ctx.isBasic ?? false) && (_ctx.isCustomRangeSelected ?? false));
    if (import13.checkBinding(this._expr_3, currVal_3, 'isBasic && isCustomRangeSelected', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      import10.updateRenderClass(this._el_2, 'custom_tab-left-selected', (currVal_3 ?? false)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:977:1044 */;
      this._expr_3 = currVal_3;
    }
    this._appEl_4.detectChangesInNestedViews();
    this._appEl_5.detectChangesInNestedViews();
    this._textBinding_3.updateText(import40.interpolateString0(import2.DateRangeEditorComponent.customRangeMsg)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1054:1072 */;
    this._compView_1.detectChangesDeprecated();
  }

  @override
  void dirtyParentQueriesInternal() {
    import9.unsafeCast<_ViewDateRangeEditorComponent1>((this.parentView!))._query_SelectionItem_0_1_isDirty = true;
    import9.unsafeCast<_ViewDateRangeEditorComponent1>((this.parentView!))._query_FocusableItem_0_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._appEl_4.destroyNestedViews();
    this._appEl_5.destroyNestedViews();
    this._compView_1.destroyInternalState();
    this._MaterialSelectItemComponent_1_6.ngOnDestroy();
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent3(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent3(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent4 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  final import32.TextBinding _textBinding_1 = import32.TextBinding();
  _ViewDateRangeEditorComponent4(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'custom_range_desc');
    this.addShimC(_el_0);
    import10.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import40.interpolateString0(_ctx.customRangeDescription)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1177:1203 */;
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent4(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent4(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent5 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  late final import41.ViewMaterialIconComponent0 _compView_0;
  late final import42.ButtonDirectiveNgCd _ButtonDirective_0_5;
  late final import43.MaterialIconComponent _MaterialIconComponent_0_6;
  late final _el_0;
  _ViewDateRangeEditorComponent5(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import41.ViewMaterialIconComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import10.updateRenderAttribute(this._el_0, 'buttonDecorator', '');
    this.updateChildClassNonHtml(this._el_0, 'expend-more');
    import10.updateRenderAttribute(this._el_0, 'icon', 'expand_more');
    this.addShimC(this._el_0);
    this._ButtonDirective_0_5 = import42.ButtonDirectiveNgCd(import44.ButtonDirective(import10.unwrapNode(this._el_0), null));
    this._MaterialIconComponent_0_6 = import43.MaterialIconComponent(import10.unwrapNode(this._el_0));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_0, this._ButtonDirective_0_5.instance);
    }
    this._compView_0.create(this._MaterialIconComponent_0_6);
    import10.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._ButtonDirective_0_5.instance.handleClick));
    import10.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(this._ButtonDirective_0_5.instance.handleKeyPress));
    this.initRootNode(this._el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import44.ButtonDirective) && (0 == nodeIndex))) {
      return this._ButtonDirective_0_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialIconComponent_0_6, 'icon', 'expand_more');
      }
      this._MaterialIconComponent_0_6.icon = 'expand_more' /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1305:1323 */;
      changed = true;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._ButtonDirective_0_5.detectHostChanges(this._compView_0, this._el_0);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent5(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent5(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent6 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  late final ViewContainer _appEl_0;
  late final import45.NgFor _NgFor_0_9;
  Object? _expr_0;
  _ViewDateRangeEditorComponent6(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _anchor_0 = import10.createRenderAnchor();
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, viewFactory_DateRangeEditorComponent7);
    this._NgFor_0_9 = import45.NgFor(this._appEl_0, _TemplateRef_0_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_0, this._NgFor_0_9);
    }
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.presets;
    if (import13.checkBinding(this._expr_0, currVal_0, 'presets', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgFor_0_9, 'ngForOf', currVal_0);
      }
      this._NgFor_0_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1489:1519 */;
      this._expr_0 = currVal_0;
    }
    if ((!import13.debugThrowIfChanged)) {
      this._NgFor_0_9.ngDoCheck();
    }
    this._appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent6(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent6(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent7 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  late dynamic _TooltipController_0_13 = (import9.isDevMode
      ? import24.debugInjectorWrap(import46.TooltipController, () {
          return import47.createTooltipController((((this.parentView!).parentView!).parentView!).injectorGetOptional(import46.TooltipController, ((this.parentView!).parentView!).parentIndex), (((this.parentView!).parentView!).parentView!).injectorGetOptional(import48.Disposer, ((this.parentView!).parentView!).parentIndex));
        })
      : import47.createTooltipController((((this.parentView!).parentView!).parentView!).injectorGetOptional(import46.TooltipController, ((this.parentView!).parentView!).parentIndex), (((this.parentView!).parentView!).parentView!).injectorGetOptional(import48.Disposer, ((this.parentView!).parentView!).parentIndex)));
  final import32.TextBinding _textBinding_1 = import32.TextBinding();
  late final import33.ViewMaterialSelectItemComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import34.FocusItemDirectiveNgCd _FocusItemDirective_0_8;
  late final import35.MaterialSelectItemComponent _MaterialSelectItemComponent_0_9;
  late final import49.MaterialTooltipDirective _MaterialTooltipDirective_0_10;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_3;
  Object? _expr_4;
  late final _el_0;
  _ViewDateRangeEditorComponent7(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import33.ViewMaterialSelectItemComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import10.updateRenderAttribute(this._el_0, 'focusItem', '');
    this.addShimC(this._el_0);
    this._appEl_0 = ViewContainer(0, null, this, this._el_0);
    this._FocusItemDirective_0_8 = import34.FocusItemDirectiveNgCd(import36.FocusItemDirective(import10.unwrapNode(this._el_0), this._compView_0, null));
    this._MaterialSelectItemComponent_0_9 = (import9.isDevMode
        ? import24.debugInjectorWrap(import35.MaterialSelectItemComponent, () {
            return import35.MaterialSelectItemComponent(import10.unwrapNode(this._el_0), (((this.parentView!).parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, ((this.parentView!).parentView!).parentIndex), (((this.parentView!).parentView!).parentView!).injectorGetOptional(import38.ActivationHandler, ((this.parentView!).parentView!).parentIndex), this._compView_0, null);
          })
        : import35.MaterialSelectItemComponent(import10.unwrapNode(this._el_0), (((this.parentView!).parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, ((this.parentView!).parentView!).parentIndex), (((this.parentView!).parentView!).parentView!).injectorGetOptional(import38.ActivationHandler, ((this.parentView!).parentView!).parentIndex), this._compView_0, null));
    this._MaterialTooltipDirective_0_10 = (import9.isDevMode
        ? import24.debugInjectorWrap(import49.MaterialTooltipDirective, () {
            return import49.MaterialTooltipDirective((((this.parentView!).parentView!).parentView!).injectorGet(import50.DomPopupSourceFactory, ((this.parentView!).parentView!).parentIndex), this._appEl_0, import10.unwrapNode(this._el_0), this._appEl_0, this._compView_0, (((this.parentView!).parentView!).parentView!).injectorGet(import51.Window, ((this.parentView!).parentView!).parentIndex), null, null);
          })
        : import49.MaterialTooltipDirective((((this.parentView!).parentView!).parentView!).injectorGet(import50.DomPopupSourceFactory, ((this.parentView!).parentView!).parentIndex), this._appEl_0, import10.unwrapNode(this._el_0), this._appEl_0, this._compView_0, (((this.parentView!).parentView!).parentView!).injectorGet(import51.Window, ((this.parentView!).parentView!).parentIndex), null, null));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_0, this._FocusItemDirective_0_8.instance);
      import12.Inspector.instance.registerDirective(this._el_0, this._MaterialTooltipDirective_0_10);
    }
    final _anchor_2 = import10.createRenderAnchor();
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_DateRangeEditorComponent8);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    this._compView_0.createAndProject(this._MaterialSelectItemComponent_0_9, [
      <Object>[this._textBinding_1.element, this._appEl_2],
    ]);
    import10.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(this._FocusItemDirective_0_8.instance.keydown));
    final subscription_0 = this._MaterialSelectItemComponent_0_9.trigger.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[this._appEl_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 2)) {
      if (identical(token, import39.FocusableItem)) {
        return this._FocusItemDirective_0_8.instance;
      }
      if (((identical(token, import30.SelectionItem) || identical(token, import28.HasDisabled)) || identical(token, import29.HasRenderer))) {
        return this._MaterialSelectItemComponent_0_9;
      }
      if (identical(token, import46.TooltipController)) {
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
    final local_preset = this.locals['\$implicit'];
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_9, 'closeOnActivate', false);
      }
      this._MaterialSelectItemComponent_0_9.closeOnActivate = false /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1905:1930 */;
      changed = true;
    }
    final currVal_0 = (!(_ctx.isValid(local_preset) ?? false));
    if (import13.checkBinding(this._expr_0, currVal_0, '!isValid(preset)', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_9, 'disabled', currVal_0);
      }
      this._MaterialSelectItemComponent_0_9.disabled = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1657:1686 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.isSelected(local_preset.range);
    if (import13.checkBinding(this._expr_1, currVal_1, 'isSelected(preset.range)', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_9, 'selected', currVal_1);
      }
      this._MaterialSelectItemComponent_0_9.selected = (currVal_1!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1841:1878 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_3 = import2.DateRangeEditorComponent.rangeDisabledTooltip;
    if (import13.checkBinding(this._expr_3, currVal_3, 'rangeDisabledTooltip', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialTooltipDirective_0_10, 'materialTooltip', currVal_3);
      }
      this._MaterialTooltipDirective_0_10.text = (currVal_3!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1774:1814 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = (!(_ctx.isValid(local_preset) ?? false));
    if (import13.checkBinding(this._expr_4, currVal_4, '!isValid(preset)', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialTooltipDirective_0_10, 'showTooltipIf', currVal_4);
      }
      this._MaterialTooltipDirective_0_10.canShow = (currVal_4!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1713:1747 */;
      this._expr_4 = currVal_4;
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._MaterialTooltipDirective_0_10.ngOnInit();
    }
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', (((local_preset.alternatives != null) ?? false) && (local_preset.alternatives.isNotEmpty ?? false)));
    }
    this._NgIf_2_9.ngIf = ((((local_preset.alternatives != null) ?? false) && (local_preset.alternatives.isNotEmpty ?? false)) ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1975:2045 */;
    this._FocusItemDirective_0_8.detectHostChanges(this._compView_0, this._el_0);
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    this._textBinding_1.updateText(import40.interpolate0(local_preset.title)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:1940:1956 */;
    this._compView_0.detectChangesDeprecated();
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialTooltipDirective_0_10.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    import9.unsafeCast<_ViewDateRangeEditorComponent1>(((this.parentView!).parentView!))._query_SelectionItem_0_1_isDirty = true;
    import9.unsafeCast<_ViewDateRangeEditorComponent1>(((this.parentView!).parentView!))._query_FocusableItem_0_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._MaterialSelectItemComponent_0_9.ngOnDestroy();
    this._MaterialTooltipDirective_0_10.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final local_preset = this.locals['\$implicit'];
    final _ctx = this.ctx;
    _ctx.onRangeClicked($event, local_preset.range);
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent7(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent7(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent8 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  late dynamic _PopupHierarchy_2_11 = import52.getHierarchy(this._MaterialPopupComponent_2_8);
  late dynamic _PopupRef_2_12 = import52.getResolvedPopupRef(this._MaterialPopupComponent_2_8);
  late final import53.ViewMaterialButtonComponent0 _compView_0;
  late final dynamic _AcxDarkTheme_0_5;
  late final import54.MaterialButtonComponent _MaterialButtonComponent_0_6;
  late final import55.PopupSourceDirective _PopupSourceDirective_0_7;
  late final import41.ViewMaterialIconComponent0 _compView_1;
  late final import43.MaterialIconComponent _MaterialIconComponent_1_5;
  late final import56.ViewMaterialPopupComponent0 _compView_2;
  late final ViewContainer _appEl_2;
  late final import52.MaterialPopupComponent _MaterialPopupComponent_2_8;
  late final ViewContainer _appEl_3;
  late final import45.NgFor _NgFor_3_9;
  Object? _expr_5;
  Object? _expr_6;
  _ViewDateRangeEditorComponent8(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import53.ViewMaterialButtonComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import10.updateRenderAttribute(_el_0, 'alignPositionX', 'after');
    import10.updateRenderAttribute(_el_0, 'alignPositionY', 'start');
    this.updateChildClassNonHtml(_el_0, 'preset-dropdown-button');
    import10.updateRenderAttribute(_el_0, 'icon', '');
    import10.updateRenderAttribute(_el_0, 'popupSource', '');
    this.addShimC(_el_0);
    this._AcxDarkTheme_0_5 = (import9.isDevMode
        ? import24.debugInjectorWrap(import57.AcxDarkTheme, () {
            return import57.AcxDarkTheme(((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(const import58.OpaqueToken<Object>('acxDarkTheme'), (((this.parentView!).parentView!).parentView!).parentIndex));
          })
        : import57.AcxDarkTheme(((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(const import58.OpaqueToken<Object>('acxDarkTheme'), (((this.parentView!).parentView!).parentView!).parentIndex)));
    this._MaterialButtonComponent_0_6 = import54.MaterialButtonComponent(import10.unwrapNode(_el_0), this._AcxDarkTheme_0_5, this._compView_0, null);
    this._PopupSourceDirective_0_7 = (import9.isDevMode
        ? import24.debugInjectorWrap(import55.PopupSourceDirective, () {
            return import55.PopupSourceDirective(((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import50.DomPopupSourceFactory, (((this.parentView!).parentView!).parentView!).parentIndex), import10.unwrapNode(_el_0), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import60.ReferenceDirective, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import61.Focusable, (((this.parentView!).parentView!).parentView!).parentIndex), null);
          })
        : import55.PopupSourceDirective(((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import50.DomPopupSourceFactory, (((this.parentView!).parentView!).parentView!).parentIndex), import10.unwrapNode(_el_0), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import60.ReferenceDirective, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import61.Focusable, (((this.parentView!).parentView!).parentView!).parentIndex), null));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_0, this._PopupSourceDirective_0_7);
    }
    this._compView_1 = import41.ViewMaterialIconComponent0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    import10.updateRenderAttribute(_el_1, 'icon', 'arrow_drop_down');
    this.addShimC(_el_1);
    this._MaterialIconComponent_1_5 = import43.MaterialIconComponent(import10.unwrapNode(_el_1));
    this._compView_1.create(this._MaterialIconComponent_1_5);
    this._compView_0.createAndProject(this._MaterialButtonComponent_0_6, [
      <Object>[_el_1],
    ]);
    this._compView_2 = import56.ViewMaterialPopupComponent0(this, 2);
    final _el_2 = this._compView_2.rootElement;
    this.addShimC(_el_2);
    this._appEl_2 = ViewContainer(2, null, this, _el_2);
    this._MaterialPopupComponent_2_8 = (import9.isDevMode
        ? import24.debugInjectorWrap(import52.MaterialPopupComponent, () {
            return import52.MaterialPopupComponent(((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import62.PopupHierarchy, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import52.MaterialPopupComponent, (((this.parentView!).parentView!).parentView!).parentIndex), null, ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import26.NgZone, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import63.OverlayService, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import27.DomService, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import64.ZIndexer, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(const import58.OpaqueToken<List<import65.RelativePosition>>('defaultPopupPositions'), (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(const import58.OpaqueToken<Object>('overlayRepositionLoop'), (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(const import58.OpaqueToken<Object>('overlayViewportBoundaries'), (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import66.PopupSizeProvider, (((this.parentView!).parentView!).parentView!).parentIndex), this._compView_2, this._appEl_2, ElementRef(import10.unwrapNode(_el_2)));
          })
        : import52.MaterialPopupComponent(((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import62.PopupHierarchy, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import52.MaterialPopupComponent, (((this.parentView!).parentView!).parentView!).parentIndex), null, ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import26.NgZone, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import63.OverlayService, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import27.DomService, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import64.ZIndexer, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(const import58.OpaqueToken<List<import65.RelativePosition>>('defaultPopupPositions'), (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(const import58.OpaqueToken<Object>('overlayRepositionLoop'), (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(const import58.OpaqueToken<Object>('overlayViewportBoundaries'), (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import66.PopupSizeProvider, (((this.parentView!).parentView!).parentView!).parentIndex), this._compView_2, this._appEl_2, ElementRef(import10.unwrapNode(_el_2))));
    final _anchor_3 = import10.createRenderAnchor();
    this._appEl_3 = ViewContainer(3, 2, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, viewFactory_DateRangeEditorComponent9);
    this._NgFor_3_9 = import45.NgFor(this._appEl_3, _TemplateRef_3_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_3, this._NgFor_3_9);
    }
    this._compView_2.createAndProject(this._MaterialPopupComponent_2_8, [
      const <Object>[],
      <Object>[this._appEl_3],
      const <Object>[],
    ]);
    import10.addRenderEventListener(_el_0, 'click', this.eventHandler1(this._handleEvent_0));
    import10.addRenderEventListener(_el_0, 'keypress', this.eventHandler1(this._handleEvent_1));
    final subscription_0 = this._MaterialButtonComponent_0_6.trigger.listen(this.eventHandler1(this._handleEvent_2));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_el_0, this._appEl_2]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 1)) {
      if (identical(token, import57.AcxDarkTheme)) {
        return this._AcxDarkTheme_0_5;
      }
      if (((identical(token, import54.MaterialButtonComponent) || identical(token, import44.ButtonDirective)) || identical(token, import28.HasDisabled))) {
        return this._MaterialButtonComponent_0_6;
      }
    }
    if (((2 <= nodeIndex) && (nodeIndex <= 3))) {
      if (((identical(token, import52.MaterialPopupComponent) || identical(token, import37.DropdownHandle)) || identical(token, import68.DeferredContentAware))) {
        return this._MaterialPopupComponent_2_8;
      }
      if (identical(token, import62.PopupHierarchy)) {
        return this._PopupHierarchy_2_11;
      }
      if (identical(token, import69.PopupRef)) {
        return this._PopupRef_2_12;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_menuSource = this._PopupSourceDirective_0_7;
    final local_preset = import9.unsafeCast<_ViewDateRangeEditorComponent7>((this.parentView!)).locals['\$implicit'];
    changed = false;
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._PopupSourceDirective_0_7, 'alignPositionX', 'after');
      }
      this._PopupSourceDirective_0_7.alignX = 'after' /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:2256:2278 */;
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._PopupSourceDirective_0_7, 'alignPositionY', 'start');
      }
      this._PopupSourceDirective_0_7.alignY = 'start' /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:2306:2328 */;
    }
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialIconComponent_1_5, 'icon', 'arrow_drop_down');
      }
      this._MaterialIconComponent_1_5.icon = 'arrow_drop_down' /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:2538:2560 */;
      changed = true;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_2_8, 'offsetX', 9);
      }
      this._MaterialPopupComponent_2_8.offsetX = 9 /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:2666:2679 */;
      changed = true;
      if (((0 - 4) != null)) {
        if (import12.isDevToolsEnabled) {
          import12.Inspector.instance.recordInput(this._MaterialPopupComponent_2_8, 'offsetY', (0 - 4));
        }
        this._MaterialPopupComponent_2_8.offsetY = ((0 - 4)!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:2706:2720 */;
        changed = true;
      }
    }
    final currVal_5 = local_menuSource;
    if (import13.checkBinding(this._expr_5, currVal_5, 'menuSource', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_2_8, 'source', currVal_5);
      }
      this._MaterialPopupComponent_2_8.source = (currVal_5!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:2747:2768 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    if (changed) {
      this._compView_2.markAsCheckOnce();
    }
    final currVal_6 = local_preset.alternatives;
    if (import13.checkBinding(this._expr_6, currVal_6, 'preset.alternatives', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgFor_3_9, 'ngForOf', currVal_6);
      }
      this._NgFor_3_9.ngForOf = (currVal_6!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:2804:2851 */;
      this._expr_6 = currVal_6;
    }
    if ((!import13.debugThrowIfChanged)) {
      this._NgFor_3_9.ngDoCheck();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_2.detectHostChanges(firstCheck);
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_3.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
    this._compView_1.detectChangesDeprecated();
    this._compView_2.detectChangesDeprecated();
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this._PopupSourceDirective_0_7.ngAfterViewInit();
        this._MaterialPopupComponent_2_8.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._appEl_3.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._compView_1.destroyInternalState();
    this._compView_2.destroyInternalState();
    this._PopupSourceDirective_0_7.ngOnDestroy();
    this._MaterialPopupComponent_2_8.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    $event.stopPropagation();
  }

  void _handleEvent_1($event) {
    $event.stopPropagation();
  }

  void _handleEvent_2($event) {
    final local_popup = this._MaterialPopupComponent_2_8;
    local_popup.toggle();
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent8(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent8(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent9 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  late dynamic _TooltipController_0_13 = (import9.isDevMode
      ? import24.debugInjectorWrap(import46.TooltipController, () {
          return import47.createTooltipController(import9.unsafeCast<_ViewDateRangeEditorComponent7>(((this.parentView!).parentView!))._TooltipController_0_13, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import48.Disposer, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex));
        })
      : import47.createTooltipController(import9.unsafeCast<_ViewDateRangeEditorComponent7>(((this.parentView!).parentView!))._TooltipController_0_13, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import48.Disposer, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex)));
  final import32.TextBinding _textBinding_1 = import32.TextBinding();
  late final import33.ViewMaterialSelectItemComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import35.MaterialSelectItemComponent _MaterialSelectItemComponent_0_8;
  late final import49.MaterialTooltipDirective _MaterialTooltipDirective_0_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_3;
  Object? _expr_4;
  _ViewDateRangeEditorComponent9(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import33.ViewMaterialSelectItemComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'preset-dropdown-item');
    this.addShimC(_el_0);
    this._appEl_0 = ViewContainer(0, null, this, _el_0);
    this._MaterialSelectItemComponent_0_8 = (import9.isDevMode
        ? import24.debugInjectorWrap(import35.MaterialSelectItemComponent, () {
            return import35.MaterialSelectItemComponent(import10.unwrapNode(_el_0), import9.unsafeCast<_ViewDateRangeEditorComponent8>((this.parentView!))._MaterialPopupComponent_2_8, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import38.ActivationHandler, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0, null);
          })
        : import35.MaterialSelectItemComponent(import10.unwrapNode(_el_0), import9.unsafeCast<_ViewDateRangeEditorComponent8>((this.parentView!))._MaterialPopupComponent_2_8, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import38.ActivationHandler, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0, null));
    this._MaterialTooltipDirective_0_9 = (import9.isDevMode
        ? import24.debugInjectorWrap(import49.MaterialTooltipDirective, () {
            return import49.MaterialTooltipDirective((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import50.DomPopupSourceFactory, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), this._appEl_0, import10.unwrapNode(_el_0), this._appEl_0, this._compView_0, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import51.Window, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), null, null);
          })
        : import49.MaterialTooltipDirective((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import50.DomPopupSourceFactory, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), this._appEl_0, import10.unwrapNode(_el_0), this._appEl_0, this._compView_0, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import51.Window, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), null, null));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_0, this._MaterialTooltipDirective_0_9);
    }
    this._compView_0.createAndProject(this._MaterialSelectItemComponent_0_8, [
      <Object>[this._textBinding_1.element],
    ]);
    final subscription_0 = this._MaterialSelectItemComponent_0_8.trigger.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[this._appEl_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 1)) {
      if (((identical(token, import30.SelectionItem) || identical(token, import28.HasDisabled)) || identical(token, import29.HasRenderer))) {
        return this._MaterialSelectItemComponent_0_8;
      }
      if (identical(token, import46.TooltipController)) {
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
    final local_alternative = this.locals['\$implicit'];
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_8, 'closeOnActivate', false);
      }
      this._MaterialSelectItemComponent_0_8.closeOnActivate = false /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:3357:3382 */;
      changed = true;
    }
    final currVal_0 = (!(_ctx.isValid(local_alternative) ?? false));
    if (import13.checkBinding(this._expr_0, currVal_0, '!isValid(alternative)', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_8, 'disabled', currVal_0);
      }
      this._MaterialSelectItemComponent_0_8.disabled = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:3051:3085 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.isAlternativePresetSelected(local_alternative);
    if (import13.checkBinding(this._expr_1, currVal_1, 'isAlternativePresetSelected(alternative)', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_8, 'selected', currVal_1);
      }
      this._MaterialSelectItemComponent_0_8.selected = (currVal_1!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:3269:3322 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_3 = import2.DateRangeEditorComponent.rangeDisabledTooltip;
    if (import13.checkBinding(this._expr_3, currVal_3, 'rangeDisabledTooltip', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialTooltipDirective_0_9, 'materialTooltip', currVal_3);
      }
      this._MaterialTooltipDirective_0_9.text = (currVal_3!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:3194:3234 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = (!(_ctx.isValid(local_alternative) ?? false));
    if (import13.checkBinding(this._expr_4, currVal_4, '!isValid(alternative)', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialTooltipDirective_0_9, 'showTooltipIf', currVal_4);
      }
      this._MaterialTooltipDirective_0_9.canShow = (currVal_4!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:3120:3159 */;
      this._expr_4 = currVal_4;
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._MaterialTooltipDirective_0_9.ngOnInit();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_0.detectChangesInNestedViews();
    this._textBinding_1.updateText(import40.interpolate0(local_alternative.shortTitle)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:3398:3424 */;
    this._compView_0.detectChangesDeprecated();
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialTooltipDirective_0_9.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    import9.unsafeCast<_ViewDateRangeEditorComponent1>(((((this.parentView!).parentView!).parentView!).parentView!))._query_SelectionItem_0_1_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._MaterialSelectItemComponent_0_8.ngOnDestroy();
    this._MaterialTooltipDirective_0_9.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final local_preset = import9.unsafeCast<_ViewDateRangeEditorComponent7>(((this.parentView!).parentView!)).locals['\$implicit'];
    final local_alternative = this.locals['\$implicit'];
    final _ctx = this.ctx;
    _ctx.onAlternativePresetClicked($event, local_preset, local_alternative);
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent9(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent9(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent10 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  late final import70.ViewMenuItemGroupsComponent0 _compView_0;
  late final import71.MenuRootDirective _MenuRootDirective_0_5;
  late final import72.MenuItemGroupsComponent _MenuItemGroupsComponent_0_7;
  Object? _expr_0;
  _ViewDateRangeEditorComponent10(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import70.ViewMenuItemGroupsComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import10.updateRenderAttribute(_el_0, 'menu-root', '');
    import10.updateRenderAttribute(_el_0, 'preventCloseOnPressLeft', '');
    this.addShimC(_el_0);
    this._MenuRootDirective_0_5 = (import9.isDevMode
        ? import24.debugInjectorWrap(import71.MenuRootDirective, () {
            return import71.MenuRootDirective(((this.parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, (this.parentView!).parentIndex));
          })
        : import71.MenuRootDirective(((this.parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, (this.parentView!).parentIndex)));
    this._MenuItemGroupsComponent_0_7 = (import9.isDevMode
        ? import24.debugInjectorWrap(import72.MenuItemGroupsComponent, () {
            return import72.MenuItemGroupsComponent(this._MenuRootDirective_0_5, this._compView_0, ((this.parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import73.IdGenerator, (this.parentView!).parentIndex));
          })
        : import72.MenuItemGroupsComponent(this._MenuRootDirective_0_5, this._compView_0, ((this.parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import73.IdGenerator, (this.parentView!).parentIndex)));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_0, this._MenuRootDirective_0_5);
    }
    this._compView_0.create(this._MenuItemGroupsComponent_0_7);
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import71.MenuRoot) && (0 == nodeIndex))) {
      return this._MenuRootDirective_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MenuItemGroupsComponent_0_7, 'preventCloseOnPressLeft', true);
      }
      this._MenuItemGroupsComponent_0_7.preventCloseOnPressLeft = true /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:3671:3694 */;
      changed = true;
    }
    final currVal_0 = _ctx.presetsMenu;
    if (import13.checkBinding(this._expr_0, currVal_0, 'presetsMenu', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MenuItemGroupsComponent_0_7, 'menu', currVal_0);
      }
      this._MenuItemGroupsComponent_0_7.menu = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:3624:3644 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._MenuItemGroupsComponent_0_7.ngOnInit();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MenuItemGroupsComponent_0_7.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MenuItemGroupsComponent_0_7.ngOnDestroy();
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent10(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent10(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent11 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  final import32.TextBinding _textBinding_4 = import32.TextBinding();
  final import32.TextBinding _textBinding_8 = import32.TextBinding();
  late final import33.ViewMaterialSelectItemComponent0 _compView_1;
  late final import35.MaterialSelectItemComponent _MaterialSelectItemComponent_1_5;
  late final import74.ViewMaterialInputComponent0 _compView_2;
  late final import75.DeferredValidator _DeferredValidator_2_5;
  late final List<Object> _NgValidators_2_6;
  late final import76.NgModel _NgModel_2_7;
  late final import77.MaterialInputComponent _MaterialInputComponent_2_9;
  late final import78.MaterialInputDefaultValueAccessor _MaterialInputDefaultValueAccessor_2_11;
  late final import33.ViewMaterialSelectItemComponent0 _compView_5;
  late final import35.MaterialSelectItemComponent _MaterialSelectItemComponent_5_5;
  late final import74.ViewMaterialInputComponent0 _compView_6;
  late final import75.DeferredValidator _DeferredValidator_6_5;
  late final List<Object> _NgValidators_6_6;
  late final import76.NgModel _NgModel_6_7;
  late final import77.MaterialInputComponent _MaterialInputComponent_6_9;
  late final import78.MaterialInputDefaultValueAccessor _MaterialInputDefaultValueAccessor_6_11;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_5;
  Object? _expr_7;
  Object? _expr_8;
  _ViewDateRangeEditorComponent11(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'days group');
    this.addShimC(_el_0);
    this._compView_1 = import33.ViewMaterialSelectItemComponent0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    import10.appendRenderChild(_el_0, _el_1);
    this.updateChildClassNonHtml(_el_1, 'days-input days-to-today');
    this.addShimC(_el_1);
    this._MaterialSelectItemComponent_1_5 = (import9.isDevMode
        ? import24.debugInjectorWrap(import35.MaterialSelectItemComponent, () {
            return import35.MaterialSelectItemComponent(import10.unwrapNode(_el_1), ((this.parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import38.ActivationHandler, (this.parentView!).parentIndex), this._compView_1, null);
          })
        : import35.MaterialSelectItemComponent(import10.unwrapNode(_el_1), ((this.parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import38.ActivationHandler, (this.parentView!).parentIndex), this._compView_1, null));
    this._compView_2 = import74.ViewMaterialInputComponent0(this, 2);
    final _el_2 = this._compView_2.rootElement;
    this.addShimC(_el_2);
    this._DeferredValidator_2_5 = import75.DeferredValidator();
    this._NgValidators_2_6 = [this._DeferredValidator_2_5];
    this._NgModel_2_7 = import76.NgModel(this._NgValidators_2_6, null);
    this._MaterialInputComponent_2_9 = import77.MaterialInputComponent(null, null, this._NgModel_2_7, this._compView_2, this._DeferredValidator_2_5);
    this._MaterialInputDefaultValueAccessor_2_11 = import78.MaterialInputDefaultValueAccessor(this._MaterialInputComponent_2_9, this._NgModel_2_7);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_2, this._NgModel_2_7);
      import12.Inspector.instance.registerDirective(_el_2, this._MaterialInputDefaultValueAccessor_2_11);
    }
    this._compView_2.createAndProject(this._MaterialInputComponent_2_9, [const <Object>[], const <Object>[]]);
    final _el_3 = import10.createRenderElement('span');
    this.addShimC(_el_3);
    import10.appendRenderChild(_el_3, this._textBinding_4.element);
    this._compView_1.createAndProject(this._MaterialSelectItemComponent_1_5, [
      <Object>[_el_2, _el_3],
    ]);
    this._compView_5 = import33.ViewMaterialSelectItemComponent0(this, 5);
    final _el_5 = this._compView_5.rootElement;
    import10.appendRenderChild(_el_0, _el_5);
    this.updateChildClassNonHtml(_el_5, 'days-input days-to-yesterday');
    this.addShimC(_el_5);
    this._MaterialSelectItemComponent_5_5 = (import9.isDevMode
        ? import24.debugInjectorWrap(import35.MaterialSelectItemComponent, () {
            return import35.MaterialSelectItemComponent(import10.unwrapNode(_el_5), ((this.parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import38.ActivationHandler, (this.parentView!).parentIndex), this._compView_5, null);
          })
        : import35.MaterialSelectItemComponent(import10.unwrapNode(_el_5), ((this.parentView!).parentView!).injectorGetOptional(import37.DropdownHandle, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import38.ActivationHandler, (this.parentView!).parentIndex), this._compView_5, null));
    this._compView_6 = import74.ViewMaterialInputComponent0(this, 6);
    final _el_6 = this._compView_6.rootElement;
    this.addShimC(_el_6);
    this._DeferredValidator_6_5 = import75.DeferredValidator();
    this._NgValidators_6_6 = [this._DeferredValidator_6_5];
    this._NgModel_6_7 = import76.NgModel(this._NgValidators_6_6, null);
    this._MaterialInputComponent_6_9 = import77.MaterialInputComponent(null, null, this._NgModel_6_7, this._compView_6, this._DeferredValidator_6_5);
    this._MaterialInputDefaultValueAccessor_6_11 = import78.MaterialInputDefaultValueAccessor(this._MaterialInputComponent_6_9, this._NgModel_6_7);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_6, this._NgModel_6_7);
      import12.Inspector.instance.registerDirective(_el_6, this._MaterialInputDefaultValueAccessor_6_11);
    }
    this._compView_6.createAndProject(this._MaterialInputComponent_6_9, [const <Object>[], const <Object>[]]);
    final _el_7 = import10.createRenderElement('span');
    this.addShimC(_el_7);
    import10.appendRenderChild(_el_7, this._textBinding_8.element);
    this._compView_5.createAndProject(this._MaterialSelectItemComponent_5_5, [
      <Object>[_el_6, _el_7],
    ]);
    final subscription_0 = this._MaterialSelectItemComponent_1_5.trigger.listen(this.eventHandler1(this._handleEvent_0));
    import10.addRenderEventListener(_el_2, 'click', this.eventHandler1(this._handleEvent_1));
    final subscription_1 = this._NgModel_2_7.update.listen(this.eventHandler1(this._handleEvent_2));
    final subscription_2 = this._MaterialSelectItemComponent_5_5.trigger.listen(this.eventHandler1(this._handleEvent_3));
    import10.addRenderEventListener(_el_6, 'click', this.eventHandler1(this._handleEvent_4));
    final subscription_3 = this._NgModel_6_7.update.listen(this.eventHandler1(this._handleEvent_5));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_el_0]), [subscription_0, subscription_1, subscription_2, subscription_3]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((1 <= nodeIndex) && (nodeIndex <= 4))) {
      if ((2 == nodeIndex)) {
        if (identical(token, import75.DeferredValidator)) {
          return this._DeferredValidator_2_5;
        }
        if (identical(token, const import58.MultiToken<Object>('NgValidators'))) {
          return this._NgValidators_2_6;
        }
        if ((identical(token, import76.NgModel) || identical(token, import79.NgControl))) {
          return this._NgModel_2_7;
        }
        if (((((identical(token, import77.MaterialInputComponent) || identical(token, import80.BaseMaterialInput)) || identical(token, import60.ReferenceDirective)) || identical(token, import61.Focusable)) || identical(token, import28.HasDisabled))) {
          return this._MaterialInputComponent_2_9;
        }
      }
      if (((identical(token, import30.SelectionItem) || identical(token, import28.HasDisabled)) || identical(token, import29.HasRenderer))) {
        return this._MaterialSelectItemComponent_1_5;
      }
    }
    if (((5 <= nodeIndex) && (nodeIndex <= 8))) {
      if ((6 == nodeIndex)) {
        if (identical(token, import75.DeferredValidator)) {
          return this._DeferredValidator_6_5;
        }
        if (identical(token, const import58.MultiToken<Object>('NgValidators'))) {
          return this._NgValidators_6_6;
        }
        if ((identical(token, import76.NgModel) || identical(token, import79.NgControl))) {
          return this._NgModel_6_7;
        }
        if (((((identical(token, import77.MaterialInputComponent) || identical(token, import80.BaseMaterialInput)) || identical(token, import60.ReferenceDirective)) || identical(token, import61.Focusable)) || identical(token, import28.HasDisabled))) {
          return this._MaterialInputComponent_6_9;
        }
      }
      if (((identical(token, import30.SelectionItem) || identical(token, import28.HasDisabled)) || identical(token, import29.HasRenderer))) {
        return this._MaterialSelectItemComponent_5_5;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_1_5, 'closeOnActivate', false);
      }
      this._MaterialSelectItemComponent_1_5.closeOnActivate = false /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:3868:3893 */;
      changed = true;
    }
    final currVal_0 = _ctx.isSelected(_ctx.daysToTodayRange);
    if (import13.checkBinding(this._expr_0, currVal_0, 'isSelected(daysToTodayRange)', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_1_5, 'selected', currVal_0);
      }
      this._MaterialSelectItemComponent_1_5.selected = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:3999:4040 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    changed = false;
    final currVal_2 = _ctx.daysToToday;
    if (import13.checkBinding(this._expr_2, currVal_2, 'daysToToday', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgModel_2_7, 'ngModel', currVal_2);
      }
      this._NgModel_2_7.model = (currVal_2!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:4064:4089 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._NgModel_2_7.ngAfterChanges();
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_2_7.ngOnInit();
    }
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialInputComponent_2_9, 'displayBottomPanel', false);
      }
      this._MaterialInputComponent_2_9.displayBottomPanel = false /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:4169:4197 */;
      changed = true;
    }
    final currVal_3 = _ctx.maxDaysInputLength;
    if (import13.checkBinding(this._expr_3, currVal_3, 'maxDaysInputLength', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialInputComponent_2_9, 'maxCount', currVal_3);
      }
      this._MaterialInputComponent_2_9.maxCount = (currVal_3!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:4220:4251 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_2.markAsCheckOnce();
    }
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_5_5, 'closeOnActivate', false);
      }
      this._MaterialSelectItemComponent_5_5.closeOnActivate = false /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:4425:4450 */;
      changed = true;
    }
    final currVal_5 = _ctx.isSelected(_ctx.daysToYesterdayRange);
    if (import13.checkBinding(this._expr_5, currVal_5, 'isSelected(daysToYesterdayRange)', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_5_5, 'selected', currVal_5);
      }
      this._MaterialSelectItemComponent_5_5.selected = (currVal_5!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:4560:4605 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    if (changed) {
      this._compView_5.markAsCheckOnce();
    }
    changed = false;
    final currVal_7 = _ctx.daysToYesterday;
    if (import13.checkBinding(this._expr_7, currVal_7, 'daysToYesterday', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgModel_6_7, 'ngModel', currVal_7);
      }
      this._NgModel_6_7.model = (currVal_7!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:4629:4658 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    if (changed) {
      this._NgModel_6_7.ngAfterChanges();
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_6_7.ngOnInit();
    }
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialInputComponent_6_9, 'displayBottomPanel', false);
      }
      this._MaterialInputComponent_6_9.displayBottomPanel = false /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:4738:4766 */;
      changed = true;
    }
    final currVal_8 = _ctx.maxDaysInputLength;
    if (import13.checkBinding(this._expr_8, currVal_8, 'maxDaysInputLength', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialInputComponent_6_9, 'maxCount', currVal_8);
      }
      this._MaterialInputComponent_6_9.maxCount = (currVal_8!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:4789:4820 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    if (changed) {
      this._compView_6.markAsCheckOnce();
    }
    this._compView_1.detectHostChanges(firstCheck);
    this._compView_2.detectHostChanges(firstCheck);
    this._compView_5.detectHostChanges(firstCheck);
    this._compView_6.detectHostChanges(firstCheck);
    this._textBinding_4.updateText(import40.interpolateString0(import2.DateRangeEditorComponent.daysToTodayMsg)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:4282:4300 */;
    this._textBinding_8.updateText(import40.interpolateString0(import2.DateRangeEditorComponent.daysToYesterdayMsg)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:4851:4873 */;
    this._compView_1.detectChangesDeprecated();
    this._compView_2.detectChangesDeprecated();
    this._compView_5.detectChangesDeprecated();
    this._compView_6.detectChangesDeprecated();
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialInputComponent_2_9.ngAfterViewInit();
        this._MaterialInputComponent_6_9.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    import9.unsafeCast<_ViewDateRangeEditorComponent1>((this.parentView!))._query_SelectionItem_0_1_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_1.destroyInternalState();
    this._compView_2.destroyInternalState();
    this._compView_5.destroyInternalState();
    this._compView_6.destroyInternalState();
    this._MaterialInputComponent_2_9.ngOnDestroy();
    this._MaterialInputDefaultValueAccessor_2_11.ngOnDestroy();
    this._MaterialSelectItemComponent_1_5.ngOnDestroy();
    this._MaterialInputComponent_6_9.ngOnDestroy();
    this._MaterialInputDefaultValueAccessor_6_11.ngOnDestroy();
    this._MaterialSelectItemComponent_5_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.onRangeClicked($event, _ctx.daysToTodayRange);
  }

  void _handleEvent_1($event) {
    $event.stopPropagation();
  }

  void _handleEvent_2($event) {
    final _ctx = this.ctx;
    _ctx.daysToToday = $event;
  }

  void _handleEvent_3($event) {
    final _ctx = this.ctx;
    _ctx.onRangeClicked($event, _ctx.daysToYesterdayRange);
  }

  void _handleEvent_4($event) {
    $event.stopPropagation();
  }

  void _handleEvent_5($event) {
    final _ctx = this.ctx;
    _ctx.daysToYesterday = $event;
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent11(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent11(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent12 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  late final import81.ViewComparisonRangeEditorComponent0 _compView_1;
  late final import82.ComparisonRangeEditorComponent _ComparisonRangeEditorComponent_1_5;
  Object? _expr_0;
  _ViewDateRangeEditorComponent12(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'comparison group');
    this.addShimC(_el_0);
    this._compView_1 = import81.ViewComparisonRangeEditorComponent0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    import10.appendRenderChild(_el_0, _el_1);
    this.addShimC(_el_1);
    this._ComparisonRangeEditorComponent_1_5 = (import9.isDevMode
        ? import24.debugInjectorWrap(import82.ComparisonRangeEditorComponent, () {
            return import82.ComparisonRangeEditorComponent(((this.parentView!).parentView!).injectorGet(import26.NgZone, (this.parentView!).parentIndex), import9.unsafeCast<_ViewDateRangeEditorComponent1>((this.parentView!))._ElementScrollHost_0_9);
          })
        : import82.ComparisonRangeEditorComponent(((this.parentView!).parentView!).injectorGet(import26.NgZone, (this.parentView!).parentIndex), import9.unsafeCast<_ViewDateRangeEditorComponent1>((this.parentView!))._ElementScrollHost_0_9));
    this._compView_1.create(this._ComparisonRangeEditorComponent_1_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.model;
    if (import13.checkBinding(this._expr_0, currVal_0, 'model', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._ComparisonRangeEditorComponent_1_5, 'model', currVal_0);
      }
      this._ComparisonRangeEditorComponent_1_5.model = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5007:5022 */;
      this._expr_0 = currVal_0;
    }
    this._compView_1.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_1.destroyInternalState();
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent12(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent12(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent13 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final import83.ViewDateRangeInputComponent0 _compView_4;
  late final import84.DateRangeInputComponent _DateRangeInputComponent_4_5;
  late final ViewContainer _appEl_5;
  late final NgIf _NgIf_5_9;
  late final ViewContainer _appEl_6;
  late final NgIf _NgIf_6_9;
  late final ViewContainer _appEl_7;
  late final NgIf _NgIf_7_9;
  late final ViewContainer _appEl_8;
  late final NgIf _NgIf_8_9;
  late final ViewContainer _appEl_10;
  late final NgIf _NgIf_10_9;
  late final ViewContainer _appEl_11;
  late final NgIf _NgIf_11_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  late final _el_9;
  _ViewDateRangeEditorComponent13(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'right-column');
    this.addShimC(_el_0);
    final _anchor_1 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_DateRangeEditorComponent14);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_DateRangeEditorComponent15);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _el_3 = import10.createRenderElement('div');
    import10.appendRenderChild(_el_0, _el_3);
    this.updateChildClass(_el_3, 'range-input');
    this.addShimC(_el_3);
    this._compView_4 = import83.ViewDateRangeInputComponent0(this, 4);
    final _el_4 = this._compView_4.rootElement;
    import10.appendRenderChild(_el_3, _el_4);
    this.updateChildClassNonHtml(_el_4, 'range');
    this.addShimC(_el_4);
    this._DateRangeInputComponent_4_5 = import84.DateRangeInputComponent(this._compView_4);
    this._compView_4.create(this._DateRangeInputComponent_4_5);
    final _anchor_5 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_0, _anchor_5);
    this._appEl_5 = ViewContainer(5, 0, this, _anchor_5);
    var _TemplateRef_5_8 = TemplateRef(this._appEl_5, viewFactory_DateRangeEditorComponent16);
    this._NgIf_5_9 = NgIf(this._appEl_5, _TemplateRef_5_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_5, this._NgIf_5_9);
    }
    final _anchor_6 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_0, _anchor_6);
    this._appEl_6 = ViewContainer(6, 0, this, _anchor_6);
    var _TemplateRef_6_8 = TemplateRef(this._appEl_6, viewFactory_DateRangeEditorComponent17);
    this._NgIf_6_9 = NgIf(this._appEl_6, _TemplateRef_6_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_6, this._NgIf_6_9);
    }
    final _anchor_7 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_0, _anchor_7);
    this._appEl_7 = ViewContainer(7, 0, this, _anchor_7);
    var _TemplateRef_7_8 = TemplateRef(this._appEl_7, viewFactory_DateRangeEditorComponent18);
    this._NgIf_7_9 = NgIf(this._appEl_7, _TemplateRef_7_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_7, this._NgIf_7_9);
    }
    final _anchor_8 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_0, _anchor_8);
    this._appEl_8 = ViewContainer(8, 0, this, _anchor_8);
    var _TemplateRef_8_8 = TemplateRef(this._appEl_8, viewFactory_DateRangeEditorComponent19);
    this._NgIf_8_9 = NgIf(this._appEl_8, _TemplateRef_8_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_8, this._NgIf_8_9);
    }
    this._el_9 = import10.createRenderElement('div');
    import10.appendRenderChild(_el_0, this._el_9);
    this.updateChildClass(this._el_9, 'picker-container');
    this.addShimC(this._el_9);
    final _anchor_10 = import10.createRenderAnchor();
    import10.appendRenderChild(this._el_9, _anchor_10);
    this._appEl_10 = ViewContainer(10, 9, this, _anchor_10);
    var _TemplateRef_10_8 = TemplateRef(this._appEl_10, viewFactory_DateRangeEditorComponent20);
    this._NgIf_10_9 = NgIf(this._appEl_10, _TemplateRef_10_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_10, this._NgIf_10_9);
    }
    final _anchor_11 = import10.createRenderAnchor();
    import10.appendRenderChild(this._el_9, _anchor_11);
    this._appEl_11 = ViewContainer(11, 9, this, _anchor_11);
    var _TemplateRef_11_8 = TemplateRef(this._appEl_11, viewFactory_DateRangeEditorComponent21);
    this._NgIf_11_9 = NgIf(this._appEl_11, _TemplateRef_11_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_11, this._NgIf_11_9);
    }
    final subscription_0 = this._DateRangeInputComponent_4_5.stateChange.listen(this.eventHandler1(this._handleEvent_0));
    final subscription_1 = this._DateRangeInputComponent_4_5.rangeChange.listen(this.eventHandler1(this._handleEvent_1));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_el_0]), [subscription_0, subscription_1]);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.isBasic);
    }
    this._NgIf_1_9.ngIf = (_ctx.isBasic ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5197:5212 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', _ctx.isBasic);
    }
    this._NgIf_2_9.ngIf = (_ctx.isBasic ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5467:5482 */;
    changed = false;
    final currVal_0 = _ctx.model.rangeId;
    if (import13.checkBinding(this._expr_0, currVal_0, 'model.rangeId', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_4_5, 'rangeId', currVal_0);
      }
      this._DateRangeInputComponent_4_5.rangeId = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5754:5779 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.dateFormat;
    if (import13.checkBinding(this._expr_1, currVal_1, 'dateFormat', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_4_5, 'dateFormat', currVal_1);
      }
      this._DateRangeInputComponent_4_5.dateFormat = (currVal_1!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5802:5827 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.activeDateFormat;
    if (import13.checkBinding(this._expr_2, currVal_2, 'activeDateFormat', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_4_5, 'activeDateFormat', currVal_2);
      }
      this._DateRangeInputComponent_4_5.activeDateFormat = (currVal_2!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5850:5887 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.maxDate;
    if (import13.checkBinding(this._expr_3, currVal_3, 'maxDate', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_4_5, 'maxDate', currVal_3);
      }
      this._DateRangeInputComponent_4_5.maxDate = (currVal_3!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5644:5663 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.minDate;
    if (import13.checkBinding(this._expr_4, currVal_4, 'minDate', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_4_5, 'minDate', currVal_4);
      }
      this._DateRangeInputComponent_4_5.minDate = (currVal_4!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5602:5621 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.model.range.value;
    if (import13.checkBinding(this._expr_5, currVal_5, 'model.range.value', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_4_5, 'range', currVal_5);
      }
      this._DateRangeInputComponent_4_5.range = (currVal_5!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5965:5994 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.isClearRangeSelected;
    if (import13.checkBinding(this._expr_6, currVal_6, 'isClearRangeSelected', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_4_5, 'isClearRangeSelected', currVal_6);
      }
      this._DateRangeInputComponent_4_5.isClearRangeSelected = (currVal_6!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5686:5731 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.model.calendar.value;
    if (import13.checkBinding(this._expr_7, currVal_7, 'model.calendar.value', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_4_5, 'state', currVal_7);
      }
      this._DateRangeInputComponent_4_5.state = (currVal_7!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5910:5942 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    if (changed) {
      this._compView_4.markAsCheckOnce();
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._DateRangeInputComponent_4_5.ngOnInit();
    }
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_5_9, 'ngIf', _ctx.model.comparisonEnabled);
    }
    this._NgIf_5_9.ngIf = (_ctx.model.comparisonEnabled ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:6181:6212 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_6_9, 'ngIf', _ctx.model.comparisonEnabled);
    }
    this._NgIf_6_9.ngIf = (_ctx.model.comparisonEnabled ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:6278:6309 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_7_9, 'ngIf', _ctx.supportsMonthSelector);
    }
    this._NgIf_7_9.ngIf = (_ctx.supportsMonthSelector ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:6929:6958 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_8_9, 'ngIf', (!(_ctx.isCalendarCreated ?? false)));
    }
    this._NgIf_8_9.ngIf = ((!(_ctx.isCalendarCreated ?? false)) ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:7514:7540 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_10_9, 'ngIf', _ctx.isCalendarCreated);
    }
    this._NgIf_10_9.ngIf = (_ctx.isCalendarCreated ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:7754:7779 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_11_9, 'ngIf', _ctx.supportsMonthSelector);
    }
    this._NgIf_11_9.ngIf = (_ctx.supportsMonthSelector ?? false) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:8392:8421 */;
    final currVal_8 = _ctx.compact;
    if (import13.checkBinding(this._expr_8, currVal_8, 'compact', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      import10.updateRenderClass(this._el_9, 'compact', (currVal_8 ?? false)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:7581:7606 */;
      this._expr_8 = currVal_8;
    }
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_5.detectChangesInNestedViews();
    this._appEl_6.detectChangesInNestedViews();
    this._appEl_7.detectChangesInNestedViews();
    this._appEl_8.detectChangesInNestedViews();
    this._appEl_10.detectChangesInNestedViews();
    this._appEl_11.detectChangesInNestedViews();
    this._compView_4.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
    this._appEl_5.destroyNestedViews();
    this._appEl_6.destroyNestedViews();
    this._appEl_7.destroyNestedViews();
    this._appEl_8.destroyNestedViews();
    this._appEl_10.destroyNestedViews();
    this._appEl_11.destroyNestedViews();
    this._compView_4.destroyInternalState();
    this._DateRangeInputComponent_4_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.model.calendar.value = $event;
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.model.range.value = $event;
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent13(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent13(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent14 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  final import32.TextBinding _textBinding_2 = import32.TextBinding();
  late final import42.ButtonDirectiveNgCd _ButtonDirective_0_5;
  late final import41.ViewMaterialIconComponent0 _compView_3;
  late final import43.MaterialIconComponent _MaterialIconComponent_3_5;
  late final _el_0;
  _ViewDateRangeEditorComponent14(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._el_0 = import10.createRenderElement('div');
    import10.updateRenderAttribute(this._el_0, 'buttonDecorator', '');
    this.updateChildClass(this._el_0, 'button-decorator');
    this.addShimC(this._el_0);
    this._ButtonDirective_0_5 = import42.ButtonDirectiveNgCd(import44.ButtonDirective(import10.unwrapNode(this._el_0), null));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_0, this._ButtonDirective_0_5.instance);
    }
    final _el_1 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_0, _el_1);
    this.updateChildClass(_el_1, 'custom-tab-right');
    this.addShimC(_el_1);
    import10.appendRenderChild(_el_1, this._textBinding_2.element);
    this._compView_3 = import41.ViewMaterialIconComponent0(this, 3);
    final _el_3 = this._compView_3.rootElement;
    import10.appendRenderChild(this._el_0, _el_3);
    this.updateChildClassNonHtml(_el_3, 'expand-less');
    import10.updateRenderAttribute(_el_3, 'icon', 'expand_less');
    this.addShimC(_el_3);
    this._MaterialIconComponent_3_5 = import43.MaterialIconComponent(import10.unwrapNode(_el_3));
    this._compView_3.create(this._MaterialIconComponent_3_5);
    import10.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._ButtonDirective_0_5.instance.handleClick));
    import10.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(this._ButtonDirective_0_5.instance.handleKeyPress));
    final subscription_0 = this._ButtonDirective_0_5.instance.trigger.listen(this.eventHandler0(_ctx.disableCustomMode));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import44.ButtonDirective) && (nodeIndex <= 3))) {
      return this._ButtonDirective_0_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialIconComponent_3_5, 'icon', 'expand_less');
      }
      this._MaterialIconComponent_3_5.icon = 'expand_less' /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5415:5433 */;
      changed = true;
    }
    if (changed) {
      this._compView_3.markAsCheckOnce();
    }
    this._ButtonDirective_0_5.detectHostChanges(this, this._el_0);
    this._textBinding_2.updateText(import40.interpolateString0(import2.DateRangeEditorComponent.customRangeMsg)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:5351:5369 */;
    this._compView_3.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_3.destroyInternalState();
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent14(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent14(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent15 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  _ViewDateRangeEditorComponent15(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'content-separator');
    this.addShimC(_el_0);
    this.initRootNode(_el_0);
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent15(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent15(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent16 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  final import32.TextBinding _textBinding_1 = import32.TextBinding();
  _ViewDateRangeEditorComponent16(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'range-title');
    this.addShimC(_el_0);
    import10.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    this._textBinding_1.updateText(import40.interpolateString0(import2.DateRangeEditorComponent.comparisonHeaderMsg)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:6218:6241 */;
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent16(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent16(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent17 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  late final import83.ViewDateRangeInputComponent0 _compView_1;
  late final import84.DateRangeInputComponent _DateRangeInputComponent_1_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  _ViewDateRangeEditorComponent17(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'range-input');
    this.addShimC(_el_0);
    this._compView_1 = import83.ViewDateRangeInputComponent0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    import10.appendRenderChild(_el_0, _el_1);
    this.updateChildClassNonHtml(_el_1, 'comparison inputs');
    this.addShimC(_el_1);
    this._DateRangeInputComponent_1_5 = import84.DateRangeInputComponent(this._compView_1);
    this._compView_1.create(this._DateRangeInputComponent_1_5);
    final subscription_0 = this._DateRangeInputComponent_1_5.stateChange.listen(this.eventHandler1(this._handleEvent_0));
    final subscription_1 = this._DateRangeInputComponent_1_5.rangeChange.listen(this.eventHandler1(this._handleEvent_1));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_el_0]), [subscription_0, subscription_1]);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    final currVal_0 = (!(_ctx.isCustomComparisonValid ?? false));
    if (import13.checkBinding(this._expr_0, currVal_0, '!isCustomComparisonValid', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_1_5, 'disabled', currVal_0);
      }
      this._DateRangeInputComponent_1_5.disabled = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:6818:6855 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.model.comparisonId;
    if (import13.checkBinding(this._expr_1, currVal_1, 'model.comparisonId', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_1_5, 'rangeId', currVal_1);
      }
      this._DateRangeInputComponent_1_5.rangeId = (currVal_1!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:6545:6575 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.dateFormat;
    if (import13.checkBinding(this._expr_2, currVal_2, 'dateFormat', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_1_5, 'dateFormat', currVal_2);
      }
      this._DateRangeInputComponent_1_5.dateFormat = (currVal_2!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:6598:6623 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.activeDateFormat;
    if (import13.checkBinding(this._expr_3, currVal_3, 'activeDateFormat', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_1_5, 'activeDateFormat', currVal_3);
      }
      this._DateRangeInputComponent_1_5.activeDateFormat = (currVal_3!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:6646:6683 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.model.maxDate;
    if (import13.checkBinding(this._expr_4, currVal_4, 'model.maxDate', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_1_5, 'maxDate', currVal_4);
      }
      this._DateRangeInputComponent_1_5.maxDate = (currVal_4!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:6429:6454 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.model.minDate;
    if (import13.checkBinding(this._expr_5, currVal_5, 'model.minDate', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_1_5, 'minDate', currVal_5);
      }
      this._DateRangeInputComponent_1_5.minDate = (currVal_5!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:6381:6406 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.model.comparison.value;
    if (import13.checkBinding(this._expr_6, currVal_6, 'model.comparison.value', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_1_5, 'range', currVal_6);
      }
      this._DateRangeInputComponent_1_5.range = (currVal_6!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:6761:6795 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.isClearRangeSelected;
    if (import13.checkBinding(this._expr_7, currVal_7, 'isClearRangeSelected', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_1_5, 'isClearRangeSelected', currVal_7);
      }
      this._DateRangeInputComponent_1_5.isClearRangeSelected = (currVal_7!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:6477:6522 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.model.calendar.value;
    if (import13.checkBinding(this._expr_8, currVal_8, 'model.calendar.value', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DateRangeInputComponent_1_5, 'state', currVal_8);
      }
      this._DateRangeInputComponent_1_5.state = (currVal_8!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:6706:6738 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._DateRangeInputComponent_1_5.ngOnInit();
    }
    this._compView_1.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_1.destroyInternalState();
    this._DateRangeInputComponent_1_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.model.calendar.value = $event;
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.model.comparison.value = $event;
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent17(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent17(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent18 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  final import32.TextBinding _textBinding_3 = import32.TextBinding();
  late final import42.ButtonDirectiveNgCd _ButtonDirective_1_5;
  late final import85.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_1_6;
  late final import41.ViewMaterialIconComponent0 _compView_4;
  late final import43.MaterialIconComponent _MaterialIconComponent_4_5;
  late final import86.ViewNextPrevComponent0 _compView_5;
  late final import87.NextPrevComponent _NextPrevComponent_5_5;
  Object? _expr_0;
  Object? _expr_2;
  late final _el_1;
  late final _el_4;
  _ViewDateRangeEditorComponent18(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'month-selector-toolbar');
    this.addShimC(_el_0);
    this._el_1 = import10.createRenderElement('div');
    import10.appendRenderChild(_el_0, this._el_1);
    import10.updateRenderAttribute(this._el_1, 'buttonDecorator', '');
    this.updateChildClass(this._el_1, 'month-selector-dropdown');
    import10.updateRenderAttribute(this._el_1, 'keyboardOnlyFocusIndicator', '');
    this.addShimC(this._el_1);
    this._ButtonDirective_1_5 = import42.ButtonDirectiveNgCd(import44.ButtonDirective(import10.unwrapNode(this._el_1), null));
    this._KeyboardOnlyFocusIndicatorDirective_1_6 = (import9.isDevMode
        ? import24.debugInjectorWrap(import85.KeyboardOnlyFocusIndicatorDirective, () {
            return import85.KeyboardOnlyFocusIndicatorDirective(import10.unwrapNode(this._el_1), ((this.parentView!).parentView!).injectorGet(import27.DomService, (this.parentView!).parentIndex));
          })
        : import85.KeyboardOnlyFocusIndicatorDirective(import10.unwrapNode(this._el_1), ((this.parentView!).parentView!).injectorGet(import27.DomService, (this.parentView!).parentIndex)));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_1, this._ButtonDirective_1_5.instance);
      import12.Inspector.instance.registerDirective(this._el_1, this._KeyboardOnlyFocusIndicatorDirective_1_6);
    }
    final _el_2 = import10.createRenderElement('span');
    import10.appendRenderChild(this._el_1, _el_2);
    this.updateChildClass(_el_2, 'visible-month');
    this.addShimC(_el_2);
    import10.appendRenderChild(_el_2, this._textBinding_3.element);
    this._compView_4 = import41.ViewMaterialIconComponent0(this, 4);
    this._el_4 = this._compView_4.rootElement;
    import10.appendRenderChild(this._el_1, this._el_4);
    this.updateChildClassNonHtml(this._el_4, 'month-selector-dropdown-icon');
    import10.updateRenderAttribute(this._el_4, 'icon', 'arrow_drop_down');
    this.addShimC(this._el_4);
    this._MaterialIconComponent_4_5 = import43.MaterialIconComponent(import10.unwrapNode(this._el_4));
    this._compView_4.create(this._MaterialIconComponent_4_5);
    this._compView_5 = import86.ViewNextPrevComponent0(this, 5);
    final _el_5 = this._compView_5.rootElement;
    import10.appendRenderChild(_el_0, _el_5);
    this.updateChildClassNonHtml(_el_5, 'next-prev-range');
    this.addShimC(_el_5);
    this._NextPrevComponent_5_5 = import87.NextPrevComponent(this._compView_5);
    this._compView_5.create(this._NextPrevComponent_5_5);
    import10.addRenderEventListener(this._el_1, 'click', this.eventHandler1(this._handleEvent_0));
    import10.addRenderEventListener(this._el_1, 'keypress', this.eventHandler1(this._ButtonDirective_1_5.instance.handleKeyPress));
    import10.addRenderEventListener(this._el_1, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_1_6.keydown));
    import10.addRenderEventListener(this._el_1, 'blur', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_1_6.resetOutline));
    import10.addRenderEventListener(this._el_1, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_1_6.onMouseInteraction));
    import10.addRenderEventListener(this._el_1, 'focus', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_1_6.onFocus));
    final subscription_0 = this._ButtonDirective_1_5.instance.trigger.listen(this.eventHandler0(_ctx.onMonthSelectorDropdownClicked));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import44.ButtonDirective) && ((1 <= nodeIndex) && (nodeIndex <= 4)))) {
      return this._ButtonDirective_1_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialIconComponent_4_5, 'icon', 'arrow_drop_down');
      }
      this._MaterialIconComponent_4_5.icon = 'arrow_drop_down' /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:7198:7220 */;
      changed = true;
    }
    if (changed) {
      this._compView_4.markAsCheckOnce();
    }
    changed = false;
    final currVal_2 = _ctx.nextPrevModel;
    if (import13.checkBinding(this._expr_2, currVal_2, 'nextPrevModel', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NextPrevComponent_5_5, 'model', currVal_2);
      }
      this._NextPrevComponent_5_5.model = (currVal_2!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:7418:7441 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._compView_5.markAsCheckOnce();
    }
    this._ButtonDirective_1_5.detectHostChanges(this, this._el_1);
    final currVal_0 = _ctx.showMonthSelector;
    if (import13.checkBinding(this._expr_0, currVal_0, 'showMonthSelector', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      import10.updateRenderClass(this._el_4, 'flipped', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:7284:7319 */;
      this._expr_0 = currVal_0;
    }
    this._textBinding_3.updateText(import40.interpolateString0(_ctx.visibleMonthName)) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:7149:7169 */;
    this._compView_4.detectChangesDeprecated();
    this._compView_5.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_4.destroyInternalState();
    this._compView_5.destroyInternalState();
    this._NextPrevComponent_5_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    this._ButtonDirective_1_5.instance.handleClick($event);
    this._KeyboardOnlyFocusIndicatorDirective_1_6.onMouseInteraction();
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent18(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent18(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent19 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  _ViewDateRangeEditorComponent19(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'calendar-placeholder');
    this.addShimC(_el_0);
    this.initRootNode(_el_0);
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent19(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent19(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent20 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  late final import88.ViewMaterialCalendarPickerComponent0 _compView_0;
  late final import89.MaterialCalendarPickerComponent _MaterialCalendarPickerComponent_0_5;
  late final import90.ShowHideDirective _ShowHideDirective_0_6;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  _ViewDateRangeEditorComponent20(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import88.ViewMaterialCalendarPickerComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'picker calendar');
    import10.updateRenderAttribute(_el_0, 'mode', 'date-range');
    this.addShimC(_el_0);
    this._MaterialCalendarPickerComponent_0_5 = (import9.isDevMode
        ? import24.debugInjectorWrap(import89.MaterialCalendarPickerComponent, () {
            return import89.MaterialCalendarPickerComponent(((this.parentView!).parentView!).injectorGetOptional(const import58.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import20.Clock, (this.parentView!).parentIndex), 'date-range');
          })
        : import89.MaterialCalendarPickerComponent(((this.parentView!).parentView!).injectorGetOptional(const import58.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import20.Clock, (this.parentView!).parentIndex), 'date-range'));
    this._ShowHideDirective_0_6 = (import9.isDevMode
        ? import24.debugInjectorWrap(import90.ShowHideDirective, () {
            return import90.ShowHideDirective(import10.unwrapNode(_el_0), ((this.parentView!).parentView!).injectorGet(import27.DomService, (this.parentView!).parentIndex));
          })
        : import90.ShowHideDirective(import10.unwrapNode(_el_0), ((this.parentView!).parentView!).injectorGet(import27.DomService, (this.parentView!).parentIndex)));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_0, this._ShowHideDirective_0_6);
    }
    this._compView_0.create(this._MaterialCalendarPickerComponent_0_5);
    final subscription_0 = this._MaterialCalendarPickerComponent_0_5.visibleMonth.listen(this.eventHandler1(_ctx.onVisibleMonthChange));
    final subscription_1 = this._MaterialCalendarPickerComponent_0_5.stateChange.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_el_0]), [subscription_0, subscription_1]);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    final currVal_0 = _ctx.model.calendar.value;
    if (import13.checkBinding(this._expr_0, currVal_0, 'model.calendar.value', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialCalendarPickerComponent_0_5, 'state', currVal_0);
      }
      this._MaterialCalendarPickerComponent_0_5.state = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:7810:7842 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.allowHighlightUpdates;
    if (import13.checkBinding(this._expr_1, currVal_1, 'allowHighlightUpdates', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialCalendarPickerComponent_0_5, 'allowHighlightUpdates', currVal_1);
      }
      this._MaterialCalendarPickerComponent_0_5.allowHighlightUpdates = (currVal_1!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:7973:8020 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.minDate;
    if (import13.checkBinding(this._expr_2, currVal_2, 'minDate', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialCalendarPickerComponent_0_5, 'minDate', currVal_2);
      }
      this._MaterialCalendarPickerComponent_0_5.minDate = (currVal_2!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:7873:7892 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.maxDate;
    if (import13.checkBinding(this._expr_3, currVal_3, 'maxDate', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialCalendarPickerComponent_0_5, 'maxDate', currVal_3);
      }
      this._MaterialCalendarPickerComponent_0_5.maxDate = (currVal_3!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:7923:7942 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.compact;
    if (import13.checkBinding(this._expr_4, currVal_4, 'compact', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialCalendarPickerComponent_0_5, 'compact', currVal_4);
      }
      this._MaterialCalendarPickerComponent_0_5.compact = (currVal_4!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:8051:8070 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.movingStartMaintainsLength;
    if (import13.checkBinding(this._expr_5, currVal_5, 'movingStartMaintainsLength', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialCalendarPickerComponent_0_5, 'movingStartMaintainsLength', currVal_5);
      }
      this._MaterialCalendarPickerComponent_0_5.movingStartMaintainsLength = (currVal_5!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:8101:8158 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (changed) {
      this._MaterialCalendarPickerComponent_0_5.ngAfterChanges();
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._MaterialCalendarPickerComponent_0_5.ngOnInit();
    }
    final currVal_6 = (!(_ctx.showMonthSelector ?? false));
    if (import13.checkBinding(this._expr_6, currVal_6, '!showMonthSelector', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._ShowHideDirective_0_6, 'showhide', currVal_6);
      }
      this._ShowHideDirective_0_6.visible = (currVal_6!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:7692:7723 */;
      this._expr_6 = currVal_6;
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._ShowHideDirective_0_6.ngOnInit();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialCalendarPickerComponent_0_5.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    import9.unsafeCast<ViewDateRangeEditorComponent0>(((this.parentView!).parentView!))._viewQuery_MaterialCalendarPickerComponent_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MaterialCalendarPickerComponent_0_5.ngOnDestroy();
    this._ShowHideDirective_0_6.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.model.calendar.value = $event;
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent20(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent20(parentView, parentIndex);
}

class _ViewDateRangeEditorComponent21 extends import16.EmbeddedView<import2.DateRangeEditorComponent> {
  late final import91.ViewMaterialMonthPickerComponent0 _compView_0;
  late final import92.MaterialMonthPickerComponent _MaterialMonthPickerComponent_0_5;
  late final import90.ShowHideDirective _ShowHideDirective_0_6;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  _ViewDateRangeEditorComponent21(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import91.ViewMaterialMonthPickerComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'picker month-selector');
    import10.updateRenderAttribute(_el_0, 'mode', 'single-date');
    this.addShimC(_el_0);
    this._MaterialMonthPickerComponent_0_5 = (import9.isDevMode
        ? import24.debugInjectorWrap(import92.MaterialMonthPickerComponent, () {
            return import92.MaterialMonthPickerComponent(((this.parentView!).parentView!).injectorGetOptional(const import58.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), (this.parentView!).parentIndex), 'single-date');
          })
        : import92.MaterialMonthPickerComponent(((this.parentView!).parentView!).injectorGetOptional(const import58.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), (this.parentView!).parentIndex), 'single-date'));
    this._ShowHideDirective_0_6 = (import9.isDevMode
        ? import24.debugInjectorWrap(import90.ShowHideDirective, () {
            return import90.ShowHideDirective(import10.unwrapNode(_el_0), ((this.parentView!).parentView!).injectorGet(import27.DomService, (this.parentView!).parentIndex));
          })
        : import90.ShowHideDirective(import10.unwrapNode(_el_0), ((this.parentView!).parentView!).injectorGet(import27.DomService, (this.parentView!).parentIndex)));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_0, this._ShowHideDirective_0_6);
    }
    this._compView_0.create(this._MaterialMonthPickerComponent_0_5);
    final subscription_0 = this._MaterialMonthPickerComponent_0_5.stateChange.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_el_0]), [subscription_0]);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    final currVal_0 = _ctx.monthSelectorState;
    if (import13.checkBinding(this._expr_0, currVal_0, 'monthSelectorState', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialMonthPickerComponent_0_5, 'state', currVal_0);
      }
      this._MaterialMonthPickerComponent_0_5.state = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:8507:8537 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.minDate;
    if (import13.checkBinding(this._expr_1, currVal_1, 'minDate', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialMonthPickerComponent_0_5, 'minDate', currVal_1);
      }
      this._MaterialMonthPickerComponent_0_5.minDate = (currVal_1!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:8565:8584 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.maxDate;
    if (import13.checkBinding(this._expr_2, currVal_2, 'maxDate', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialMonthPickerComponent_0_5, 'maxDate', currVal_2);
      }
      this._MaterialMonthPickerComponent_0_5.maxDate = (currVal_2!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:8612:8631 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (changed) {
      this._MaterialMonthPickerComponent_0_5.ngAfterChanges();
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._MaterialMonthPickerComponent_0_5.ngOnInit();
    }
    final currVal_3 = _ctx.showMonthSelector;
    if (import13.checkBinding(this._expr_3, currVal_3, 'showMonthSelector', 'package:angulardart_components/material_datepicker/date_range_editor.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._ShowHideDirective_0_6, 'showhide', currVal_3);
      }
      this._ShowHideDirective_0_6.visible = (currVal_3!) /* REF:package:angulardart_components/material_datepicker/date_range_editor.html:8449:8479 */;
      this._expr_3 = currVal_3;
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._ShowHideDirective_0_6.ngOnInit();
    }
    this._compView_0.detectChangesDeprecated();
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialMonthPickerComponent_0_5.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    import9.unsafeCast<ViewDateRangeEditorComponent0>(((this.parentView!).parentView!))._viewQuery_MaterialMonthPickerComponent_1_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MaterialMonthPickerComponent_0_5.ngOnDestroy();
    this._ShowHideDirective_0_6.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.monthSelectorState = $event;
  }
}

import16.EmbeddedView<void> viewFactory_DateRangeEditorComponent21(import23.RenderView parentView, int parentIndex) {
  return _ViewDateRangeEditorComponent21(parentView, parentIndex);
}

final List<Object> styles$DateRangeEditorComponentHost = const [];

class _ViewDateRangeEditorComponentHost0 extends import93.HostView<import2.DateRangeEditorComponent> {
  @override
  void build() {
    this.componentView = ViewDateRangeEditorComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import9.isDevMode
        ? import24.debugInjectorWrap(import2.DateRangeEditorComponent, () {
            return import2.DateRangeEditorComponent(import10.unwrapNode(_el_0), this.injectorGet(import27.DomService, this.parentIndex), this.injectorGetOptional(import94.DateRangeEditorHost, this.parentIndex), this.injectorGetOptional(const import58.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex), this.injectorGet(import20.Clock, this.parentIndex));
          })
        : import2.DateRangeEditorComponent(import10.unwrapNode(_el_0), this.injectorGet(import27.DomService, this.parentIndex), this.injectorGetOptional(import94.DateRangeEditorHost, this.parentIndex), this.injectorGetOptional(const import58.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex), this.injectorGet(import20.Clock, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this.component.ngOnInit();
    }
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this.component.ngAfterViewInit();
      }
    }
  }
}

import93.HostView<import2.DateRangeEditorComponent> viewFactory_DateRangeEditorComponentHost0() {
  return _ViewDateRangeEditorComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(DateRangeEditorComponent, createDateRangeEditorComponentFactory());
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
