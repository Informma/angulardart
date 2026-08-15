// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'date_range_input.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/material_datepicker/calendar.template.dart' as _ref1;
import 'package:angulardart_components/material_datepicker/date_input.template.dart' as _ref2;
import 'package:angulardart_components/material_input/material_input.template.dart' as _ref3;
import 'package:angulardart_components/model/date/date.template.dart' as _ref4;
import 'package:angulardart_components/model/observable/observable.template.dart' as _ref5;
import 'package:angulardart_components/material_datepicker/date_range_input.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'date_range_input.dart' as import2;

import 'dart:core';

import '../material_input/material_input.template.dart' as import4;
import '../material_input/deferred_validator.dart' as import5;
import '../material_input/material_input.dart' as import6;
import 'date_input.dart' as import7;
import '../material_input/material_input_default_value_accessor.dart' as import8;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import9;
import 'package:angulardart/src/core/linker/views/view.dart' as import10;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import12;
import 'package:angulardart/src/utilities.dart' as import13;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import14;
import 'package:angulardart/src/di/errors.dart' as import15;
import 'package:angulardart_meta/src/di_tokens.dart' as import16;
import 'package:quiver/src/time/clock.dart' as import17;
import 'package:angulardart/src/devtools.dart' as import18;

import '../material_input/base_material_input.dart' as import19;
import '../utils/angular/reference/reference.dart' as import20;
import '../focus/focus_interface.dart' as import21;
import '../interfaces/has_disabled.dart' as import22;

import 'package:angulardart/src/runtime/check_binding.dart' as import23;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import25;

final List<Object> styles$DateRangeInputComponent = [import0.styles];

