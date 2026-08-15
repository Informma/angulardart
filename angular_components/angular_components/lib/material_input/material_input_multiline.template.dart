// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_input_multiline.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'base_material_input.template.dart' as _ref0;
import 'deferred_validator.template.dart' as _ref1;
import 'input_wrapper.template.dart' as _ref2;

import 'package:angulardart/angulardart.template.dart' as _ref3;
import 'package:angulardart_components/focus/focus.template.dart' as _ref4;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref5;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref6;
import 'package:angulardart_components/utils/angular/properties/properties.template.dart' as _ref7;
import 'package:angulardart_components/utils/angular/reference/reference.template.dart' as _ref8;
import 'package:angulardart_components/utils/browser/dom_service/angular_2.template.dart' as _ref9;
import 'package:angulardart_forms/angulardart_forms.template.dart' as _ref10;
import 'package:angulardart_components/material_input/material_input.scss.css.shim.dart' as import0;
import 'package:angulardart_components/material_input/material_input_multiline.scss.css.shim.dart' as import1;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import2;

import 'material_input_multiline.dart' as import3;

import 'package:angulardart/src/runtime/text_binding.dart' as import4;
import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart_forms/src/directives/default_value_accessor.dart' as import7;

import '../focus/focus.dart' as import8;

import 'package:angulardart_forms/src/directives/control_value_accessor.dart' as import9;
import 'package:angulardart_forms/src/directives/ng_model.dart' as import10;
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import11;
import 'package:angulardart/src/core/linker/views/view.dart' as import12;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import14;
import 'package:angulardart/src/utilities.dart' as import15;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import16;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import18;
import 'package:angulardart/src/core/linker/element_ref.dart';

import '../focus/focus_interface.dart' as import20;

import 'package:angulardart_meta/src/di_tokens.dart' as import21;
import 'package:angulardart_forms/src/directives/control_value_accessor.dart' as import22;
import 'package:angulardart_forms/src/directives/ng_control.dart' as import23;
import 'package:angulardart/src/runtime/check_binding.dart' as import24;
import 'package:angulardart/src/runtime/interpolate.dart' as import25;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import27;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import28;
import 'package:angulardart/src/common/directives/ng_switch.dart' as import29;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import30;

import 'dart:core';

import 'deferred_validator.dart' as import32;

import 'package:angulardart/src/di/errors.dart' as import33;

import '../utils/browser/dom_service/dom_service.dart' as import34;
import '../interfaces/has_disabled.dart' as import35;
import '../utils/angular/reference/reference.dart' as import36;
import 'base_material_input.dart' as import37;

final List<Object> styles$MaterialMultilineInputComponent = [import0.styles, import1.styles];

