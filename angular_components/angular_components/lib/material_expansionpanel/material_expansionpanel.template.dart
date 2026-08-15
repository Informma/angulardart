// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_expansionpanel.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angulardart_components/content/deferred_content.template.dart' as _ref2;
import 'package:angulardart_components/content/deferred_content_aware.template.dart' as _ref3;
import 'package:angulardart_components/focus/focus.template.dart' as _ref4;
import 'package:angulardart_components/focus/keyboard_only_focus_indicator.template.dart' as _ref5;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref6;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref7;
import 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.template.dart' as _ref8;
import 'package:angulardart_components/model/action/async_action.template.dart' as _ref9;
import 'package:angulardart_components/model/observable/observable.template.dart' as _ref10;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref11;
import 'package:angulardart_components/utils/angular/id/id.template.dart' as _ref12;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.template.dart' as _ref13;
import 'package:angulardart_components/utils/disposer/disposable_callback.template.dart' as _ref14;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref15;
import 'package:angulardart_components/material_expansionpanel/material_expansionpanel.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_expansionpanel.dart' as import2;

import 'package:angulardart/src/runtime/text_binding.dart' as import3;

import '../material_yes_no_buttons/material_yes_no_buttons.dart' as import4;
import '../button_decorator/button_decorator.template.dart' as import5;
import '../focus/keyboard_only_focus_indicator.dart' as import6;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';

import '../utils/angular/id/id.template.dart' as import9;
import '../content/deferred_content.dart' as import10;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import11;
import 'package:angulardart/src/core/linker/views/view.dart' as import12;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import14;
import 'package:angulardart/src/utilities.dart' as import15;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import16;
import 'package:angulardart/src/devtools.dart' as import17;

import '../button_decorator/button_decorator.dart' as import18;

import 'package:angulardart/src/di/errors.dart' as import19;

import '../utils/browser/dom_service/dom_service.dart' as import20;

import 'package:angulardart/src/core/linker/template_ref.dart';

import '../utils/angular/id/id.dart' as import22;
import '../utils/id_generator/id_generator.dart' as import23;
import '../content/deferred_content_aware.dart' as import24;

import 'package:angulardart/src/runtime/check_binding.dart' as import25;
import 'package:angulardart/src/runtime/queries.dart' as import26;
import 'package:angulardart/src/runtime/interpolate.dart' as import27;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import29;

import '../material_icon/material_icon.template.dart' as import30;
import '../material_icon/material_icon.dart' as import31;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import32;

import '../material_yes_no_buttons/material_yes_no_buttons.template.dart' as import33;
import '../interfaces/has_disabled.dart' as import34;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import35;
import 'package:angulardart/src/core/zone/ng_zone.dart' as import36;

import '../focus/focus.dart' as import37;
import '../focus/focus_interface.dart' as import38;

final List<Object> styles$MaterialExpansionPanel = [import0.styles];

