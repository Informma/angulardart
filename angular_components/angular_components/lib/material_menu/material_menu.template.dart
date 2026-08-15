// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_menu.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/focus/focus.template.dart' as _ref1;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref2;
import 'package:angulardart_components/material_button/material_button.template.dart' as _ref3;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref4;
import 'package:angulardart_components/material_menu/menu_popup.template.dart' as _ref5;
import 'package:angulardart_components/material_menu/menu_popup_wrapper.template.dart' as _ref6;
import 'package:angulardart_components/material_popup/material_popup.template.dart' as _ref7;
import 'package:angulardart_components/material_tooltip/material_tooltip.template.dart' as _ref8;
import 'package:angulardart_components/mixins/focusable_mixin.template.dart' as _ref9;
import 'package:angulardart_components/model/a11y/keyboard_handler_mixin.template.dart' as _ref10;
import 'package:angulardart_components/model/menu/menu.template.dart' as _ref11;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref12;
import 'package:angulardart_components/utils/angular/css/css.template.dart' as _ref13;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref14;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import0;

import 'material_menu.dart' as import1;

import 'package:angulardart/src/utilities.dart' as import2;
import 'package:angulardart/src/di/errors.dart' as import3;

import '../src/material_tooltip/tooltip_controller.dart' as import4;
import '../material_tooltip/module.dart' as import5;
import '../utils/disposer/disposer.dart' as import6;
import '../material_button/material_button.template.dart' as import7;

import 'package:angulardart/src/core/linker/view_container.dart';

import '../material_button/material_button.dart' as import9;
import '../src/material_tooltip/tooltip.dart' as import10;
import '../src/laminate/popup/popup_source_directive.dart' as import11;

import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import13;
import 'package:angulardart/src/core/linker/views/view.dart' as import14;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import16;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import17;

import '../theme/dark_theme.dart' as import18;

import 'package:angulardart_meta/src/di_tokens.dart' as import19;

import 'dart:core';

import '../src/laminate/popup/dom_popup_source.dart' as import21;

import 'package:angulardart_components/src/dom/dom_apis.dart' as import22;

import '../utils/angular/reference/reference.dart' as import23;
import '../focus/focus_interface.dart' as import24;

import 'package:angulardart/src/devtools.dart' as import25;
import 'package:angulardart/src/core/linker/template_ref.dart';

import '../button_decorator/button_decorator.dart' as import27;
import '../interfaces/has_disabled.dart' as import28;

import 'package:angulardart/src/runtime/check_binding.dart' as import29;
import 'package:angulardart/src/runtime/queries.dart' as import30;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import32;

import '../material_icon/material_icon.template.dart' as import33;
import '../material_icon/material_icon.dart' as import34;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import35;
import 'package:angulardart/src/runtime/text_binding.dart' as import36;
import 'package:angulardart/src/runtime/interpolate.dart' as import37;

import 'menu_popup.template.dart' as import38;
import 'menu_popup.dart' as import39;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import40;

final List<Object> styles$MaterialMenuComponent = const [];

