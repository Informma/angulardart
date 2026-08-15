// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_yes_no_buttons.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/focus/focus.template.dart' as _ref1;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref2;
import 'package:angulardart_components/material_button/material_button.template.dart' as _ref3;
import 'package:angulardart_components/material_spinner/material_spinner.template.dart' as _ref4;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref5;
import 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_yes_no_buttons.dart' as import2;

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

import '../material_spinner/material_spinner.template.dart' as import17;
import '../material_spinner/material_spinner.dart' as import18;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import19;
import 'package:angulardart/src/runtime/text_binding.dart' as import20;

import '../material_button/material_button.template.dart' as import21;
import '../focus/focus.dart' as import22;
import '../material_button/material_button.dart' as import23;

import 'package:angulardart/src/di/errors.dart' as import24;

import '../utils/browser/dom_service/dom_service.dart' as import25;
import '../laminate/components/modal/modal.dart' as import26;
import '../src/laminate/popup/popup_ref.dart' as import27;
import '../theme/dark_theme.dart' as import28;

import 'package:angulardart_meta/src/di_tokens.dart' as import29;

import 'dart:core';

import '../button_decorator/button_decorator.dart' as import31;
import '../interfaces/has_disabled.dart' as import32;

import 'package:angulardart/src/runtime/interpolate.dart' as import33;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import34;

final List<Object> styles$MaterialYesNoButtonsComponent = [import0.styles];

