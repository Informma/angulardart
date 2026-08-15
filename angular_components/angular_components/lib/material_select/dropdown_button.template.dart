// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'dropdown_button.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angulardart_components/focus/focus_interface.template.dart' as _ref2;
import 'package:angulardart_components/focus/keyboard_only_focus_indicator.template.dart' as _ref3;
import 'package:angulardart_components/glyph/glyph.template.dart' as _ref4;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref5;
import 'package:angulardart_components/mixins/button_wrapper.template.dart' as _ref6;
import 'package:angulardart_components/mixins/focusable_mixin.template.dart' as _ref7;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref8;
import 'package:angulardart_components/utils/id_generator/id_generator.template.dart' as _ref9;
import 'package:angulardart_components/button_decorator/button_decorator.scss.css.shim.dart' as import0;
import 'package:angulardart_components/material_select/dropdown_button.scss.css.shim.dart' as import1;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import2;

import 'dropdown_button.dart' as import3;
import '../button_decorator/button_decorator.template.dart' as import4;
import '../focus/keyboard_only_focus_indicator.dart' as import5;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import8;
import 'package:angulardart/src/core/linker/views/view.dart' as import9;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import11;
import 'package:angulardart/src/utilities.dart' as import12;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import13;

import '../button_decorator/button_decorator.dart' as import14;

import 'package:angulardart/src/di/errors.dart' as import15;

import '../utils/browser/dom_service/dom_service.dart' as import16;

import 'package:angulardart/src/devtools.dart' as import17;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/runtime/check_binding.dart' as import19;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import21;
import 'package:angulardart/src/runtime/text_binding.dart' as import22;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import23;
import 'package:angulardart/src/runtime/interpolate.dart' as import24;

import '../glyph/glyph.template.dart' as import25;
import '../glyph/glyph.dart' as import26;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import27;

import '../interfaces/has_disabled.dart' as import28;
import '../focus/focus_interface.dart' as import29;

final List<Object> styles$DropdownButtonComponent = [import0.styles, import1.styles];

