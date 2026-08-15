// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_stepper.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angulardart_components/laminate/portal/portal.template.dart' as _ref2;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref3;
import 'package:angulardart_components/material_stepper/common.template.dart' as _ref4;
import 'package:angulardart_components/material_stepper/material_step.template.dart' as _ref5;
import 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.template.dart' as _ref6;
import 'package:angulardart_components/model/action/async_action.template.dart' as _ref7;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref8;
import 'package:angulardart_components/utils/angular/scroll_host/angular_2.template.dart' as _ref9;
import 'package:angulardart_components/utils/browser/events/events.template.dart' as _ref10;
import 'package:angulardart_components/material_stepper/material_stepper.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_stepper.dart' as import2;
import '../utils/angular/scroll_host/angular_2.dart' as import3;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_for.dart' as import5;
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import7;
import 'package:angulardart/src/core/linker/views/view.dart' as import8;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import10;
import 'package:angulardart/src/utilities.dart' as import11;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import12;
import 'package:angulardart/src/di/errors.dart' as import13;

import '../src/utils/angular/scroll_host/scroll_host_interface.dart' as import14;

import 'package:angulardart/src/devtools.dart' as import15;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/runtime/check_binding.dart' as import17;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import19;
import 'package:angulardart/src/runtime/text_binding.dart' as import20;

import '../button_decorator/button_decorator.template.dart' as import21;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import22;

import '../button_decorator/button_decorator.dart' as import23;

import 'package:angulardart/src/runtime/interpolate.dart' as import24;

import '../material_icon/material_icon.template.dart' as import25;
import '../material_icon/material_icon.dart' as import26;
import '../laminate/portal/portal.dart' as import27;
import '../material_yes_no_buttons/material_yes_no_buttons.template.dart' as import28;
import '../material_yes_no_buttons/material_yes_no_buttons.dart' as import29;
import '../interfaces/has_disabled.dart' as import30;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import31;

final List<Object> styles$MaterialStepperComponent = [import0.styles];