class ViewMaterialYesNoButtonsComponent0 extends import1.ComponentView<import2.MaterialYesNoButtonsComponent> {
  bool _viewQuery_yesButton_0_isDirty = true;
  bool _viewQuery_noButton_1_isDirty = true;
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialYesNoButtonsComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-yes-no-buttons');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/material_yes_no_buttons/material_yes_no_buttons.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _anchor_0 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_0);
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, viewFactory_MaterialYesNoButtonsComponent1);
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
    final _anchor_1 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_1);
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MaterialYesNoButtonsComponent2);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_2);
    this._appEl_2 = ViewContainer(2, null, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialYesNoButtonsComponent3);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', _ctx.pending);
    }
    this._NgIf_0_9.ngIf = (_ctx.pending ?? false) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:224:239 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', (((!(_ctx.pending ?? false)) ?? false) && (_ctx.yesDisplayed ?? false)));
    }
    this._NgIf_1_9.ngIf = ((((!(_ctx.pending ?? false)) ?? false) && (_ctx.yesDisplayed ?? false)) ?? false) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:358:390 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', (((!(_ctx.pending ?? false)) ?? false) && (_ctx.noDisplayed ?? false)));
    }
    this._NgIf_2_9.ngIf = ((((!(_ctx.pending ?? false)) ?? false) && (_ctx.noDisplayed ?? false)) ?? false) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:861:892 */;
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    if ((!import13.debugThrowIfChanged)) {
      if (this._viewQuery_yesButton_0_isDirty) {
        _ctx.yesButton = import14.firstOrNull(
          this._appEl_1.mapNestedViewsWithSingleResult((_ViewMaterialYesNoButtonsComponent2 nestedView) {
            import6.View.queryChangeDetectorRefs[nestedView._MaterialButtonComponent_0_7] = nestedView._compView_0;
            return nestedView._MaterialButtonComponent_0_7;
          }),
        );
        this._viewQuery_yesButton_0_isDirty = false;
      }
      if (this._viewQuery_noButton_1_isDirty) {
        _ctx.noButton = import14.firstOrNull(
          this._appEl_2.mapNestedViewsWithSingleResult((_ViewMaterialYesNoButtonsComponent3 nestedView) {
            import6.View.queryChangeDetectorRefs[nestedView._MaterialButtonComponent_0_7] = nestedView._compView_0;
            return nestedView._MaterialButtonComponent_0_7;
          }),
        );
        this._viewQuery_noButton_1_isDirty = false;
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialYesNoButtonsComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialYesNoButtonsComponentNgFactory = ComponentFactory<import2.MaterialYesNoButtonsComponent>('material-yes-no-buttons', viewFactory_MaterialYesNoButtonsComponentHost0);
ComponentFactory<import2.MaterialYesNoButtonsComponent> get MaterialYesNoButtonsComponentNgFactory {
  return _MaterialYesNoButtonsComponentNgFactory;
}

ComponentFactory<import2.MaterialYesNoButtonsComponent> createMaterialYesNoButtonsComponentFactory() {
  return ComponentFactory('material-yes-no-buttons', viewFactory_MaterialYesNoButtonsComponentHost0);
}

class _ViewMaterialYesNoButtonsComponent1 extends import16.EmbeddedView<import2.MaterialYesNoButtonsComponent> {
  late final import17.ViewMaterialSpinnerComponent0 _compView_1;
  late final import18.MaterialSpinnerComponent _MaterialSpinnerComponent_1_5;
  _ViewMaterialYesNoButtonsComponent1(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'btn spinner');
    this.addShimC(_el_0);
    this._compView_1 = import17.ViewMaterialSpinnerComponent0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    import10.appendRenderChild(_el_0, _el_1);
    this.addShimC(_el_1);
    this._MaterialSpinnerComponent_1_5 = import18.MaterialSpinnerComponent();
    this._compView_1.create(this._MaterialSpinnerComponent_1_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    this._compView_1.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_1.destroyInternalState();
  }
}

import16.EmbeddedView<void> viewFactory_MaterialYesNoButtonsComponent1(import19.RenderView parentView, int parentIndex) {
  return _ViewMaterialYesNoButtonsComponent1(parentView, parentIndex);
}

class _ViewMaterialYesNoButtonsComponent2 extends import16.EmbeddedView<import2.MaterialYesNoButtonsComponent> {
  final import20.TextBinding _textBinding_1 = import20.TextBinding();
  late final import21.ViewMaterialButtonComponent0 _compView_0;
  late final import22.AutoFocusDirective _AutoFocusDirective_0_5;
  late final dynamic _AcxDarkTheme_0_6;
  late final import23.MaterialButtonComponent _MaterialButtonComponent_0_7;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  late final _el_0;
  _ViewMaterialYesNoButtonsComponent2(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import21.ViewMaterialButtonComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'btn btn-yes');
    this.addShimC(this._el_0);
    this._AutoFocusDirective_0_5 = (import9.isDevMode
        ? import24.debugInjectorWrap(import22.AutoFocusDirective, () {
            return import22.AutoFocusDirective(import10.unwrapNode(this._el_0), (this.parentView!).injectorGetOptional(import25.DomService, this.parentIndex), null, (this.parentView!).injectorGetOptional(import26.ModalComponent, this.parentIndex), (this.parentView!).injectorGetOptional(import27.PopupRef, this.parentIndex));
          })
        : import22.AutoFocusDirective(import10.unwrapNode(this._el_0), (this.parentView!).injectorGetOptional(import25.DomService, this.parentIndex), null, (this.parentView!).injectorGetOptional(import26.ModalComponent, this.parentIndex), (this.parentView!).injectorGetOptional(import27.PopupRef, this.parentIndex)));
    this._AcxDarkTheme_0_6 = (import9.isDevMode
        ? import24.debugInjectorWrap(import28.AcxDarkTheme, () {
            return import28.AcxDarkTheme((this.parentView!).injectorGetOptional(const import29.OpaqueToken<Object>('acxDarkTheme'), this.parentIndex));
          })
        : import28.AcxDarkTheme((this.parentView!).injectorGetOptional(const import29.OpaqueToken<Object>('acxDarkTheme'), this.parentIndex)));
    this._MaterialButtonComponent_0_7 = import23.MaterialButtonComponent(import10.unwrapNode(this._el_0), this._AcxDarkTheme_0_6, this._compView_0, null);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_0, this._AutoFocusDirective_0_5);
    }
    this._compView_0.createAndProject(this._MaterialButtonComponent_0_7, [
      <Object>[this._textBinding_1.element],
    ]);
    final subscription_0 = this._MaterialButtonComponent_0_7.trigger.listen(this.eventHandler1(_ctx.onYes));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 1)) {
      if (identical(token, import28.AcxDarkTheme)) {
        return this._AcxDarkTheme_0_6;
      }
      if (((identical(token, import23.MaterialButtonComponent) || identical(token, import31.ButtonDirective)) || identical(token, import32.HasDisabled))) {
        return this._MaterialButtonComponent_0_7;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final currVal_3 = _ctx.yesAutoFocus;
    if (import13.checkBinding(this._expr_3, currVal_3, 'yesAutoFocus', 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._AutoFocusDirective_0_5, 'autoFocus', currVal_3);
      }
      this._AutoFocusDirective_0_5.autoFocus = (currVal_3!) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:445:471 */;
      this._expr_3 = currVal_3;
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._AutoFocusDirective_0_5.ngOnInit();
    }
    changed = false;
    final currVal_4 = ((_ctx.yesDisabled ?? false) || (_ctx.disabled ?? false));
    if (import13.checkBinding(this._expr_4, currVal_4, 'yesDisabled || disabled', 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialButtonComponent_0_7, 'disabled', currVal_4);
      }
      this._MaterialButtonComponent_0_7.disabled = (currVal_4!) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:591:627 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = ((_ctx.yesRaised ?? false) || (_ctx.raised ?? false));
    if (import13.checkBinding(this._expr_5, currVal_5, 'yesRaised || raised', 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialButtonComponent_0_7, 'raised', currVal_5);
      }
      this._MaterialButtonComponent_0_7.raised = (currVal_5!) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:489:519 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.yesHighlighted;
    if (import13.checkBinding(this._expr_0, currVal_0, 'yesHighlighted', 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html')) {
      import10.updateRenderClass(this._el_0, 'highlighted', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:537:573 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.yesAriaLabel;
    if (import13.checkBinding(this._expr_1, currVal_1, 'yesAriaLabel', 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html')) {
      import10.updateRenderAttribute(this._el_0, 'aria-label', currVal_1) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:645:677 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.yesAriaDescribedBy;
    if (import13.checkBinding(this._expr_2, currVal_2, 'yesAriaDescribedBy', 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html')) {
      import10.updateRenderAttribute(this._el_0, 'aria-describedby', currVal_2) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:695:739 */;
      this._expr_2 = currVal_2;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._textBinding_1.updateText(import33.interpolateString0(_ctx.yesText)) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:786:797 */;
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void dirtyParentQueriesInternal() {
    import9.unsafeCast<ViewMaterialYesNoButtonsComponent0>((this.parentView!))._viewQuery_yesButton_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._AutoFocusDirective_0_5.ngOnDestroy();
  }
}

import16.EmbeddedView<void> viewFactory_MaterialYesNoButtonsComponent2(import19.RenderView parentView, int parentIndex) {
  return _ViewMaterialYesNoButtonsComponent2(parentView, parentIndex);
}

class _ViewMaterialYesNoButtonsComponent3 extends import16.EmbeddedView<import2.MaterialYesNoButtonsComponent> {
  final import20.TextBinding _textBinding_1 = import20.TextBinding();
  late final import21.ViewMaterialButtonComponent0 _compView_0;
  late final import22.AutoFocusDirective _AutoFocusDirective_0_5;
  late final dynamic _AcxDarkTheme_0_6;
  late final import23.MaterialButtonComponent _MaterialButtonComponent_0_7;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  late final _el_0;
  _ViewMaterialYesNoButtonsComponent3(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import21.ViewMaterialButtonComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'btn btn-no');
    this.addShimC(this._el_0);
    this._AutoFocusDirective_0_5 = (import9.isDevMode
        ? import24.debugInjectorWrap(import22.AutoFocusDirective, () {
            return import22.AutoFocusDirective(import10.unwrapNode(this._el_0), (this.parentView!).injectorGetOptional(import25.DomService, this.parentIndex), null, (this.parentView!).injectorGetOptional(import26.ModalComponent, this.parentIndex), (this.parentView!).injectorGetOptional(import27.PopupRef, this.parentIndex));
          })
        : import22.AutoFocusDirective(import10.unwrapNode(this._el_0), (this.parentView!).injectorGetOptional(import25.DomService, this.parentIndex), null, (this.parentView!).injectorGetOptional(import26.ModalComponent, this.parentIndex), (this.parentView!).injectorGetOptional(import27.PopupRef, this.parentIndex)));
    this._AcxDarkTheme_0_6 = (import9.isDevMode
        ? import24.debugInjectorWrap(import28.AcxDarkTheme, () {
            return import28.AcxDarkTheme((this.parentView!).injectorGetOptional(const import29.OpaqueToken<Object>('acxDarkTheme'), this.parentIndex));
          })
        : import28.AcxDarkTheme((this.parentView!).injectorGetOptional(const import29.OpaqueToken<Object>('acxDarkTheme'), this.parentIndex)));
    this._MaterialButtonComponent_0_7 = import23.MaterialButtonComponent(import10.unwrapNode(this._el_0), this._AcxDarkTheme_0_6, this._compView_0, null);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_0, this._AutoFocusDirective_0_5);
    }
    this._compView_0.createAndProject(this._MaterialButtonComponent_0_7, [
      <Object>[this._textBinding_1.element],
    ]);
    final subscription_0 = this._MaterialButtonComponent_0_7.trigger.listen(this.eventHandler1(_ctx.onNo));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 1)) {
      if (identical(token, import28.AcxDarkTheme)) {
        return this._AcxDarkTheme_0_6;
      }
      if (((identical(token, import23.MaterialButtonComponent) || identical(token, import31.ButtonDirective)) || identical(token, import32.HasDisabled))) {
        return this._MaterialButtonComponent_0_7;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final currVal_2 = _ctx.noAutoFocus;
    if (import13.checkBinding(this._expr_2, currVal_2, 'noAutoFocus', 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._AutoFocusDirective_0_5, 'autoFocus', currVal_2);
      }
      this._AutoFocusDirective_0_5.autoFocus = (currVal_2!) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:946:971 */;
      this._expr_2 = currVal_2;
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._AutoFocusDirective_0_5.ngOnInit();
    }
    changed = false;
    final currVal_3 = ((_ctx.noDisabled ?? false) || (_ctx.disabled ?? false));
    if (import13.checkBinding(this._expr_3, currVal_3, 'noDisabled || disabled', 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialButtonComponent_0_7, 'disabled', currVal_3);
      }
      this._MaterialButtonComponent_0_7.disabled = (currVal_3!) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:1024:1059 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.raised;
    if (import13.checkBinding(this._expr_4, currVal_4, 'raised', 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialButtonComponent_0_7, 'raised', currVal_4);
      }
      this._MaterialButtonComponent_0_7.raised = (currVal_4!) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:989:1006 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.noAriaLabel;
    if (import13.checkBinding(this._expr_0, currVal_0, 'noAriaLabel', 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html')) {
      import10.updateRenderAttribute(this._el_0, 'aria-label', currVal_0) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:1077:1108 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.noAriaDescribedBy;
    if (import13.checkBinding(this._expr_1, currVal_1, 'noAriaDescribedBy', 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html')) {
      import10.updateRenderAttribute(this._el_0, 'aria-describedby', currVal_1) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:1126:1169 */;
      this._expr_1 = currVal_1;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._textBinding_1.updateText(import33.interpolateString0(_ctx.noText)) /* REF:package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.html:1215:1225 */;
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void dirtyParentQueriesInternal() {
    import9.unsafeCast<ViewMaterialYesNoButtonsComponent0>((this.parentView!))._viewQuery_noButton_1_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._AutoFocusDirective_0_5.ngOnDestroy();
  }
}

import16.EmbeddedView<void> viewFactory_MaterialYesNoButtonsComponent3(import19.RenderView parentView, int parentIndex) {
  return _ViewMaterialYesNoButtonsComponent3(parentView, parentIndex);
}

final List<Object> styles$MaterialYesNoButtonsComponentHost = const [];

class _ViewMaterialYesNoButtonsComponentHost0 extends import34.HostView<import2.MaterialYesNoButtonsComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialYesNoButtonsComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialYesNoButtonsComponent();
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import32.HasDisabled) && (0 == nodeIndex))) {
      return this.component;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
    this.componentView.detectChangesDeprecated();
  }
}

import34.HostView<import2.MaterialYesNoButtonsComponent> viewFactory_MaterialYesNoButtonsComponentHost0() {
  return _ViewMaterialYesNoButtonsComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialYesNoButtonsComponent, createMaterialYesNoButtonsComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
}