class ViewMaterialMultilineInputComponent0 extends import2.ComponentView<import3.MaterialMultilineInputComponent> {
  final import4.TextBinding _textBinding_6 = import4.TextBinding();
  late final ViewContainer _appEl_8;
  late final NgIf _NgIf_8_9;
  late final import7.DefaultValueAccessor _DefaultValueAccessor_11_5;
  late final import8.FocusableDirective _FocusableDirective_11_6;
  late final List<import9.ControlValueAccessor<dynamic>> _NgValueAccessor_11_7;
  late final import10.NgModel _NgModel_11_8;
  late final ViewContainer _appEl_16;
  late final NgIf _NgIf_16_9;
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
  Object? _expr_18;
  Object? _expr_19;
  Object? _expr_20;
  Object? _expr_21;
  Object? _expr_22;
  Object? _expr_23;
  Object? _expr_24;
  Object? _expr_25;
  late final _el_2;
  late final _el_5;
  late final _el_7;
  late final _el_11;
  late final _el_13;
  late final _el_14;
  late final _el_15;
  static import11.ComponentStyles? _componentStyles;
  ViewMaterialMultilineInputComponent0(import12.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import14.renderFactory.createElement('material-input');
  }
  static String? get _debugComponentUrl {
    return (import15.isDevMode ? 'asset:angulardart_components/lib/material_input/material_input_multiline.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _el_0 = import16.createRenderElement('div');
    import16.appendRenderChild(parentRenderNode, _el_0);
    this.updateChildClass(_el_0, 'baseline');
    this.addShimC(_el_0);
    final _el_1 = import16.createRenderElement('div');
    import16.appendRenderChild(_el_0, _el_1);
    this.updateChildClass(_el_1, 'top-section');
    this.addShimC(_el_1);
    this._el_2 = import16.createRenderElement('div');
    import16.appendRenderChild(_el_1, this._el_2);
    this.updateChildClass(this._el_2, 'input-container');
    this.addShimC(this._el_2);
    final _el_3 = import16.createRenderElement('div');
    import16.appendRenderChild(this._el_2, _el_3);
    import16.updateRenderAttribute(_el_3, 'aria-hidden', 'true');
    this.updateChildClass(_el_3, 'label');
    this.addShimC(_el_3);
    final _text_4 = import16.createRenderText(' ');
    import16.appendRenderChild(_el_3, _text_4);
    this._el_5 = import16.createRenderElement('span');
    import16.appendRenderChild(_el_3, this._el_5);
    this.updateChildClass(this._el_5, 'label-text');
    this.addShimC(this._el_5);
    import16.appendRenderChild(this._el_5, this._textBinding_6.element);
    this._el_7 = import16.createRenderElement('div');
    import16.appendRenderChild(this._el_2, this._el_7);
    this.addShimC(this._el_7);
    final _anchor_8 = import16.createRenderAnchor();
    import16.appendRenderChild(this._el_7, _anchor_8);
    this._appEl_8 = ViewContainer(8, 7, this, _anchor_8);
    var _TemplateRef_8_8 = TemplateRef(this._appEl_8, viewFactory_MaterialMultilineInputComponent1);
    this._NgIf_8_9 = NgIf(this._appEl_8, _TemplateRef_8_8);
    if (import18.isDevToolsEnabled) {
      import18.Inspector.instance.registerDirective(_anchor_8, this._NgIf_8_9);
    }
    final _el_9 = import16.createRenderElement('div');
    import16.appendRenderChild(this._el_7, _el_9);
    import16.updateRenderAttribute(_el_9, 'aria-hidden', 'true');
    this.updateChildClass(_el_9, 'line-height-measure');
    this.addShimC(_el_9);
    final _el_10 = import16.createRenderElement('br');
    import16.appendRenderChild(_el_9, _el_10);
    this.addShimC(_el_10);
    this._el_11 = import16.createRenderElement('textarea');
    import16.appendRenderChild(this._el_7, this._el_11);
    this.updateChildClass(this._el_11, 'textarea');
    import16.updateRenderAttribute(this._el_11, 'focusableElement', '');
    this.addShimC(this._el_11);
    this._DefaultValueAccessor_11_5 = import7.DefaultValueAccessor(ElementRef(import16.unwrapNode(this._el_11)));
    this._FocusableDirective_11_6 = import8.FocusableDirective(import16.unwrapNode(this._el_11));
    this._NgValueAccessor_11_7 = [this._DefaultValueAccessor_11_5];
    this._NgModel_11_8 = import10.NgModel(null, this._NgValueAccessor_11_7);
    if (import18.isDevToolsEnabled) {
      import18.Inspector.instance.registerDirective(this._el_11, this._DefaultValueAccessor_11_5);
      import18.Inspector.instance.registerDirective(this._el_11, this._FocusableDirective_11_6);
      import18.Inspector.instance.registerDirective(this._el_11, this._NgModel_11_8);
    }
    this.project(_el_1, 0);
    final _el_12 = import16.createRenderElement('div');
    import16.appendRenderChild(_el_0, _el_12);
    this.updateChildClass(_el_12, 'underline');
    this.addShimC(_el_12);
    this._el_13 = import16.createRenderElement('div');
    import16.appendRenderChild(_el_12, this._el_13);
    this.updateChildClass(this._el_13, 'disabled-underline');
    this.addShimC(this._el_13);
    this._el_14 = import16.createRenderElement('div');
    import16.appendRenderChild(_el_12, this._el_14);
    this.updateChildClass(this._el_14, 'unfocused-underline');
    this.addShimC(this._el_14);
    this._el_15 = import16.createRenderElement('div');
    import16.appendRenderChild(_el_12, this._el_15);
    this.updateChildClass(this._el_15, 'focused-underline');
    this.addShimC(this._el_15);
    final _anchor_16 = import16.createRenderAnchor();
    import16.appendRenderChild(parentRenderNode, _anchor_16);
    this._appEl_16 = ViewContainer(16, null, this, _anchor_16);
    var _TemplateRef_16_8 = TemplateRef(this._appEl_16, viewFactory_MaterialMultilineInputComponent2);
    this._NgIf_16_9 = NgIf(this._appEl_16, _TemplateRef_16_8);
    if (import18.isDevToolsEnabled) {
      import18.Inspector.instance.registerDirective(_anchor_16, this._NgIf_16_9);
    }
    import16.addRenderEventListener(this._el_11, 'blur', this.eventHandler1(this._handleEvent_0));
    import16.addRenderEventListener(this._el_11, 'change', this.eventHandler1(this._handleEvent_1));
    import16.addRenderEventListener(this._el_11, 'focus', this.eventHandler1(_ctx.inputFocusAction));
    import16.addRenderEventListener(this._el_11, 'input', this.eventHandler1(this._handleEvent_2));
    _ctx.focusable = this._FocusableDirective_11_6;
    _ctx.textareaEl = ElementRef(import16.unwrapNode(this._el_11));
    _ctx.popupSourceEl = ElementRef(import16.unwrapNode(_el_0));
    _ctx.lineHeightMeasure = ElementRef(import16.unwrapNode(_el_9));
    import16.addRenderEventListener(parentRenderNode, 'focus', this.eventHandler0(_ctx.focus));
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((11 == nodeIndex)) {
      if (identical(token, import20.Focusable)) {
        return this._FocusableDirective_11_6;
      }
      if (identical(token, const import21.MultiToken<import22.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_11_7;
      }
      if ((identical(token, import10.NgModel) || identical(token, import23.NgControl))) {
        return this._NgModel_11_8;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    if (import18.isDevToolsEnabled) {
      import18.Inspector.instance.recordInput(this._NgIf_8_9, 'ngIf', (_ctx.rows != _ctx.maxRows));
    }
    this._NgIf_8_9.ngIf = ((_ctx.rows != _ctx.maxRows) ?? false) /* REF:package:angulardart_components/material_input/material_input_multiline.html:1407:1430 */;
    changed = false;
    final currVal_17 = _ctx.inputText;
    if (import24.checkBinding(this._expr_17, currVal_17, 'inputText', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._NgModel_11_8, 'ngModel', currVal_17);
      }
      this._NgModel_11_8.model = (currVal_17!) /* REF:package:angulardart_components/material_input/material_input_multiline.html:2357:2378 */;
      changed = true;
      this._expr_17 = currVal_17;
    }
    if (changed) {
      this._NgModel_11_8.ngAfterChanges();
    }
    if (((!import24.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_11_8.ngOnInit();
    }
    if (import18.isDevToolsEnabled) {
      import18.Inspector.instance.recordInput(this._NgIf_16_9, 'ngIf', _ctx.displayBottomPanel);
    }
    this._NgIf_16_9.ngIf = (_ctx.displayBottomPanel ?? false) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3273:3299 */;
    final currVal_0 = _ctx.floatingLabel;
    if (import24.checkBinding(this._expr_0, currVal_0, 'floatingLabel', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_2, 'floated-label', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:327:364 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = (_ctx.rows > 1);
    if (import24.checkBinding(this._expr_1, currVal_1, 'rows > 1', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_5, 'multiline', (currVal_1 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:523:551 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = (!(_ctx.labelVisible ?? false));
    if (import24.checkBinding(this._expr_2, currVal_2, '!labelVisible', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_5, 'invisible', (currVal_2 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:566:599 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.labelAnimated;
    if (import24.checkBinding(this._expr_3, currVal_3, 'labelAnimated', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_5, 'animated', (currVal_3 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:614:646 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.labelAnimationReset;
    if (import24.checkBinding(this._expr_4, currVal_4, 'labelAnimationReset', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_5, 'reset', (currVal_4 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:661:696 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = ((_ctx.focused ?? false) && (_ctx.floatingLabelVisible ?? false));
    if (import24.checkBinding(this._expr_5, currVal_5, 'focused && floatingLabelVisible', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_5, 'focused', (currVal_5 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:711:760 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = ((_ctx.invalid ?? false) && (_ctx.floatingLabelVisible ?? false));
    if (import24.checkBinding(this._expr_6, currVal_6, 'invalid && floatingLabelVisible', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_5, 'invalid', (currVal_6 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:775:824 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.textAreaHeight;
    if (import24.checkBinding(this._expr_7, currVal_7, 'textAreaHeight', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderStyle(this._el_7, 'height', ((currVal_7 == null) ? null : (currVal_7.toString() + 'px'))) /* REF:package:angulardart_components/material_input/material_input_multiline.html:1122:1156 */;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.disabled;
    if (import24.checkBinding(this._expr_8, currVal_8, 'disabled', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_11, 'disabledInput', (currVal_8 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:1935:1967 */;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = (_ctx.rows == _ctx.maxRows);
    if (import24.checkBinding(this._expr_9, currVal_9, 'rows == maxRows', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_11, 'staticHeight', (currVal_9 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:1986:2024 */;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.textAreaHeight;
    if (import24.checkBinding(this._expr_10, currVal_10, 'textAreaHeight', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderStyle(this._el_11, 'height', ((currVal_10 == null) ? null : (currVal_10.toString() + 'px'))) /* REF:package:angulardart_components/material_input/material_input_multiline.html:2043:2077 */;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.inputAriaDescribedBy;
    if (import24.checkBinding(this._expr_11, currVal_11, 'inputAriaDescribedBy', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderAttribute(this._el_11, 'aria-describedby', currVal_11) /* REF:package:angulardart_components/material_input/material_input_multiline.html:2096:2142 */;
      this._expr_11 = currVal_11;
    }
    final currVal_12 = _ctx.ariaLabel;
    if (import24.checkBinding(this._expr_12, currVal_12, 'ariaLabel', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderAttribute(this._el_11, 'aria-label', currVal_12) /* REF:package:angulardart_components/material_input/material_input_multiline.html:2211:2240 */;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = _ctx.inputAutocomplete;
    if (import24.checkBinding(this._expr_13, currVal_13, 'inputAutocomplete', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderAttribute(this._el_11, 'autocomplete', currVal_13) /* REF:package:angulardart_components/material_input/material_input_multiline.html:2259:2298 */;
      this._expr_13 = currVal_13;
    }
    final currVal_14 = _ctx.disabled;
    if (import24.checkBinding(this._expr_14, currVal_14, 'disabled', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      this._el_11.setProperty('readOnly', currVal_14) /* REF:package:angulardart_components/material_input/material_input_multiline.html:2317:2338 */;
      this._expr_14 = currVal_14;
    }
    final currVal_15 = _ctx.inputTabIndex;
    if (import24.checkBinding(this._expr_15, currVal_15, 'inputTabIndex', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      this._el_11.setProperty('tabIndex', currVal_15) /* REF:package:angulardart_components/material_input/material_input_multiline.html:2729:2755 */;
      this._expr_15 = currVal_15;
    }
    final currVal_16 = _ctx.invalid;
    if (import24.checkBinding(this._expr_16, currVal_16, '{{invalid}}', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderAttribute(this._el_11, 'aria-invalid', import25.interpolate0(currVal_16)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:2161:2192 */;
      this._expr_16 = currVal_16;
    }
    final currVal_18 = (!(_ctx.disabled ?? false));
    if (import24.checkBinding(this._expr_18, currVal_18, '!disabled', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_13, 'invisible', (currVal_18 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:2914:2943 */;
      this._expr_18 = currVal_18;
    }
    final currVal_19 = _ctx.disabled;
    if (import24.checkBinding(this._expr_19, currVal_19, 'disabled', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_14, 'invisible', (currVal_19 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3002:3030 */;
      this._expr_19 = currVal_19;
    }
    final currVal_20 = _ctx.invalid;
    if (import24.checkBinding(this._expr_20, currVal_20, 'invalid', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_14, 'invalid', (currVal_20 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3031:3056 */;
      this._expr_20 = currVal_20;
    }
    final currVal_21 = (((!(_ctx.focused ?? false)) ?? false) || (_ctx.disabled ?? false));
    if (import24.checkBinding(this._expr_21, currVal_21, '!focused || disabled', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_15, 'invisible', (currVal_21 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3108:3148 */;
      this._expr_21 = currVal_21;
    }
    final currVal_22 = _ctx.invalid;
    if (import24.checkBinding(this._expr_22, currVal_22, 'invalid', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_15, 'invalid', (currVal_22 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3149:3174 */;
      this._expr_22 = currVal_22;
    }
    final currVal_23 = _ctx.underlineAnimated;
    if (import24.checkBinding(this._expr_23, currVal_23, 'underlineAnimated', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_15, 'animated', (currVal_23 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3184:3220 */;
      this._expr_23 = currVal_23;
    }
    this._appEl_8.detectChangesInNestedViews();
    this._appEl_16.detectChangesInNestedViews();
    this._textBinding_6.updateText(import25.interpolateString0(_ctx.label)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:836:845 */;
  }

  @override
  void destroyInternal() {
    this._appEl_8.destroyNestedViews();
    this._appEl_16.destroyNestedViews();
  }

  void _handleEvent_0($event) {
    final local_textareaEl = this._el_11;
    final _ctx = this.ctx;
    _ctx.inputBlurAction($event, local_textareaEl.validity.valid, local_textareaEl.validationMessage);
    this._DefaultValueAccessor_11_5.touchHandler();
  }

  void _handleEvent_1($event) {
    final local_textareaEl = this._el_11;
    final _ctx = this.ctx;
    _ctx.handleChange($event, local_textareaEl);
  }

  void _handleEvent_2($event) {
    final local_textareaEl = this._el_11;
    final _ctx = this.ctx;
    _ctx.inputKeypress(local_textareaEl.value, local_textareaEl.validity.valid, local_textareaEl.validationMessage);
    this._DefaultValueAccessor_11_5.handleChange($event.target.value);
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_24 = import3.MaterialMultilineInputComponent.hostClass;
    if (import24.checkBinding(this._expr_24, currVal_24, null, null)) {
      this.updateChildClassNonHtml(this.rootElement, currVal_24);
      this._expr_24 = currVal_24;
    }
    final currVal_25 = import3.MaterialMultilineInputComponent.hostTabIndex;
    if (import24.checkBinding(this._expr_25, currVal_25, null, null)) {
      this.rootElement.setProperty('tabIndex', currVal_25);
      this._expr_25 = currVal_25;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import11.ComponentStyles.scoped(styles$MaterialMultilineInputComponent, _debugComponentUrl));
      if (import15.isDevMode) {
        import11.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialMultilineInputComponentNgFactory = ComponentFactory<import3.MaterialMultilineInputComponent>('material-input[multiline]', viewFactory_MaterialMultilineInputComponentHost0);
ComponentFactory<import3.MaterialMultilineInputComponent> get MaterialMultilineInputComponentNgFactory {
  return _MaterialMultilineInputComponentNgFactory;
}

ComponentFactory<import3.MaterialMultilineInputComponent> createMaterialMultilineInputComponentFactory() {
  return ComponentFactory('material-input[multiline]', viewFactory_MaterialMultilineInputComponentHost0);
}

class _ViewMaterialMultilineInputComponent1 extends import27.EmbeddedView<import3.MaterialMultilineInputComponent> {
  final import4.TextBinding _textBinding_1 = import4.TextBinding();
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMaterialMultilineInputComponent1(import28.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import16.createRenderElement('div');
    import16.updateRenderAttribute(this._el_0, 'aria-hidden', 'true');
    this.updateChildClass(this._el_0, 'mirror-text');
    this.addShimC(this._el_0);
    import16.appendRenderChild(this._el_0, this._textBinding_1.element);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.minInputHeight;
    if (import24.checkBinding(this._expr_0, currVal_0, 'minInputHeight', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderStyle(this._el_0, 'min-height', ((currVal_0 == null) ? null : (currVal_0.toString() + 'px'))) /* REF:package:angulardart_components/material_input/material_input_multiline.html:1474:1512 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.maxInputHeight;
    if (import24.checkBinding(this._expr_1, currVal_1, 'maxInputHeight', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderStyle(this._el_0, 'max-height', ((currVal_1 == null) ? null : (currVal_1.toString() + 'px'))) /* REF:package:angulardart_components/material_input/material_input_multiline.html:1525:1563 */;
      this._expr_1 = currVal_1;
    }
    this._textBinding_1.updateText(import25.interpolateString0(_ctx.mirrorText)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:1575:1589 */;
  }
}

import27.EmbeddedView<void> viewFactory_MaterialMultilineInputComponent1(import28.RenderView parentView, int parentIndex) {
  return _ViewMaterialMultilineInputComponent1(parentView, parentIndex);
}

class _ViewMaterialMultilineInputComponent2 extends import27.EmbeddedView<import3.MaterialMultilineInputComponent> {
  late final import29.NgSwitch _NgSwitch_0_5;
  late final ViewContainer _appEl_1;
  late final import29.NgSwitchWhen _NgSwitchWhen_1_9;
  late final ViewContainer _appEl_2;
  late final import29.NgSwitchWhen _NgSwitchWhen_2_9;
  late final ViewContainer _appEl_3;
  late final import29.NgSwitchWhen _NgSwitchWhen_3_9;
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  _ViewMaterialMultilineInputComponent2(import28.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import16.createRenderElement('div');
    this.updateChildClass(_el_0, 'bottom-section');
    this.addShimC(_el_0);
    this._NgSwitch_0_5 = import29.NgSwitch();
    if (import18.isDevToolsEnabled) {
      import18.Inspector.instance.registerDirective(_el_0, this._NgSwitch_0_5);
    }
    final _anchor_1 = import16.createRenderAnchor();
    import16.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MaterialMultilineInputComponent3);
    this._NgSwitchWhen_1_9 = import29.NgSwitchWhen(this._appEl_1, _TemplateRef_1_8, this._NgSwitch_0_5);
    if (import18.isDevToolsEnabled) {
      import18.Inspector.instance.registerDirective(_anchor_1, this._NgSwitchWhen_1_9);
    }
    final _anchor_2 = import16.createRenderAnchor();
    import16.appendRenderChild(_el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialMultilineInputComponent4);
    this._NgSwitchWhen_2_9 = import29.NgSwitchWhen(this._appEl_2, _TemplateRef_2_8, this._NgSwitch_0_5);
    if (import18.isDevToolsEnabled) {
      import18.Inspector.instance.registerDirective(_anchor_2, this._NgSwitchWhen_2_9);
    }
    final _anchor_3 = import16.createRenderAnchor();
    import16.appendRenderChild(_el_0, _anchor_3);
    this._appEl_3 = ViewContainer(3, 0, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, viewFactory_MaterialMultilineInputComponent5);
    this._NgSwitchWhen_3_9 = import29.NgSwitchWhen(this._appEl_3, _TemplateRef_3_8, this._NgSwitch_0_5);
    if (import18.isDevToolsEnabled) {
      import18.Inspector.instance.registerDirective(_anchor_3, this._NgSwitchWhen_3_9);
    }
    final _anchor_4 = import16.createRenderAnchor();
    import16.appendRenderChild(_el_0, _anchor_4);
    this._appEl_4 = ViewContainer(4, 0, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_MaterialMultilineInputComponent6);
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import18.isDevToolsEnabled) {
      import18.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import29.NgSwitch) && (nodeIndex <= 4))) {
      return this._NgSwitch_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.bottomPanelState;
    if (import24.checkBinding(this._expr_0, currVal_0, 'bottomPanelState', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._NgSwitch_0_5, 'ngSwitch', currVal_0);
      }
      this._NgSwitch_0_5.ngSwitch = (currVal_0!) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3300:3329 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.errorState;
    if (import24.checkBinding(this._expr_1, currVal_1, 'errorState', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._NgSwitchWhen_1_9, 'ngSwitchWhen', currVal_1);
      }
      this._NgSwitchWhen_1_9.ngSwitchWhen = (currVal_1!) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3489:3515 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.hintState;
    if (import24.checkBinding(this._expr_2, currVal_2, 'hintState', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._NgSwitchWhen_2_9, 'ngSwitchWhen', currVal_2);
      }
      this._NgSwitchWhen_2_9.ngSwitchWhen = (currVal_2!) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3572:3597 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.emptyState;
    if (import24.checkBinding(this._expr_3, currVal_3, 'emptyState', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      if (import18.isDevToolsEnabled) {
        import18.Inspector.instance.recordInput(this._NgSwitchWhen_3_9, 'ngSwitchWhen', currVal_3);
      }
      this._NgSwitchWhen_3_9.ngSwitchWhen = (currVal_3!) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3659:3685 */;
      this._expr_3 = currVal_3;
    }
    if (import18.isDevToolsEnabled) {
      import18.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', (((_ctx.maxCount != null) ?? false) || (_ctx.showCharacterCount ?? false)));
    }
    this._NgIf_4_9.ngIf = ((((_ctx.maxCount != null) ?? false) || (_ctx.showCharacterCount ?? false)) ?? false) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3777:3823 */;
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

import27.EmbeddedView<void> viewFactory_MaterialMultilineInputComponent2(import28.RenderView parentView, int parentIndex) {
  return _ViewMaterialMultilineInputComponent2(parentView, parentIndex);
}

class _ViewMaterialMultilineInputComponent3 extends import27.EmbeddedView<import3.MaterialMultilineInputComponent> {
  final import4.TextBinding _textBinding_1 = import4.TextBinding();
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  late final _el_0;
  _ViewMaterialMultilineInputComponent3(import28.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import16.createRenderElement('div');
    this.updateChildClass(this._el_0, 'error-text');
    import16.updateRenderAttribute(this._el_0, 'role', 'alert');
    this.addShimC(this._el_0);
    import16.appendRenderChild(this._el_0, this._textBinding_1.element);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.focused;
    if (import24.checkBinding(this._expr_0, currVal_0, 'focused', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_0, 'focused', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3423:3448 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.invalid;
    if (import24.checkBinding(this._expr_1, currVal_1, 'invalid', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_0, 'invalid', (currVal_1 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3456:3481 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = import25.interpolate0((!(_ctx.invalid ?? false)));
    if (import24.checkBinding(this._expr_2, currVal_2, '{{!invalid}}', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderAttribute(this._el_0, 'aria-hidden', currVal_2) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3384:3415 */;
      this._expr_2 = currVal_2;
    }
    this._textBinding_1.updateText(import25.interpolateString0(_ctx.errorMessage)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3521:3537 */;
  }
}

import27.EmbeddedView<void> viewFactory_MaterialMultilineInputComponent3(import28.RenderView parentView, int parentIndex) {
  return _ViewMaterialMultilineInputComponent3(parentView, parentIndex);
}

class _ViewMaterialMultilineInputComponent4 extends import27.EmbeddedView<import3.MaterialMultilineInputComponent> {
  final import4.TextBinding _textBinding_1 = import4.TextBinding();
  _ViewMaterialMultilineInputComponent4(import28.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import16.createRenderElement('div');
    this.updateChildClass(_el_0, 'hint-text');
    this.addShimC(_el_0);
    import16.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import25.interpolateString0(_ctx.hintText)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3603:3615 */;
  }
}

import27.EmbeddedView<void> viewFactory_MaterialMultilineInputComponent4(import28.RenderView parentView, int parentIndex) {
  return _ViewMaterialMultilineInputComponent4(parentView, parentIndex);
}

class _ViewMaterialMultilineInputComponent5 extends import27.EmbeddedView<import3.MaterialMultilineInputComponent> {
  _ViewMaterialMultilineInputComponent5(import28.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import16.createRenderElement('div');
    this.updateChildClass(_el_0, 'spaceholder');
    import16.updateRenderTabIndex(_el_0, -1);
    this.addShimC(_el_0);
    final _text_1 = import16.createRenderText(' ');
    import16.appendRenderChild(_el_0, _text_1);
    import16.addRenderEventListener(_el_0, 'focus', this.eventHandler1(this._handleEvent_0));
    this.initRootNode(_el_0);
  }

  void _handleEvent_0($event) {
    $event.stopPropagation();
  }
}

import27.EmbeddedView<void> viewFactory_MaterialMultilineInputComponent5(import28.RenderView parentView, int parentIndex) {
  return _ViewMaterialMultilineInputComponent5(parentView, parentIndex);
}

class _ViewMaterialMultilineInputComponent6 extends import27.EmbeddedView<import3.MaterialMultilineInputComponent> {
  final import4.TextBinding _textBinding_1 = import4.TextBinding();
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMaterialMultilineInputComponent6(import28.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import16.createRenderElement('div');
    this.updateChildClass(this._el_0, 'counter');
    this.addShimC(this._el_0);
    import16.appendRenderChild(this._el_0, this._textBinding_1.element);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.msgCharacterCounterAriaLabel(_ctx.inputTextLength, _ctx.maxCount);
    if (import24.checkBinding(this._expr_0, currVal_0, 'msgCharacterCounterAriaLabel(inputTextLength, maxCount)', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderAttribute(this._el_0, 'aria-label', currVal_0) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3831:3906 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.invalid;
    if (import24.checkBinding(this._expr_1, currVal_1, 'invalid', 'package:angulardart_components/material_input/material_input_multiline.html')) {
      import16.updateRenderClass(this._el_0, 'invalid', (currVal_1 ?? false)) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3937:3962 */;
      this._expr_1 = currVal_1;
    }
    this._textBinding_1.updateText(import25.interpolateString0(_ctx.msgCharacterCounter(_ctx.inputTextLength, _ctx.maxCount))) /* REF:package:angulardart_components/material_input/material_input_multiline.html:3968:4018 */;
  }
}

import27.EmbeddedView<void> viewFactory_MaterialMultilineInputComponent6(import28.RenderView parentView, int parentIndex) {
  return _ViewMaterialMultilineInputComponent6(parentView, parentIndex);
}

final List<Object> styles$MaterialMultilineInputComponentHost = const [];

class _ViewMaterialMultilineInputComponentHost0 extends import30.HostView<import3.MaterialMultilineInputComponent> {
  late List<Object> _NgValidators_0_8 = [this._DeferredValidator_0_5];
  late final import32.DeferredValidator _DeferredValidator_0_5;
  @override
  void build() {
    this.componentView = ViewMaterialMultilineInputComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this._DeferredValidator_0_5 = import32.DeferredValidator();
    this.component = (import15.isDevMode
        ? import33.debugInjectorWrap(import3.MaterialMultilineInputComponent, () {
            return import3.MaterialMultilineInputComponent(null, this.componentView, this._DeferredValidator_0_5, this.injectorGet(import34.DomService, this.parentIndex));
          })
        : import3.MaterialMultilineInputComponent(null, this.componentView, this._DeferredValidator_0_5, this.injectorGet(import34.DomService, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import32.DeferredValidator)) {
        return this._DeferredValidator_0_5;
      }
      if (((((identical(token, import3.MaterialMultilineInputComponent) || identical(token, import35.HasDisabled)) || identical(token, import36.ReferenceDirective)) || identical(token, import20.Focusable)) || identical(token, import37.BaseMaterialInput))) {
        return this.component;
      }
      if (identical(token, const import21.MultiToken<Object>('NgValidators'))) {
        return this._NgValidators_0_8;
      }
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
    if ((!import24.debugThrowIfChanged)) {
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

import30.HostView<import3.MaterialMultilineInputComponent> viewFactory_MaterialMultilineInputComponentHost0() {
  return _ViewMaterialMultilineInputComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialMultilineInputComponent, createMaterialMultilineInputComponentFactory());
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