class ViewMaterialStepperComponent0 extends import1.ComponentView<import2.MaterialStepperComponent> {
  late final import3.StickyElementDirective _StickyElementDirective_1_5;
  late final ViewContainer _appEl_3;
  late final import5.NgFor _NgFor_3_9;
  late final ViewContainer _appEl_6;
  late final NgIf _NgIf_6_9;
  late final ViewContainer _appEl_10;
  late final NgIf _NgIf_10_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  late final _el_8;
  late final _el_1;
  static import7.ComponentStyles? _componentStyles;
  ViewMaterialStepperComponent0(import8.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import10.renderFactory.createElement('material-stepper');
  }
  static String? get _debugComponentUrl {
    return (import11.isDevMode ? 'asset:angulardart_components/lib/material_stepper/material_stepper.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _text_0 = import12.createRenderText('\n');
    import12.appendRenderChild(parentRenderNode, _text_0);
    this._el_1 = import12.createRenderElement('div');
    import12.appendRenderChild(parentRenderNode, this._el_1);
    this.updateChildClass(this._el_1, 'stepper stepper-body mixin');
    this.addShimC(this._el_1);
    this._StickyElementDirective_1_5 = (import11.isDevMode
        ? import13.debugInjectorWrap(import3.StickyElementDirective, () {
            return import3.StickyElementDirective((this.parentView!).injectorGet(import14.ScrollHost, this.parentIndex), import12.unwrapNode(this._el_1));
          })
        : import3.StickyElementDirective((this.parentView!).injectorGet(import14.ScrollHost, this.parentIndex), import12.unwrapNode(this._el_1)));
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(this._el_1, this._StickyElementDirective_1_5);
    }
    final _text_2 = import12.createRenderText('\n  ');
    import12.appendRenderChild(this._el_1, _text_2);
    final _anchor_3 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_1, _anchor_3);
    this._appEl_3 = ViewContainer(3, 1, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, viewFactory_MaterialStepperComponent1);
    this._NgFor_3_9 = import5.NgFor(this._appEl_3, _TemplateRef_3_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_3, this._NgFor_3_9);
    }
    final _text_4 = import12.createRenderText('\n');
    import12.appendRenderChild(this._el_1, _text_4);
    final _text_5 = import12.createRenderText('\n');
    import12.appendRenderChild(parentRenderNode, _text_5);
    final _anchor_6 = import12.createRenderAnchor();
    import12.appendRenderChild(parentRenderNode, _anchor_6);
    this._appEl_6 = ViewContainer(6, null, this, _anchor_6);
    var _TemplateRef_6_8 = TemplateRef(this._appEl_6, viewFactory_MaterialStepperComponent12);
    this._NgIf_6_9 = NgIf(this._appEl_6, _TemplateRef_6_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_6, this._NgIf_6_9);
    }
    final _text_7 = import12.createRenderText('\n');
    import12.appendRenderChild(parentRenderNode, _text_7);
    this._el_8 = import12.createRenderElement('div');
    import12.appendRenderChild(parentRenderNode, this._el_8);
    this.addShimC(this._el_8);
    final _text_9 = import12.createRenderText('\n');
    import12.appendRenderChild(parentRenderNode, _text_9);
    final _anchor_10 = import12.createRenderAnchor();
    import12.appendRenderChild(parentRenderNode, _anchor_10);
    this._appEl_10 = ViewContainer(10, null, this, _anchor_10);
    var _TemplateRef_10_8 = TemplateRef(this._appEl_10, viewFactory_MaterialStepperComponent19);
    this._NgIf_10_9 = NgIf(this._appEl_10, _TemplateRef_10_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_10, this._NgIf_10_9);
    }
    final _text_11 = import12.createRenderText('\n');
    import12.appendRenderChild(parentRenderNode, _text_11);
    _ctx.stepperNativeElement = import12.unwrapNode(this._el_1);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    final local_afterStepperElement = this._el_8;
    final currVal_2 = local_afterStepperElement;
    if (import17.checkBinding(this._expr_2, currVal_2, 'afterStepperElement', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._StickyElementDirective_1_5, 'acxStickyElement', currVal_2);
      }
      this._StickyElementDirective_1_5.endElement = (currVal_2!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:340:380 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.stickyHeader;
    if (import17.checkBinding(this._expr_3, currVal_3, 'stickyHeader', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._StickyElementDirective_1_5, 'sticky', currVal_3);
      }
      this._StickyElementDirective_1_5.sticky = (currVal_3!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:386:409 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.steps;
    if (import17.checkBinding(this._expr_4, currVal_4, 'steps', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._NgFor_3_9, 'ngForOf', currVal_4);
      }
      this._NgFor_3_9.ngForOf = (currVal_4!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:493:519 */;
      this._expr_4 = currVal_4;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgFor_3_9.ngDoCheck();
    }
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_6_9, 'ngIf', (((((!(_ctx.shouldInlineContent ?? false)) ?? false) && ((!(_ctx.stepperDone ?? false)) ?? false)) ?? false) && ((_ctx.steps.length > 0) ?? false)));
    }
    this._NgIf_6_9.ngIf = ((((((!(_ctx.shouldInlineContent ?? false)) ?? false) && ((!(_ctx.stepperDone ?? false)) ?? false)) ?? false) && ((_ctx.steps.length > 0) ?? false)) ?? false) /* REF:package:angulardart_components/material_stepper/material_stepper.html:3762:3826 */;
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_10_9, 'ngIf', _ctx.announceCurrentStep);
    }
    this._NgIf_10_9.ngIf = (_ctx.announceCurrentStep ?? false) /* REF:package:angulardart_components/material_stepper/material_stepper.html:4868:4895 */;
    final currVal_0 = _ctx.orientation;
    if (import17.checkBinding(this._expr_0, currVal_0, 'orientation', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_1, 'orientation', currVal_0) /* REF:package:angulardart_components/material_stepper/material_stepper.html:278:310 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.size;
    if (import17.checkBinding(this._expr_1, currVal_1, 'size', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_1, 'size', currVal_1) /* REF:package:angulardart_components/material_stepper/material_stepper.html:316:334 */;
      this._expr_1 = currVal_1;
    }
    this._appEl_3.detectChangesInNestedViews();
    this._appEl_6.detectChangesInNestedViews();
    this._appEl_10.detectChangesInNestedViews();
    if ((!import17.debugThrowIfChanged)) {
      if (firstCheck) {
        this._StickyElementDirective_1_5.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_3.destroyNestedViews();
    this._appEl_6.destroyNestedViews();
    this._appEl_10.destroyNestedViews();
    this._StickyElementDirective_1_5.ngOnDestroy();
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_5 = import2.MaterialStepperComponent.hostClass;
    if (import17.checkBinding(this._expr_5, currVal_5, null, null)) {
      this.updateChildClassNonHtml(this.rootElement, currVal_5);
      this._expr_5 = currVal_5;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import7.ComponentStyles.scoped(styles$MaterialStepperComponent, _debugComponentUrl));
      if (import11.isDevMode) {
        import7.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialStepperComponentNgFactory = ComponentFactory<import2.MaterialStepperComponent>('material-stepper', viewFactory_MaterialStepperComponentHost0);
ComponentFactory<import2.MaterialStepperComponent> get MaterialStepperComponentNgFactory {
  return _MaterialStepperComponentNgFactory;
}

ComponentFactory<import2.MaterialStepperComponent> createMaterialStepperComponentFactory() {
  return ComponentFactory('material-stepper', viewFactory_MaterialStepperComponentHost0);
}

class _ViewMaterialStepperComponent1 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  final import20.TextBinding _textBinding_5 = import20.TextBinding();
  final import20.TextBinding _textBinding_15 = import20.TextBinding();
  final import20.TextBinding _textBinding_20 = import20.TextBinding();
  late final import21.ButtonDirectiveNgCd _ButtonDirective_0_5;
  late final ViewContainer _appEl_7;
  late final NgIf _NgIf_7_9;
  late final ViewContainer _appEl_22;
  late final NgIf _NgIf_22_9;
  late final ViewContainer _appEl_26;
  late final NgIf _NgIf_26_9;
  late final ViewContainer _appEl_28;
  late final NgIf _NgIf_28_9;
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
  late final _el_0;
  late final _el_3;
  late final _el_11;
  late final _el_13;
  late final _el_18;
  _ViewMaterialStepperComponent1(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import12.createRenderElement('div');
    import12.updateRenderAttribute(this._el_0, 'buttonDecorator', '');
    this.updateChildClass(this._el_0, 'stepper-step');
    this.addShimC(this._el_0);
    this._ButtonDirective_0_5 = import21.ButtonDirectiveNgCd(import23.ButtonDirective(import12.unwrapNode(this._el_0), null));
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(this._el_0, this._ButtonDirective_0_5.instance);
    }
    final _text_1 = import12.createRenderText('\n    ');
    import12.appendRenderChild(this._el_0, _text_1);
    final _text_2 = import12.createRenderText('\n        ');
    import12.appendRenderChild(this._el_0, _text_2);
    this._el_3 = import12.createRenderElement('span');
    import12.appendRenderChild(this._el_0, this._el_3);
    this.updateChildClass(this._el_3, 'stepper-step-index');
    this.addShimC(this._el_3);
    final _text_4 = import12.createRenderText('\n          ');
    import12.appendRenderChild(this._el_3, _text_4);
    import12.appendRenderChild(this._el_3, this._textBinding_5.element);
    final _text_6 = import12.createRenderText('\n          ');
    import12.appendRenderChild(this._el_3, _text_6);
    final _anchor_7 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_3, _anchor_7);
    this._appEl_7 = ViewContainer(7, 3, this, _anchor_7);
    var _TemplateRef_7_8 = TemplateRef(this._appEl_7, viewFactory_MaterialStepperComponent2);
    this._NgIf_7_9 = NgIf(this._appEl_7, _TemplateRef_7_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_7, this._NgIf_7_9);
    }
    final _text_8 = import12.createRenderText('\n        ');
    import12.appendRenderChild(this._el_3, _text_8);
    final _text_9 = import12.createRenderText('\n    ');
    import12.appendRenderChild(this._el_0, _text_9);
    final _text_10 = import12.createRenderText('\n    ');
    import12.appendRenderChild(this._el_0, _text_10);
    this._el_11 = import12.createRenderElement('div');
    import12.appendRenderChild(this._el_0, this._el_11);
    this.updateChildClass(this._el_11, 'stepper-step-header');
    this.addShimC(this._el_11);
    final _text_12 = import12.createRenderText('\n      ');
    import12.appendRenderChild(this._el_11, _text_12);
    this._el_13 = import12.createRenderElement('span');
    import12.appendRenderChild(this._el_11, this._el_13);
    this.updateChildClass(this._el_13, 'stepper-step-name');
    this.addShimC(this._el_13);
    final _text_14 = import12.createRenderText('\n        ');
    import12.appendRenderChild(this._el_13, _text_14);
    import12.appendRenderChild(this._el_13, this._textBinding_15.element);
    final _text_16 = import12.createRenderText('\n      ');
    import12.appendRenderChild(this._el_13, _text_16);
    final _text_17 = import12.createRenderText('\n      ');
    import12.appendRenderChild(this._el_11, _text_17);
    this._el_18 = import12.createRenderElement('div');
    import12.appendRenderChild(this._el_11, this._el_18);
    this.updateChildClass(this._el_18, 'stepper-step-optional');
    this.addShimC(this._el_18);
    final _text_19 = import12.createRenderText('\n        ');
    import12.appendRenderChild(this._el_18, _text_19);
    import12.appendRenderChild(this._el_18, this._textBinding_20.element);
    final _text_21 = import12.createRenderText('\n          ');
    import12.appendRenderChild(this._el_18, _text_21);
    final _anchor_22 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_18, _anchor_22);
    this._appEl_22 = ViewContainer(22, 18, this, _anchor_22);
    var _TemplateRef_22_8 = TemplateRef(this._appEl_22, viewFactory_MaterialStepperComponent3);
    this._NgIf_22_9 = NgIf(this._appEl_22, _TemplateRef_22_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_22, this._NgIf_22_9);
    }
    final _text_23 = import12.createRenderText('\n      ');
    import12.appendRenderChild(this._el_18, _text_23);
    final _text_24 = import12.createRenderText('\n    ');
    import12.appendRenderChild(this._el_11, _text_24);
    final _text_25 = import12.createRenderText('\n    ');
    import12.appendRenderChild(this._el_0, _text_25);
    final _anchor_26 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_0, _anchor_26);
    this._appEl_26 = ViewContainer(26, 0, this, _anchor_26);
    var _TemplateRef_26_8 = TemplateRef(this._appEl_26, viewFactory_MaterialStepperComponent4);
    this._NgIf_26_9 = NgIf(this._appEl_26, _TemplateRef_26_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_26, this._NgIf_26_9);
    }
    final _text_27 = import12.createRenderText('\n    ');
    import12.appendRenderChild(this._el_0, _text_27);
    final _anchor_28 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_0, _anchor_28);
    this._appEl_28 = ViewContainer(28, 0, this, _anchor_28);
    var _TemplateRef_28_8 = TemplateRef(this._appEl_28, viewFactory_MaterialStepperComponent5);
    this._NgIf_28_9 = NgIf(this._appEl_28, _TemplateRef_28_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_28, this._NgIf_28_9);
    }
    final _text_29 = import12.createRenderText('\n  ');
    import12.appendRenderChild(this._el_0, _text_29);
    import12.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._ButtonDirective_0_5.instance.handleClick));
    import12.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(this._ButtonDirective_0_5.instance.handleKeyPress));
    final subscription_0 = this._ButtonDirective_0_5.instance.trigger.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import11.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import23.ButtonDirective) && (nodeIndex <= 29))) {
      return this._ButtonDirective_0_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final local_step = this.locals['\$implicit'];
    final currVal_6 = local_step.isNotSelectable;
    if (import17.checkBinding(this._expr_6, currVal_6, 'step.isNotSelectable', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._ButtonDirective_0_5.instance, 'disabled', currVal_6);
      }
      this._ButtonDirective_0_5.instance.disabled = (currVal_6!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:723:756 */;
      this._expr_6 = currVal_6;
    }
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_7_9, 'ngIf', local_step.complete);
    }
    this._NgIf_7_9.ngIf = (local_step.complete ?? false) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1217:1238 */;
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_22_9, 'ngIf', local_step.isSelectable);
    }
    this._NgIf_22_9.ngIf = (local_step.isSelectable ?? false) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1846:1871 */;
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_26_9, 'ngIf', (!(local_step.isLast ?? false)));
    }
    this._NgIf_26_9.ngIf = ((!(local_step.isLast ?? false)) ?? false) /* REF:package:angulardart_components/material_stepper/material_stepper.html:2125:2145 */;
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_28_9, 'ngIf', ((_ctx.shouldInlineContent ?? false) && ((!(_ctx.stepperDone ?? false)) ?? false)));
    }
    this._NgIf_28_9.ngIf = (((_ctx.shouldInlineContent ?? false) && ((!(_ctx.stepperDone ?? false)) ?? false)) ?? false) /* REF:package:angulardart_components/material_stepper/material_stepper.html:2264:2307 */;
    final currVal_0 = _ctx.stepAriaLabel(local_step);
    if (import17.checkBinding(this._expr_0, currVal_0, 'stepAriaLabel(step)', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_0, 'aria-label', currVal_0) /* REF:package:angulardart_components/material_stepper/material_stepper.html:446:485 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.orientation;
    if (import17.checkBinding(this._expr_1, currVal_1, 'orientation', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_0, 'orientation', currVal_1) /* REF:package:angulardart_components/material_stepper/material_stepper.html:527:559 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.size;
    if (import17.checkBinding(this._expr_2, currVal_2, 'size', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_0, 'size', currVal_2) /* REF:package:angulardart_components/material_stepper/material_stepper.html:567:585 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = local_step.isSelectable;
    if (import17.checkBinding(this._expr_3, currVal_3, 'step.isSelectable', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderClass(this._el_0, 'can-select', (currVal_3 ?? false)) /* REF:package:angulardart_components/material_stepper/material_stepper.html:593:631 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = import24.interpolate0(local_step.active);
    if (import17.checkBinding(this._expr_4, currVal_4, '{{step.active}}', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_0, 'active', currVal_4) /* REF:package:angulardart_components/material_stepper/material_stepper.html:639:668 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = import24.interpolate0(local_step.isSelectable);
    if (import17.checkBinding(this._expr_5, currVal_5, '{{step.isSelectable}}', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_0, 'selectable', currVal_5) /* REF:package:angulardart_components/material_stepper/material_stepper.html:676:715 */;
      this._expr_5 = currVal_5;
    }
    this._ButtonDirective_0_5.detectHostChanges(this, this._el_0);
    final currVal_7 = _ctx.orientation;
    if (import17.checkBinding(this._expr_7, currVal_7, 'orientation', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_3, 'orientation', currVal_7) /* REF:package:angulardart_components/material_stepper/material_stepper.html:911:943 */;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = local_step.active;
    if (import17.checkBinding(this._expr_8, currVal_8, 'step.active', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_3, 'active', currVal_8?.toString()) /* REF:package:angulardart_components/material_stepper/material_stepper.html:958:985 */;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = local_step.complete;
    if (import17.checkBinding(this._expr_9, currVal_9, 'step.complete', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_3, 'complete', currVal_9?.toString()) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1000:1031 */;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = local_step.partiallyComplete;
    if (import17.checkBinding(this._expr_10, currVal_10, 'step.partiallyComplete', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderClass(this._el_3, 'partially-complete', (currVal_10 ?? false)) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1046:1097 */;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = local_step.isSelectable;
    if (import17.checkBinding(this._expr_11, currVal_11, 'step.isSelectable', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderClass(this._el_3, 'can-select', (currVal_11 ?? false)) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1112:1150 */;
      this._expr_11 = currVal_11;
    }
    final currVal_12 = _ctx.orientation;
    if (import17.checkBinding(this._expr_12, currVal_12, 'orientation', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_11, 'orientation', currVal_12) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1401:1433 */;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = _ctx.size;
    if (import17.checkBinding(this._expr_13, currVal_13, 'size', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_11, 'size', currVal_13) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1443:1461 */;
      this._expr_13 = currVal_13;
    }
    final currVal_14 = local_step.active;
    if (import17.checkBinding(this._expr_14, currVal_14, 'step.active', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_13, 'active', currVal_14?.toString()) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1513:1540 */;
      this._expr_14 = currVal_14;
    }
    final currVal_15 = local_step.complete;
    if (import17.checkBinding(this._expr_15, currVal_15, 'step.complete', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_13, 'complete', currVal_15?.toString()) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1553:1584 */;
      this._expr_15 = currVal_15;
    }
    final currVal_16 = _ctx.orientation;
    if (import17.checkBinding(this._expr_16, currVal_16, 'orientation', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_18, 'orientation', currVal_16) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1674:1706 */;
      this._expr_16 = currVal_16;
    }
    final currVal_17 = local_step.isOptional;
    if (import17.checkBinding(this._expr_17, currVal_17, 'step.isOptional', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_18, 'optional', currVal_17?.toString()) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1718:1751 */;
      this._expr_17 = currVal_17;
    }
    final currVal_18 = _ctx.size;
    if (import17.checkBinding(this._expr_18, currVal_18, 'size', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_18, 'size', currVal_18) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1763:1781 */;
      this._expr_18 = currVal_18;
    }
    this._appEl_7.detectChangesInNestedViews();
    this._appEl_22.detectChangesInNestedViews();
    this._appEl_26.detectChangesInNestedViews();
    this._appEl_28.detectChangesInNestedViews();
    this._textBinding_5.updateText(import24.interpolate0((local_step.complete ? '' : (local_step.index + 1)))) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1162:1200 */;
    this._textBinding_15.updateText(import24.interpolate0(local_step.name)) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1594:1607 */;
    this._textBinding_20.updateText(import24.interpolate0((local_step.isOptional ? import2.MaterialStepperComponent.optionalMsg : ''))) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1791:1829 */;
  }

  @override
  void destroyInternal() {
    this._appEl_7.destroyNestedViews();
    this._appEl_22.destroyNestedViews();
    this._appEl_26.destroyNestedViews();
    this._appEl_28.destroyNestedViews();
  }

  void _handleEvent_0($event) {
    final local_step = this.locals['\$implicit'];
    final _ctx = this.ctx;
    _ctx.jumpStep(local_step.index);
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent1(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent1(parentView, parentIndex);
}

class _ViewMaterialStepperComponent2 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  late final import25.ViewMaterialIconComponent0 _compView_2;
  late final import26.MaterialIconComponent _MaterialIconComponent_2_5;
  _ViewMaterialStepperComponent2(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import12.createRenderElement('span');
    this.addShimC(_el_0);
    final _text_1 = import12.createRenderText('\n            ');
    import12.appendRenderChild(_el_0, _text_1);
    this._compView_2 = import25.ViewMaterialIconComponent0(this, 2);
    final _el_2 = this._compView_2.rootElement;
    import12.appendRenderChild(_el_0, _el_2);
    import12.updateRenderAttribute(_el_2, 'icon', 'check');
    this.addShimC(_el_2);
    this._MaterialIconComponent_2_5 = import26.MaterialIconComponent(import12.unwrapNode(_el_2));
    this._compView_2.create(this._MaterialIconComponent_2_5);
    final _text_3 = import12.createRenderText('\n          ');
    import12.appendRenderChild(_el_0, _text_3);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialIconComponent_2_5, 'icon', 'check');
      }
      this._MaterialIconComponent_2_5.icon = 'check' /* REF:package:angulardart_components/material_stepper/material_stepper.html:1267:1279 */;
      changed = true;
    }
    if (changed) {
      this._compView_2.markAsCheckOnce();
    }
    this._compView_2.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_2.destroyInternalState();
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent2(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent2(parentView, parentIndex);
}

class _ViewMaterialStepperComponent3 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  late final import25.ViewMaterialIconComponent0 _compView_2;
  late final import26.MaterialIconComponent _MaterialIconComponent_2_5;
  Object? _expr_0;
  Object? _expr_1;
  late final _el_2;
  _ViewMaterialStepperComponent3(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import12.createRenderElement('span');
    this.addShimC(_el_0);
    final _text_1 = import12.createRenderText('\n            ');
    import12.appendRenderChild(_el_0, _text_1);
    this._compView_2 = import25.ViewMaterialIconComponent0(this, 2);
    this._el_2 = this._compView_2.rootElement;
    import12.appendRenderChild(_el_0, this._el_2);
    this.updateChildClassNonHtml(this._el_2, 'edit-icon');
    import12.updateRenderAttribute(this._el_2, 'icon', 'mode_edit');
    this.addShimC(this._el_2);
    this._MaterialIconComponent_2_5 = import26.MaterialIconComponent(import12.unwrapNode(this._el_2));
    this._compView_2.create(this._MaterialIconComponent_2_5);
    final _text_4 = import12.createRenderText('\n          ');
    import12.appendRenderChild(_el_0, _text_4);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialIconComponent_2_5, 'icon', 'mode_edit');
      }
      this._MaterialIconComponent_2_5.icon = 'mode_edit' /* REF:package:angulardart_components/material_stepper/material_stepper.html:1900:1916 */;
      changed = true;
    }
    if (changed) {
      this._compView_2.markAsCheckOnce();
    }
    final currVal_0 = _ctx.orientation;
    if (import17.checkBinding(this._expr_0, currVal_0, 'orientation', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_2, 'orientation', currVal_0) /* REF:package:angulardart_components/material_stepper/material_stepper.html:1973:2005 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.size;
    if (import17.checkBinding(this._expr_1, currVal_1, 'size', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_2, 'size', currVal_1) /* REF:package:angulardart_components/material_stepper/material_stepper.html:2025:2043 */;
      this._expr_1 = currVal_1;
    }
    this._compView_2.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_2.destroyInternalState();
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent3(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent3(parentView, parentIndex);
}

class _ViewMaterialStepperComponent4 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMaterialStepperComponent4(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import12.createRenderElement('div');
    this.updateChildClass(this._el_0, 'step-line');
    this.addShimC(this._el_0);
    final _text_1 = import12.createRenderText('\n    ');
    import12.appendRenderChild(this._el_0, _text_1);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.orientation;
    if (import17.checkBinding(this._expr_0, currVal_0, 'orientation', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_0, 'orientation', currVal_0) /* REF:package:angulardart_components/material_stepper/material_stepper.html:2182:2214 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.size;
    if (import17.checkBinding(this._expr_1, currVal_1, 'size', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_0, 'size', currVal_1) /* REF:package:angulardart_components/material_stepper/material_stepper.html:2224:2242 */;
      this._expr_1 = currVal_1;
    }
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent4(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent4(parentView, parentIndex);
}

class _ViewMaterialStepperComponent5 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
  late final ViewContainer _appEl_6;
  late final NgIf _NgIf_6_9;
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMaterialStepperComponent5(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._el_0 = import12.createRenderElement('div');
    this.updateChildClass(this._el_0, 'stepper-content mixin');
    this.addShimC(this._el_0);
    final _text_1 = import12.createRenderText('\n      ');
    import12.appendRenderChild(this._el_0, _text_1);
    final _anchor_2 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialStepperComponent6);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _text_3 = import12.createRenderText('\n      ');
    import12.appendRenderChild(this._el_0, _text_3);
    final _anchor_4 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_0, _anchor_4);
    this._appEl_4 = ViewContainer(4, 0, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_MaterialStepperComponent9);
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
    final _text_5 = import12.createRenderText('\n      ');
    import12.appendRenderChild(this._el_0, _text_5);
    final _anchor_6 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_0, _anchor_6);
    this._appEl_6 = ViewContainer(6, 0, this, _anchor_6);
    var _TemplateRef_6_8 = TemplateRef(this._appEl_6, viewFactory_MaterialStepperComponent11);
    this._NgIf_6_9 = NgIf(this._appEl_6, _TemplateRef_6_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_6, this._NgIf_6_9);
    }
    final _text_7 = import12.createRenderText('\n    ');
    import12.appendRenderChild(this._el_0, _text_7);
    import12.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(_ctx.stopPropagationOfEnterAndSpace));
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final local_step = import11.unsafeCast<_ViewMaterialStepperComponent1>((this.parentView!)).locals['\$implicit'];
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', ((local_step.active ?? false) || (_ctx.keepInactiveStepsInDom ?? false)));
    }
    this._NgIf_2_9.ngIf = (((local_step.active ?? false) || (_ctx.keepInactiveStepsInDom ?? false)) ?? false) /* REF:package:angulardart_components/material_stepper/material_stepper.html:2495:2541 */;
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', (((!(local_step.active ?? false)) ?? false) && ((local_step.summaryDirective != null) ?? false)));
    }
    this._NgIf_4_9.ngIf = ((((!(local_step.active ?? false)) ?? false) && ((local_step.summaryDirective != null) ?? false)) ?? false) /* REF:package:angulardart_components/material_stepper/material_stepper.html:3424:3477 */;
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_6_9, 'ngIf', local_step.shouldShowSummary);
    }
    this._NgIf_6_9.ngIf = (local_step.shouldShowSummary ?? false) /* REF:package:angulardart_components/material_stepper/material_stepper.html:3612:3642 */;
    final currVal_0 = _ctx.orientation;
    if (import17.checkBinding(this._expr_0, currVal_0, 'orientation', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_0, 'orientation', currVal_0) /* REF:package:angulardart_components/material_stepper/material_stepper.html:2356:2388 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.size;
    if (import17.checkBinding(this._expr_1, currVal_1, 'size', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_0, 'size', currVal_1) /* REF:package:angulardart_components/material_stepper/material_stepper.html:2398:2416 */;
      this._expr_1 = currVal_1;
    }
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
    this._appEl_6.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
    this._appEl_6.destroyNestedViews();
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent5(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent5(parentView, parentIndex);
}

