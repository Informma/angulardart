// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_input.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'base_material_input.template.dart' as _ref0;
import 'deferred_validator.template.dart' as _ref1;
import 'input_wrapper.template.dart' as _ref2;
import 'material_input_default_value_accessor.template.dart' as _ref3;
import 'material_input_default_value_accessor.template.dart' as _ref4;
import 'material_input_multiline.template.dart' as _ref5;
import 'material_input_multiline.template.dart' as _ref6;

import 'package:angulardart/angulardart.template.dart' as _ref7;
import 'package:angulardart_components/focus/focus.template.dart' as _ref8;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref9;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref10;
import 'package:angulardart_components/utils/angular/reference/reference.template.dart' as _ref11;
import 'package:angulardart_forms/angulardart_forms.template.dart' as _ref12;
import 'package:angulardart_forms/angulardart_forms.template.dart' as _ref13;
import 'package:angulardart_components/material_input/material_input.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_input.dart' as import2;

import 'package:angulardart/src/runtime/text_binding.dart' as import3;
import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart_forms/src/directives/default_value_accessor.dart' as import6;

import '../focus/focus.dart' as import7;

import 'package:angulardart_forms/src/directives/control_value_accessor.dart' as import8;
import 'package:angulardart_forms/src/directives/ng_model.dart' as import9;
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import10;
import 'package:angulardart/src/core/linker/views/view.dart' as import11;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import13;
import 'package:angulardart/src/utilities.dart' as import14;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import15;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import17;
import 'package:angulardart/src/core/linker/element_ref.dart';

import '../focus/focus_interface.dart' as import19;

import 'package:angulardart_meta/src/di_tokens.dart' as import20;
import 'package:angulardart_forms/src/directives/control_value_accessor.dart' as import21;
import 'package:angulardart_forms/src/directives/ng_control.dart' as import22;
import 'package:angulardart/src/runtime/check_binding.dart' as import23;
import 'package:angulardart/src/runtime/interpolate.dart' as import24;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import26;

import '../material_icon/material_icon.template.dart' as import27;
import '../material_icon/material_icon.dart' as import28;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import29;
import 'package:angulardart/src/common/directives/ng_switch.dart' as import30;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import31;

import 'dart:core';

import 'deferred_validator.dart' as import33;
import '../utils/angular/reference/reference.dart' as import34;
import '../interfaces/has_disabled.dart' as import35;
import 'base_material_input.dart' as import36;

final List<Object> styles$MaterialInputComponent = [import0.styles];