class ViewDateRangeInputComponent0 extends import1.ComponentView<import2.DateRangeInputComponent> {
  late List<Object> _NgValidators_0_10 = [this._DeferredValidator_0_5];
  late List<Object> _NgValidators_3_10 = [this._DeferredValidator_3_5];
  late final import4.ViewMaterialInputComponent0 _compView_0;
  late final import5.DeferredValidator _DeferredValidator_0_5;
  late final import6.MaterialInputComponent _MaterialInputComponent_0_6;
  late final import7.DateInputDirective _DateInputDirective_0_7;
  late final import8.MaterialInputDefaultValueAccessor _MaterialInputDefaultValueAccessor_0_9;
  late final import4.ViewMaterialInputComponent0 _compView_3;
  late final import5.DeferredValidator _DeferredValidator_3_5;
  late final import6.MaterialInputComponent _MaterialInputComponent_3_6;
  late final import7.DateInputDirective _DateInputDirective_3_7;
  late final import8.MaterialInputDefaultValueAccessor _MaterialInputDefaultValueAccessor_3_9;
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
  late final _el_0;
  late final _el_3;
  static import9.ComponentStyles? _componentStyles;
  ViewDateRangeInputComponent0(import10.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import12.renderFactory.createElement('date-range-input');
  }
  static String? get _debugComponentUrl {
    return (import13.isDevMode ? 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._compView_0 = import4.ViewMaterialInputComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import14.appendRenderChild(parentRenderNode, this._el_0);
    this.updateChildClassNonHtml(this._el_0, 'start date-input');
    import14.updateRenderAttribute(this._el_0, 'dateParsing', '');
    this.addShimC(this._el_0);
    this._DeferredValidator_0_5 = import5.DeferredValidator();
    this._MaterialInputComponent_0_6 = import6.MaterialInputComponent(null, null, null, this._compView_0, this._DeferredValidator_0_5);
    this._DateInputDirective_0_7 = (import13.isDevMode
        ? import15.debugInjectorWrap(import7.DateInputDirective, () {
            return import7.DateInputDirective((this.parentView!).injectorGetOptional(const import16.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex), (this.parentView!).injectorGet(import17.Clock, this.parentIndex), this._MaterialInputComponent_0_6);
          })
        : import7.DateInputDirective((this.parentView!).injectorGetOptional(const import16.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex), (this.parentView!).injectorGet(import17.Clock, this.parentIndex), this._MaterialInputComponent_0_6));
    this._MaterialInputDefaultValueAccessor_0_9 = import8.MaterialInputDefaultValueAccessor(this._MaterialInputComponent_0_6, null);
    if (import18.isDevToolsEnabled) {
      import18.Inspector.instance.registerDirective(this._el_0, this._DateInputDirective_0_7);
      import18.Inspector.instance.registerDirective(this._el_0, this._MaterialInputDefaultValueAccessor_0_9);
    }
    this._compView_0.createAndProject(this._MaterialInputComponent_0_6, [const <Object>[], const <Object>[]]);
    final _el_1 = import14.createRenderElement('span');
    import14.appendRenderChild(parentRenderNode, _el_1);
    this.updateChildClass(_el_1, 'separator');
    this.addShimC(_el_1);
    final _text_2 = import14.createRenderText('—');
    import14.appendRenderChild(_el_1, _text_2);
    this._compView_3 = import4.ViewMaterialInputComponent0(this, 3);
    this._el_3 = this._compView_3.rootElement;
    import14.appendRenderChild(parentRenderNode, this._el_3);
    this.updateChildClassNonHtml(this._el_3, 'end date-input');
    import14.updateRenderAttribute(this._el_3, 'dateParsing', '');
    this.addShimC(this._el_3);
    this._DeferredValidator_3_5 = import5.DeferredValidator();
    this._MaterialInputComponent_3_6 = import6.MaterialInputComponent(null, null, null, this._compView_3, this._DeferredValidator_3_5);
    this._DateInputDirective_3_7 = (import13.isDevMode
        ? import15.debugInjectorWrap(import7.DateInputDirective, () {
            return import7.DateInputDirective((this.parentView!).injectorGetOptional(const import16.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex), (this.parentView!).injectorGet(import17.Clock, this.parentIndex), this._MaterialInputComponent_3_6);
          })
        : import7.DateInputDirective((this.parentView!).injectorGetOptional(const import16.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex), (this.parentView!).injectorGet(import17.Clock, this.parentIndex), this._MaterialInputComponent_3_6));
    this._MaterialInputDefaultValueAccessor_3_9 = import8.MaterialInputDefaultValueAccessor(this._MaterialInputComponent_3_6, null);
    if (import18.isDevToolsEnabled) {
      import18.Inspector.instance.registerDirective(this._el_3, this._DateInputDirective_3_7);
      import18.Inspector.instance.registerDirective(this._el_3, this._MaterialInputDefaultValueAccessor_3_9);
    }
    this._compView_3.createAndProject(this._MaterialInputComponent_3_6, [const <Object>[], const <Object>[]]);
    final subscription_0 = this._MaterialInputComponent_0_6.onFocus.listen(this.eventHandler0(_ctx.onStartFocused));
    final subscription_1 = this._DateInputDirective_0_7.dateChange.listen(this.eventHandler1(this._handleEvent_0));
    final subscription_2 = this._MaterialInputComponent_3_6.onFocus.listen(this.eventHandler0(_ctx.onEndFocused));
    final subscription_3 = this._DateInputDirective_3_7.dateChange.listen(this.eventHandler1(this._handleEvent_1));
    this.initSubscriptions([subscription_0, subscription_1, subscription_2, subscription_3]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import5.DeferredValidator)) {
        return this._DeferredValidator_0_5;
      }
      if (((((identical(token, import6.MaterialInputComponent) || identical(token, import19.BaseMaterialInput)) || identical(token, import20.ReferenceDirective)) || identical(token, import21.Focusable)) || identical(token, import22.HasDisabled))) {
        return this._MaterialInputComponent_0_6;
      }
      if (identical(token, const import16.MultiToken<Object>('NgValidators'))) {
        return this._NgValidators_0_10;
      }
    }
    if ((3 == nodeIndex)) {
      if (identical(token, import5.DeferredValidator)) {
        return this._DeferredValidator_3_5;
      }
      if (((((identical(token, import6.MaterialInputComponent) || identical(token, import19.BaseMaterialInput)) || identical(token, import20.ReferenceDirective)) || identical(token, import21.Focusable)) || identical(token, import22.HasDisabled))) {
        return this._MaterialInputComponent_3_6;
      }
      if (identical(token, const import16.MultiToken<Object>('NgValidators'))) {
        return this._NgValidators_3_10;
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
    final currVal_1 = _ctx.startDateMsg;
    if (import23.checkBinding(this._expr_1, currVal_1, 'startDateMsg', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialInputComponent_0_6, 'label', currVal_1);
      }
      this._MaterialInputComponent_0_6.label = (currVal_1!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:1502:1524 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.disabled;
    if (import23.checkBinding(this._expr_2, currVal_2, 'disabled', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialInputComponent_0_6, 'disabled', currVal_2);
      }
      this._MaterialInputComponent_0_6.disabled = (currVal_2!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:1664:1685 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.isDateInputRequired;
    if (import23.checkBinding(this._expr_3, currVal_3, 'isDateInputRequired', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialInputComponent_0_6, 'required', currVal_3);
      }
      this._MaterialInputComponent_0_6.required = (currVal_3!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:1453:1485 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_4 = _ctx.startDateFormat;
    if (import23.checkBinding(this._expr_4, currVal_4, 'startDateFormat', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._DateInputDirective_0_7, 'dateFormat', currVal_4);
      }
      this._DateInputDirective_0_7.dateFormat = (currVal_4!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:1329:1359 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.startMaxDate;
    if (import23.checkBinding(this._expr_5, currVal_5, 'startMaxDate', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._DateInputDirective_0_7, 'maxDate', currVal_5);
      }
      this._DateInputDirective_0_7.maxDate = (currVal_5!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:1376:1400 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.minDate;
    if (import23.checkBinding(this._expr_6, currVal_6, 'minDate', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._DateInputDirective_0_7, 'minDate', currVal_6);
      }
      this._DateInputDirective_0_7.minDate = (currVal_6!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:1417:1436 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.start;
    if (import23.checkBinding(this._expr_7, currVal_7, 'start', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._DateInputDirective_0_7, 'date', currVal_7);
      }
      this._DateInputDirective_0_7.date = (currVal_7!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:1588:1604 */;
      this._expr_7 = currVal_7;
    }
    changed = false;
    final currVal_9 = _ctx.endDateMsg;
    if (import23.checkBinding(this._expr_9, currVal_9, 'endDateMsg', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialInputComponent_3_6, 'label', currVal_9);
      }
      this._MaterialInputComponent_3_6.label = (currVal_9!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:1992:2012 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.disabled;
    if (import23.checkBinding(this._expr_10, currVal_10, 'disabled', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialInputComponent_3_6, 'disabled', currVal_10);
      }
      this._MaterialInputComponent_3_6.disabled = (currVal_10!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:2180:2201 */;
      changed = true;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.isDateInputRequired;
    if (import23.checkBinding(this._expr_11, currVal_11, 'isDateInputRequired', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialInputComponent_3_6, 'required', currVal_11);
      }
      this._MaterialInputComponent_3_6.required = (currVal_11!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:1943:1975 */;
      changed = true;
      this._expr_11 = currVal_11;
    }
    if (changed) {
      this._compView_3.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._DateInputDirective_3_7, 'rangeEnd', true);
      }
      this._DateInputDirective_3_7.rangeEnd = true /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:2105:2122 */;
    }
    final currVal_12 = _ctx.endDateFormat;
    if (import23.checkBinding(this._expr_12, currVal_12, 'endDateFormat', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._DateInputDirective_3_7, 'dateFormat', currVal_12);
      }
      this._DateInputDirective_3_7.dateFormat = (currVal_12!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:1823:1851 */;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = _ctx.maxDate;
    if (import23.checkBinding(this._expr_13, currVal_13, 'maxDate', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._DateInputDirective_3_7, 'maxDate', currVal_13);
      }
      this._DateInputDirective_3_7.maxDate = (currVal_13!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:1868:1887 */;
      this._expr_13 = currVal_13;
    }
    final currVal_14 = _ctx.endMinDate;
    if (import23.checkBinding(this._expr_14, currVal_14, 'endMinDate', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._DateInputDirective_3_7, 'minDate', currVal_14);
      }
      this._DateInputDirective_3_7.minDate = (currVal_14!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:1904:1926 */;
      this._expr_14 = currVal_14;
    }
    final currVal_15 = _ctx.end;
    if (import23.checkBinding(this._expr_15, currVal_15, 'end', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._DateInputDirective_3_7, 'date', currVal_15);
      }
      this._DateInputDirective_3_7.date = (currVal_15!) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:2074:2088 */;
      this._expr_15 = currVal_15;
    }
    final currVal_0 = _ctx.isStartActive;
    if (import23.checkBinding(this._expr_0, currVal_0, 'isStartActive', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      import14.updateRenderClass(this._el_0, 'active', (currVal_0 ?? false)) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:1541:1571 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectHostChanges(firstCheck);
    final currVal_8 = _ctx.isEndActive;
    if (import23.checkBinding(this._expr_8, currVal_8, 'isEndActive', 'asset:angulardart_components/lib/material_datepicker/date_range_input.dart')) {
      import14.updateRenderClass(this._el_3, 'active', (currVal_8 ?? false)) /* REF:asset:angulardart_components/lib/material_datepicker/date_range_input.dart:2029:2057 */;
      this._expr_8 = currVal_8;
    }
    this._compView_3.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
    this._compView_3.detectChangesDeprecated();
    if ((!import23.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialInputComponent_0_6.ngAfterViewInit();
        this._MaterialInputComponent_3_6.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._compView_3.destroyInternalState();
    this._MaterialInputComponent_0_6.ngOnDestroy();
    this._DateInputDirective_0_7.ngOnDestroy();
    this._MaterialInputDefaultValueAccessor_0_9.ngOnDestroy();
    this._MaterialInputComponent_3_6.ngOnDestroy();
    this._DateInputDirective_3_7.ngOnDestroy();
    this._MaterialInputDefaultValueAccessor_3_9.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.start = $event;
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.end = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import9.ComponentStyles.scoped(styles$DateRangeInputComponent, _debugComponentUrl));
      if (import13.isDevMode) {
        import9.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _DateRangeInputComponentNgFactory = ComponentFactory<import2.DateRangeInputComponent>('date-range-input', viewFactory_DateRangeInputComponentHost0);
ComponentFactory<import2.DateRangeInputComponent> get DateRangeInputComponentNgFactory {
  return _DateRangeInputComponentNgFactory;
}

ComponentFactory<import2.DateRangeInputComponent> createDateRangeInputComponentFactory() {
  return ComponentFactory('date-range-input', viewFactory_DateRangeInputComponentHost0);
}

final List<Object> styles$DateRangeInputComponentHost = const [];

class _ViewDateRangeInputComponentHost0 extends import25.HostView<import2.DateRangeInputComponent> {
  @override
  void build() {
    this.componentView = ViewDateRangeInputComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.DateRangeInputComponent(this.componentView);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
    if (((!import23.debugThrowIfChanged) && firstCheck)) {
      this.component.ngOnInit();
    }
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import25.HostView<import2.DateRangeInputComponent> viewFactory_DateRangeInputComponentHost0() {
  return _ViewDateRangeInputComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(DateRangeInputComponent, createDateRangeInputComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
}
