// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_time_picker.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref1;
import 'package:angulardart_components/material_datepicker/module.template.dart' as _ref2;
import 'package:angulardart_components/material_input/material_input.template.dart' as _ref3;
import 'package:angulardart_components/material_select/material_dropdown_select.template.dart' as _ref4;
import 'package:angulardart_components/model/a11y/keyboard_handler_mixin.template.dart' as _ref5;
import 'package:angulardart_components/model/selection/select.template.dart' as _ref6;
import 'package:angulardart_components/model/selection/selection_model.template.dart' as _ref7;
import 'package:angulardart_components/model/selection/string_selection_options.template.dart' as _ref8;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref9;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref10;
import 'package:angulardart_components/material_datepicker/material_time_picker.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_time_picker.dart' as import2;
import '../model/a11y/active_item.dart' as import3;
import '../material_select/material_dropdown_select.dart' as import4;
import '../material_select/material_dropdown_select.template.dart' as import5;

import 'dart:core';

import '../material_input/material_input.template.dart' as import7;
import '../material_input/deferred_validator.dart' as import8;

import 'package:angulardart_forms/src/directives/ng_model.dart' as import9;

import '../material_input/material_input.dart' as import10;
import '../material_input/material_input_default_value_accessor.dart' as import11;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import12;
import 'package:angulardart/src/core/linker/views/view.dart' as import13;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import15;
import 'package:angulardart/src/utilities.dart' as import16;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import17;
import 'package:angulardart/src/di/errors.dart' as import18;

import '../utils/id_generator/id_generator.dart' as import19;
import '../src/laminate/popup/popup_size_provider.dart' as import20;

import 'package:angulardart_meta/src/di_tokens.dart' as import21;
import 'package:angulardart/src/devtools.dart' as import22;
import 'package:angulardart_forms/src/directives/ng_control.dart' as import23;

import '../material_input/base_material_input.dart' as import24;
import '../utils/angular/reference/reference.dart' as import25;
import '../focus/focus_interface.dart' as import26;
import '../interfaces/has_disabled.dart' as import27;
import '../mixins/material_dropdown_base.dart' as import28;
import '../model/ui/has_renderer.dart' as import29;
import '../content/deferred_content_aware.dart' as import30;
import '../model/selection/selection_container.dart' as import31;
import '../material_select/activation_handler.dart' as import32;

import 'package:angulardart/src/runtime/check_binding.dart' as import33;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import35;

final List<Object> styles$MaterialTimePickerComponent = [import0.styles];

