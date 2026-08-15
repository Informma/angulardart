// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_calendar_picker.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import '../src/material_datepicker/calendar_listener.template.dart' as _ref0;
import '../src/material_datepicker/enum_parsing.template.dart' as _ref1;

import 'package:angulardart/angulardart.template.dart' as _ref2;
import 'package:angulardart_components/material_datepicker/calendar.template.dart' as _ref3;
import 'package:angulardart_components/material_datepicker/module.template.dart' as _ref4;
import 'package:angulardart_components/model/date/date.template.dart' as _ref5;
import 'package:angulardart_components/model/observable/observable.template.dart' as _ref6;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref7;
import 'package:angulardart_components/src/dom/js_apis.template.dart' as _ref8;
import 'package:angulardart_components/utils/browser/feature_detector/feature_detector.template.dart' as _ref9;
import 'package:angulardart_components/material_datepicker/material_calendar_picker.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_calendar_picker.dart' as import2;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_for.dart' as import4;
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
import 'package:angulardart/src/runtime/text_binding.dart' as import16;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import17;
import 'package:angulardart/src/runtime/interpolate.dart' as import18;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import19;
import 'package:angulardart/src/di/errors.dart' as import20;
import 'package:angulardart_meta/src/di_tokens.dart' as import21;

import 'dart:core';

import 'package:quiver/src/time/clock.dart' as import23;

final List<Object> styles$MaterialCalendarPickerComponent = [import0.styles];

class ViewMaterialCalendarPickerComponent0 extends import1.ComponentView<import2.MaterialCalendarPickerComponent> {
  late final ViewContainer _appEl_1;
  late final import4.NgFor _NgFor_1_9;
  Object? _expr_0;
  Object? _expr_1;
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialCalendarPickerComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-calendar-picker');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/material_datepicker/material_calendar_picker.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _el_0 = import10.createRenderElement('header');
    import10.appendRenderChild(parentRenderNode, _el_0);
    this.updateChildClass(_el_0, 'header');
    this.addShimC(_el_0);
    final _anchor_1 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MaterialCalendarPickerComponent1);
    this._NgFor_1_9 = import4.NgFor(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgFor_1_9);
    }
    final _el_2 = import10.createRenderElement('div');
    import10.appendRenderChild(parentRenderNode, _el_2);
    this.updateChildClass(_el_2, 'scroll-container');
    this.addShimC(_el_2);
    final _el_3 = import10.createRenderElement('div');
    import10.appendRenderChild(_el_2, _el_3);
    this.updateChildClass(_el_3, 'calendar-container');
    this.addShimC(_el_3);
    _ctx.container = import10.unwrapNode(_el_3);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.dayNames;
    if (import13.checkBinding(this._expr_0, currVal_0, 'dayNames', 'package:angulardart_components/material_datepicker/material_calendar_picker.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForOf', currVal_0);
      }
      this._NgFor_1_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/material_calendar_picker.html:269:298 */;
      this._expr_0 = currVal_0;
    }
    if ((!import13.debugThrowIfChanged)) {
      this._NgFor_1_9.ngDoCheck();
    }
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_1 = _ctx.compact;
    if (import13.checkBinding(this._expr_1, currVal_1, null, null)) {
      import10.updateRenderClass(this.rootElement, 'compact', (currVal_1 ?? false));
      this._expr_1 = currVal_1;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialCalendarPickerComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialCalendarPickerComponentNgFactory = ComponentFactory<import2.MaterialCalendarPickerComponent>('material-calendar-picker', viewFactory_MaterialCalendarPickerComponentHost0);
ComponentFactory<import2.MaterialCalendarPickerComponent> get MaterialCalendarPickerComponentNgFactory {
  return _MaterialCalendarPickerComponentNgFactory;
}

ComponentFactory<import2.MaterialCalendarPickerComponent> createMaterialCalendarPickerComponentFactory() {
  return ComponentFactory('material-calendar-picker', viewFactory_MaterialCalendarPickerComponentHost0);
}

class _ViewMaterialCalendarPickerComponent1 extends import15.EmbeddedView<import2.MaterialCalendarPickerComponent> {
  final import16.TextBinding _textBinding_1 = import16.TextBinding();
  _ViewMaterialCalendarPickerComponent1(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'header-day');
    this.addShimC(_el_0);
    import10.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final local_name = this.locals['\$implicit'];
    this._textBinding_1.updateText(import18.interpolate0(local_name)) /* REF:package:angulardart_components/material_datepicker/material_calendar_picker.html:304:312 */;
  }
}

import15.EmbeddedView<void> viewFactory_MaterialCalendarPickerComponent1(import17.RenderView parentView, int parentIndex) {
  return _ViewMaterialCalendarPickerComponent1(parentView, parentIndex);
}

final List<Object> styles$MaterialCalendarPickerComponentHost = const [];

class _ViewMaterialCalendarPickerComponentHost0 extends import19.HostView<import2.MaterialCalendarPickerComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialCalendarPickerComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import9.isDevMode
        ? import20.debugInjectorWrap(import2.MaterialCalendarPickerComponent, () {
            return import2.MaterialCalendarPickerComponent(this.injectorGetOptional(const import21.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex), this.injectorGetOptional(import23.Clock, this.parentIndex), null);
          })
        : import2.MaterialCalendarPickerComponent(this.injectorGetOptional(const import21.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex), this.injectorGetOptional(import23.Clock, this.parentIndex), null));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
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

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import19.HostView<import2.MaterialCalendarPickerComponent> viewFactory_MaterialCalendarPickerComponentHost0() {
  return _ViewMaterialCalendarPickerComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialCalendarPickerComponent, createMaterialCalendarPickerComponentFactory());
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