class ViewMaterialMenuComponent0 extends import0.ComponentView<import1.MaterialMenuComponent> {
  late dynamic _TooltipController_0_14 = (import2.isDevMode
      ? import3.debugInjectorWrap(import4.TooltipController, () {
          return import5.createTooltipController((this.parentView!).injectorGetOptional(import4.TooltipController, this.parentIndex), (this.parentView!).injectorGetOptional(import6.Disposer, this.parentIndex));
        })
      : import5.createTooltipController((this.parentView!).injectorGetOptional(import4.TooltipController, this.parentIndex), (this.parentView!).injectorGetOptional(import6.Disposer, this.parentIndex)));
  bool _viewQuery_MenuPopupComponent_1_isDirty = true;
  late final import7.ViewMaterialButtonComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final dynamic _AcxDarkTheme_0_8;
  late final import9.MaterialButtonComponent _MaterialButtonComponent_0_9;
  late final import10.MaterialTooltipDirective _MaterialTooltipDirective_0_10;
  late final import11.PopupSourceDirective _PopupSourceDirective_0_11;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  late final _el_0;
  static import13.ComponentStyles? _componentStyles;
  ViewMaterialMenuComponent0(import14.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import16.renderFactory.createElement('material-menu');
  }
  static String? get _debugComponentUrl {
    return (import2.isDevMode ? 'asset:angulardart_components/lib/material_menu/material_menu.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._compView_0 = import7.ViewMaterialButtonComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import17.appendRenderChild(parentRenderNode, this._el_0);
    this.updateChildClassNonHtml(this._el_0, 'trigger-button');
    import17.updateRenderAttribute(this._el_0, 'popupSource', '');
    this._appEl_0 = ViewContainer(0, null, this, this._el_0);
    this._AcxDarkTheme_0_8 = (import2.isDevMode
        ? import3.debugInjectorWrap(import18.AcxDarkTheme, () {
            return import18.AcxDarkTheme((this.parentView!).injectorGetOptional(const import19.OpaqueToken<Object>('acxDarkTheme'), this.parentIndex));
          })
        : import18.AcxDarkTheme((this.parentView!).injectorGetOptional(const import19.OpaqueToken<Object>('acxDarkTheme'), this.parentIndex)));
    this._MaterialButtonComponent_0_9 = import9.MaterialButtonComponent(import17.unwrapNode(this._el_0), this._AcxDarkTheme_0_8, this._compView_0, null);
    this._MaterialTooltipDirective_0_10 = (import2.isDevMode
        ? import3.debugInjectorWrap(import10.MaterialTooltipDirective, () {
            return import10.MaterialTooltipDirective((this.parentView!).injectorGet(import21.DomPopupSourceFactory, this.parentIndex), this._appEl_0, import17.unwrapNode(this._el_0), this._appEl_0, this._compView_0, (this.parentView!).injectorGet(import22.Window, this.parentIndex), null, null);
          })
        : import10.MaterialTooltipDirective((this.parentView!).injectorGet(import21.DomPopupSourceFactory, this.parentIndex), this._appEl_0, import17.unwrapNode(this._el_0), this._appEl_0, this._compView_0, (this.parentView!).injectorGet(import22.Window, this.parentIndex), null, null));
    this._PopupSourceDirective_0_11 = (import2.isDevMode
        ? import3.debugInjectorWrap(import11.PopupSourceDirective, () {
            return import11.PopupSourceDirective((this.parentView!).injectorGet(import21.DomPopupSourceFactory, this.parentIndex), import17.unwrapNode(this._el_0), (this.parentView!).injectorGetOptional(import23.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import24.Focusable, this.parentIndex), null);
          })
        : import11.PopupSourceDirective((this.parentView!).injectorGet(import21.DomPopupSourceFactory, this.parentIndex), import17.unwrapNode(this._el_0), (this.parentView!).injectorGetOptional(import23.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import24.Focusable, this.parentIndex), null));
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(this._el_0, this._MaterialTooltipDirective_0_10);
      import25.Inspector.instance.registerDirective(this._el_0, this._PopupSourceDirective_0_11);
    }
    final _anchor_1 = import17.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MaterialMenuComponent1);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import17.createRenderAnchor();
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialMenuComponent2);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _text_3 = import17.createRenderText(' ');
    this._compView_0.createAndProject(this._MaterialButtonComponent_0_9, [
      <Object>[this._appEl_1, this._appEl_2, _text_3]..addAll(import2.unsafeCast(this.projectedNodes[0])),
    ]);
    final _anchor_4 = import17.createRenderAnchor();
    import17.appendRenderChild(parentRenderNode, _anchor_4);
    this._appEl_4 = ViewContainer(4, null, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_MaterialMenuComponent3);
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
    import17.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(_ctx.onKeyDown));
    final subscription_0 = this._MaterialButtonComponent_0_9.trigger.listen(this.eventHandler1(_ctx.handlePopupTriggerAction));
    import14.View.queryChangeDetectorRefs[this._MaterialButtonComponent_0_9] = this._compView_0;
    _ctx.button = this._MaterialButtonComponent_0_9;
    this.initSubscriptions([subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 3)) {
      if (identical(token, import18.AcxDarkTheme)) {
        return this._AcxDarkTheme_0_8;
      }
      if (((identical(token, import9.MaterialButtonComponent) || identical(token, import27.ButtonDirective)) || identical(token, import28.HasDisabled))) {
        return this._MaterialButtonComponent_0_9;
      }
      if (identical(token, import4.TooltipController)) {
        return this._TooltipController_0_14;
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
    final currVal_2 = _ctx.disabled;
    if (import29.checkBinding(this._expr_2, currVal_2, 'disabled', 'package:angulardart_components/material_menu/material_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialButtonComponent_0_9, 'disabled', currVal_2);
      }
      this._MaterialButtonComponent_0_9.disabled = (currVal_2!) /* REF:package:angulardart_components/material_menu/material_menu.html:378:399 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.tabbable;
    if (import29.checkBinding(this._expr_3, currVal_3, 'tabbable', 'package:angulardart_components/material_menu/material_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialButtonComponent_0_9, 'tabbable', currVal_3);
      }
      this._MaterialButtonComponent_0_9.tabbable = (currVal_3!) /* REF:package:angulardart_components/material_menu/material_menu.html:404:425 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_4 = _ctx.tooltipText;
    if (import29.checkBinding(this._expr_4, currVal_4, 'tooltipText', 'package:angulardart_components/material_menu/material_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialTooltipDirective_0_10, 'materialTooltip', currVal_4);
      }
      this._MaterialTooltipDirective_0_10.text = (currVal_4!) /* REF:package:angulardart_components/material_menu/material_menu.html:430:461 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.hasTooltip;
    if (import29.checkBinding(this._expr_5, currVal_5, 'hasTooltip', 'package:angulardart_components/material_menu/material_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialTooltipDirective_0_10, 'showTooltipIf', currVal_5);
      }
      this._MaterialTooltipDirective_0_10.canShow = (currVal_5!) /* REF:package:angulardart_components/material_menu/material_menu.html:466:494 */;
      this._expr_5 = currVal_5;
    }
    if (((!import29.debugThrowIfChanged) && firstCheck)) {
      this._MaterialTooltipDirective_0_10.ngOnInit();
    }
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.hasIcon);
    }
    this._NgIf_1_9.ngIf = (_ctx.hasIcon ?? false) /* REF:package:angulardart_components/material_menu/material_menu.html:588:603 */;
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', (_ctx.buttonText != null));
    }
    this._NgIf_2_9.ngIf = ((_ctx.buttonText != null) ?? false) /* REF:package:angulardart_components/material_menu/material_menu.html:660:686 */;
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', _ctx.hasSubmenu);
    }
    this._NgIf_4_9.ngIf = (_ctx.hasSubmenu ?? false) /* REF:package:angulardart_components/material_menu/material_menu.html:795:813 */;
    final currVal_0 = _ctx.ariaLabel;
    if (import29.checkBinding(this._expr_0, currVal_0, 'ariaLabel', 'package:angulardart_components/material_menu/material_menu.html')) {
      import17.updateRenderAttribute(this._el_0, 'aria-label', currVal_0) /* REF:package:angulardart_components/material_menu/material_menu.html:315:344 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.hasIcon;
    if (import29.checkBinding(this._expr_1, currVal_1, 'hasIcon', 'package:angulardart_components/material_menu/material_menu.html')) {
      import17.updateRenderAttribute(this._el_0, 'icon', (currVal_1 ? '' : null)) /* REF:package:angulardart_components/material_menu/material_menu.html:349:373 */;
      this._expr_1 = currVal_1;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
    if ((!import29.debugThrowIfChanged)) {
      if (this._viewQuery_MenuPopupComponent_1_isDirty) {
        _ctx.menuPopup = import30.firstOrNull(
          this._appEl_4.mapNestedViewsWithSingleResult((_ViewMaterialMenuComponent3 nestedView) {
            import14.View.queryChangeDetectorRefs[nestedView._MenuPopupComponent_0_5] = nestedView._compView_0;
            return nestedView._MenuPopupComponent_0_5;
          }),
        );
        this._viewQuery_MenuPopupComponent_1_isDirty = false;
      }
    }
    this._compView_0.detectChangesDeprecated();
    if ((!import29.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialTooltipDirective_0_10.ngAfterViewInit();
        this._PopupSourceDirective_0_11.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._MaterialTooltipDirective_0_10.ngOnDestroy();
    this._PopupSourceDirective_0_11.ngOnDestroy();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import13.ComponentStyles.unscoped(styles$MaterialMenuComponent, _debugComponentUrl));
      if (import2.isDevMode) {
        import13.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialMenuComponentNgFactory = ComponentFactory<import1.MaterialMenuComponent>('material-menu', viewFactory_MaterialMenuComponentHost0);
ComponentFactory<import1.MaterialMenuComponent> get MaterialMenuComponentNgFactory {
  return _MaterialMenuComponentNgFactory;
}

ComponentFactory<import1.MaterialMenuComponent> createMaterialMenuComponentFactory() {
  return ComponentFactory('material-menu', viewFactory_MaterialMenuComponentHost0);
}

class _ViewMaterialMenuComponent1 extends import32.EmbeddedView<import1.MaterialMenuComponent> {
  late final import33.ViewMaterialIconComponent0 _compView_0;
  late final import34.MaterialIconComponent _MaterialIconComponent_0_5;
  Object? _expr_0;
  _ViewMaterialMenuComponent1(import35.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import33.ViewMaterialIconComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this._MaterialIconComponent_0_5 = import34.MaterialIconComponent(import17.unwrapNode(_el_0));
    this._compView_0.create(this._MaterialIconComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    final currVal_0 = (_ctx.menu!).uiIcon;
    if (import29.checkBinding(this._expr_0, currVal_0, 'menu!.uiIcon', 'package:angulardart_components/material_menu/material_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialIconComponent_0_5, 'icon', currVal_0);
      }
      this._MaterialIconComponent_0_5.icon = (currVal_0!) /* REF:package:angulardart_components/material_menu/material_menu.html:610:631 */;
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

import32.EmbeddedView<void> viewFactory_MaterialMenuComponent1(import35.RenderView parentView, int parentIndex) {
  return _ViewMaterialMenuComponent1(parentView, parentIndex);
}

class _ViewMaterialMenuComponent2 extends import32.EmbeddedView<import1.MaterialMenuComponent> {
  final import36.TextBinding _textBinding_1 = import36.TextBinding();
  _ViewMaterialMenuComponent2(import35.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import17.createRenderElement('span');
    import17.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import37.interpolateString0(_ctx.buttonText)) /* REF:package:angulardart_components/material_menu/material_menu.html:687:701 */;
  }
}

import32.EmbeddedView<void> viewFactory_MaterialMenuComponent2(import35.RenderView parentView, int parentIndex) {
  return _ViewMaterialMenuComponent2(parentView, parentIndex);
}

class _ViewMaterialMenuComponent3 extends import32.EmbeddedView<import1.MaterialMenuComponent> {
  late final import38.ViewMenuPopupComponent0 _compView_0;
  late final import39.MenuPopupComponent _MenuPopupComponent_0_5;
  late final import11.PopupSourceDirective _PopupSourceDirective_0_6;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  _ViewMaterialMenuComponent3(import35.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import38.ViewMenuPopupComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this._MenuPopupComponent_0_5 = import39.MenuPopupComponent(import17.unwrapNode(_el_0));
    this._PopupSourceDirective_0_6 = (import2.isDevMode
        ? import3.debugInjectorWrap(import11.PopupSourceDirective, () {
            return import11.PopupSourceDirective((this.parentView!).injectorGet(import21.DomPopupSourceFactory, this.parentIndex), import17.unwrapNode(_el_0), (this.parentView!).injectorGetOptional(import23.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import24.Focusable, this.parentIndex), null);
          })
        : import11.PopupSourceDirective((this.parentView!).injectorGet(import21.DomPopupSourceFactory, this.parentIndex), import17.unwrapNode(_el_0), (this.parentView!).injectorGetOptional(import23.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import24.Focusable, this.parentIndex), null));
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_el_0, this._PopupSourceDirective_0_6);
    }
    this._compView_0.createAndProject(this._MenuPopupComponent_0_5, [this.projectedNodes[1]]);
    final subscription_0 = this._MenuPopupComponent_0_5.expandActionChange.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import2.unsafeCast(<Object>[_el_0]), [subscription_0]);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_toggle = import2.unsafeCast<ViewMaterialMenuComponent0>((this.parentView!))._PopupSourceDirective_0_11;
    changed = false;
    final currVal_0 = _ctx.menu;
    if (import29.checkBinding(this._expr_0, currVal_0, 'menu', 'package:angulardart_components/material_menu/material_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MenuPopupComponent_0_5, 'menu', currVal_0);
      }
      this._MenuPopupComponent_0_5.menu = (currVal_0!) /* REF:package:angulardart_components/material_menu/material_menu.html:884:897 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.preferredPositions;
    if (import29.checkBinding(this._expr_1, currVal_1, 'preferredPositions', 'package:angulardart_components/material_menu/material_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MenuPopupComponent_0_5, 'preferredPositions', currVal_1);
      }
      this._MenuPopupComponent_0_5.preferredPositions = (currVal_1!) /* REF:package:angulardart_components/material_menu/material_menu.html:929:970 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.expandAction;
    if (import29.checkBinding(this._expr_2, currVal_2, 'expandAction', 'package:angulardart_components/material_menu/material_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MenuPopupComponent_0_5, 'expandAction', currVal_2);
      }
      this._MenuPopupComponent_0_5.expandAction = (currVal_2!) /* REF:package:angulardart_components/material_menu/material_menu.html:818:849 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.width;
    if (import29.checkBinding(this._expr_3, currVal_3, 'width', 'package:angulardart_components/material_menu/material_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MenuPopupComponent_0_5, 'width', currVal_3);
      }
      this._MenuPopupComponent_0_5.width = (currVal_3!) /* REF:package:angulardart_components/material_menu/material_menu.html:975:990 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = local_toggle;
    if (import29.checkBinding(this._expr_4, currVal_4, 'toggle', 'package:angulardart_components/material_menu/material_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MenuPopupComponent_0_5, 'popupSource', currVal_4);
      }
      this._MenuPopupComponent_0_5.popupSource = (currVal_4!) /* REF:package:angulardart_components/material_menu/material_menu.html:902:924 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.popupClass;
    if (import29.checkBinding(this._expr_5, currVal_5, 'popupClass', 'package:angulardart_components/material_menu/material_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MenuPopupComponent_0_5, 'popupClass', currVal_5);
      }
      this._MenuPopupComponent_0_5.popupClass = (currVal_5!) /* REF:package:angulardart_components/material_menu/material_menu.html:854:879 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectChangesDeprecated();
    if ((!import29.debugThrowIfChanged)) {
      if (firstCheck) {
        this._PopupSourceDirective_0_6.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    import2.unsafeCast<ViewMaterialMenuComponent0>((this.parentView!))._viewQuery_MenuPopupComponent_1_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._PopupSourceDirective_0_6.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.expandAction = $event;
  }
}

import32.EmbeddedView<void> viewFactory_MaterialMenuComponent3(import35.RenderView parentView, int parentIndex) {
  return _ViewMaterialMenuComponent3(parentView, parentIndex);
}

final List<Object> styles$MaterialMenuComponentHost = const [];

class _ViewMaterialMenuComponentHost0 extends import40.HostView<import1.MaterialMenuComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialMenuComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import1.MaterialMenuComponent(import17.unwrapNode(_el_0));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import28.HasDisabled) && (0 == nodeIndex))) {
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
    this.componentView.detectChangesDeprecated();
    if ((!import29.debugThrowIfChanged)) {
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

import40.HostView<import1.MaterialMenuComponent> viewFactory_MaterialMenuComponentHost0() {
  return _ViewMaterialMenuComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialMenuComponent, createMaterialMenuComponentFactory());
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
}