class ViewMaterialExpansionPanel0 extends import1.ComponentView<import2.MaterialExpansionPanel> {
  bool _viewQuery_action_4_isDirty = true;
  bool _viewQuery_mainContent_2_isDirty = true;
  bool _viewQuery_contentWrapper_5_isDirty = true;
  final import3.TextBinding _textBinding_6 = import3.TextBinding();
  late final import4.KeyUpBoundaryDirective _KeyUpBoundaryDirective_0_5;
  late final import5.ButtonDirectiveNgCd _ButtonDirective_2_5;
  late final import6.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_2_6;
  late final ViewContainer _appEl_3;
  late final NgIf _NgIf_3_9;
  late final ViewContainer _appEl_7;
  late final NgIf _NgIf_7_9;
  late final import9.AutoIdDirectiveNgCd _AutoIdDirective_8_5;
  late final ViewContainer _appEl_9;
  late final NgIf _NgIf_9_9;
  late final ViewContainer _appEl_10;
  late final NgIf _NgIf_10_9;
  late final import9.AutoIdDirectiveNgCd _AutoIdDirective_11_5;
  late final ViewContainer _appEl_12;
  late final import10.DeferredContentDirective _DeferredContentDirective_12_9;
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
  Object? _expr_15;
  late final _el_0;
  late final _el_1;
  late final _el_2;
  late final _el_8;
  late final _el_11;
  static import11.ComponentStyles? _componentStyles;
  ViewMaterialExpansionPanel0(import12.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import14.renderFactory.createElement('material-expansionpanel');
  }
  static String? get _debugComponentUrl {
    return (import15.isDevMode ? 'asset:angulardart_components/lib/material_expansionpanel/material_expansionpanel.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._el_0 = import16.createRenderElement('div');
    import16.appendRenderChild(parentRenderNode, this._el_0);
    this.updateChildClass(this._el_0, 'panel themeable');
    import16.updateRenderAttribute(this._el_0, 'keyupBoundary', '');
    this.addShimC(this._el_0);
    this._KeyUpBoundaryDirective_0_5 = import4.KeyUpBoundaryDirective(import16.unwrapNode(this._el_0));
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(this._el_0, this._KeyUpBoundaryDirective_0_5);
    }
    this._el_1 = import16.createRenderElement('header');
    import16.appendRenderChild(this._el_0, this._el_1);
    this.addShimC(this._el_1);
    this._el_2 = import16.createRenderElement('div');
    import16.appendRenderChild(this._el_1, this._el_2);
    import16.updateRenderAttribute(this._el_2, 'buttonDecorator', '');
    this.updateChildClass(this._el_2, 'header');
    import16.updateRenderAttribute(this._el_2, 'keyboardOnlyFocusIndicator', '');
    this.addShimC(this._el_2);
    this._ButtonDirective_2_5 = import5.ButtonDirectiveNgCd(import18.ButtonDirective(import16.unwrapNode(this._el_2), null));
    this._KeyboardOnlyFocusIndicatorDirective_2_6 = (import15.isDevMode
        ? import19.debugInjectorWrap(import6.KeyboardOnlyFocusIndicatorDirective, () {
            return import6.KeyboardOnlyFocusIndicatorDirective(import16.unwrapNode(this._el_2), (this.parentView!).injectorGet(import20.DomService, this.parentIndex));
          })
        : import6.KeyboardOnlyFocusIndicatorDirective(import16.unwrapNode(this._el_2), (this.parentView!).injectorGet(import20.DomService, this.parentIndex)));
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(this._el_2, this._ButtonDirective_2_5.instance);
      import17.Inspector.instance.registerDirective(this._el_2, this._KeyboardOnlyFocusIndicatorDirective_2_6);
    }
    final _anchor_3 = import16.createRenderAnchor();
    import16.appendRenderChild(this._el_2, _anchor_3);
    this._appEl_3 = ViewContainer(3, 2, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, viewFactory_MaterialExpansionPanel1);
    this._NgIf_3_9 = NgIf(this._appEl_3, _TemplateRef_3_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_3, this._NgIf_3_9);
    }
    final _el_4 = import16.createRenderElement('div');
    import16.appendRenderChild(this._el_2, _el_4);
    import16.updateRenderAttribute(_el_4, 'aria-hidden', 'true');
    this.updateChildClass(_el_4, 'panel-name');
    this.addShimC(_el_4);
    this.project(_el_4, 0);
    final _el_5 = import16.createRenderElement('p');
    import16.appendRenderChild(_el_4, _el_5);
    this.updateChildClass(_el_5, 'primary-text');
    this.addShimC(_el_5);
    import16.appendRenderChild(_el_5, this._textBinding_6.element);
    final _anchor_7 = import16.createRenderAnchor();
    import16.appendRenderChild(_el_4, _anchor_7);
    this._appEl_7 = ViewContainer(7, 4, this, _anchor_7);
    var _TemplateRef_7_8 = TemplateRef(this._appEl_7, viewFactory_MaterialExpansionPanel2);
    this._NgIf_7_9 = NgIf(this._appEl_7, _TemplateRef_7_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_7, this._NgIf_7_9);
    }
    this._el_8 = import16.createRenderElement('div');
    import16.appendRenderChild(this._el_2, this._el_8);
    import16.updateRenderAttribute(this._el_8, 'aria-hidden', 'true');
    import16.updateRenderAttribute(this._el_8, 'autoId', '');
    this.updateChildClass(this._el_8, 'panel-description');
    this.addShimC(this._el_8);
    this._AutoIdDirective_8_5 = import9.AutoIdDirectiveNgCd(
      (import15.isDevMode
          ? import19.debugInjectorWrap(import22.AutoIdDirective, () {
              return import22.AutoIdDirective((this.parentView!).injectorGetOptional(import23.IdGenerator, this.parentIndex), null);
            })
          : import22.AutoIdDirective((this.parentView!).injectorGetOptional(import23.IdGenerator, this.parentIndex), null)),
    );
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(this._el_8, this._AutoIdDirective_8_5.instance);
    }
    this.project(this._el_8, 1);
    final _anchor_9 = import16.createRenderAnchor();
    import16.appendRenderChild(this._el_2, _anchor_9);
    this._appEl_9 = ViewContainer(9, 2, this, _anchor_9);
    var _TemplateRef_9_8 = TemplateRef(this._appEl_9, viewFactory_MaterialExpansionPanel3);
    this._NgIf_9_9 = NgIf(this._appEl_9, _TemplateRef_9_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_9, this._NgIf_9_9);
    }
    final _anchor_10 = import16.createRenderAnchor();
    import16.appendRenderChild(this._el_1, _anchor_10);
    this._appEl_10 = ViewContainer(10, 1, this, _anchor_10);
    var _TemplateRef_10_8 = TemplateRef(this._appEl_10, viewFactory_MaterialExpansionPanel4);
    this._NgIf_10_9 = NgIf(this._appEl_10, _TemplateRef_10_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_10, this._NgIf_10_9);
    }
    this._el_11 = import16.createRenderElement('main');
    import16.appendRenderChild(this._el_0, this._el_11);
    import16.updateRenderAttribute(this._el_11, 'autoId', '');
    import16.updateRenderAttribute(this._el_11, 'role', 'region');
    this.addShimC(this._el_11);
    this._AutoIdDirective_11_5 = import9.AutoIdDirectiveNgCd(
      (import15.isDevMode
          ? import19.debugInjectorWrap(import22.AutoIdDirective, () {
              return import22.AutoIdDirective((this.parentView!).injectorGetOptional(import23.IdGenerator, this.parentIndex), null);
            })
          : import22.AutoIdDirective((this.parentView!).injectorGetOptional(import23.IdGenerator, this.parentIndex), null)),
    );
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(this._el_11, this._AutoIdDirective_11_5.instance);
    }
    final _anchor_12 = import16.createRenderAnchor();
    import16.appendRenderChild(this._el_11, _anchor_12);
    this._appEl_12 = ViewContainer(12, 11, this, _anchor_12);
    var _TemplateRef_12_8 = TemplateRef(this._appEl_12, viewFactory_MaterialExpansionPanel5);
    this._DeferredContentDirective_12_9 = (import15.isDevMode
        ? import19.debugInjectorWrap(import10.DeferredContentDirective, () {
            return import10.DeferredContentDirective(this._appEl_12, _TemplateRef_12_8, (this.parentView!).injectorGet(import24.DeferredContentAware, this.parentIndex), this);
          })
        : import10.DeferredContentDirective(this._appEl_12, _TemplateRef_12_8, (this.parentView!).injectorGet(import24.DeferredContentAware, this.parentIndex), this));
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_12, this._DeferredContentDirective_12_9);
    }
    import16.addRenderEventListener(this._el_2, 'click', this.eventHandler1(this._handleEvent_0));
    import16.addRenderEventListener(this._el_2, 'keypress', this.eventHandler1(this._ButtonDirective_2_5.instance.handleKeyPress));
    import16.addRenderEventListener(this._el_2, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_2_6.keydown));
    import16.addRenderEventListener(this._el_2, 'blur', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_2_6.resetOutline));
    import16.addRenderEventListener(this._el_2, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_2_6.onMouseInteraction));
    import16.addRenderEventListener(this._el_2, 'focus', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_2_6.onFocus));
    final subscription_0 = this._ButtonDirective_2_5.instance.trigger.listen(this.eventHandler0(_ctx.handleHeaderClick));
    _ctx.mainPanel = import16.unwrapNode(this._el_11);
    _ctx.headerPanel = import16.unwrapNode(this._el_1);
    _ctx.headerContent = import16.unwrapNode(this._el_2);
    _ctx.expandCollapse = this._ButtonDirective_2_5.instance;
    this.initSubscriptions([subscription_0]);
    import16.addRenderEventListener(parentRenderNode, 'keydown', this.eventHandler1(_ctx.keydown));
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 12)) {
      if ((identical(token, import18.ButtonDirective) && ((2 <= nodeIndex) && (nodeIndex <= 9)))) {
        return this._ButtonDirective_2_5.instance;
      }
      if (identical(token, import4.KeyUpBoundaryDirective)) {
        return this._KeyUpBoundaryDirective_0_5;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    final local_panelDescription = this._AutoIdDirective_8_5.instance;
    final local_mainId = this._AutoIdDirective_11_5.instance;
    final currVal_11 = ((_ctx.disabled ?? false) || (_ctx.headerHidden ?? false));
    if (import25.checkBinding(this._expr_11, currVal_11, 'disabled || headerHidden', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._ButtonDirective_2_5.instance, 'disabled', currVal_11);
      }
      this._ButtonDirective_2_5.instance.disabled = (currVal_11!) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:647:684 */;
      this._expr_11 = currVal_11;
    }
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_3_9, 'ngIf', ((_ctx.shouldShowExpandIcon ?? false) && (_ctx.shouldExpandOnLeft ?? false)));
    }
    this._NgIf_3_9.ngIf = (((_ctx.shouldShowExpandIcon ?? false) && (_ctx.shouldExpandOnLeft ?? false)) ?? false) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:1045:1095 */;
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_7_9, 'ngIf', (_ctx.secondaryText != null));
    }
    this._NgIf_7_9.ngIf = ((_ctx.secondaryText != null) ?? false) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:1473:1502 */;
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_9_9, 'ngIf', ((_ctx.shouldShowExpandIcon ?? false) && ((!(_ctx.shouldExpandOnLeft ?? false)) ?? false)));
    }
    this._NgIf_9_9.ngIf = (((_ctx.shouldShowExpandIcon ?? false) && ((!(_ctx.shouldExpandOnLeft ?? false)) ?? false)) ?? false) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:1706:1757 */;
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_10_9, 'ngIf', (((!(_ctx.shouldShowExpandIcon ?? false)) ?? false) && ((!(_ctx.headerHidden ?? false)) ?? false)));
    }
    this._NgIf_10_9.ngIf = ((((!(_ctx.shouldShowExpandIcon ?? false)) ?? false) && ((!(_ctx.headerHidden ?? false)) ?? false)) ?? false) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:2004:2050 */;
    if (firstCheck) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._DeferredContentDirective_12_9, 'deferredContent', true);
      }
      this._DeferredContentDirective_12_9.preserveDimensions = true /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:2322:2377 */;
    }
    final currVal_15 = _ctx.forceContentWhenClosed;
    if (import25.checkBinding(this._expr_15, currVal_15, 'forceContentWhenClosed', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._DeferredContentDirective_12_9, 'deferredContentForceContent', currVal_15);
      }
      this._DeferredContentDirective_12_9.deferredContentForceContent = (currVal_15!) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:2322:2377 */;
      this._expr_15 = currVal_15;
    }
    final currVal_0 = _ctx.isExpanded;
    if (import25.checkBinding(this._expr_0, currVal_0, 'isExpanded', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderClass(this._el_0, 'open', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:253:278 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.anotherExpanded;
    if (import25.checkBinding(this._expr_1, currVal_1, 'anotherExpanded', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderClass(this._el_0, 'background', (currVal_1 ?? false)) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:284:320 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.headerHidden;
    if (import25.checkBinding(this._expr_2, currVal_2, 'headerHidden', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderClass(this._el_1, 'hidden', (currVal_2 ?? false)) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:393:422 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.headerRole;
    if (import25.checkBinding(this._expr_3, currVal_3, 'headerRole', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderAttribute(this._el_1, 'role', currVal_3) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:428:452 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.headerAriaLevel;
    if (import25.checkBinding(this._expr_4, currVal_4, 'headerAriaLevel', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderAttribute(this._el_1, 'aria-level', currVal_4?.toString()) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:458:493 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = (!(_ctx.isExpanded ?? false));
    if (import25.checkBinding(this._expr_5, currVal_5, '!isExpanded', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderClass(this._el_2, 'closed', (currVal_5 ?? false)) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:695:725 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.isExpanded;
    if (import25.checkBinding(this._expr_6, currVal_6, 'isExpanded', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderAttribute(this._el_2, 'aria-expanded', currVal_6?.toString()) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:736:769 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.disableHeaderExpansion;
    if (import25.checkBinding(this._expr_7, currVal_7, 'disableHeaderExpansion', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderClass(this._el_2, 'disable-header-expansion', (currVal_7 ?? false)) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:780:837 */;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.headerMsg;
    if (import25.checkBinding(this._expr_8, currVal_8, 'headerMsg', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderAttribute(this._el_2, 'aria-label', currVal_8) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:848:877 */;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = local_panelDescription.id;
    if (import25.checkBinding(this._expr_9, currVal_9, 'panelDescription.id', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderAttribute(this._el_2, 'aria-describedby', currVal_9?.toString()) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:888:933 */;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = local_mainId.id;
    if (import25.checkBinding(this._expr_10, currVal_10, 'mainId.id', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderAttribute(this._el_2, 'aria-controls', currVal_10?.toString()) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:944:976 */;
      this._expr_10 = currVal_10;
    }
    this._ButtonDirective_2_5.detectHostChanges(this, this._el_2);
    this._AutoIdDirective_8_5.detectHostChanges(this, this._el_8);
    final currVal_12 = (!(_ctx.isExpanded ?? false));
    if (import25.checkBinding(this._expr_12, currVal_12, '!isExpanded', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderClass(this._el_11, 'hidden', (currVal_12 ?? false)) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:2177:2205 */;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = (!(_ctx.isExpanded ?? false));
    if (import25.checkBinding(this._expr_13, currVal_13, '!isExpanded', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderAttribute(this._el_11, 'aria-hidden', currVal_13?.toString()) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:2268:2300 */;
      this._expr_13 = currVal_13;
    }
    this._AutoIdDirective_11_5.detectHostChanges(this, this._el_11);
    this._appEl_3.detectChangesInNestedViews();
    this._appEl_7.detectChangesInNestedViews();
    this._appEl_9.detectChangesInNestedViews();
    this._appEl_10.detectChangesInNestedViews();
    this._appEl_12.detectChangesInNestedViews();
    if ((!import25.debugThrowIfChanged)) {
      if (this._viewQuery_mainContent_2_isDirty) {
        _ctx.mainContent = import26.firstOrNull(
          this._appEl_12.mapNestedViewsWithSingleResult((_ViewMaterialExpansionPanel5 nestedView) {
            return import16.unwrapNode(nestedView._el_0);
          }),
        );
        this._viewQuery_mainContent_2_isDirty = false;
      }
      if (this._viewQuery_action_4_isDirty) {
        _ctx.actionContent = import26.firstOrNull(
          this._appEl_10.mapNestedViewsWithSingleResult((_ViewMaterialExpansionPanel4 nestedView) {
            return import16.unwrapNode(nestedView._el_0);
          }),
        );
        this._viewQuery_action_4_isDirty = false;
      }
      if (this._viewQuery_contentWrapper_5_isDirty) {
        _ctx.contentWrapper = import26.firstOrNull(
          this._appEl_12.mapNestedViewsWithSingleResult((_ViewMaterialExpansionPanel5 nestedView) {
            return import16.unwrapNode(nestedView._el_1);
          }),
        );
        this._viewQuery_contentWrapper_5_isDirty = false;
      }
    }
    this._textBinding_6.updateText(import27.interpolateString0(_ctx.name)) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:1428:1436 */;
  }

  @override
  void destroyInternal() {
    this._appEl_3.destroyNestedViews();
    this._appEl_7.destroyNestedViews();
    this._appEl_9.destroyNestedViews();
    this._appEl_10.destroyNestedViews();
    this._appEl_12.destroyNestedViews();
    this._DeferredContentDirective_12_9.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    this._ButtonDirective_2_5.instance.handleClick($event);
    this._KeyboardOnlyFocusIndicatorDirective_2_6.onMouseInteraction();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import11.ComponentStyles.scoped(styles$MaterialExpansionPanel, _debugComponentUrl));
      if (import15.isDevMode) {
        import11.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialExpansionPanelNgFactory = ComponentFactory<import2.MaterialExpansionPanel>('material-expansionpanel', viewFactory_MaterialExpansionPanelHost0);
ComponentFactory<import2.MaterialExpansionPanel> get MaterialExpansionPanelNgFactory {
  return _MaterialExpansionPanelNgFactory;
}

ComponentFactory<import2.MaterialExpansionPanel> createMaterialExpansionPanelFactory() {
  return ComponentFactory('material-expansionpanel', viewFactory_MaterialExpansionPanelHost0);
}

class _ViewMaterialExpansionPanel1 extends import29.EmbeddedView<import2.MaterialExpansionPanel> {
  late final import30.ViewMaterialIconComponent0 _compView_0;
  late final import31.MaterialIconComponent _MaterialIconComponent_0_5;
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMaterialExpansionPanel1(import32.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import30.ViewMaterialIconComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'expand-button expand-on-left');
    import16.updateRenderAttribute(this._el_0, 'role', 'none');
    this.addShimC(this._el_0);
    this._MaterialIconComponent_0_5 = import31.MaterialIconComponent(import16.unwrapNode(this._el_0));
    this._compView_0.create(this._MaterialIconComponent_0_5);
    import16.addRenderEventListener(this._el_0, 'click', this.eventHandler0(_ctx.handleExpandIconClick));
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    final currVal_1 = _ctx.expandIcon;
    if (import25.checkBinding(this._expr_1, currVal_1, 'expandIcon', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialIconComponent_0_5, 'icon', currVal_1);
      }
      this._MaterialIconComponent_0_5.icon = (currVal_1!) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:1169:1188 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.shouldFlipExpandIcon;
    if (import25.checkBinding(this._expr_0, currVal_0, 'shouldFlipExpandIcon', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderClass(this._el_0, 'expand-more', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:1197:1239 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }
}

import29.EmbeddedView<void> viewFactory_MaterialExpansionPanel1(import32.RenderView parentView, int parentIndex) {
  return _ViewMaterialExpansionPanel1(parentView, parentIndex);
}

class _ViewMaterialExpansionPanel2 extends import29.EmbeddedView<import2.MaterialExpansionPanel> {
  final import3.TextBinding _textBinding_1 = import3.TextBinding();
  _ViewMaterialExpansionPanel2(import32.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import16.createRenderElement('p');
    this.updateChildClass(_el_0, 'secondary-text');
    this.addShimC(_el_0);
    import16.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import27.interpolateString0(_ctx.secondaryText)) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:1503:1520 */;
  }
}

import29.EmbeddedView<void> viewFactory_MaterialExpansionPanel2(import32.RenderView parentView, int parentIndex) {
  return _ViewMaterialExpansionPanel2(parentView, parentIndex);
}

class _ViewMaterialExpansionPanel3 extends import29.EmbeddedView<import2.MaterialExpansionPanel> {
  late final import30.ViewMaterialIconComponent0 _compView_0;
  late final import31.MaterialIconComponent _MaterialIconComponent_0_5;
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMaterialExpansionPanel3(import32.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import30.ViewMaterialIconComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'expand-button');
    this.addShimC(this._el_0);
    this._MaterialIconComponent_0_5 = import31.MaterialIconComponent(import16.unwrapNode(this._el_0));
    this._compView_0.create(this._MaterialIconComponent_0_5);
    import16.addRenderEventListener(this._el_0, 'click', this.eventHandler0(_ctx.handleExpandIconClick));
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    final currVal_1 = _ctx.expandIcon;
    if (import25.checkBinding(this._expr_1, currVal_1, 'expandIcon', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialIconComponent_0_5, 'icon', currVal_1);
      }
      this._MaterialIconComponent_0_5.icon = (currVal_1!) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:1818:1837 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.shouldFlipExpandIcon;
    if (import25.checkBinding(this._expr_0, currVal_0, 'shouldFlipExpandIcon', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderClass(this._el_0, 'expand-more', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:1857:1899 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }
}

import29.EmbeddedView<void> viewFactory_MaterialExpansionPanel3(import32.RenderView parentView, int parentIndex) {
  return _ViewMaterialExpansionPanel3(parentView, parentIndex);
}

class _ViewMaterialExpansionPanel4 extends import29.EmbeddedView<import2.MaterialExpansionPanel> {
  late final _el_0;
  _ViewMaterialExpansionPanel4(import32.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import16.createRenderElement('div');
    this.updateChildClass(this._el_0, 'action');
    this.addShimC(this._el_0);
    this.project(this._el_0, 2);
    this.initRootNode(this._el_0);
  }

  @override
  void dirtyParentQueriesInternal() {
    import15.unsafeCast<ViewMaterialExpansionPanel0>((this.parentView!))._viewQuery_action_4_isDirty = true;
  }
}

import29.EmbeddedView<void> viewFactory_MaterialExpansionPanel4(import32.RenderView parentView, int parentIndex) {
  return _ViewMaterialExpansionPanel4(parentView, parentIndex);
}

class _ViewMaterialExpansionPanel5 extends import29.EmbeddedView<import2.MaterialExpansionPanel> {
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
  late final ViewContainer _appEl_5;
  late final NgIf _NgIf_5_9;
  late final ViewContainer _appEl_6;
  late final NgIf _NgIf_6_9;
  Object? _expr_0;
  late final _el_0;
  late final _el_1;
  _ViewMaterialExpansionPanel5(import32.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import16.createRenderElement('div');
    this.addShimC(this._el_0);
    this._el_1 = import16.createRenderElement('div');
    import16.appendRenderChild(this._el_0, this._el_1);
    this.updateChildClass(this._el_1, 'content-wrapper');
    this.addShimC(this._el_1);
    final _anchor_2 = import16.createRenderAnchor();
    import16.appendRenderChild(this._el_1, _anchor_2);
    this._appEl_2 = ViewContainer(2, 1, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialExpansionPanel6);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _el_3 = import16.createRenderElement('div');
    import16.appendRenderChild(this._el_1, _el_3);
    this.updateChildClass(_el_3, 'content');
    this.addShimC(_el_3);
    this.project(_el_3, 3);
    final _anchor_4 = import16.createRenderAnchor();
    import16.appendRenderChild(this._el_1, _anchor_4);
    this._appEl_4 = ViewContainer(4, 1, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_MaterialExpansionPanel7);
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
    final _anchor_5 = import16.createRenderAnchor();
    import16.appendRenderChild(this._el_0, _anchor_5);
    this._appEl_5 = ViewContainer(5, 0, this, _anchor_5);
    var _TemplateRef_5_8 = TemplateRef(this._appEl_5, viewFactory_MaterialExpansionPanel8);
    this._NgIf_5_9 = NgIf(this._appEl_5, _TemplateRef_5_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_5, this._NgIf_5_9);
    }
    final _anchor_6 = import16.createRenderAnchor();
    import16.appendRenderChild(this._el_0, _anchor_6);
    this._appEl_6 = ViewContainer(6, 0, this, _anchor_6);
    var _TemplateRef_6_8 = TemplateRef(this._appEl_6, viewFactory_MaterialExpansionPanel9);
    this._NgIf_6_9 = NgIf(this._appEl_6, _TemplateRef_6_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_6, this._NgIf_6_9);
    }
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', ((_ctx.shouldShowHiddenHeaderExpandIcon ?? false) && (_ctx.shouldExpandOnLeft ?? false)));
    }
    this._NgIf_2_9.ngIf = (((_ctx.shouldShowHiddenHeaderExpandIcon ?? false) && (_ctx.shouldExpandOnLeft ?? false)) ?? false) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:2503:2565 */;
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', ((_ctx.shouldShowHiddenHeaderExpandIcon ?? false) && ((!(_ctx.shouldExpandOnLeft ?? false)) ?? false)));
    }
    this._NgIf_4_9.ngIf = (((_ctx.shouldShowHiddenHeaderExpandIcon ?? false) && ((!(_ctx.shouldExpandOnLeft ?? false)) ?? false)) ?? false) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:3032:3095 */;
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_5_9, 'ngIf', (!(_ctx.showSaveCancel ?? false)));
    }
    this._NgIf_5_9.ngIf = ((!(_ctx.showSaveCancel ?? false)) ?? false) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:3421:3444 */;
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_6_9, 'ngIf', _ctx.showSaveCancel);
    }
    this._NgIf_6_9.ngIf = (_ctx.showSaveCancel ?? false) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:3572:3594 */;
    final currVal_0 = _ctx.hideExpandedHeader;
    if (import25.checkBinding(this._expr_0, currVal_0, 'hideExpandedHeader', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderClass(this._el_1, 'hidden-header', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:2428:2470 */;
      this._expr_0 = currVal_0;
    }
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
    this._appEl_5.detectChangesInNestedViews();
    this._appEl_6.detectChangesInNestedViews();
  }

  @override
  void dirtyParentQueriesInternal() {
    import15.unsafeCast<ViewMaterialExpansionPanel0>((this.parentView!))._viewQuery_mainContent_2_isDirty = true;
    import15.unsafeCast<ViewMaterialExpansionPanel0>((this.parentView!))._viewQuery_contentWrapper_5_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
    this._appEl_5.destroyNestedViews();
    this._appEl_6.destroyNestedViews();
  }
}

import29.EmbeddedView<void> viewFactory_MaterialExpansionPanel5(import32.RenderView parentView, int parentIndex) {
  return _ViewMaterialExpansionPanel5(parentView, parentIndex);
}

class _ViewMaterialExpansionPanel6 extends import29.EmbeddedView<import2.MaterialExpansionPanel> {
  late final import30.ViewMaterialIconComponent0 _compView_0;
  late final import5.ButtonDirectiveNgCd _ButtonDirective_0_5;
  late final import31.MaterialIconComponent _MaterialIconComponent_0_6;
  late final import6.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_7;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  late final _el_0;
  _ViewMaterialExpansionPanel6(import32.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import30.ViewMaterialIconComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import16.updateRenderAttribute(this._el_0, 'buttonDecorator', '');
    this.updateChildClassNonHtml(this._el_0, 'expand-button expand-on-left');
    import16.updateRenderAttribute(this._el_0, 'keyboardOnlyFocusIndicator', '');
    this.addShimC(this._el_0);
    this._ButtonDirective_0_5 = import5.ButtonDirectiveNgCd(import18.ButtonDirective(import16.unwrapNode(this._el_0), null));
    this._MaterialIconComponent_0_6 = import31.MaterialIconComponent(import16.unwrapNode(this._el_0));
    this._KeyboardOnlyFocusIndicatorDirective_0_7 = (import15.isDevMode
        ? import19.debugInjectorWrap(import6.KeyboardOnlyFocusIndicatorDirective, () {
            return import6.KeyboardOnlyFocusIndicatorDirective(import16.unwrapNode(this._el_0), (((this.parentView!).parentView!).parentView!).injectorGet(import20.DomService, ((this.parentView!).parentView!).parentIndex));
          })
        : import6.KeyboardOnlyFocusIndicatorDirective(import16.unwrapNode(this._el_0), (((this.parentView!).parentView!).parentView!).injectorGet(import20.DomService, ((this.parentView!).parentView!).parentIndex)));
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(this._el_0, this._ButtonDirective_0_5.instance);
      import17.Inspector.instance.registerDirective(this._el_0, this._KeyboardOnlyFocusIndicatorDirective_0_7);
    }
    this._compView_0.create(this._MaterialIconComponent_0_6);
    import16.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._handleEvent_0));
    import16.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(this._ButtonDirective_0_5.instance.handleKeyPress));
    import16.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_7.keydown));
    import16.addRenderEventListener(this._el_0, 'blur', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_7.resetOutline));
    import16.addRenderEventListener(this._el_0, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_7.onMouseInteraction));
    import16.addRenderEventListener(this._el_0, 'focus', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_7.onFocus));
    final subscription_0 = this._ButtonDirective_0_5.instance.trigger.listen(this.eventHandler0(_ctx.collapse));
    this.initRootNodesAndSubscriptions(import15.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import18.ButtonDirective) && (0 == nodeIndex))) {
      return this._ButtonDirective_0_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    final local_mainId = import15.unsafeCast<ViewMaterialExpansionPanel0>(((this.parentView!).parentView!))._AutoIdDirective_11_5.instance;
    changed = false;
    final currVal_3 = _ctx.expandIcon;
    if (import25.checkBinding(this._expr_3, currVal_3, 'expandIcon', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialIconComponent_0_6, 'icon', currVal_3);
      }
      this._MaterialIconComponent_0_6.icon = (currVal_3!) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:2608:2627 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.isExpanded;
    if (import25.checkBinding(this._expr_0, currVal_0, 'isExpanded', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderAttribute(this._el_0, 'aria-expanded', currVal_0?.toString()) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:2781:2814 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = local_mainId.id;
    if (import25.checkBinding(this._expr_1, currVal_1, 'mainId.id', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderAttribute(this._el_0, 'aria-controls', currVal_1?.toString()) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:2825:2857 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.closePanelMsg;
    if (import25.checkBinding(this._expr_2, currVal_2, 'closePanelMsg', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderAttribute(this._el_0, 'aria-label', currVal_2) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:2868:2901 */;
      this._expr_2 = currVal_2;
    }
    this._ButtonDirective_0_5.detectHostChanges(this._compView_0, this._el_0);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }

  void _handleEvent_0($event) {
    this._ButtonDirective_0_5.instance.handleClick($event);
    this._KeyboardOnlyFocusIndicatorDirective_0_7.onMouseInteraction();
  }
}

import29.EmbeddedView<void> viewFactory_MaterialExpansionPanel6(import32.RenderView parentView, int parentIndex) {
  return _ViewMaterialExpansionPanel6(parentView, parentIndex);
}

class _ViewMaterialExpansionPanel7 extends import29.EmbeddedView<import2.MaterialExpansionPanel> {
  late final import30.ViewMaterialIconComponent0 _compView_0;
  late final import5.ButtonDirectiveNgCd _ButtonDirective_0_5;
  late final import31.MaterialIconComponent _MaterialIconComponent_0_6;
  late final import6.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_7;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  late final _el_0;
  _ViewMaterialExpansionPanel7(import32.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import30.ViewMaterialIconComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import16.updateRenderAttribute(this._el_0, 'buttonDecorator', '');
    this.updateChildClassNonHtml(this._el_0, 'expand-button');
    import16.updateRenderAttribute(this._el_0, 'keyboardOnlyFocusIndicator', '');
    this.addShimC(this._el_0);
    this._ButtonDirective_0_5 = import5.ButtonDirectiveNgCd(import18.ButtonDirective(import16.unwrapNode(this._el_0), null));
    this._MaterialIconComponent_0_6 = import31.MaterialIconComponent(import16.unwrapNode(this._el_0));
    this._KeyboardOnlyFocusIndicatorDirective_0_7 = (import15.isDevMode
        ? import19.debugInjectorWrap(import6.KeyboardOnlyFocusIndicatorDirective, () {
            return import6.KeyboardOnlyFocusIndicatorDirective(import16.unwrapNode(this._el_0), (((this.parentView!).parentView!).parentView!).injectorGet(import20.DomService, ((this.parentView!).parentView!).parentIndex));
          })
        : import6.KeyboardOnlyFocusIndicatorDirective(import16.unwrapNode(this._el_0), (((this.parentView!).parentView!).parentView!).injectorGet(import20.DomService, ((this.parentView!).parentView!).parentIndex)));
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(this._el_0, this._ButtonDirective_0_5.instance);
      import17.Inspector.instance.registerDirective(this._el_0, this._KeyboardOnlyFocusIndicatorDirective_0_7);
    }
    this._compView_0.create(this._MaterialIconComponent_0_6);
    import16.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._handleEvent_0));
    import16.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(this._ButtonDirective_0_5.instance.handleKeyPress));
    import16.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_7.keydown));
    import16.addRenderEventListener(this._el_0, 'blur', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_7.resetOutline));
    import16.addRenderEventListener(this._el_0, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_7.onMouseInteraction));
    import16.addRenderEventListener(this._el_0, 'focus', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_7.onFocus));
    final subscription_0 = this._ButtonDirective_0_5.instance.trigger.listen(this.eventHandler0(_ctx.collapse));
    this.initRootNodesAndSubscriptions(import15.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import18.ButtonDirective) && (0 == nodeIndex))) {
      return this._ButtonDirective_0_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    final currVal_2 = _ctx.expandIcon;
    if (import25.checkBinding(this._expr_2, currVal_2, 'expandIcon', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialIconComponent_0_6, 'icon', currVal_2);
      }
      this._MaterialIconComponent_0_6.icon = (currVal_2!) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:3138:3157 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.isExpanded;
    if (import25.checkBinding(this._expr_0, currVal_0, 'isExpanded', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderAttribute(this._el_0, 'aria-expanded', currVal_0?.toString()) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:3296:3329 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.closePanelMsg;
    if (import25.checkBinding(this._expr_1, currVal_1, 'closePanelMsg', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      import16.updateRenderAttribute(this._el_0, 'aria-label', currVal_1) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:3340:3373 */;
      this._expr_1 = currVal_1;
    }
    this._ButtonDirective_0_5.detectHostChanges(this._compView_0, this._el_0);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }

  void _handleEvent_0($event) {
    this._ButtonDirective_0_5.instance.handleClick($event);
    this._KeyboardOnlyFocusIndicatorDirective_0_7.onMouseInteraction();
  }
}

import29.EmbeddedView<void> viewFactory_MaterialExpansionPanel7(import32.RenderView parentView, int parentIndex) {
  return _ViewMaterialExpansionPanel7(parentView, parentIndex);
}

class _ViewMaterialExpansionPanel8 extends import29.EmbeddedView<import2.MaterialExpansionPanel> {
  _ViewMaterialExpansionPanel8(import32.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import16.createRenderElement('div');
    this.updateChildClass(_el_0, 'toolbelt');
    this.addShimC(_el_0);
    this.project(_el_0, 4);
    this.initRootNode(_el_0);
  }
}

import29.EmbeddedView<void> viewFactory_MaterialExpansionPanel8(import32.RenderView parentView, int parentIndex) {
  return _ViewMaterialExpansionPanel8(parentView, parentIndex);
}

class _ViewMaterialExpansionPanel9 extends import29.EmbeddedView<import2.MaterialExpansionPanel> {
  late final import33.ViewMaterialYesNoButtonsComponent0 _compView_0;
  late final import4.MaterialYesNoButtonsComponent _MaterialYesNoButtonsComponent_0_5;
  late final import4.EnterAcceptsDirective _EnterAcceptsDirective_0_6;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  _ViewMaterialExpansionPanel9(import32.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import33.ViewMaterialYesNoButtonsComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'action-buttons');
    import16.updateRenderAttribute(_el_0, 'reverse', '');
    this.addShimC(_el_0);
    this._MaterialYesNoButtonsComponent_0_5 = import4.MaterialYesNoButtonsComponent();
    this._EnterAcceptsDirective_0_6 = import4.EnterAcceptsDirective(this._MaterialYesNoButtonsComponent_0_5, import16.unwrapNode(_el_0), import15.unsafeCast<ViewMaterialExpansionPanel0>(((this.parentView!).parentView!))._KeyUpBoundaryDirective_0_5);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_el_0, this._EnterAcceptsDirective_0_6);
    }
    this._compView_0.create(this._MaterialYesNoButtonsComponent_0_5);
    final subscription_0 = this._MaterialYesNoButtonsComponent_0_5.yes.listen(this.eventHandler0(_ctx.doSave));
    final subscription_1 = this._MaterialYesNoButtonsComponent_0_5.no.listen(this.eventHandler0(_ctx.doCancel));
    this.initRootNodesAndSubscriptions(import15.unsafeCast(<Object>[_el_0]), [subscription_0, subscription_1]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import34.HasDisabled)) {
        return this._MaterialYesNoButtonsComponent_0_5;
      }
      if (identical(token, import4.EnterAcceptsDirective)) {
        return this._EnterAcceptsDirective_0_6;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    final currVal_0 = _ctx.saveText;
    if (import25.checkBinding(this._expr_0, currVal_0, 'saveText', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_0_5, 'yesText', currVal_0);
      }
      this._MaterialYesNoButtonsComponent_0_5.yesText = (currVal_0!) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:3701:3721 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.cancelText;
    if (import25.checkBinding(this._expr_1, currVal_1, 'cancelText', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_0_5, 'noText', currVal_1);
      }
      this._MaterialYesNoButtonsComponent_0_5.noText = (currVal_1!) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:3732:3753 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.saveDisabled;
    if (import25.checkBinding(this._expr_2, currVal_2, 'saveDisabled', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_0_5, 'yesDisabled', currVal_2);
      }
      this._MaterialYesNoButtonsComponent_0_5.yesDisabled = (currVal_2!) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:3764:3792 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.cancelDisplayed;
    if (import25.checkBinding(this._expr_3, currVal_3, 'cancelDisplayed', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_0_5, 'noDisplayed', currVal_3);
      }
      this._MaterialYesNoButtonsComponent_0_5.noDisplayed = (currVal_3!) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:3843:3874 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.activeSaveCancelAction;
    if (import25.checkBinding(this._expr_4, currVal_4, 'activeSaveCancelAction', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialYesNoButtonsComponent_0_5, 'pending', currVal_4);
      }
      this._MaterialYesNoButtonsComponent_0_5.pending = (currVal_4!) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:3656:3690 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_5 = _ctx.enterAccepts;
    if (import25.checkBinding(this._expr_5, currVal_5, 'enterAccepts', 'package:angulardart_components/material_expansionpanel/material_expansionpanel.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._EnterAcceptsDirective_0_6, 'enterAccepts', currVal_5);
      }
      this._EnterAcceptsDirective_0_6.enterAccepts = (currVal_5!) /* REF:package:angulardart_components/material_expansionpanel/material_expansionpanel.html:3803:3832 */;
      this._expr_5 = currVal_5;
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._EnterAcceptsDirective_0_6.ngOnDestroy();
  }
}

import29.EmbeddedView<void> viewFactory_MaterialExpansionPanel9(import32.RenderView parentView, int parentIndex) {
  return _ViewMaterialExpansionPanel9(parentView, parentIndex);
}

final List<Object> styles$MaterialExpansionPanelHost = const [];

class _ViewMaterialExpansionPanelHost0 extends import35.HostView<import2.MaterialExpansionPanel> {
  @override
  void build() {
    this.componentView = ViewMaterialExpansionPanel0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import15.isDevMode
        ? import19.debugInjectorWrap(import2.MaterialExpansionPanel, () {
            return import2.MaterialExpansionPanel(this.injectorGet(import36.NgZone, this.parentIndex), this.componentView, this.injectorGet(import20.DomService, this.parentIndex), null, null);
          })
        : import2.MaterialExpansionPanel(this.injectorGet(import36.NgZone, this.parentIndex), this.componentView, this.injectorGet(import20.DomService, this.parentIndex), null, null));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((((identical(token, import2.MaterialExpansionPanel) || identical(token, import24.DeferredContentAware)) || identical(token, import34.HasDisabled)) || identical(token, import37.FocusableItem)) || identical(token, import38.Focusable)) && (0 == nodeIndex))) {
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
    if (((!import25.debugThrowIfChanged) && firstCheck)) {
      this.component.ngOnInit();
    }
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import35.HostView<import2.MaterialExpansionPanel> viewFactory_MaterialExpansionPanelHost0() {
  return _ViewMaterialExpansionPanelHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialExpansionPanel, createMaterialExpansionPanelFactory());
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
}
