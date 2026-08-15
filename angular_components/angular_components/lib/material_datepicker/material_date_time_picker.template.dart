// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_date_time_picker.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref1;
import 'package:angulardart_components/material_datepicker/material_datepicker.template.dart' as _ref2;
import 'package:angulardart_components/material_datepicker/material_time_picker.template.dart' as _ref3;
import 'package:angulardart_components/material_datepicker/module.template.dart' as _ref4;
import 'package:angulardart_components/material_input/material_input.template.dart' as _ref5;
import 'package:angulardart_components/model/date/date.template.dart' as _ref6;
import 'package:angulardart_components/material_datepicker/material_date_time_picker.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_date_time_picker.dart' as import2;
import 'material_datepicker.template.dart' as import3;
import 'material_datepicker.dart' as import4;
import 'material_time_picker.template.dart' as import5;
import 'material_time_picker.dart' as import6;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import7;
import 'package:angulardart/src/core/linker/views/view.dart' as import8;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import10;
import 'package:angulardart/src/utilities.dart' as import11;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import12;
import 'package:angulardart/src/di/errors.dart' as import13;
import 'package:angulardart_meta/src/di_tokens.dart' as import14;

import 'dart:core';

import '../interfaces/has_disabled.dart' as import16;

import 'package:angulardart/src/runtime/check_binding.dart' as import17;
import 'package:angulardart/src/devtools.dart' as import18;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import20;

final List<Object> styles$MaterialDateTimePickerComponent = [import0.styles];