class ViewMaterialInputComponent0 extends import1.ComponentView<import2.MaterialInputComponent> {
  final import3.TextBinding _textBinding_10 = import3.TextBinding();
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
  late final import6.DefaultValueAccessor _DefaultValueAccessor_11_5;
  late final import7.FocusableDirective _FocusableDirective_11_6;
  late final List<import8.ControlValueAccessor<dynamic>> _NgValueAccessor_11_7;
  late final import9.NgModel _NgModel_11_8;
  late final ViewContainer _appEl_13;
  late final NgIf _NgIf_13_9;
  late final ViewContainer _appEl_15;
  late final NgIf _NgIf_15_9;
  late final ViewContainer _appEl_21;
  late final NgIf _NgIf_21_9;
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
  Object? _expr_26;
  Object? _expr_27;
  Object? _expr_28;
  Object? _expr_29;
  Object? _expr_30;
  Object? _expr_31;
  Object? _expr_32;
  Object? _expr_33;
  Object? _expr_34;
  Object? _expr_35;
  Object? _expr_36;
  Object? _expr_37;
  late final _el_1;
  late final _el_6;
  late final _el_7;
  late final _el_9;
  late final _el_11;
  late final _el_18;
  late final _el_19;
  late final _el_20;
  static import10.ComponentStyles? _componentStyles;
  ViewMaterialInputComponent0(import11.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import13.renderFactory.createElement('material-input');
  }
  static String? get _debugComponentUrl {
    return (import14.isDevMode ? 'asset:angulardart_components/lib/material_input/material_input.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _el_0 = import15.createRenderElement('div');
    import15.appendRenderChild(parentRenderNode, _el_0);
    this.updateChildClass(_el_0, 'baseline');
    this.addShimC(_el_0);
    this._el_1 = import15.createRenderElement('div');
    import15.appendRenderChild(_el_0, this._el_1);
    this.updateChildClass(this._el_1, 'top-section');
    this.addShimC(this._el_1);
    final _anchor_2 = import15.createRenderAnchor();
    import15.appendRenderChild(this._el_1, _anchor_2);
    this._appEl_2 = ViewContainer(2, 1, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialInputComponent1);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _text_3 = import15.createRenderText(' ');
    import15.appendRenderChild(this._el_1, _text_3);
    final _anchor_4 = import15.createRenderAnchor();
    import15.appendRenderChild(this._el_1, _anchor_4);
    this._appEl_4 = ViewContainer(4, 1, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_MaterialInputComponent2);
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
    final _text_5 = import15.createRenderText(' ');
    import15.appendRenderChild(this._el_1, _text_5);
    this._el_6 = import15.createRenderElement('label');
    import15.appendRenderChild(this._el_1, this._el_6);
    this.updateChildClass(this._el_6, 'input-container');
    this.addShimC(this._el_6);
    this._el_7 = import15.createRenderElement('div');
    import15.appendRenderChild(this._el_6, this._el_7);
    import15.updateRenderAttribute(this._el_7, 'aria-hidden', 'true');
    this.updateChildClass(this._el_7, 'label');
    this.addShimC(this._el_7);
    final _text_8 = import15.createRenderText(' ');
    import15.appendRenderChild(this._el_7, _text_8);
    this._el_9 = import15.createRenderElement('span');
    import15.appendRenderChild(this._el_7, this._el_9);
    this.updateChildClass(this._el_9, 'label-text');
    this.addShimC(this._el_9);
    import15.appendRenderChild(this._el_9, this._textBinding_10.element);
    this._el_11 = import15.createRenderElement('input');
    import15.appendRenderChild(this._el_6, this._el_11);
    this.updateChildClass(this._el_11, 'input');
    import15.updateRenderAttribute(this._el_11, 'focusableElement', '');
    this.addShimC(this._el_11);
    this._DefaultValueAccessor_11_5 = import6.DefaultValueAccessor(ElementRef(import15.unwrapNode(this._el_11)));
    this._FocusableDirective_11_6 = import7.FocusableDirective(import15.unwrapNode(this._el_11));
    this._NgValueAccessor_11_7 = [this._DefaultValueAccessor_11_5];
    this._NgModel_11_8 = import9.NgModel(null, this._NgValueAccessor_11_7);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(this._el_11, this._DefaultValueAccessor_11_5);
      import17.Inspector.instance.registerDirective(this._el_11, this._FocusableDirective_11_6);
      import17.Inspector.instance.registerDirective(this._el_11, this._NgModel_11_8);
    }
    final _text_12 = import15.createRenderText(' ');
    import15.appendRenderChild(this._el_1, _text_12);
    final _anchor_13 = import15.createRenderAnchor();
    import15.appendRenderChild(this._el_1, _anchor_13);
    this._appEl_13 = ViewContainer(13, 1, this, _anchor_13);
    var _TemplateRef_13_8 = TemplateRef(this._appEl_13, viewFactory_MaterialInputComponent3);
    this._NgIf_13_9 = NgIf(this._appEl_13, _TemplateRef_13_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_13, this._NgIf_13_9);
    }
    final _text_14 = import15.createRenderText(' ');
    import15.appendRenderChild(this._el_1, _text_14);
    final _anchor_15 = import15.createRenderAnchor();
    import15.appendRenderChild(this._el_1, _anchor_15);
    this._appEl_15 = ViewContainer(15, 1, this, _anchor_15);
    var _TemplateRef_15_8 = TemplateRef(this._appEl_15, viewFactory_MaterialInputComponent4);
    this._NgIf_15_9 = NgIf(this._appEl_15, _TemplateRef_15_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_15, this._NgIf_15_9);
    }
    final _text_16 = import15.createRenderText(' ');
    import15.appendRenderChild(this._el_1, _text_16);
    this.project(this._el_1, 0);
    final _el_17 = import15.createRenderElement('div');
    import15.appendRenderChild(_el_0, _el_17);
    this.updateChildClass(_el_17, 'underline');
    this.addShimC(_el_17);
    this._el_18 = import15.createRenderElement('div');
    import15.appendRenderChild(_el_17, this._el_18);
    this.updateChildClass(this._el_18, 'disabled-underline');
    this.addShimC(this._el_18);
    this._el_19 = import15.createRenderElement('div');
    import15.appendRenderChild(_el_17, this._el_19);
    this.updateChildClass(this._el_19, 'unfocused-underline');
    this.addShimC(this._el_19);
    this._el_20 = import15.createRenderElement('div');
    import15.appendRenderChild(_el_17, this._el_20);
    this.updateChildClass(this._el_20, 'focused-underline');
    this.addShimC(this._el_20);
    final _anchor_21 = import15.createRenderAnchor();
    import15.appendRenderChild(parentRenderNode, _anchor_21);
    this._appEl_21 = ViewContainer(21, null, this, _anchor_21);
    var _TemplateRef_21_8 = TemplateRef(this._appEl_21, viewFactory_MaterialInputComponent5);
    this._NgIf_21_9 = NgIf(this._appEl_21, _TemplateRef_21_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_21, this._NgIf_21_9);
    }
    import15.addRenderEventListener(this._el_11, 'blur', this.eventHandler1(this._handleEvent_0));
    import15.addRenderEventListener(this._el_11, 'change', this.eventHandler1(this._handleEvent_1));
    import15.addRenderEventListener(this._el_11, 'focus', this.eventHandler1(_ctx.inputFocusAction));
    import15.addRenderEventListener(this._el_11, 'input', this.eventHandler1(this._handleEvent_2));
    _ctx.focusable = this._FocusableDirective_11_6;
    _ctx.inputEl = ElementRef(import15.unwrapNode(this._el_11));
    _ctx.popupSourceEl = ElementRef(import15.unwrapNode(_el_0));
    import15.addRenderEventListener(parentRenderNode, 'focus', this.eventHandler0(_ctx.focus));
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((11 == nodeIndex)) {
      if (identical(token, import19.Focusable)) {
        return this._FocusableDirective_11_6;
      }
      if (identical(token, const import20.MultiToken<import21.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_11_7;
      }
      if ((identical(token, import9.NgModel) || identical(token, import22.NgControl))) {
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
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', _ctx.hasLeadingGlyph);
    }
    this._NgIf_2_9.ngIf = (_ctx.hasLeadingGlyph ?? false) /* REF:package:angulardart_components/material_input/material_input.html:330:353 */;
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', _ctx.hasLeadingText);
    }
    this._NgIf_4_9.ngIf = (_ctx.hasLeadingText ?? false) /* REF:package:angulardart_components/material_input/material_input.html:679:701 */;
    changed = false;
    final currVal_29 = _ctx.inputText;
    if (import23.checkBinding(this._expr_29, currVal_29, 'inputText', 'package:angulardart_components/material_input/material_input.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgModel_11_8, 'ngModel', currVal_29);
      }
      this._NgModel_11_8.model = (currVal_29!) /* REF:package:angulardart_components/material_input/material_input.html:2254:2275 */;
      changed = true;
      this._expr_29 = currVal_29;
    }
    if (changed) {
      this._NgModel_11_8.ngAfterChanges();
    }
    if (((!import23.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_11_8.ngOnInit();
    }
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_13_9, 'ngIf', _ctx.hasTrailingText);
    }
    this._NgIf_13_9.ngIf = (_ctx.hasTrailingText ?? false) /* REF:package:angulardart_components/material_input/material_input.html:2823:2846 */;
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_15_9, 'ngIf', _ctx.hasTrailingGlyph);
    }
    this._NgIf_15_9.ngIf = (_ctx.hasTrailingGlyph ?? false) /* REF:package:angulardart_components/material_input/material_input.html:2973:2997 */;
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_21_9, 'ngIf', _ctx.displayBottomPanel);
    }
    this._NgIf_21_9.ngIf = (_ctx.displayBottomPanel ?? false) /* REF:package:angulardart_components/material_input/material_input.html:3836:3862 */;
    final currVal_0 = _ctx.disabled;
    if (import23.checkBinding(this._expr_0, currVal_0, 'disabled', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_1, 'disabled', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:291:318 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.floatingLabel;
    if (import23.checkBinding(this._expr_1, currVal_1, 'floatingLabel', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_6, 'floated-label', (currVal_1 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:863:900 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.rightAlign;
    if (import23.checkBinding(this._expr_2, currVal_2, 'rightAlign', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_7, 'right-align', (currVal_2 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:968:1000 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.labelId;
    if (import23.checkBinding(this._expr_3, currVal_3, 'labelId', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_9, 'id', currVal_3) /* REF:package:angulardart_components/material_input/material_input.html:1114:1133 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = (!(_ctx.labelVisible ?? false));
    if (import23.checkBinding(this._expr_4, currVal_4, '!labelVisible', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_9, 'invisible', (currVal_4 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:1148:1181 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.labelAnimated;
    if (import23.checkBinding(this._expr_5, currVal_5, 'labelAnimated', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_9, 'animated', (currVal_5 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:1196:1228 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.labelAnimationReset;
    if (import23.checkBinding(this._expr_6, currVal_6, 'labelAnimationReset', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_9, 'reset', (currVal_6 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:1243:1278 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.disabled;
    if (import23.checkBinding(this._expr_7, currVal_7, 'disabled', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_9, 'disabled', (currVal_7 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:1293:1320 */;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = ((_ctx.focused ?? false) && (_ctx.floatingLabelVisible ?? false));
    if (import23.checkBinding(this._expr_8, currVal_8, 'focused && floatingLabelVisible', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_9, 'focused', (currVal_8 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:1335:1384 */;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = ((_ctx.invalid ?? false) && (_ctx.floatingLabelVisible ?? false));
    if (import23.checkBinding(this._expr_9, currVal_9, 'invalid && floatingLabelVisible', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_9, 'invalid', (currVal_9 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:1399:1448 */;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.inputAriaActivedescendent;
    if (import23.checkBinding(this._expr_10, currVal_10, 'inputAriaActivedescendent', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_11, 'aria-activedescendant', currVal_10) /* REF:package:angulardart_components/material_input/material_input.html:1592:1648 */;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.inputAriaAutocomplete;
    if (import23.checkBinding(this._expr_11, currVal_11, 'inputAriaAutocomplete', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_11, 'aria-autocomplete', currVal_11) /* REF:package:angulardart_components/material_input/material_input.html:1662:1710 */;
      this._expr_11 = currVal_11;
    }
    final currVal_12 = _ctx.inputAriaExpanded;
    if (import23.checkBinding(this._expr_12, currVal_12, 'inputAriaExpanded', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_11, 'aria-expanded', currVal_12?.toString()) /* REF:package:angulardart_components/material_input/material_input.html:1724:1764 */;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = _ctx.inputAriaHasPopup;
    if (import23.checkBinding(this._expr_13, currVal_13, 'inputAriaHasPopup', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_11, 'aria-haspopup', currVal_13) /* REF:package:angulardart_components/material_input/material_input.html:1778:1818 */;
      this._expr_13 = currVal_13;
    }
    final currVal_14 = _ctx.invalid;
    if (import23.checkBinding(this._expr_14, currVal_14, 'invalid', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_11, 'aria-invalid', currVal_14?.toString()) /* REF:package:angulardart_components/material_input/material_input.html:1832:1861 */;
      this._expr_14 = currVal_14;
    }
    final currVal_15 = _ctx.inputAriaLabel;
    if (import23.checkBinding(this._expr_15, currVal_15, 'inputAriaLabel', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_11, 'aria-label', currVal_15) /* REF:package:angulardart_components/material_input/material_input.html:1875:1909 */;
      this._expr_15 = currVal_15;
    }
    final currVal_16 = _ctx.labelId;
    if (import23.checkBinding(this._expr_16, currVal_16, 'labelId', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_11, 'aria-labelledby', currVal_16) /* REF:package:angulardart_components/material_input/material_input.html:1923:1955 */;
      this._expr_16 = currVal_16;
    }
    final currVal_17 = _ctx.ariaDescribedBy;
    if (import23.checkBinding(this._expr_17, currVal_17, 'ariaDescribedBy', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_11, 'aria-describedby', currVal_17) /* REF:package:angulardart_components/material_input/material_input.html:1969:2010 */;
      this._expr_17 = currVal_17;
    }
    final currVal_18 = _ctx.inputAriaOwns;
    if (import23.checkBinding(this._expr_18, currVal_18, 'inputAriaOwns', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_11, 'aria-owns', currVal_18) /* REF:package:angulardart_components/material_input/material_input.html:2024:2056 */;
      this._expr_18 = currVal_18;
    }
    final currVal_19 = _ctx.inputAriaControls;
    if (import23.checkBinding(this._expr_19, currVal_19, 'inputAriaControls', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_11, 'aria-controls', currVal_19) /* REF:package:angulardart_components/material_input/material_input.html:2070:2110 */;
      this._expr_19 = currVal_19;
    }
    final currVal_20 = _ctx.disabled;
    if (import23.checkBinding(this._expr_20, currVal_20, 'disabled', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_11, 'aria-disabled', currVal_20?.toString()) /* REF:package:angulardart_components/material_input/material_input.html:2124:2155 */;
      this._expr_20 = currVal_20;
    }
    final currVal_21 = _ctx.inputAutocomplete;
    if (import23.checkBinding(this._expr_21, currVal_21, 'inputAutocomplete', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_11, 'autocomplete', currVal_21) /* REF:package:angulardart_components/material_input/material_input.html:2169:2208 */;
      this._expr_21 = currVal_21;
    }
    final currVal_22 = _ctx.role;
    if (import23.checkBinding(this._expr_22, currVal_22, 'role', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_11, 'role', currVal_22) /* REF:package:angulardart_components/material_input/material_input.html:2222:2240 */;
      this._expr_22 = currVal_22;
    }
    final currVal_23 = _ctx.disabled;
    if (import23.checkBinding(this._expr_23, currVal_23, 'disabled', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_11, 'disabledInput', (currVal_23 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:2440:2472 */;
      this._expr_23 = currVal_23;
    }
    final currVal_24 = _ctx.rightAlign;
    if (import23.checkBinding(this._expr_24, currVal_24, 'rightAlign', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_11, 'right-align', (currVal_24 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:2486:2518 */;
      this._expr_24 = currVal_24;
    }
    final currVal_25 = _ctx.multiple;
    if (import23.checkBinding(this._expr_25, currVal_25, 'multiple', 'package:angulardart_components/material_input/material_input.html')) {
      this._el_11.setProperty('multiple', currVal_25) /* REF:package:angulardart_components/material_input/material_input.html:2675:2696 */;
      this._expr_25 = currVal_25;
    }
    final currVal_26 = _ctx.disabled;
    if (import23.checkBinding(this._expr_26, currVal_26, 'disabled', 'package:angulardart_components/material_input/material_input.html')) {
      this._el_11.setProperty('readOnly', currVal_26) /* REF:package:angulardart_components/material_input/material_input.html:2710:2731 */;
      this._expr_26 = currVal_26;
    }
    final currVal_27 = _ctx.inputTabIndex;
    if (import23.checkBinding(this._expr_27, currVal_27, 'inputTabIndex', 'package:angulardart_components/material_input/material_input.html')) {
      this._el_11.setProperty('tabIndex', currVal_27) /* REF:package:angulardart_components/material_input/material_input.html:2745:2771 */;
      this._expr_27 = currVal_27;
    }
    final currVal_28 = _ctx.type;
    if (import23.checkBinding(this._expr_28, currVal_28, 'type', 'package:angulardart_components/material_input/material_input.html')) {
      this._el_11.setProperty('type', currVal_28) /* REF:package:angulardart_components/material_input/material_input.html:2785:2798 */;
      this._expr_28 = currVal_28;
    }
    final currVal_30 = (!(_ctx.disabled ?? false));
    if (import23.checkBinding(this._expr_30, currVal_30, '!disabled', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_18, 'invisible', (currVal_30 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:3444:3473 */;
      this._expr_30 = currVal_30;
    }
    final currVal_31 = _ctx.disabled;
    if (import23.checkBinding(this._expr_31, currVal_31, 'disabled', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_19, 'invisible', (currVal_31 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:3532:3560 */;
      this._expr_31 = currVal_31;
    }
    final currVal_32 = _ctx.invalid;
    if (import23.checkBinding(this._expr_32, currVal_32, 'invalid', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_19, 'invalid', (currVal_32 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:3570:3595 */;
      this._expr_32 = currVal_32;
    }
    final currVal_33 = (((!(_ctx.focused ?? false)) ?? false) || (_ctx.disabled ?? false));
    if (import23.checkBinding(this._expr_33, currVal_33, '!focused || disabled', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_20, 'invisible', (currVal_33 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:3652:3692 */;
      this._expr_33 = currVal_33;
    }
    final currVal_34 = _ctx.invalid;
    if (import23.checkBinding(this._expr_34, currVal_34, 'invalid', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_20, 'invalid', (currVal_34 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:3702:3727 */;
      this._expr_34 = currVal_34;
    }
    final currVal_35 = _ctx.underlineAnimated;
    if (import23.checkBinding(this._expr_35, currVal_35, 'underlineAnimated', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_20, 'animated', (currVal_35 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:3737:3773 */;
      this._expr_35 = currVal_35;
    }
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
    this._appEl_13.detectChangesInNestedViews();
    this._appEl_15.detectChangesInNestedViews();
    this._appEl_21.detectChangesInNestedViews();
    this._textBinding_10.updateText(import24.interpolateString0(_ctx.label)) /* REF:package:angulardart_components/material_input/material_input.html:1460:1469 */;
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
    this._appEl_13.destroyNestedViews();
    this._appEl_15.destroyNestedViews();
    this._appEl_21.destroyNestedViews();
  }

  void _handleEvent_0($event) {
    final local_inputEl = this._el_11;
    final _ctx = this.ctx;
    _ctx.inputBlurAction($event, local_inputEl.validity.valid, local_inputEl.validationMessage);
    this._DefaultValueAccessor_11_5.touchHandler();
  }

  void _handleEvent_1($event) {
    final local_inputEl = this._el_11;
    final _ctx = this.ctx;
    _ctx.handleChange($event, local_inputEl);
  }

  void _handleEvent_2($event) {
    final local_inputEl = this._el_11;
    final _ctx = this.ctx;
    _ctx.inputKeypress(local_inputEl.value, local_inputEl.validity.valid, local_inputEl.validationMessage);
    this._DefaultValueAccessor_11_5.handleChange($event.target.value);
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_36 = import2.MaterialInputComponent.hostClass;
    if (import23.checkBinding(this._expr_36, currVal_36, null, null)) {
      this.updateChildClassNonHtml(this.rootElement, currVal_36);
      this._expr_36 = currVal_36;
    }
    final currVal_37 = import2.MaterialInputComponent.hostTabIndex;
    if (import23.checkBinding(this._expr_37, currVal_37, null, null)) {
      this.rootElement.setProperty('tabIndex', currVal_37);
      this._expr_37 = currVal_37;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import10.ComponentStyles.scoped(styles$MaterialInputComponent, _debugComponentUrl));
      if (import14.isDevMode) {
        import10.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialInputComponentNgFactory = ComponentFactory<import2.MaterialInputComponent>('material-input:not(material-input[multiline])', viewFactory_MaterialInputComponentHost0);
ComponentFactory<import2.MaterialInputComponent> get MaterialInputComponentNgFactory {
  return _MaterialInputComponentNgFactory;
}

ComponentFactory<import2.MaterialInputComponent> createMaterialInputComponentFactory() {
  return ComponentFactory('material-input:not(material-input[multiline])', viewFactory_MaterialInputComponentHost0);
}

class _ViewMaterialInputComponent1 extends import26.EmbeddedView<import2.MaterialInputComponent> {
  late final import27.ViewMaterialIconComponent0 _compView_1;
  late final import28.MaterialIconComponent _MaterialIconComponent_1_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  late final _el_0;
  late final _el_1;
  _ViewMaterialInputComponent1(import29.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import15.createRenderElement('span');
    this.updateChildClass(this._el_0, 'leading-text');
    this.addShimC(this._el_0);
    this._compView_1 = import27.ViewMaterialIconComponent0(this, 1);
    this._el_1 = this._compView_1.rootElement;
    import15.appendRenderChild(this._el_0, this._el_1);
    this.updateChildClassNonHtml(this._el_1, 'glyph leading');
    this.addShimC(this._el_1);
    this._MaterialIconComponent_1_5 = import28.MaterialIconComponent(import15.unwrapNode(this._el_1));
    this._compView_1.create(this._MaterialIconComponent_1_5);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    final currVal_3 = import24.interpolateString0(_ctx.leadingGlyph);
    if (import23.checkBinding(this._expr_3, currVal_3, '{{leadingGlyph}}', 'package:angulardart_components/material_input/material_input.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialIconComponent_1_5, 'icon', currVal_3);
      }
      this._MaterialIconComponent_1_5.icon = currVal_3 /* REF:package:angulardart_components/material_input/material_input.html:498:521 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    final currVal_0 = _ctx.floatingLabel;
    if (import23.checkBinding(this._expr_0, currVal_0, 'floatingLabel', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_0, 'floated-label', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:395:432 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.leadingGlyphAriaLabel;
    if (import23.checkBinding(this._expr_1, currVal_1, 'leadingGlyphAriaLabel', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_1, 'aria-label', currVal_1) /* REF:package:angulardart_components/material_input/material_input.html:543:584 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.disabled;
    if (import23.checkBinding(this._expr_2, currVal_2, 'disabled', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_1, 'disabled', currVal_2?.toString()) /* REF:package:angulardart_components/material_input/material_input.html:606:632 */;
      this._expr_2 = currVal_2;
    }
    this._compView_1.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_1.destroyInternalState();
  }
}

import26.EmbeddedView<void> viewFactory_MaterialInputComponent1(import29.RenderView parentView, int parentIndex) {
  return _ViewMaterialInputComponent1(parentView, parentIndex);
}

class _ViewMaterialInputComponent2 extends import26.EmbeddedView<import2.MaterialInputComponent> {
  final import3.TextBinding _textBinding_1 = import3.TextBinding();
  Object? _expr_0;
  late final _el_0;
  _ViewMaterialInputComponent2(import29.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import15.createRenderElement('span');
    this.updateChildClass(this._el_0, 'leading-text');
    this.addShimC(this._el_0);
    import15.appendRenderChild(this._el_0, this._textBinding_1.element);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.floatingLabel;
    if (import23.checkBinding(this._expr_0, currVal_0, 'floatingLabel', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_0, 'floated-label', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:743:780 */;
      this._expr_0 = currVal_0;
    }
    this._textBinding_1.updateText(import24.interpolateString0(_ctx.leadingText)) /* REF:package:angulardart_components/material_input/material_input.html:788:803 */;
  }
}

import26.EmbeddedView<void> viewFactory_MaterialInputComponent2(import29.RenderView parentView, int parentIndex) {
  return _ViewMaterialInputComponent2(parentView, parentIndex);
}

class _ViewMaterialInputComponent3 extends import26.EmbeddedView<import2.MaterialInputComponent> {
  final import3.TextBinding _textBinding_1 = import3.TextBinding();
  Object? _expr_0;
  late final _el_0;
  _ViewMaterialInputComponent3(import29.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import15.createRenderElement('span');
    this.updateChildClass(this._el_0, 'trailing-text');
    this.addShimC(this._el_0);
    import15.appendRenderChild(this._el_0, this._textBinding_1.element);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.floatingLabel;
    if (import23.checkBinding(this._expr_0, currVal_0, 'floatingLabel', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_0, 'floated-label', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:2889:2926 */;
      this._expr_0 = currVal_0;
    }
    this._textBinding_1.updateText(import24.interpolateString0(_ctx.trailingText)) /* REF:package:angulardart_components/material_input/material_input.html:2934:2950 */;
  }
}

import26.EmbeddedView<void> viewFactory_MaterialInputComponent3(import29.RenderView parentView, int parentIndex) {
  return _ViewMaterialInputComponent3(parentView, parentIndex);
}

class _ViewMaterialInputComponent4 extends import26.EmbeddedView<import2.MaterialInputComponent> {
  late final import27.ViewMaterialIconComponent0 _compView_1;
  late final import28.MaterialIconComponent _MaterialIconComponent_1_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  late final _el_0;
  late final _el_1;
  _ViewMaterialInputComponent4(import29.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import15.createRenderElement('span');
    this.updateChildClass(this._el_0, 'trailing-text');
    this.addShimC(this._el_0);
    this._compView_1 = import27.ViewMaterialIconComponent0(this, 1);
    this._el_1 = this._compView_1.rootElement;
    import15.appendRenderChild(this._el_0, this._el_1);
    this.updateChildClassNonHtml(this._el_1, 'glyph trailing');
    this.addShimC(this._el_1);
    this._MaterialIconComponent_1_5 = import28.MaterialIconComponent(import15.unwrapNode(this._el_1));
    this._compView_1.create(this._MaterialIconComponent_1_5);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    final currVal_3 = import24.interpolateString0(_ctx.trailingGlyph);
    if (import23.checkBinding(this._expr_3, currVal_3, '{{trailingGlyph}}', 'package:angulardart_components/material_input/material_input.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialIconComponent_1_5, 'icon', currVal_3);
      }
      this._MaterialIconComponent_1_5.icon = currVal_3 /* REF:package:angulardart_components/material_input/material_input.html:3144:3168 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    final currVal_0 = _ctx.floatingLabel;
    if (import23.checkBinding(this._expr_0, currVal_0, 'floatingLabel', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_0, 'floated-label', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:3040:3077 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.trailingGlyphAriaLabel;
    if (import23.checkBinding(this._expr_1, currVal_1, 'trailingGlyphAriaLabel', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_1, 'aria-label', currVal_1) /* REF:package:angulardart_components/material_input/material_input.html:3190:3232 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.disabled;
    if (import23.checkBinding(this._expr_2, currVal_2, 'disabled', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_1, 'disabled', currVal_2?.toString()) /* REF:package:angulardart_components/material_input/material_input.html:3254:3280 */;
      this._expr_2 = currVal_2;
    }
    this._compView_1.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_1.destroyInternalState();
  }
}

import26.EmbeddedView<void> viewFactory_MaterialInputComponent4(import29.RenderView parentView, int parentIndex) {
  return _ViewMaterialInputComponent4(parentView, parentIndex);
}

class _ViewMaterialInputComponent5 extends import26.EmbeddedView<import2.MaterialInputComponent> {
  late final import30.NgSwitch _NgSwitch_0_5;
  late final ViewContainer _appEl_1;
  late final import30.NgSwitchWhen _NgSwitchWhen_1_9;
  late final ViewContainer _appEl_2;
  late final import30.NgSwitchWhen _NgSwitchWhen_2_9;
  late final ViewContainer _appEl_3;
  late final import30.NgSwitchWhen _NgSwitchWhen_3_9;
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  _ViewMaterialInputComponent5(import29.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import15.createRenderElement('div');
    this.updateChildClass(_el_0, 'bottom-section');
    this.addShimC(_el_0);
    this._NgSwitch_0_5 = import30.NgSwitch();
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_el_0, this._NgSwitch_0_5);
    }
    final _anchor_1 = import15.createRenderAnchor();
    import15.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MaterialInputComponent6);
    this._NgSwitchWhen_1_9 = import30.NgSwitchWhen(this._appEl_1, _TemplateRef_1_8, this._NgSwitch_0_5);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_1, this._NgSwitchWhen_1_9);
    }
    final _anchor_2 = import15.createRenderAnchor();
    import15.appendRenderChild(_el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialInputComponent7);
    this._NgSwitchWhen_2_9 = import30.NgSwitchWhen(this._appEl_2, _TemplateRef_2_8, this._NgSwitch_0_5);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_2, this._NgSwitchWhen_2_9);
    }
    final _anchor_3 = import15.createRenderAnchor();
    import15.appendRenderChild(_el_0, _anchor_3);
    this._appEl_3 = ViewContainer(3, 0, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, viewFactory_MaterialInputComponent8);
    this._NgSwitchWhen_3_9 = import30.NgSwitchWhen(this._appEl_3, _TemplateRef_3_8, this._NgSwitch_0_5);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_3, this._NgSwitchWhen_3_9);
    }
    final _anchor_4 = import15.createRenderAnchor();
    import15.appendRenderChild(_el_0, _anchor_4);
    this._appEl_4 = ViewContainer(4, 0, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_MaterialInputComponent9);
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import30.NgSwitch) && (nodeIndex <= 4))) {
      return this._NgSwitch_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.bottomPanelState;
    if (import23.checkBinding(this._expr_0, currVal_0, 'bottomPanelState', 'package:angulardart_components/material_input/material_input.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgSwitch_0_5, 'ngSwitch', currVal_0);
      }
      this._NgSwitch_0_5.ngSwitch = (currVal_0!) /* REF:package:angulardart_components/material_input/material_input.html:3868:3897 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.errorState;
    if (import23.checkBinding(this._expr_1, currVal_1, 'errorState', 'package:angulardart_components/material_input/material_input.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgSwitchWhen_1_9, 'ngSwitchWhen', currVal_1);
      }
      this._NgSwitchWhen_1_9.ngSwitchWhen = (currVal_1!) /* REF:package:angulardart_components/material_input/material_input.html:4088:4114 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.hintState;
    if (import23.checkBinding(this._expr_2, currVal_2, 'hintState', 'package:angulardart_components/material_input/material_input.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgSwitchWhen_2_9, 'ngSwitchWhen', currVal_2);
      }
      this._NgSwitchWhen_2_9.ngSwitchWhen = (currVal_2!) /* REF:package:angulardart_components/material_input/material_input.html:4237:4262 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.emptyState;
    if (import23.checkBinding(this._expr_3, currVal_3, 'emptyState', 'package:angulardart_components/material_input/material_input.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgSwitchWhen_3_9, 'ngSwitchWhen', currVal_3);
      }
      this._NgSwitchWhen_3_9.ngSwitchWhen = (currVal_3!) /* REF:package:angulardart_components/material_input/material_input.html:4324:4350 */;
      this._expr_3 = currVal_3;
    }
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', (((_ctx.maxCount != null) ?? false) || (_ctx.showCharacterCount ?? false)));
    }
    this._NgIf_4_9.ngIf = ((((_ctx.maxCount != null) ?? false) || (_ctx.showCharacterCount ?? false)) ?? false) /* REF:package:angulardart_components/material_input/material_input.html:4468:4514 */;
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

import26.EmbeddedView<void> viewFactory_MaterialInputComponent5(import29.RenderView parentView, int parentIndex) {
  return _ViewMaterialInputComponent5(parentView, parentIndex);
}

class _ViewMaterialInputComponent6 extends import26.EmbeddedView<import2.MaterialInputComponent> {
  final import3.TextBinding _textBinding_1 = import3.TextBinding();
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  late final _el_0;
  _ViewMaterialInputComponent6(import29.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import15.createRenderElement('div');
    this.updateChildClass(this._el_0, 'error-text');
    import15.updateRenderAttribute(this._el_0, 'role', 'alert');
    this.addShimC(this._el_0);
    import15.appendRenderChild(this._el_0, this._textBinding_1.element);
    final _text_2 = import15.createRenderText(' ');
    import15.appendRenderChild(this._el_0, _text_2);
    this.project(this._el_0, 1);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.errorTextId;
    if (import23.checkBinding(this._expr_0, currVal_0, 'errorTextId', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_0, 'id', currVal_0) /* REF:package:angulardart_components/material_input/material_input.html:3952:3975 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.focused;
    if (import23.checkBinding(this._expr_1, currVal_1, 'focused', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_0, 'focused', (currVal_1 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:4022:4047 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.invalid;
    if (import23.checkBinding(this._expr_2, currVal_2, 'invalid', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_0, 'invalid', (currVal_2 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:4055:4080 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = import24.interpolate0((!(_ctx.invalid ?? false)));
    if (import23.checkBinding(this._expr_3, currVal_3, '{{!invalid}}', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_0, 'aria-hidden', currVal_3) /* REF:package:angulardart_components/material_input/material_input.html:3983:4014 */;
      this._expr_3 = currVal_3;
    }
    this._textBinding_1.updateText(import24.interpolateString0(_ctx.errorMessage)) /* REF:package:angulardart_components/material_input/material_input.html:4120:4136 */;
  }
}

import26.EmbeddedView<void> viewFactory_MaterialInputComponent6(import29.RenderView parentView, int parentIndex) {
  return _ViewMaterialInputComponent6(parentView, parentIndex);
}

class _ViewMaterialInputComponent7 extends import26.EmbeddedView<import2.MaterialInputComponent> {
  final import3.TextBinding _textBinding_1 = import3.TextBinding();
  _ViewMaterialInputComponent7(import29.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import15.createRenderElement('div');
    this.updateChildClass(_el_0, 'hint-text');
    this.addShimC(_el_0);
    import15.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import24.interpolateString0(_ctx.hintText)) /* REF:package:angulardart_components/material_input/material_input.html:4268:4280 */;
  }
}

import26.EmbeddedView<void> viewFactory_MaterialInputComponent7(import29.RenderView parentView, int parentIndex) {
  return _ViewMaterialInputComponent7(parentView, parentIndex);
}

class _ViewMaterialInputComponent8 extends import26.EmbeddedView<import2.MaterialInputComponent> {
  _ViewMaterialInputComponent8(import29.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import15.createRenderElement('div');
    import15.updateRenderAttribute(_el_0, 'aria-hidden', 'true');
    this.updateChildClass(_el_0, 'spaceholder');
    import15.updateRenderTabIndex(_el_0, -1);
    this.addShimC(_el_0);
    final _text_1 = import15.createRenderText(' ');
    import15.appendRenderChild(_el_0, _text_1);
    import15.addRenderEventListener(_el_0, 'focus', this.eventHandler1(this._handleEvent_0));
    this.initRootNode(_el_0);
  }

  void _handleEvent_0($event) {
    $event.stopPropagation();
  }
}

import26.EmbeddedView<void> viewFactory_MaterialInputComponent8(import29.RenderView parentView, int parentIndex) {
  return _ViewMaterialInputComponent8(parentView, parentIndex);
}

class _ViewMaterialInputComponent9 extends import26.EmbeddedView<import2.MaterialInputComponent> {
  final import3.TextBinding _textBinding_1 = import3.TextBinding();
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMaterialInputComponent9(import29.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import15.createRenderElement('div');
    this.updateChildClass(this._el_0, 'counter');
    this.addShimC(this._el_0);
    import15.appendRenderChild(this._el_0, this._textBinding_1.element);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.msgCharacterCounterAriaLabel(_ctx.inputTextLength, _ctx.maxCount);
    if (import23.checkBinding(this._expr_0, currVal_0, 'msgCharacterCounterAriaLabel(inputTextLength, maxCount)', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderAttribute(this._el_0, 'aria-label', currVal_0) /* REF:package:angulardart_components/material_input/material_input.html:4522:4597 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.invalid;
    if (import23.checkBinding(this._expr_1, currVal_1, 'invalid', 'package:angulardart_components/material_input/material_input.html')) {
      import15.updateRenderClass(this._el_0, 'invalid', (currVal_1 ?? false)) /* REF:package:angulardart_components/material_input/material_input.html:4628:4653 */;
      this._expr_1 = currVal_1;
    }
    this._textBinding_1.updateText(import24.interpolateString0(_ctx.msgCharacterCounter(_ctx.inputTextLength, _ctx.maxCount))) /* REF:package:angulardart_components/material_input/material_input.html:4659:4709 */;
  }
}

import26.EmbeddedView<void> viewFactory_MaterialInputComponent9(import29.RenderView parentView, int parentIndex) {
  return _ViewMaterialInputComponent9(parentView, parentIndex);
}

final List<Object> styles$MaterialInputComponentHost = const [];

class _ViewMaterialInputComponentHost0 extends import31.HostView<import2.MaterialInputComponent> {
  late List<Object> _NgValidators_0_7 = [this._DeferredValidator_0_5];
  late final import33.DeferredValidator _DeferredValidator_0_5;
  @override
  void build() {
    this.componentView = ViewMaterialInputComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this._DeferredValidator_0_5 = import33.DeferredValidator();
    this.component = import2.MaterialInputComponent(null, null, null, this.componentView, this._DeferredValidator_0_5);
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import33.DeferredValidator)) {
        return this._DeferredValidator_0_5;
      }
      if (((((identical(token, import2.MaterialInputComponent) || identical(token, import34.ReferenceDirective)) || identical(token, import19.Focusable)) || identical(token, import35.HasDisabled)) || identical(token, import36.BaseMaterialInput))) {
        return this.component;
      }
      if (identical(token, const import20.MultiToken<Object>('NgValidators'))) {
        return this._NgValidators_0_7;
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
    if ((!import23.debugThrowIfChanged)) {
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

import31.HostView<import2.MaterialInputComponent> viewFactory_MaterialInputComponentHost0() {
  return _ViewMaterialInputComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialInputComponent, createMaterialInputComponentFactory());
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
}