class _ViewMaterialStepperComponent6 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  late final ViewContainer _appEl_3;
  late final import27.PortalHostDirective _PortalHostDirective_3_9;
  late final ViewContainer _appEl_5;
  late final NgIf _NgIf_5_9;
  Object? _expr_0;
  Object? _expr_1;
  late final _el_1;
  _ViewMaterialStepperComponent6(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _text_0 = import12.createRenderText('\n        ');
    this._el_1 = import12.createRenderElement('div');
    this.updateChildClass(this._el_1, 'provided-content mixin');
    this.addShimC(this._el_1);
    final _text_2 = import12.createRenderText('\n          ');
    import12.appendRenderChild(this._el_1, _text_2);
    final _anchor_3 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_1, _anchor_3);
    this._appEl_3 = ViewContainer(3, 1, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, viewFactory_MaterialStepperComponent7);
    this._PortalHostDirective_3_9 = import27.PortalHostDirective(this._appEl_3, this._appEl_3);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_3, this._PortalHostDirective_3_9);
    }
    final _text_4 = import12.createRenderText('\n          ');
    import12.appendRenderChild(this._el_1, _text_4);
    final _anchor_5 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_1, _anchor_5);
    this._appEl_5 = ViewContainer(5, 1, this, _anchor_5);
    var _TemplateRef_5_8 = TemplateRef(this._appEl_5, viewFactory_MaterialStepperComponent8);
    this._NgIf_5_9 = NgIf(this._appEl_5, _TemplateRef_5_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_5, this._NgIf_5_9);
    }
    final _text_6 = import12.createRenderText('\n        ');
    import12.appendRenderChild(this._el_1, _text_6);
    final _text_7 = import12.createRenderText('\n      ');
    this.initRootNodesAndSubscriptions(import11.unsafeCast(<Object>[_text_0, this._el_1, _text_7]), null);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final local_step = import11.unsafeCast<_ViewMaterialStepperComponent1>(((this.parentView!).parentView!)).locals['\$implicit'];
    final currVal_1 = _ctx.steps[local_step.index];
    if (import17.checkBinding(this._expr_1, currVal_1, 'steps[step.index]', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._PortalHostDirective_3_9, 'portalHost', currVal_1);
      }
      this._PortalHostDirective_3_9.portal = (currVal_1!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:2677:2709 */;
      this._expr_1 = currVal_1;
    }
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_5_9, 'ngIf', (!((_ctx.activeStep!).hideButtons ?? false)));
    }
    this._NgIf_5_9.ngIf = ((!((_ctx.activeStep!).hideButtons ?? false)) ?? false) /* REF:package:angulardart_components/material_stepper/material_stepper.html:2738:2770 */;
    final currVal_0 = (((!(local_step.active ?? false)) ?? false) && (_ctx.keepInactiveStepsInDom ?? false));
    if (import17.checkBinding(this._expr_0, currVal_0, '!step.active && keepInactiveStepsInDom', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderClass(this._el_1, 'hidden', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_stepper/material_stepper.html:2600:2655 */;
      this._expr_0 = currVal_0;
    }
    this._appEl_3.detectChangesInNestedViews();
    this._appEl_5.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_3.destroyNestedViews();
    this._appEl_5.destroyNestedViews();
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent6(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent6(parentView, parentIndex);
}

class _ViewMaterialStepperComponent7 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  _ViewMaterialStepperComponent7(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this.initRootNodesAndSubscriptions(import11.unsafeCast(const <Object>[]), null);
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent7(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent7(parentView, parentIndex);
}

class _ViewMaterialStepperComponent8 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  late final import28.ViewMaterialYesNoButtonsComponent0 _compView_2;
  late final import29.MaterialYesNoButtonsComponent _MaterialYesNoButtonsComponent_2_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  _ViewMaterialStepperComponent8(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import12.createRenderElement('span');
    this.updateChildClass(_el_0, 'button-container');
    this.addShimC(_el_0);
    final _text_1 = import12.createRenderText('\n            ');
    import12.appendRenderChild(_el_0, _text_1);
    this._compView_2 = import28.ViewMaterialYesNoButtonsComponent0(this, 2);
    final _el_2 = this._compView_2.rootElement;
    import12.appendRenderChild(_el_0, _el_2);
    this.updateChildClassNonHtml(_el_2, 'stepper-yes-no-buttons');
    import12.updateRenderAttribute(_el_2, 'raised', '');
    import12.updateRenderAttribute(_el_2, 'yesHighlighted', '');
    this.addShimC(_el_2);
    this._MaterialYesNoButtonsComponent_2_5 = import29.MaterialYesNoButtonsComponent();
    this._compView_2.create(this._MaterialYesNoButtonsComponent_2_5);
    final _text_4 = import12.createRenderText('\n          ');
    import12.appendRenderChild(_el_0, _text_4);
    final subscription_0 = this._MaterialYesNoButtonsComponent_2_5.yes.listen(this.eventHandler1(this._handleEvent_0));
    final subscription_1 = this._MaterialYesNoButtonsComponent_2_5.no.listen(this.eventHandler1(this._handleEvent_1));
    this.initRootNodesAndSubscriptions(import11.unsafeCast(<Object>[_el_0]), [subscription_0, subscription_1]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import30.HasDisabled) && ((2 <= nodeIndex) && (nodeIndex <= 3)))) {
      return this._MaterialYesNoButtonsComponent_2_5;
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
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'yesHighlighted', true);
      }
      this._MaterialYesNoButtonsComponent_2_5.yesHighlighted = true /* REF:package:angulardart_components/material_stepper/material_stepper.html:2936:2950 */;
      changed = true;
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'raised', true);
      }
      this._MaterialYesNoButtonsComponent_2_5.raised = true /* REF:package:angulardart_components/material_stepper/material_stepper.html:2913:2919 */;
      changed = true;
    }
    final currVal_0 = _ctx.yesText;
    if (import17.checkBinding(this._expr_0, currVal_0, 'yesText', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'yesText', currVal_0);
      }
      this._MaterialYesNoButtonsComponent_2_5.yesText = (currVal_0!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:3184:3203 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.noText;
    if (import17.checkBinding(this._expr_1, currVal_1, 'noText', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'noText', currVal_1);
      }
      this._MaterialYesNoButtonsComponent_2_5.noText = (currVal_1!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:3220:3237 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_4 = (_ctx.activeStep!).busy;
    if (import17.checkBinding(this._expr_4, currVal_4, 'activeStep!.busy', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'disabled', currVal_4);
      }
      this._MaterialYesNoButtonsComponent_2_5.disabled = (currVal_4!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:2967:2996 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = (!((_ctx.activeStep!).canContinue ?? false));
    if (import17.checkBinding(this._expr_5, currVal_5, '!activeStep!.canContinue', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'yesDisabled', currVal_5);
      }
      this._MaterialYesNoButtonsComponent_2_5.yesDisabled = (currVal_5!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:3013:3053 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = (((!((_ctx.activeStep!).cancelHidden ?? false)) ?? false) && (((_ctx.activeStep!).index != 0) ?? false));
    if (import17.checkBinding(this._expr_6, currVal_6, '!activeStep!.cancelHidden && activeStep!.index != 0', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'noDisplayed', currVal_6);
      }
      this._MaterialYesNoButtonsComponent_2_5.noDisplayed = (currVal_6!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:3254:3321 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    if (changed) {
      this._compView_2.markAsCheckOnce();
    }
    this._compView_2.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_2.destroyInternalState();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.stepForward($event, (_ctx.activeStep!));
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.stepBackward($event, (_ctx.activeStep!));
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent8(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent8(parentView, parentIndex);
}

class _ViewMaterialStepperComponent9 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  late final ViewContainer _appEl_2;
  late final import27.PortalHostDirective _PortalHostDirective_2_9;
  Object? _expr_0;
  _ViewMaterialStepperComponent9(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import12.createRenderElement('div');
    this.updateChildClass(_el_0, 'step-summary-directive');
    this.addShimC(_el_0);
    final _text_1 = import12.createRenderText('\n        ');
    import12.appendRenderChild(_el_0, _text_1);
    final _anchor_2 = import12.createRenderAnchor();
    import12.appendRenderChild(_el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialStepperComponent10);
    this._PortalHostDirective_2_9 = import27.PortalHostDirective(this._appEl_2, this._appEl_2);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_2, this._PortalHostDirective_2_9);
    }
    final _text_3 = import12.createRenderText('\n      ');
    import12.appendRenderChild(_el_0, _text_3);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final local_step = import11.unsafeCast<_ViewMaterialStepperComponent1>(((this.parentView!).parentView!)).locals['\$implicit'];
    final currVal_0 = local_step.summaryDirective;
    if (import17.checkBinding(this._expr_0, currVal_0, 'step.summaryDirective', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._PortalHostDirective_2_9, 'portalHost', currVal_0);
      }
      this._PortalHostDirective_2_9.portal = (currVal_0!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:3539:3575 */;
      this._expr_0 = currVal_0;
    }
    this._appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent9(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent9(parentView, parentIndex);
}

class _ViewMaterialStepperComponent10 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  _ViewMaterialStepperComponent10(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this.initRootNodesAndSubscriptions(import11.unsafeCast(const <Object>[]), null);
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent10(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent10(parentView, parentIndex);
}

class _ViewMaterialStepperComponent11 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  final import20.TextBinding _textBinding_2 = import20.TextBinding();
  _ViewMaterialStepperComponent11(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import12.createRenderElement('div');
    this.updateChildClass(_el_0, 'stepper-step-summary');
    this.addShimC(_el_0);
    final _text_1 = import12.createRenderText('\n        ');
    import12.appendRenderChild(_el_0, _text_1);
    import12.appendRenderChild(_el_0, this._textBinding_2.element);
    final _text_3 = import12.createRenderText('\n      ');
    import12.appendRenderChild(_el_0, _text_3);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final local_step = import11.unsafeCast<_ViewMaterialStepperComponent1>(((this.parentView!).parentView!)).locals['\$implicit'];
    this._textBinding_2.updateText(import24.interpolate0(local_step.completeSummary)) /* REF:package:angulardart_components/material_stepper/material_stepper.html:3692:3716 */;
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent11(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent11(parentView, parentIndex);
}

class _ViewMaterialStepperComponent12 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
  late final ViewContainer _appEl_6;
  late final NgIf _NgIf_6_9;
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMaterialStepperComponent12(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import12.createRenderElement('div');
    this.updateChildClass(this._el_0, 'stepper-content mixin');
    this.addShimC(this._el_0);
    final _text_1 = import12.createRenderText('\n  ');
    import12.appendRenderChild(this._el_0, _text_1);
    final _anchor_2 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialStepperComponent13);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _text_3 = import12.createRenderText('\n  ');
    import12.appendRenderChild(this._el_0, _text_3);
    final _anchor_4 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_0, _anchor_4);
    this._appEl_4 = ViewContainer(4, 0, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_MaterialStepperComponent15);
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
    final _text_5 = import12.createRenderText('\n    ');
    import12.appendRenderChild(this._el_0, _text_5);
    final _anchor_6 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_0, _anchor_6);
    this._appEl_6 = ViewContainer(6, 0, this, _anchor_6);
    var _TemplateRef_6_8 = TemplateRef(this._appEl_6, viewFactory_MaterialStepperComponent18);
    this._NgIf_6_9 = NgIf(this._appEl_6, _TemplateRef_6_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_6, this._NgIf_6_9);
    }
    final _text_7 = import12.createRenderText('\n');
    import12.appendRenderChild(this._el_0, _text_7);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', (!(_ctx.keepInactiveStepsInDom ?? false)));
    }
    this._NgIf_2_9.ngIf = ((!(_ctx.keepInactiveStepsInDom ?? false)) ?? false) /* REF:package:angulardart_components/material_stepper/material_stepper.html:3932:3963 */;
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', _ctx.keepInactiveStepsInDom);
    }
    this._NgIf_4_9.ngIf = (_ctx.keepInactiveStepsInDom ?? false) /* REF:package:angulardart_components/material_stepper/material_stepper.html:4074:4104 */;
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_6_9, 'ngIf', (!((_ctx.activeStep!).hideButtons ?? false)));
    }
    this._NgIf_6_9.ngIf = ((!((_ctx.activeStep!).hideButtons ?? false)) ?? false) /* REF:package:angulardart_components/material_stepper/material_stepper.html:4316:4348 */;
    final currVal_0 = _ctx.orientation;
    if (import17.checkBinding(this._expr_0, currVal_0, 'orientation', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_0, 'orientation', currVal_0) /* REF:package:angulardart_components/material_stepper/material_stepper.html:3867:3899 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.size;
    if (import17.checkBinding(this._expr_1, currVal_1, 'size', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderAttribute(this._el_0, 'size', currVal_1) /* REF:package:angulardart_components/material_stepper/material_stepper.html:3905:3923 */;
      this._expr_1 = currVal_1;
    }
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
    this._appEl_6.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
    this._appEl_6.destroyNestedViews();
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent12(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent12(parentView, parentIndex);
}