class ViewMaterialTimePickerComponent0 extends import1.ComponentView<import2.MaterialTimePickerComponent> {
  late import3.ActiveItemModel<dynamic> _ActiveItemModel_0_13 = import4.fromDropdown(this._MaterialDropdownSelectComponent_0_5);
  late final import5.ViewMaterialDropdownSelectComponent0<DateTime> _compView_0;
  late final import4.MaterialDropdownSelectComponent<DateTime> _MaterialDropdownSelectComponent_0_5;
  late final import7.ViewMaterialInputComponent0 _compView_3;
  late final import8.DeferredValidator _DeferredValidator_3_5;
  late final List<Object> _NgValidators_3_6;
  late final import9.NgModel _NgModel_3_7;
  late final import10.MaterialInputComponent _MaterialInputComponent_3_9;
  late final import11.MaterialInputDefaultValueAccessor _MaterialInputDefaultValueAccessor_3_11;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_8;
  Object? _expr_9;
  Object? _expr_10;
  Object? _expr_11;
  Object? _expr_12;
  Object? _expr_13;
  Object? _expr_14;
  Object? _expr_15;
  static import12.ComponentStyles? _componentStyles;
  ViewMaterialTimePickerComponent0(import13.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import15.renderFactory.createElement('material-time-picker');
  }
  static String? get _debugComponentUrl {
    return (import16.isDevMode ? 'asset:angulardart_components/lib/material_datepicker/material_time_picker.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._compView_0 = import5.ViewMaterialDropdownSelectComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import17.appendRenderChild(parentRenderNode, _el_0);
    this.addShimC(_el_0);
    this._MaterialDropdownSelectComponent_0_5 = (import16.isDevMode
        ? import18.debugInjectorWrap(import4.MaterialDropdownSelectComponent, () {
            return import4.MaterialDropdownSelectComponent((this.parentView!).injectorGetOptional(import19.IdGenerator, this.parentIndex), (this.parentView!).injectorGetOptional(import20.PopupSizeProvider, this.parentIndex), (this.parentView!).injectorGetOptional(const import21.OpaqueToken<Object>('isRtl'), this.parentIndex), null, null, this._compView_0, import17.unwrapNode(_el_0));
          })
        : import4.MaterialDropdownSelectComponent((this.parentView!).injectorGetOptional(import19.IdGenerator, this.parentIndex), (this.parentView!).injectorGetOptional(import20.PopupSizeProvider, this.parentIndex), (this.parentView!).injectorGetOptional(const import21.OpaqueToken<Object>('isRtl'), this.parentIndex), null, null, this._compView_0, import17.unwrapNode(_el_0)));
    final _el_1 = import17.createRenderElement('div');
    import17.updateRenderAttribute(_el_1, 'header', '');
    this.addShimC(_el_1);
    final _el_2 = import17.createRenderElement('div');
    import17.appendRenderChild(_el_1, _el_2);
    this.updateChildClass(_el_2, 'time-input-box');
    this.addShimC(_el_2);
    this._compView_3 = import7.ViewMaterialInputComponent0(this, 3);
    final _el_3 = this._compView_3.rootElement;
    import17.appendRenderChild(_el_2, _el_3);
    import17.updateRenderAttribute(_el_3, 'type', 'text');
    this.addShimC(_el_3);
    this._DeferredValidator_3_5 = import8.DeferredValidator();
    this._NgValidators_3_6 = [this._DeferredValidator_3_5];
    this._NgModel_3_7 = import9.NgModel(this._NgValidators_3_6, null);
    this._MaterialInputComponent_3_9 = import10.MaterialInputComponent('text', null, this._NgModel_3_7, this._compView_3, this._DeferredValidator_3_5);
    this._MaterialInputDefaultValueAccessor_3_11 = import11.MaterialInputDefaultValueAccessor(this._MaterialInputComponent_3_9, this._NgModel_3_7);
    if (import22.isDevToolsEnabled) {
      import22.Inspector.instance.registerDirective(_el_3, this._NgModel_3_7);
      import22.Inspector.instance.registerDirective(_el_3, this._MaterialInputDefaultValueAccessor_3_11);
    }
    this._compView_3.createAndProject(this._MaterialInputComponent_3_9, [const <Object>[], const <Object>[]]);
    this._compView_0.createAndProject(this._MaterialDropdownSelectComponent_0_5, [
      const <Object>[],
      <Object>[_el_1],
      const <Object>[],
      const <Object>[],
      const <Object>[],
      const <Object>[],
    ]);
    final subscription_0 = this._MaterialDropdownSelectComponent_0_5.visibleStream.listen(this.eventHandler1(this._handleEvent_0));
    import17.addRenderEventListener(_el_1, 'keypress', this.eventHandler1(_ctx.onKeyPress));
    import17.addRenderEventListener(_el_1, 'keydown', this.eventHandler1(_ctx.onInputBoxKeyDown));
    final subscription_1 = this._NgModel_3_7.update.listen(this.eventHandler1(this._handleEvent_1));
    final subscription_2 = this._MaterialInputComponent_3_9.onKeypress.listen(this.eventHandler1(_ctx.onTextChange));
    final subscription_3 = this._MaterialInputComponent_3_9.onBlur.listen(this.eventHandler0(_ctx.onBlur));
    this.initSubscriptions([subscription_0, subscription_1, subscription_2, subscription_3]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 3)) {
      if ((3 == nodeIndex)) {
        if (identical(token, import8.DeferredValidator)) {
          return this._DeferredValidator_3_5;
        }
        if (identical(token, const import21.MultiToken<Object>('NgValidators'))) {
          return this._NgValidators_3_6;
        }
        if ((identical(token, import9.NgModel) || identical(token, import23.NgControl))) {
          return this._NgModel_3_7;
        }
        if (((((identical(token, import10.MaterialInputComponent) || identical(token, import24.BaseMaterialInput)) || identical(token, import25.ReferenceDirective)) || identical(token, import26.Focusable)) || identical(token, import27.HasDisabled))) {
          return this._MaterialInputComponent_3_9;
        }
      }
      if ((identical(token, import3.ActiveItemModel) && (0 == nodeIndex))) {
        return this._ActiveItemModel_0_13;
      }
      if ((((((((identical(token, import4.MaterialDropdownSelectComponent) || identical(token, import28.DropdownHandle)) || identical(token, import27.HasDisabled)) || identical(token, import29.HasRenderer)) || identical(token, import30.DeferredContentAware)) || identical(token, import31.SelectionContainer)) || identical(token, import20.PopupSizeProvider)) || identical(token, import32.ActivationHandler))) {
        return this._MaterialDropdownSelectComponent_0_5;
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
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialDropdownSelectComponent_0_5, 'popupMatchInputWidth', false);
      }
      this._MaterialDropdownSelectComponent_0_5.popupMatchInputWidth = false /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:249:279 */;
      changed = true;
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialDropdownSelectComponent_0_5, 'slide', 'y');
      }
      this._MaterialDropdownSelectComponent_0_5.slide = 'y' /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:284:297 */;
      changed = true;
      if ((_ctx.renderTime != null)) {
        if (import22.isDevToolsEnabled) {
          import22.Inspector.instance.recordInput(this._MaterialDropdownSelectComponent_0_5, 'itemRenderer', _ctx.renderTime);
        }
        this._MaterialDropdownSelectComponent_0_5.itemRenderer = (_ctx.renderTime!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:365:392 */;
        changed = true;
      }
    }
    final currVal_0 = _ctx.dropdownText;
    if (import33.checkBinding(this._expr_0, currVal_0, 'dropdownText', 'package:angulardart_components/material_datepicker/material_time_picker.html')) {
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialDropdownSelectComponent_0_5, 'buttonText', currVal_0);
      }
      this._MaterialDropdownSelectComponent_0_5.buttonText = (currVal_0!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:302:329 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.disabled;
    if (import33.checkBinding(this._expr_1, currVal_1, 'disabled', 'package:angulardart_components/material_datepicker/material_time_picker.html')) {
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialDropdownSelectComponent_0_5, 'disabled', currVal_1);
      }
      this._MaterialDropdownSelectComponent_0_5.disabled = (currVal_1!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:397:418 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.selectedTime;
    if (import33.checkBinding(this._expr_2, currVal_2, 'selectedTime', 'package:angulardart_components/material_datepicker/material_time_picker.html')) {
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialDropdownSelectComponent_0_5, 'selection', currVal_2);
      }
      this._MaterialDropdownSelectComponent_0_5.selectionInput = (currVal_2!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:334:360 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_5 = _ctx.popupVisible;
    if (import33.checkBinding(this._expr_5, currVal_5, 'popupVisible', 'package:angulardart_components/material_datepicker/material_time_picker.html')) {
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialDropdownSelectComponent_0_5, 'visible', currVal_5);
      }
      this._MaterialDropdownSelectComponent_0_5.visible = (currVal_5!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:423:449 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.error;
    if (import33.checkBinding(this._expr_6, currVal_6, 'error', 'package:angulardart_components/material_datepicker/material_time_picker.html')) {
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialDropdownSelectComponent_0_5, 'error', currVal_6);
      }
      this._MaterialDropdownSelectComponent_0_5.error = (currVal_6!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:482:497 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    final currVal_8 = _ctx.timeOptions;
    if (import33.checkBinding(this._expr_8, currVal_8, 'timeOptions', 'package:angulardart_components/material_datepicker/material_time_picker.html')) {
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialDropdownSelectComponent_0_5, 'options', currVal_8);
      }
      this._MaterialDropdownSelectComponent_0_5.optionsInput = (currVal_8!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:454:477 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (changed) {
      this._MaterialDropdownSelectComponent_0_5.ngAfterChanges();
    }
    changed = false;
    final currVal_9 = _ctx.timeInputText;
    if (import33.checkBinding(this._expr_9, currVal_9, 'timeInputText', 'package:angulardart_components/material_datepicker/material_time_picker.html')) {
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._NgModel_3_7, 'ngModel', currVal_9);
      }
      this._NgModel_3_7.model = (currVal_9!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:655:682 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    if (changed) {
      this._NgModel_3_7.ngAfterChanges();
    }
    if (((!import33.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_3_7.ngOnInit();
    }
    changed = false;
    final currVal_10 = import2.MaterialTimePickerComponent.inputPlaceholderMsg;
    if (import33.checkBinding(this._expr_10, currVal_10, 'inputPlaceholderMsg', 'package:angulardart_components/material_datepicker/material_time_picker.html')) {
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialInputComponent_3_9, 'label', currVal_10);
      }
      this._MaterialInputComponent_3_9.label = (currVal_10!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:808:837 */;
      changed = true;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.displayErrorPanel;
    if (import33.checkBinding(this._expr_11, currVal_11, 'displayErrorPanel', 'package:angulardart_components/material_datepicker/material_time_picker.html')) {
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialInputComponent_3_9, 'displayBottomPanel', currVal_11);
      }
      this._MaterialInputComponent_3_9.displayBottomPanel = (currVal_11!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:848:888 */;
      changed = true;
      this._expr_11 = currVal_11;
    }
    final currVal_12 = _ctx.inputError;
    if (import33.checkBinding(this._expr_12, currVal_12, 'inputError', 'package:angulardart_components/material_datepicker/material_time_picker.html')) {
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialInputComponent_3_9, 'error', currVal_12);
      }
      this._MaterialInputComponent_3_9.error = (currVal_12!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:899:919 */;
      changed = true;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = import2.MaterialTimePickerComponent.inputPlaceholderMsg;
    if (import33.checkBinding(this._expr_13, currVal_13, 'inputPlaceholderMsg', 'package:angulardart_components/material_datepicker/material_time_picker.html')) {
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialInputComponent_3_9, 'requiredErrorMsg', currVal_13);
      }
      this._MaterialInputComponent_3_9.requiredErrorMsg = (currVal_13!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:757:797 */;
      changed = true;
      this._expr_13 = currVal_13;
    }
    final currVal_14 = _ctx.disabled;
    if (import33.checkBinding(this._expr_14, currVal_14, 'disabled', 'package:angulardart_components/material_datepicker/material_time_picker.html')) {
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialInputComponent_3_9, 'disabled', currVal_14);
      }
      this._MaterialInputComponent_3_9.disabled = (currVal_14!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:693:714 */;
      changed = true;
      this._expr_14 = currVal_14;
    }
    final currVal_15 = _ctx.required;
    if (import33.checkBinding(this._expr_15, currVal_15, 'required', 'package:angulardart_components/material_datepicker/material_time_picker.html')) {
      if (import22.isDevToolsEnabled) {
        import22.Inspector.instance.recordInput(this._MaterialInputComponent_3_9, 'required', currVal_15);
      }
      this._MaterialInputComponent_3_9.required = (currVal_15!) /* REF:package:angulardart_components/material_datepicker/material_time_picker.html:725:746 */;
      changed = true;
      this._expr_15 = currVal_15;
    }
    if (changed) {
      this._compView_3.markAsCheckOnce();
    }
    this._compView_3.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
    this._compView_3.detectChangesDeprecated();
    if ((!import33.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialInputComponent_3_9.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._compView_3.destroyInternalState();
    this._MaterialInputComponent_3_9.ngOnDestroy();
    this._MaterialInputDefaultValueAccessor_3_11.ngOnDestroy();
    this._MaterialDropdownSelectComponent_0_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.popupVisible = $event;
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.timeInputText = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import12.ComponentStyles.scoped(styles$MaterialTimePickerComponent, _debugComponentUrl));
      if (import16.isDevMode) {
        import12.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialTimePickerComponentNgFactory = ComponentFactory<import2.MaterialTimePickerComponent>('material-time-picker', viewFactory_MaterialTimePickerComponentHost0);
ComponentFactory<import2.MaterialTimePickerComponent> get MaterialTimePickerComponentNgFactory {
  return _MaterialTimePickerComponentNgFactory;
}

ComponentFactory<import2.MaterialTimePickerComponent> createMaterialTimePickerComponentFactory() {
  return ComponentFactory('material-time-picker', viewFactory_MaterialTimePickerComponentHost0);
}

final List<Object> styles$MaterialTimePickerComponentHost = const [];

class _ViewMaterialTimePickerComponentHost0 extends import35.HostView<import2.MaterialTimePickerComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialTimePickerComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import16.isDevMode
        ? import18.debugInjectorWrap(import2.MaterialTimePickerComponent, () {
            return import2.MaterialTimePickerComponent(this.injectorGet(const import21.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex));
          })
        : import2.MaterialTimePickerComponent(this.injectorGet(const import21.OpaqueToken<Object>('third_party.dart_src.acx.material_datepicker.datepickerClock'), this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import27.HasDisabled) && (0 == nodeIndex))) {
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
    if (((!import33.debugThrowIfChanged) && firstCheck)) {
      this.component.ngOnInit();
    }
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import35.HostView<import2.MaterialTimePickerComponent> viewFactory_MaterialTimePickerComponentHost0() {
  return _ViewMaterialTimePickerComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialTimePickerComponent, createMaterialTimePickerComponentFactory());
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
}