class ViewDropdownButtonComponent0 extends import2.ComponentView<import3.DropdownButtonComponent> {
  late final import4.ButtonDirectiveNgCd _ButtonDirective_0_5;
  late final import5.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_6;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_3;
  late final NgIf _NgIf_3_9;
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
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
  late final _el_0;
  static import8.ComponentStyles? _componentStyles;
  ViewDropdownButtonComponent0(import9.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import11.renderFactory.createElement('dropdown-button');
  }
  static String? get _debugComponentUrl {
    return (import12.isDevMode ? 'asset:angulardart_components/lib/material_select/dropdown_button.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._el_0 = import13.createRenderElement('div');
    import13.appendRenderChild(parentRenderNode, this._el_0);
    import13.updateRenderAttribute(this._el_0, 'buttonDecorator', '');
    this.updateChildClass(this._el_0, 'button');
    import13.updateRenderAttribute(this._el_0, 'keyboardOnlyFocusIndicator', '');
    this.addShimC(this._el_0);
    this._ButtonDirective_0_5 = import4.ButtonDirectiveNgCd(import14.ButtonDirective(import13.unwrapNode(this._el_0), null));
    this._KeyboardOnlyFocusIndicatorDirective_0_6 = (import12.isDevMode
        ? import15.debugInjectorWrap(import5.KeyboardOnlyFocusIndicatorDirective, () {
            return import5.KeyboardOnlyFocusIndicatorDirective(import13.unwrapNode(this._el_0), (this.parentView!).injectorGet(import16.DomService, this.parentIndex));
          })
        : import5.KeyboardOnlyFocusIndicatorDirective(import13.unwrapNode(this._el_0), (this.parentView!).injectorGet(import16.DomService, this.parentIndex)));
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(this._el_0, this._ButtonDirective_0_5.instance);
      import17.Inspector.instance.registerDirective(this._el_0, this._KeyboardOnlyFocusIndicatorDirective_0_6);
    }
    final _anchor_1 = import13.createRenderAnchor();
    import13.appendRenderChild(this._el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_DropdownButtonComponent1);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _text_2 = import13.createRenderText(' ');
    import13.appendRenderChild(this._el_0, _text_2);
    this.project(this._el_0, 0);
    final _anchor_3 = import13.createRenderAnchor();
    import13.appendRenderChild(this._el_0, _anchor_3);
    this._appEl_3 = ViewContainer(3, 0, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, viewFactory_DropdownButtonComponent2);
    this._NgIf_3_9 = NgIf(this._appEl_3, _TemplateRef_3_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_3, this._NgIf_3_9);
    }
    final _anchor_4 = import13.createRenderAnchor();
    import13.appendRenderChild(parentRenderNode, _anchor_4);
    this._appEl_4 = ViewContainer(4, null, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_DropdownButtonComponent3);
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
    import13.addRenderEventListener(this._el_0, 'focus', this.eventHandler1(this._handleEvent_0));
    import13.addRenderEventListener(this._el_0, 'blur', this.eventHandler1(this._handleEvent_1));
    import13.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._handleEvent_2));
    import13.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(this._ButtonDirective_0_5.instance.handleKeyPress));
    import13.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_6.keydown));
    import13.addRenderEventListener(this._el_0, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_6.onMouseInteraction));
    _ctx.button = this._ButtonDirective_0_5.instance;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import14.ButtonDirective) && (nodeIndex <= 3))) {
      return this._ButtonDirective_0_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_10 = _ctx.ariaRole;
    if (import19.checkBinding(this._expr_10, currVal_10, 'ariaRole', 'package:angulardart_components/material_select/dropdown_button.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._ButtonDirective_0_5.instance, 'role', currVal_10);
      }
      this._ButtonDirective_0_5.instance.role = (currVal_10!) /* REF:package:angulardart_components/material_select/dropdown_button.html:644:661 */;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.disabled;
    if (import19.checkBinding(this._expr_11, currVal_11, 'disabled', 'package:angulardart_components/material_select/dropdown_button.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._ButtonDirective_0_5.instance, 'disabled', currVal_11);
      }
      this._ButtonDirective_0_5.instance.disabled = (currVal_11!) /* REF:package:angulardart_components/material_select/dropdown_button.html:617:638 */;
      this._expr_11 = currVal_11;
    }
    final currVal_12 = _ctx.tabbable;
    if (import19.checkBinding(this._expr_12, currVal_12, 'tabbable', 'package:angulardart_components/material_select/dropdown_button.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._ButtonDirective_0_5.instance, 'tabbable', currVal_12);
      }
      this._ButtonDirective_0_5.instance.tabbable = (currVal_12!) /* REF:package:angulardart_components/material_select/dropdown_button.html:245:266 */;
      this._expr_12 = currVal_12;
    }
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', (_ctx.buttonText != null));
    }
    this._NgIf_1_9.ngIf = ((_ctx.buttonText != null) ?? false) /* REF:package:angulardart_components/material_select/dropdown_button.html:860:886 */;
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_3_9, 'ngIf', (_ctx.buttonIcon != null));
    }
    this._NgIf_3_9.ngIf = ((_ctx.buttonIcon != null) ?? false) /* REF:package:angulardart_components/material_select/dropdown_button.html:946:972 */;
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', _ctx.invalid);
    }
    this._NgIf_4_9.ngIf = (_ctx.invalid ?? false) /* REF:package:angulardart_components/material_select/dropdown_button.html:1155:1170 */;
    final currVal_0 = _ctx.uuid;
    if (import19.checkBinding(this._expr_0, currVal_0, 'uuid', 'package:angulardart_components/material_select/dropdown_button.html')) {
      import13.updateRenderAttribute(this._el_0, 'id', currVal_0) /* REF:package:angulardart_components/material_select/dropdown_button.html:304:320 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.buttonAriaLabel;
    if (import19.checkBinding(this._expr_1, currVal_1, 'buttonAriaLabel', 'package:angulardart_components/material_select/dropdown_button.html')) {
      import13.updateRenderAttribute(this._el_0, 'aria-label', currVal_1) /* REF:package:angulardart_components/material_select/dropdown_button.html:414:449 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.ariaLabelledBy;
    if (import19.checkBinding(this._expr_2, currVal_2, 'ariaLabelledBy', 'package:angulardart_components/material_select/dropdown_button.html')) {
      import13.updateRenderAttribute(this._el_0, 'aria-labelledby', currVal_2) /* REF:package:angulardart_components/material_select/dropdown_button.html:455:494 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.ariaDescribedBy;
    if (import19.checkBinding(this._expr_3, currVal_3, 'ariaDescribedBy', 'package:angulardart_components/material_select/dropdown_button.html')) {
      import13.updateRenderAttribute(this._el_0, 'aria-describedby', currVal_3) /* REF:package:angulardart_components/material_select/dropdown_button.html:500:541 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.showButtonBorder;
    if (import19.checkBinding(this._expr_4, currVal_4, 'showButtonBorder', 'package:angulardart_components/material_select/dropdown_button.html')) {
      import13.updateRenderClass(this._el_0, 'border', (currVal_4 ?? false)) /* REF:package:angulardart_components/material_select/dropdown_button.html:547:580 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.invalid;
    if (import19.checkBinding(this._expr_5, currVal_5, 'invalid', 'package:angulardart_components/material_select/dropdown_button.html')) {
      import13.updateRenderClass(this._el_0, 'invalid', (currVal_5 ?? false)) /* REF:package:angulardart_components/material_select/dropdown_button.html:586:611 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.popupType;
    if (import19.checkBinding(this._expr_6, currVal_6, 'popupType', 'package:angulardart_components/material_select/dropdown_button.html')) {
      import13.updateRenderAttribute(this._el_0, 'aria-haspopup', currVal_6) /* REF:package:angulardart_components/material_select/dropdown_button.html:667:699 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.ariaOwns;
    if (import19.checkBinding(this._expr_7, currVal_7, 'ariaOwns', 'package:angulardart_components/material_select/dropdown_button.html')) {
      import13.updateRenderAttribute(this._el_0, 'aria-owns', currVal_7) /* REF:package:angulardart_components/material_select/dropdown_button.html:705:732 */;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.ariaExpanded;
    if (import19.checkBinding(this._expr_8, currVal_8, 'ariaExpanded', 'package:angulardart_components/material_select/dropdown_button.html')) {
      import13.updateRenderAttribute(this._el_0, 'aria-expanded', currVal_8?.toString()) /* REF:package:angulardart_components/material_select/dropdown_button.html:738:773 */;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.ariaActiveDescendant;
    if (import19.checkBinding(this._expr_9, currVal_9, 'ariaActiveDescendant', 'package:angulardart_components/material_select/dropdown_button.html')) {
      import13.updateRenderAttribute(this._el_0, 'aria-activedescendant', currVal_9) /* REF:package:angulardart_components/material_select/dropdown_button.html:779:830 */;
      this._expr_9 = currVal_9;
    }
    this._ButtonDirective_0_5.detectHostChanges(this, this._el_0);
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_3.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_3.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.handleFocus($event);
    this._KeyboardOnlyFocusIndicatorDirective_0_6.onFocus($event);
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.handleBlur($event);
    this._KeyboardOnlyFocusIndicatorDirective_0_6.resetOutline();
  }

  void _handleEvent_2($event) {
    this._ButtonDirective_0_5.instance.handleClick($event);
    this._KeyboardOnlyFocusIndicatorDirective_0_6.onMouseInteraction();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import8.ComponentStyles.scoped(styles$DropdownButtonComponent, _debugComponentUrl));
      if (import12.isDevMode) {
        import8.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _DropdownButtonComponentNgFactory = ComponentFactory<import3.DropdownButtonComponent>('dropdown-button', viewFactory_DropdownButtonComponentHost0);
ComponentFactory<import3.DropdownButtonComponent> get DropdownButtonComponentNgFactory {
  return _DropdownButtonComponentNgFactory;
}

ComponentFactory<import3.DropdownButtonComponent> createDropdownButtonComponentFactory() {
  return ComponentFactory('dropdown-button', viewFactory_DropdownButtonComponentHost0);
}

class _ViewDropdownButtonComponent1 extends import21.EmbeddedView<import3.DropdownButtonComponent> {
  final import22.TextBinding _textBinding_1 = import22.TextBinding();
  _ViewDropdownButtonComponent1(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import13.createRenderElement('span');
    this.updateChildClass(_el_0, 'button-text');
    this.addShimC(_el_0);
    import13.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import24.interpolateString0(_ctx.buttonText)) /* REF:package:angulardart_components/material_select/dropdown_button.html:887:901 */;
  }
}

import21.EmbeddedView<void> viewFactory_DropdownButtonComponent1(import23.RenderView parentView, int parentIndex) {
  return _ViewDropdownButtonComponent1(parentView, parentIndex);
}

class _ViewDropdownButtonComponent2 extends import21.EmbeddedView<import3.DropdownButtonComponent> {
  late final import25.ViewGlyphComponent0 _compView_0;
  late final import26.GlyphComponent _GlyphComponent_0_5;
  Object? _expr_0;
  _ViewDropdownButtonComponent2(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import25.ViewGlyphComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'icon');
    this.addShimC(_el_0);
    this._GlyphComponent_0_5 = import26.GlyphComponent(import13.unwrapNode(_el_0));
    this._compView_0.create(this._GlyphComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    final currVal_0 = _ctx.buttonIcon;
    if (import19.checkBinding(this._expr_0, currVal_0, 'buttonIcon', 'package:angulardart_components/material_select/dropdown_button.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._GlyphComponent_0_5, 'icon', currVal_0);
      }
      this._GlyphComponent_0_5.icon = (currVal_0!) /* REF:package:angulardart_components/material_select/dropdown_button.html:1004:1023 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }
}

import21.EmbeddedView<void> viewFactory_DropdownButtonComponent2(import23.RenderView parentView, int parentIndex) {
  return _ViewDropdownButtonComponent2(parentView, parentIndex);
}

class _ViewDropdownButtonComponent3 extends import21.EmbeddedView<import3.DropdownButtonComponent> {
  final import22.TextBinding _textBinding_1 = import22.TextBinding();
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewDropdownButtonComponent3(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import13.createRenderElement('div');
    this.updateChildClass(this._el_0, 'error-text');
    import13.updateRenderAttribute(this._el_0, 'role', 'alert');
    this.addShimC(this._el_0);
    import13.appendRenderChild(this._el_0, this._textBinding_1.element);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.invalid;
    if (import19.checkBinding(this._expr_0, currVal_0, 'invalid', 'package:angulardart_components/material_select/dropdown_button.html')) {
      import13.updateRenderClass(this._el_0, 'invalid', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_select/dropdown_button.html:1124:1149 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = import24.interpolate0((!(_ctx.invalid ?? false)));
    if (import19.checkBinding(this._expr_1, currVal_1, '{{!invalid}}', 'package:angulardart_components/material_select/dropdown_button.html')) {
      import13.updateRenderAttribute(this._el_0, 'aria-hidden', currVal_1) /* REF:package:angulardart_components/material_select/dropdown_button.html:1087:1118 */;
      this._expr_1 = currVal_1;
    }
    this._textBinding_1.updateText(import24.interpolateString0(_ctx.error)) /* REF:package:angulardart_components/material_select/dropdown_button.html:1174:1183 */;
  }
}

import21.EmbeddedView<void> viewFactory_DropdownButtonComponent3(import23.RenderView parentView, int parentIndex) {
  return _ViewDropdownButtonComponent3(parentView, parentIndex);
}

final List<Object> styles$DropdownButtonComponentHost = const [];

class _ViewDropdownButtonComponentHost0 extends import27.HostView<import3.DropdownButtonComponent> {
  @override
  void build() {
    this.componentView = ViewDropdownButtonComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import3.DropdownButtonComponent();
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import28.HasDisabled) || identical(token, import29.Focusable)) && (0 == nodeIndex))) {
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
    if (((!import19.debugThrowIfChanged) && firstCheck)) {
      this.component.ngOnInit();
    }
    this.componentView.detectChangesDeprecated();
  }
}

import27.HostView<import3.DropdownButtonComponent> viewFactory_DropdownButtonComponentHost0() {
  return _ViewDropdownButtonComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(DropdownButtonComponent, createDropdownButtonComponentFactory());
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