class _ViewMaterialStepperComponent13 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  late final ViewContainer _appEl_2;
  late final import27.PortalHostDirective _PortalHostDirective_2_9;
  Object? _expr_0;
  _ViewMaterialStepperComponent13(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import12.createRenderElement('div');
    this.updateChildClass(_el_0, 'provided-content mixin');
    this.addShimC(_el_0);
    final _text_1 = import12.createRenderText('\n    ');
    import12.appendRenderChild(_el_0, _text_1);
    final _anchor_2 = import12.createRenderAnchor();
    import12.appendRenderChild(_el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialStepperComponent14);
    this._PortalHostDirective_2_9 = import27.PortalHostDirective(this._appEl_2, this._appEl_2);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_2, this._PortalHostDirective_2_9);
    }
    final _text_3 = import12.createRenderText('\n  ');
    import12.appendRenderChild(_el_0, _text_3);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = (_ctx.activeStep!);
    if (import17.checkBinding(this._expr_0, currVal_0, 'activeStep!', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._PortalHostDirective_2_9, 'portalHost', currVal_0);
      }
      this._PortalHostDirective_2_9.portal = currVal_0 /* REF:package:angulardart_components/material_stepper/material_stepper.html:4010:4036 */;
      this._expr_0 = currVal_0;
    }
    this._appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent13(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent13(parentView, parentIndex);
}