class ViewMaterialDateTimePickerComponent0 extends import1.ComponentView<import2.MaterialDateTimePickerComponent> {
  late final import3.ViewMaterialDatepickerComponent0 _compView_0;
  late final import4.MaterialDatepickerComponent _MaterialDatepickerComponent_0_5;
  late final import5.ViewMaterialTimePickerComponent0 _compView_1;
  late final import6.MaterialTimePickerComponent _MaterialTimePickerComponent_1_5;
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
  static import7.ComponentStyles? _componentStyles;
  ViewMaterialDateTimePickerComponent0(import8.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import10.renderFactory.createElement('material-date-time-picker');
  }
  static String? get _debugComponentUrl {
    return (import11.isDevMode ? 'asset:angulardart_components/lib/material_datepicker/material_date_time_picker.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    this._compView_0 = import3.ViewMaterialDatepickerComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import12.appendRenderChild(parentRenderNode, _el_0);
    this.addShimC(_el_0);
    this._MaterialDatepickerComponent_0_5 = (import11.isDevMode
        ? import13.debugInjectorWrap(import4.MaterialDatepickerComponent, () {
            return import4.MaterialDatepickerComponent(import12.unwrapNode(_el_0), null, (this.parentView!).injectorGetOptional(const import14.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex));
          })
        : import4.MaterialDatepickerComponent(import12.unwrapNode(_el_0), null, (this.parentView!).injectorGetOptional(const import14.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex)));
    this._compView_0.create(this._MaterialDatepickerComponent_0_5);
    this._compView_1 = import5.ViewMaterialTimePickerComponent0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    import12.appendRenderChild(parentRenderNode, _el_1);
    this.addShimC(_el_1);
    this._MaterialTimePickerComponent_1_5 = (import11.isDevMode
        ? import13.debugInjectorWrap(import6.MaterialTimePickerComponent, () {
            return import6.MaterialTimePickerComponent((this.parentView!).injectorGet(const import14.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex));
          })
        : import6.MaterialTimePickerComponent((this.parentView!).injectorGet(const import14.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex)));
    this._compView_1.create(this._MaterialTimePickerComponent_1_5);
    final subscription_0 = this._MaterialDatepickerComponent_0_5.dateChange.listen(this.eventHandler1(this._handleEvent_0));
    final subscription_1 = this._MaterialTimePickerComponent_1_5.timeChange.listen(this.eventHandler1(this._handleEvent_1));
    this.initSubscriptions([subscription_0, subscription_1]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import16.HasDisabled) && (0 == nodeIndex))) {
      return this._MaterialDatepickerComponent_0_5;
    }
    if ((identical(token, import16.HasDisabled) && (1 == nodeIndex))) {
      return this._MaterialTimePickerComponent_1_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    final currVal_0 = _ctx.outputDateFormat;
    if (import17.checkBinding(this._expr_0, currVal_0, 'outputDateFormat', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialDatepickerComponent_0_5, 'outputFormat', currVal_0);
      }
      this._MaterialDatepickerComponent_0_5.outputFormat = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:312:345 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.maxDate;
    if (import17.checkBinding(this._expr_1, currVal_1, 'maxDate', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialDatepickerComponent_0_5, 'maxDate', currVal_1);
      }
      this._MaterialDatepickerComponent_0_5.maxDate = (currVal_1!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:288:307 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.minDate;
    if (import17.checkBinding(this._expr_2, currVal_2, 'minDate', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialDatepickerComponent_0_5, 'minDate', currVal_2);
      }
      this._MaterialDatepickerComponent_0_5.minDate = (currVal_2!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:264:283 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.required;
    if (import17.checkBinding(this._expr_3, currVal_3, 'required', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialDatepickerComponent_0_5, 'required', currVal_3);
      }
      this._MaterialDatepickerComponent_0_5.required = (currVal_3!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:376:397 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.date;
    if (import17.checkBinding(this._expr_4, currVal_4, 'date', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialDatepickerComponent_0_5, 'date', currVal_4);
      }
      this._MaterialDatepickerComponent_0_5.date = (currVal_4!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:244:259 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.disabled;
    if (import17.checkBinding(this._expr_5, currVal_5, 'disabled', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialDatepickerComponent_0_5, 'disabled', currVal_5);
      }
      this._MaterialDatepickerComponent_0_5.disabled = (currVal_5!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:350:371 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    changed = false;
    final currVal_6 = _ctx.outputTimeFormat;
    if (import17.checkBinding(this._expr_6, currVal_6, 'outputTimeFormat', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialTimePickerComponent_1_5, 'outputFormat', currVal_6);
      }
      this._MaterialTimePickerComponent_1_5.outputFormat = (currVal_6!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:544:577 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.disabled;
    if (import17.checkBinding(this._expr_7, currVal_7, 'disabled', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialTimePickerComponent_1_5, 'disabled', currVal_7);
      }
      this._MaterialTimePickerComponent_1_5.disabled = (currVal_7!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:598:619 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.required;
    if (import17.checkBinding(this._expr_8, currVal_8, 'required', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialTimePickerComponent_1_5, 'required', currVal_8);
      }
      this._MaterialTimePickerComponent_1_5.required = (currVal_8!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:624:645 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.time;
    if (import17.checkBinding(this._expr_9, currVal_9, 'time', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialTimePickerComponent_1_5, 'time', currVal_9);
      }
      this._MaterialTimePickerComponent_1_5.time = (currVal_9!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:448:463 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.utc;
    if (import17.checkBinding(this._expr_10, currVal_10, 'utc', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialTimePickerComponent_1_5, 'utc', currVal_10);
      }
      this._MaterialTimePickerComponent_1_5.utc = (currVal_10!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:582:593 */;
      changed = true;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.maxTime;
    if (import17.checkBinding(this._expr_11, currVal_11, 'maxTime', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialTimePickerComponent_1_5, 'maxTime', currVal_11);
      }
      this._MaterialTimePickerComponent_1_5.maxTime = (currVal_11!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:492:511 */;
      changed = true;
      this._expr_11 = currVal_11;
    }
    final currVal_12 = _ctx.minTime;
    if (import17.checkBinding(this._expr_12, currVal_12, 'minTime', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialTimePickerComponent_1_5, 'minTime', currVal_12);
      }
      this._MaterialTimePickerComponent_1_5.minTime = (currVal_12!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:468:487 */;
      changed = true;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = _ctx.increment;
    if (import17.checkBinding(this._expr_13, currVal_13, 'increment', 'package:angulardart_components/material_datepicker/material_date_time_picker.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._MaterialTimePickerComponent_1_5, 'increment', currVal_13);
      }
      this._MaterialTimePickerComponent_1_5.increment = (currVal_13!) /* REF:package:angulardart_components/material_datepicker/material_date_time_picker.html:516:539 */;
      changed = true;
      this._expr_13 = currVal_13;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._MaterialTimePickerComponent_1_5.ngOnInit();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
    this._compView_1.detectChangesDeprecated();
    if ((!import17.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialDatepickerComponent_0_5.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._compView_1.destroyInternalState();
    this._MaterialTimePickerComponent_1_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.date = $event;
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.time = $event;
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_14 = import2.MaterialDateTimePickerComponent.tabIndex;
    if (import17.checkBinding(this._expr_14, currVal_14, null, null)) {
      this.rootElement.setProperty('tabIndex', currVal_14);
      this._expr_14 = currVal_14;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import7.ComponentStyles.scoped(styles$MaterialDateTimePickerComponent, _debugComponentUrl));
      if (import11.isDevMode) {
        import7.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialDateTimePickerComponentNgFactory = ComponentFactory<import2.MaterialDateTimePickerComponent>('material-date-time-picker', viewFactory_MaterialDateTimePickerComponentHost0);
ComponentFactory<import2.MaterialDateTimePickerComponent> get MaterialDateTimePickerComponentNgFactory {
  return _MaterialDateTimePickerComponentNgFactory;
}

ComponentFactory<import2.MaterialDateTimePickerComponent> createMaterialDateTimePickerComponentFactory() {
  return ComponentFactory('material-date-time-picker', viewFactory_MaterialDateTimePickerComponentHost0);
}

final List<Object> styles$MaterialDateTimePickerComponentHost = const [];

class _ViewMaterialDateTimePickerComponentHost0 extends import20.HostView<import2.MaterialDateTimePickerComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialDateTimePickerComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import11.isDevMode
        ? import13.debugInjectorWrap(import2.MaterialDateTimePickerComponent, () {
            return import2.MaterialDateTimePickerComponent(this.injectorGet(const import14.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex));
          })
        : import2.MaterialDateTimePickerComponent(this.injectorGet(const import14.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import16.HasDisabled) && (0 == nodeIndex))) {
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
}

import20.HostView<import2.MaterialDateTimePickerComponent> viewFactory_MaterialDateTimePickerComponentHost0() {
  return _ViewMaterialDateTimePickerComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialDateTimePickerComponent, createMaterialDateTimePickerComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
}