class _ViewMaterialStepperComponent14 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  _ViewMaterialStepperComponent14(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this.initRootNodesAndSubscriptions(import11.unsafeCast(const <Object>[]), null);
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent14(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent14(parentView, parentIndex);
}

class _ViewMaterialStepperComponent15 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  late final ViewContainer _appEl_1;
  late final import5.NgFor _NgFor_1_9;
  Object? _expr_0;
  _ViewMaterialStepperComponent15(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _text_0 = import12.createRenderText('\n    ');
    final _anchor_1 = import12.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MaterialStepperComponent16);
    this._NgFor_1_9 = import5.NgFor(this._appEl_1, _TemplateRef_1_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_1, this._NgFor_1_9);
    }
    final _text_2 = import12.createRenderText('\n  ');
    this.initRootNodesAndSubscriptions(import11.unsafeCast(<Object>[_text_0, this._appEl_1, _text_2]), null);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.steps;
    if (import17.checkBinding(this._expr_0, currVal_0, 'steps', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForOf', currVal_0);
      }
      this._NgFor_1_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:4115:4141 */;
      this._expr_0 = currVal_0;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgFor_1_9.ngDoCheck();
    }
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent15(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent15(parentView, parentIndex);
}

class _ViewMaterialStepperComponent16 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  late final ViewContainer _appEl_2;
  late final import27.PortalHostDirective _PortalHostDirective_2_9;
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMaterialStepperComponent16(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import12.createRenderElement('div');
    this.updateChildClass(this._el_0, 'provided-content mixin');
    this.addShimC(this._el_0);
    final _text_1 = import12.createRenderText('\n      ');
    import12.appendRenderChild(this._el_0, _text_1);
    final _anchor_2 = import12.createRenderAnchor();
    import12.appendRenderChild(this._el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialStepperComponent17);
    this._PortalHostDirective_2_9 = import27.PortalHostDirective(this._appEl_2, this._appEl_2);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_2, this._PortalHostDirective_2_9);
    }
    final _text_3 = import12.createRenderText('\n    ');
    import12.appendRenderChild(this._el_0, _text_3);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final local_step = this.locals['\$implicit'];
    final currVal_1 = local_step;
    if (import17.checkBinding(this._expr_1, currVal_1, 'step', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._PortalHostDirective_2_9, 'portalHost', currVal_1);
      }
      this._PortalHostDirective_2_9.portal = (currVal_1!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:4245:4264 */;
      this._expr_1 = currVal_1;
    }
    final currVal_0 = (local_step != (_ctx.activeStep!));
    if (import17.checkBinding(this._expr_0, currVal_0, 'step != activeStep!', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      import12.updateRenderClass(this._el_0, 'hidden', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_stepper/material_stepper.html:4191:4227 */;
      this._expr_0 = currVal_0;
    }
    this._appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent16(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent16(parentView, parentIndex);
}

class _ViewMaterialStepperComponent17 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  _ViewMaterialStepperComponent17(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this.initRootNodesAndSubscriptions(import11.unsafeCast(const <Object>[]), null);
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent17(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent17(parentView, parentIndex);
}

class _ViewMaterialStepperComponent18 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  late final import28.ViewMaterialYesNoButtonsComponent0 _compView_2;
  late final import29.MaterialYesNoButtonsComponent _MaterialYesNoButtonsComponent_2_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  _ViewMaterialStepperComponent18(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import12.createRenderElement('span');
    this.updateChildClass(_el_0, 'button-container');
    this.addShimC(_el_0);
    final _text_1 = import12.createRenderText('\n      ');
    import12.appendRenderChild(_el_0, _text_1);
    this._compView_2 = import28.ViewMaterialYesNoButtonsComponent0(this, 2);
    final _el_2 = this._compView_2.rootElement;
    import12.appendRenderChild(_el_0, _el_2);
    import12.updateRenderAttribute(_el_2, 'raised', '');
    import12.updateRenderAttribute(_el_2, 'yesHighlighted', '');
    this.addShimC(_el_2);
    this._MaterialYesNoButtonsComponent_2_5 = import29.MaterialYesNoButtonsComponent();
    this._compView_2.create(this._MaterialYesNoButtonsComponent_2_5);
    final _text_4 = import12.createRenderText('\n    ');
    import12.appendRenderChild(_el_0, _text_4);
    final subscription_0 = this._MaterialYesNoButtonsComponent_2_5.yes.listen(this.eventHandler1(this._handleEvent_0));
    final subscription_1 = this._MaterialYesNoButtonsComponent_2_5.no.listen(this.eventHandler1(this._handleEvent_1));
    this.initRootNodesAndSubscriptions(import11.unsafeCast(<Object>[_el_0]), [subscription_0, subscription_1]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import30.HasDisabled) && ((2 <= nodeIndex) && (nodeIndex <= 3)))) {
      return this._MaterialYesNoButtonsComponent_2_5;
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
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'yesHighlighted', true);
      }
      this._MaterialYesNoButtonsComponent_2_5.yesHighlighted = true /* REF:package:angulardart_components/material_stepper/material_stepper.html:4433:4447 */;
      changed = true;
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'raised', true);
      }
      this._MaterialYesNoButtonsComponent_2_5.raised = true /* REF:package:angulardart_components/material_stepper/material_stepper.html:4416:4422 */;
      changed = true;
    }
    final currVal_0 = _ctx.yesText;
    if (import17.checkBinding(this._expr_0, currVal_0, 'yesText', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'yesText', currVal_0);
      }
      this._MaterialYesNoButtonsComponent_2_5.yesText = (currVal_0!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:4651:4670 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.noText;
    if (import17.checkBinding(this._expr_1, currVal_1, 'noText', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'noText', currVal_1);
      }
      this._MaterialYesNoButtonsComponent_2_5.noText = (currVal_1!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:4681:4698 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_4 = (_ctx.activeStep!).busy;
    if (import17.checkBinding(this._expr_4, currVal_4, 'activeStep!.busy', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'disabled', currVal_4);
      }
      this._MaterialYesNoButtonsComponent_2_5.disabled = (currVal_4!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:4458:4487 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = (!((_ctx.activeStep!).canContinue ?? false));
    if (import17.checkBinding(this._expr_5, currVal_5, '!activeStep!.canContinue', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'yesDisabled', currVal_5);
      }
      this._MaterialYesNoButtonsComponent_2_5.yesDisabled = (currVal_5!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:4498:4538 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = (((!((_ctx.activeStep!).cancelHidden ?? false)) ?? false) && (((_ctx.activeStep!).index != 0) ?? false));
    if (import17.checkBinding(this._expr_6, currVal_6, '!activeStep!.cancelHidden && activeStep!.index != 0', 'package:angulardart_components/material_stepper/material_stepper.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_2_5, 'noDisplayed', currVal_6);
      }
      this._MaterialYesNoButtonsComponent_2_5.noDisplayed = (currVal_6!) /* REF:package:angulardart_components/material_stepper/material_stepper.html:4709:4776 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    if (changed) {
      this._compView_2.markAsCheckOnce();
    }
    this._compView_2.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_2.destroyInternalState();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.stepForward($event, (_ctx.activeStep!));
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.stepBackward($event, (_ctx.activeStep!));
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent18(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent18(parentView, parentIndex);
}

class _ViewMaterialStepperComponent19 extends import19.EmbeddedView<import2.MaterialStepperComponent> {
  final import20.TextBinding _textBinding_2 = import20.TextBinding();
  _ViewMaterialStepperComponent19(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import12.createRenderElement('div');
    import12.updateRenderAttribute(_el_0, 'aria-live', 'assertive');
    this.updateChildClass(_el_0, 'visible-to-screen-reader-only');
    this.addShimC(_el_0);
    final _text_1 = import12.createRenderText('\n  ');
    import12.appendRenderChild(_el_0, _text_1);
    import12.appendRenderChild(_el_0, this._textBinding_2.element);
    final _text_3 = import12.createRenderText('\n');
    import12.appendRenderChild(_el_0, _text_3);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_2.updateText(import24.interpolateString0(_ctx.stepAriaAnnounce)) /* REF:package:angulardart_components/material_stepper/material_stepper.html:4969:4989 */;
  }
}

import19.EmbeddedView<void> viewFactory_MaterialStepperComponent19(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialStepperComponent19(parentView, parentIndex);
}

final List<Object> styles$MaterialStepperComponentHost = const [];

class _ViewMaterialStepperComponentHost0 extends import31.HostView<import2.MaterialStepperComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialStepperComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialStepperComponent();
    this.component.stepsQuery = [];
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.MaterialStepperComponent) && (0 == nodeIndex))) {
      return this.component;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
  }
}

import31.HostView<import2.MaterialStepperComponent> viewFactory_MaterialStepperComponentHost0() {
  return _ViewMaterialStepperComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialStepperComponent, createMaterialStepperComponentFactory());
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
