// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_fab_menu.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'menu_item_groups.template.dart' as _ref0;

import 'package:angulardart/angulardart.template.dart' as _ref1;
import 'package:angulardart_components/content/deferred_content.template.dart' as _ref2;
import 'package:angulardart_components/focus/focus.template.dart' as _ref3;
import 'package:angulardart_components/focus/focus_trap.template.dart' as _ref4;
import 'package:angulardart_components/laminate/enums/alignment.template.dart' as _ref5;
import 'package:angulardart_components/material_button/material_fab.template.dart' as _ref6;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref7;
import 'package:angulardart_components/material_list/material_list_item.template.dart' as _ref8;
import 'package:angulardart_components/material_menu/menu_root.template.dart' as _ref9;
import 'package:angulardart_components/material_popup/material_popup.template.dart' as _ref10;
import 'package:angulardart_components/material_tooltip/material_tooltip.template.dart' as _ref11;
import 'package:angulardart_components/mixins/track_layout_changes.template.dart' as _ref12;
import 'package:angulardart_components/model/a11y/keyboard_handler_mixin.template.dart' as _ref13;
import 'package:angulardart_components/model/menu/menu.template.dart' as _ref14;
import 'package:angulardart_components/model/observable/observable.template.dart' as _ref15;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref16;
import 'package:angulardart_components/material_menu/material_fab_menu.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_fab_menu.dart' as import2;

import 'package:angulardart/src/utilities.dart' as import3;
import 'package:angulardart/src/di/errors.dart' as import4;

import '../src/material_tooltip/tooltip_controller.dart' as import5;
import '../material_tooltip/module.dart' as import6;
import '../utils/disposer/disposer.dart' as import7;
import '../material_button/material_fab.template.dart' as import8;

import 'package:angulardart/src/core/linker/view_container.dart';

import '../material_button/material_fab.dart' as import10;
import '../src/material_tooltip/tooltip.dart' as import11;
import '../src/laminate/popup/popup_source_directive.dart' as import12;
import '../material_icon/material_icon.template.dart' as import13;
import '../material_icon/material_icon.dart' as import14;

import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import16;
import 'package:angulardart/src/core/linker/views/view.dart' as import17;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import19;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import20;

import '../src/laminate/popup/dom_popup_source.dart' as import21;

import 'package:angulardart_components/src/dom/dom_apis.dart' as import22;

import '../utils/angular/reference/reference.dart' as import23;
import '../focus/focus_interface.dart' as import24;

import 'package:angulardart/src/devtools.dart' as import25;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/runtime/check_binding.dart' as import27;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import29;

import '../material_popup/material_popup.dart' as import30;
import '../material_popup/material_popup.template.dart' as import31;
import '../content/deferred_content.dart' as import32;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import33;

import '../src/laminate/popup/popup_hierarchy.dart' as import34;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import35;

import '../src/laminate/overlay/overlay_service.dart' as import36;
import '../utils/browser/dom_service/dom_service.dart' as import37;
import '../laminate/overlay/zindexer.dart' as import38;

import 'package:angulardart_meta/src/di_tokens.dart' as import39;

import 'dart:core';

import 'package:angulardart_components/laminate/enums/alignment.dart' as import41;

import '../src/laminate/popup/popup_size_provider.dart' as import42;

import 'package:angulardart/src/core/linker/element_ref.dart';

import '../content/deferred_content_aware.dart' as import44;
import '../mixins/material_dropdown_base.dart' as import45;
import '../src/laminate/popup/popup_ref.dart' as import46;
import '../focus/focus_trap.template.dart' as import47;
import '../focus/focus_trap.dart' as import48;
import '../material_list/material_list_item.template.dart' as import49;
import '../material_list/material_list_item.dart' as import50;
import 'menu_item_groups.template.dart' as import51;
import 'common/menu_root.dart' as import52;
import 'menu_item_groups.dart' as import53;
import '../utils/id_generator/id_generator.dart' as import54;
import '../interfaces/has_disabled.dart' as import55;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import56;

final List<Object> styles$MaterialFabMenuComponent = [import0.styles];

class ViewMaterialFabMenuComponent0 extends import1.ComponentView<import2.MaterialFabMenuComponent> {
  late dynamic _TooltipController_1_11 = (import3.isDevMode
      ? import4.debugInjectorWrap(import5.TooltipController, () {
          return import6.createTooltipController((this.parentView!).injectorGetOptional(import5.TooltipController, this.parentIndex), (this.parentView!).injectorGetOptional(import7.Disposer, this.parentIndex));
        })
      : import6.createTooltipController((this.parentView!).injectorGetOptional(import5.TooltipController, this.parentIndex), (this.parentView!).injectorGetOptional(import7.Disposer, this.parentIndex)));
  late final import8.ViewMaterialFabComponent0 _compView_1;
  late final ViewContainer _appEl_1;
  late final import10.MaterialFabComponent _MaterialFabComponent_1_8;
  late final import11.MaterialTooltipDirective _MaterialTooltipDirective_1_9;
  late final import12.PopupSourceDirective _PopupSourceDirective_1_10;
  late final import13.ViewMaterialIconComponent0 _compView_3;
  late final import14.MaterialIconComponent _MaterialIconComponent_3_5;
  late final ViewContainer _appEl_6;
  late final NgIf _NgIf_6_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  late final _el_1;
  static import16.ComponentStyles? _componentStyles;
  ViewMaterialFabMenuComponent0(import17.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import19.renderFactory.createElement('material-fab-menu');
  }
  static String? get _debugComponentUrl {
    return (import3.isDevMode ? 'asset:angulardart_components/lib/material_menu/material_fab_menu.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _text_0 = import20.createRenderText('\n');
    import20.appendRenderChild(parentRenderNode, _text_0);
    this._compView_1 = import8.ViewMaterialFabComponent0(this, 1);
    this._el_1 = this._compView_1.rootElement;
    import20.appendRenderChild(parentRenderNode, this._el_1);
    import20.updateRenderAttribute(this._el_1, 'popupSource', '');
    import20.updateRenderAttribute(this._el_1, 'raised', '');
    this.addShimC(this._el_1);
    this._appEl_1 = ViewContainer(1, null, this, this._el_1);
    this._MaterialFabComponent_1_8 = import10.MaterialFabComponent(import20.unwrapNode(this._el_1), this._compView_1);
    this._MaterialTooltipDirective_1_9 = (import3.isDevMode
        ? import4.debugInjectorWrap(import11.MaterialTooltipDirective, () {
            return import11.MaterialTooltipDirective((this.parentView!).injectorGet(import21.DomPopupSourceFactory, this.parentIndex), this._appEl_1, import20.unwrapNode(this._el_1), this._appEl_1, this._compView_1, (this.parentView!).injectorGet(import22.Window, this.parentIndex), null, null);
          })
        : import11.MaterialTooltipDirective((this.parentView!).injectorGet(import21.DomPopupSourceFactory, this.parentIndex), this._appEl_1, import20.unwrapNode(this._el_1), this._appEl_1, this._compView_1, (this.parentView!).injectorGet(import22.Window, this.parentIndex), null, null));
    this._PopupSourceDirective_1_10 = (import3.isDevMode
        ? import4.debugInjectorWrap(import12.PopupSourceDirective, () {
            return import12.PopupSourceDirective((this.parentView!).injectorGet(import21.DomPopupSourceFactory, this.parentIndex), import20.unwrapNode(this._el_1), (this.parentView!).injectorGetOptional(import23.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import24.Focusable, this.parentIndex), null);
          })
        : import12.PopupSourceDirective((this.parentView!).injectorGet(import21.DomPopupSourceFactory, this.parentIndex), import20.unwrapNode(this._el_1), (this.parentView!).injectorGetOptional(import23.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import24.Focusable, this.parentIndex), null));
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(this._el_1, this._MaterialTooltipDirective_1_9);
      import25.Inspector.instance.registerDirective(this._el_1, this._PopupSourceDirective_1_10);
    }
    final _text_2 = import20.createRenderText('\n  ');
    this._compView_3 = import13.ViewMaterialIconComponent0(this, 3);
    final _el_3 = this._compView_3.rootElement;
    this.addShimC(_el_3);
    this._MaterialIconComponent_3_5 = import14.MaterialIconComponent(import20.unwrapNode(_el_3));
    this._compView_3.create(this._MaterialIconComponent_3_5);
    final _text_4 = import20.createRenderText('\n');
    this._compView_1.createAndProject(this._MaterialFabComponent_1_8, [
      <Object>[_text_2, _el_3, _text_4],
    ]);
    final _text_5 = import20.createRenderText('\n');
    import20.appendRenderChild(parentRenderNode, _text_5);
    final _anchor_6 = import20.createRenderAnchor();
    import20.appendRenderChild(parentRenderNode, _anchor_6);
    this._appEl_6 = ViewContainer(6, null, this, _anchor_6);
    var _TemplateRef_6_8 = TemplateRef(this._appEl_6, viewFactory_MaterialFabMenuComponent1);
    this._NgIf_6_9 = NgIf(this._appEl_6, _TemplateRef_6_8);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_6, this._NgIf_6_9);
    }
    final _text_7 = import20.createRenderText('\n');
    import20.appendRenderChild(parentRenderNode, _text_7);
    import20.addRenderEventListener(this._el_1, 'keydown', this.eventHandler1(_ctx.onKeyDown));
    final subscription_0 = this._MaterialFabComponent_1_8.trigger.listen(this.eventHandler1(_ctx.trigger));
    this.initSubscriptions([subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import5.TooltipController) && ((1 <= nodeIndex) && (nodeIndex <= 4)))) {
      return this._TooltipController_1_11;
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
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialFabComponent_1_8, 'raised', true);
      }
      this._MaterialFabComponent_1_8.raised = true /* REF:package:angulardart_components/material_menu/material_fab_menu.html:295:301 */;
      changed = true;
    }
    final currVal_3 = (!(_ctx.isFabEnabled ?? false));
    if (import27.checkBinding(this._expr_3, currVal_3, '!isFabEnabled', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialFabComponent_1_8, 'disabled', currVal_3);
      }
      this._MaterialFabComponent_1_8.disabled = (currVal_3!) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:316:342 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    final currVal_5 = _ctx.tooltipPositions;
    if (import27.checkBinding(this._expr_5, currVal_5, 'tooltipPositions', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialTooltipDirective_1_9, 'tooltipPositions', currVal_5);
      }
      this._MaterialTooltipDirective_1_9.positions = (currVal_5!) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:488:525 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.tooltip;
    if (import27.checkBinding(this._expr_6, currVal_6, 'tooltip', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialTooltipDirective_1_9, 'materialTooltip', currVal_6);
      }
      this._MaterialTooltipDirective_1_9.text = (currVal_6!) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:403:430 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.hasTooltip;
    if (import27.checkBinding(this._expr_7, currVal_7, 'hasTooltip', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialTooltipDirective_1_9, 'showTooltipIf', currVal_7);
      }
      this._MaterialTooltipDirective_1_9.canShow = (currVal_7!) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:445:473 */;
      this._expr_7 = currVal_7;
    }
    if (((!import27.debugThrowIfChanged) && firstCheck)) {
      this._MaterialTooltipDirective_1_9.ngOnInit();
    }
    changed = false;
    final currVal_8 = _ctx.glyph;
    if (import27.checkBinding(this._expr_8, currVal_8, 'glyph', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialIconComponent_3_5, 'icon', currVal_8);
      }
      this._MaterialIconComponent_3_5.icon = (currVal_8!) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:712:726 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    if (changed) {
      this._compView_3.markAsCheckOnce();
    }
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.recordInput(this._NgIf_6_9, 'ngIf', _ctx.hasMenu);
    }
    this._NgIf_6_9.ngIf = (_ctx.hasMenu ?? false) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:776:791 */;
    final currVal_0 = _ctx.isFabHidden;
    if (import27.checkBinding(this._expr_0, currVal_0, 'isFabHidden', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      import20.updateRenderClass(this._el_1, 'invisible', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:357:388 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.ariaLabel;
    if (import27.checkBinding(this._expr_1, currVal_1, 'ariaLabel', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      import20.updateRenderAttribute(this._el_1, 'aria-label', currVal_1) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:540:569 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.naviId;
    if (import27.checkBinding(this._expr_2, currVal_2, 'naviId', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      import20.updateRenderAttribute(this._el_1, 'navi-id', currVal_2) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:584:607 */;
      this._expr_2 = currVal_2;
    }
    this._compView_1.detectHostChanges(firstCheck);
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_6.detectChangesInNestedViews();
    this._compView_1.detectChangesDeprecated();
    this._compView_3.detectChangesDeprecated();
    if ((!import27.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialTooltipDirective_1_9.ngAfterViewInit();
        this._PopupSourceDirective_1_10.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_6.destroyNestedViews();
    this._compView_1.destroyInternalState();
    this._compView_3.destroyInternalState();
    this._MaterialTooltipDirective_1_9.ngOnDestroy();
    this._PopupSourceDirective_1_10.ngOnDestroy();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import16.ComponentStyles.scoped(styles$MaterialFabMenuComponent, _debugComponentUrl));
      if (import3.isDevMode) {
        import16.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialFabMenuComponentNgFactory = ComponentFactory<import2.MaterialFabMenuComponent>('material-fab-menu', viewFactory_MaterialFabMenuComponentHost0);
ComponentFactory<import2.MaterialFabMenuComponent> get MaterialFabMenuComponentNgFactory {
  return _MaterialFabMenuComponentNgFactory;
}

ComponentFactory<import2.MaterialFabMenuComponent> createMaterialFabMenuComponentFactory() {
  return ComponentFactory('material-fab-menu', viewFactory_MaterialFabMenuComponentHost0);
}

class _ViewMaterialFabMenuComponent1 extends import29.EmbeddedView<import2.MaterialFabMenuComponent> {
  late dynamic _PopupHierarchy_0_11 = import30.getHierarchy(this._MaterialPopupComponent_0_8);
  late dynamic _PopupRef_0_12 = import30.getResolvedPopupRef(this._MaterialPopupComponent_0_8);
  late final import31.ViewMaterialPopupComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import30.MaterialPopupComponent _MaterialPopupComponent_0_8;
  late final ViewContainer _appEl_2;
  late final import32.DeferredContentDirective _DeferredContentDirective_2_9;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  _ViewMaterialFabMenuComponent1(import33.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import31.ViewMaterialPopupComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import20.updateRenderAttribute(_el_0, 'autoDismiss', '');
    import20.updateRenderAttribute(_el_0, 'enforceSpaceConstraints', '');
    this.addShimC(_el_0);
    this._appEl_0 = ViewContainer(0, null, this, _el_0);
    this._MaterialPopupComponent_0_8 = (import3.isDevMode
        ? import4.debugInjectorWrap(import30.MaterialPopupComponent, () {
            return import30.MaterialPopupComponent((this.parentView!).injectorGetOptional(import34.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import30.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import35.NgZone, this.parentIndex), (this.parentView!).injectorGet(import36.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import37.DomService, this.parentIndex), (this.parentView!).injectorGet(import38.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import39.OpaqueToken<List<import41.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import39.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import39.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import42.PopupSizeProvider, this.parentIndex), this._compView_0, this._appEl_0, ElementRef(import20.unwrapNode(_el_0)));
          })
        : import30.MaterialPopupComponent((this.parentView!).injectorGetOptional(import34.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import30.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import35.NgZone, this.parentIndex), (this.parentView!).injectorGet(import36.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import37.DomService, this.parentIndex), (this.parentView!).injectorGet(import38.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import39.OpaqueToken<List<import41.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import39.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import39.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import42.PopupSizeProvider, this.parentIndex), this._compView_0, this._appEl_0, ElementRef(import20.unwrapNode(_el_0))));
    final _text_1 = import20.createRenderText('\n  ');
    final _anchor_2 = import20.createRenderAnchor();
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialFabMenuComponent2);
    this._DeferredContentDirective_2_9 = import32.DeferredContentDirective(this._appEl_2, _TemplateRef_2_8, this._MaterialPopupComponent_0_8, this);
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_anchor_2, this._DeferredContentDirective_2_9);
    }
    final _text_3 = import20.createRenderText('\n');
    this._compView_0.createAndProject(this._MaterialPopupComponent_0_8, [
      const <Object>[],
      <Object>[_text_1, this._appEl_2, _text_3],
      const <Object>[],
    ]);
    final subscription_0 = this._MaterialPopupComponent_0_8.onOpened.listen(this.eventHandler0(_ctx.onPopupOpened));
    final subscription_1 = this._MaterialPopupComponent_0_8.onClose.listen(this.eventHandler0(_ctx.onPopupClosed));
    this.initRootNodesAndSubscriptions(import3.unsafeCast(<Object>[this._appEl_0]), [subscription_0, subscription_1]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 3)) {
      if (((identical(token, import30.MaterialPopupComponent) || identical(token, import44.DeferredContentAware)) || identical(token, import45.DropdownHandle))) {
        return this._MaterialPopupComponent_0_8;
      }
      if (identical(token, import34.PopupHierarchy)) {
        return this._PopupHierarchy_0_11;
      }
      if (identical(token, import46.PopupRef)) {
        return this._PopupRef_0_12;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_source = import3.unsafeCast<ViewMaterialFabMenuComponent0>((this.parentView!))._PopupSourceDirective_1_10;
    changed = false;
    if (firstCheck) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'autoDismiss', true);
      }
      this._MaterialPopupComponent_0_8.autoDismiss = true /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1034:1045 */;
      changed = true;
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'enforceSpaceConstraints', true);
      }
      this._MaterialPopupComponent_0_8.enforceSpaceConstraints = true /* REF:package:angulardart_components/material_menu/material_fab_menu.html:994:1017 */;
      changed = true;
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'hasBox', false);
      }
      this._MaterialPopupComponent_0_8.hasBox = false /* REF:package:angulardart_components/material_menu/material_fab_menu.html:927:943 */;
      changed = true;
    }
    final currVal_2 = _ctx.preferredPopupPositions;
    if (import27.checkBinding(this._expr_2, currVal_2, 'preferredPopupPositions', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'preferredPositions', currVal_2);
      }
      this._MaterialPopupComponent_0_8.preferredPositions = (currVal_2!) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1120:1166 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = local_source;
    if (import27.checkBinding(this._expr_3, currVal_3, 'source', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'source', currVal_3);
      }
      this._MaterialPopupComponent_0_8.source = (currVal_3!) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:960:977 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.trackLayoutChanges;
    if (import27.checkBinding(this._expr_4, currVal_4, 'trackLayoutChanges', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'trackLayoutChanges', currVal_4);
      }
      this._MaterialPopupComponent_0_8.trackLayoutChanges = (currVal_4!) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1062:1103 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.showPopup;
    if (import27.checkBinding(this._expr_5, currVal_5, 'showPopup', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'visible', currVal_5);
      }
      this._MaterialPopupComponent_0_8.visible = (currVal_5!) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:808:829 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._DeferredContentDirective_2_9, 'deferredContent', true);
      }
      this._DeferredContentDirective_2_9.preserveDimensions = true /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1219:1242 */;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
    if ((!import27.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialPopupComponent_0_8.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._DeferredContentDirective_2_9.ngOnDestroy();
    this._MaterialPopupComponent_0_8.ngOnDestroy();
  }
}

import29.EmbeddedView<void> viewFactory_MaterialFabMenuComponent1(import33.RenderView parentView, int parentIndex) {
  return _ViewMaterialFabMenuComponent1(parentView, parentIndex);
}

class _ViewMaterialFabMenuComponent2 extends import29.EmbeddedView<import2.MaterialFabMenuComponent> {
  late final import47.ViewFocusTrapComponent0 _compView_4;
  late final import48.FocusTrapComponent _FocusTrapComponent_4_5;
  late final import49.ViewMaterialListItemComponent0 _compView_6;
  late final import50.MaterialListItemComponent _MaterialListItemComponent_6_5;
  late final import13.ViewMaterialIconComponent0 _compView_8;
  late final import14.MaterialIconComponent _MaterialIconComponent_8_5;
  late final import51.ViewMenuItemGroupsComponent0 _compView_11;
  late final import52.MenuRootDirective _MenuRootDirective_11_5;
  late final import53.MenuItemGroupsComponent _MenuItemGroupsComponent_11_7;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_7;
  Object? _expr_8;
  Object? _expr_9;
  late final _el_0;
  late final _el_2;
  _ViewMaterialFabMenuComponent2(import33.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._el_0 = import20.createRenderElement('div');
    this.updateChildClass(this._el_0, 'menu-content');
    import20.updateRenderAttribute(this._el_0, 'elevation', '2');
    this.addShimC(this._el_0);
    final _text_1 = import20.createRenderText('\n    ');
    import20.appendRenderChild(this._el_0, _text_1);
    this._el_2 = import20.createRenderElement('div');
    import20.appendRenderChild(this._el_0, this._el_2);
    this.updateChildClass(this._el_2, 'content-wrapper');
    this.addShimC(this._el_2);
    final _text_3 = import20.createRenderText('\n      ');
    import20.appendRenderChild(this._el_2, _text_3);
    this._compView_4 = import47.ViewFocusTrapComponent0(this, 4);
    final _el_4 = this._compView_4.rootElement;
    import20.appendRenderChild(this._el_2, _el_4);
    this.addShimC(_el_4);
    this._FocusTrapComponent_4_5 = import48.FocusTrapComponent();
    final _text_5 = import20.createRenderText('\n        ');
    this._compView_6 = import49.ViewMaterialListItemComponent0(this, 6);
    final _el_6 = this._compView_6.rootElement;
    this.updateChildClassNonHtml(_el_6, 'close-menu');
    this.addShimC(_el_6);
    this._MaterialListItemComponent_6_5 = import50.MaterialListItemComponent(import20.unwrapNode(_el_6), import3.unsafeCast<_ViewMaterialFabMenuComponent1>((this.parentView!))._MaterialPopupComponent_0_8, null, null);
    final _text_7 = import20.createRenderText('\n          ');
    this._compView_8 = import13.ViewMaterialIconComponent0(this, 8);
    final _el_8 = this._compView_8.rootElement;
    this.updateChildClassNonHtml(_el_8, 'close-icon material-list-item-primary');
    import20.updateRenderAttribute(_el_8, 'icon', 'close');
    this.addShimC(_el_8);
    this._MaterialIconComponent_8_5 = import14.MaterialIconComponent(import20.unwrapNode(_el_8));
    this._compView_8.create(this._MaterialIconComponent_8_5);
    final _text_9 = import20.createRenderText('\n        ');
    this._compView_6.createAndProject(this._MaterialListItemComponent_6_5, [
      <Object>[_text_7, _el_8, _text_9],
    ]);
    final _text_10 = import20.createRenderText('\n        ');
    this._compView_11 = import51.ViewMenuItemGroupsComponent0(this, 11);
    final _el_11 = this._compView_11.rootElement;
    this.updateChildClassNonHtml(_el_11, 'menu-groups');
    import20.updateRenderAttribute(_el_11, 'menu-root', '');
    import20.updateRenderAttribute(_el_11, 'preventCloseOnPressLeft', '');
    this.addShimC(_el_11);
    this._MenuRootDirective_11_5 = import52.MenuRootDirective(import3.unsafeCast<_ViewMaterialFabMenuComponent1>((this.parentView!))._MaterialPopupComponent_0_8);
    this._MenuItemGroupsComponent_11_7 = (import3.isDevMode
        ? import4.debugInjectorWrap(import53.MenuItemGroupsComponent, () {
            return import53.MenuItemGroupsComponent(this._MenuRootDirective_11_5, this._compView_11, import3.unsafeCast<_ViewMaterialFabMenuComponent1>((this.parentView!))._MaterialPopupComponent_0_8, ((this.parentView!).parentView!).injectorGetOptional(import54.IdGenerator, (this.parentView!).parentIndex));
          })
        : import53.MenuItemGroupsComponent(this._MenuRootDirective_11_5, this._compView_11, import3.unsafeCast<_ViewMaterialFabMenuComponent1>((this.parentView!))._MaterialPopupComponent_0_8, ((this.parentView!).parentView!).injectorGetOptional(import54.IdGenerator, (this.parentView!).parentIndex)));
    if (import25.isDevToolsEnabled) {
      import25.Inspector.instance.registerDirective(_el_11, this._MenuRootDirective_11_5);
    }
    this._compView_11.create(this._MenuItemGroupsComponent_11_7);
    final _text_13 = import20.createRenderText('\n      ');
    this._compView_4.createAndProject(this._FocusTrapComponent_4_5, [
      <Object>[_text_5, _el_6, _text_10, _el_11, _text_13],
    ]);
    final _text_14 = import20.createRenderText('\n    ');
    import20.appendRenderChild(this._el_2, _text_14);
    final _text_15 = import20.createRenderText('\n  ');
    import20.appendRenderChild(this._el_0, _text_15);
    final subscription_0 = this._MaterialListItemComponent_6_5.trigger.listen(this.eventHandler0(_ctx.hideMenu));
    this.initRootNodesAndSubscriptions(import3.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import55.HasDisabled) && ((6 <= nodeIndex) && (nodeIndex <= 9)))) {
      return this._MaterialListItemComponent_6_5;
    }
    if ((identical(token, import52.MenuRoot) && ((11 <= nodeIndex) && (nodeIndex <= 12)))) {
      return this._MenuRootDirective_11_5;
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
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialListItemComponent_6_5, 'closeOnActivate', false);
      }
      this._MaterialListItemComponent_6_5.closeOnActivate = false /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1548:1573 */;
      changed = true;
    }
    if (changed) {
      this._compView_6.markAsCheckOnce();
    }
    changed = false;
    if (firstCheck) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MaterialIconComponent_8_5, 'icon', 'close');
      }
      this._MaterialIconComponent_8_5.icon = 'close' /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1646:1658 */;
      changed = true;
    }
    if (changed) {
      this._compView_8.markAsCheckOnce();
    }
    changed = false;
    if (firstCheck) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MenuItemGroupsComponent_11_7, 'preventCloseOnPressLeft', true);
      }
      this._MenuItemGroupsComponent_11_7.preventCloseOnPressLeft = true /* REF:package:angulardart_components/material_menu/material_fab_menu.html:2021:2044 */;
      changed = true;
    }
    final currVal_7 = _ctx.activateFirstItemOnInit;
    if (import27.checkBinding(this._expr_7, currVal_7, 'activateFirstItemOnInit', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MenuItemGroupsComponent_11_7, 'activateFirstItemOnInit', currVal_7);
      }
      this._MenuItemGroupsComponent_11_7.activateFirstItemOnInit = (currVal_7!) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1785:1836 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.activateLastItemOnInit;
    if (import27.checkBinding(this._expr_8, currVal_8, 'activateLastItemOnInit', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MenuItemGroupsComponent_11_7, 'activateLastItemOnInit', currVal_8);
      }
      this._MenuItemGroupsComponent_11_7.activateLastItemOnInit = (currVal_8!) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1863:1912 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = (_ctx.menuItem!).subMenu;
    if (import27.checkBinding(this._expr_9, currVal_9, 'menuItem!.subMenu', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      if (import25.isDevToolsEnabled) {
        import25.Inspector.instance.recordInput(this._MenuItemGroupsComponent_11_7, 'menu', currVal_9);
      }
      this._MenuItemGroupsComponent_11_7.menu = (currVal_9!) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1732:1758 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    if (changed) {
      this._compView_11.markAsCheckOnce();
    }
    if (((!import27.debugThrowIfChanged) && firstCheck)) {
      this._MenuItemGroupsComponent_11_7.ngOnInit();
    }
    final currVal_0 = _ctx.menuVisible;
    if (import27.checkBinding(this._expr_0, currVal_0, 'menuVisible', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      import20.updateRenderClass(this._el_0, 'visible', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1250:1279 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.closing;
    if (import27.checkBinding(this._expr_1, currVal_1, 'closing', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      import20.updateRenderClass(this._el_0, 'closing', (currVal_1 ?? false)) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1287:1312 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.hasIcons;
    if (import27.checkBinding(this._expr_2, currVal_2, 'hasIcons', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      import20.updateRenderClass(this._el_0, 'has-icons', (currVal_2 ?? false)) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1320:1348 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.menuVisible;
    if (import27.checkBinding(this._expr_3, currVal_3, 'menuVisible', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      import20.updateRenderClass(this._el_2, 'visible', (currVal_3 ?? false)) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1404:1433 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.closing;
    if (import27.checkBinding(this._expr_4, currVal_4, 'closing', 'package:angulardart_components/material_menu/material_fab_menu.html')) {
      import20.updateRenderClass(this._el_2, 'closing', (currVal_4 ?? false)) /* REF:package:angulardart_components/material_menu/material_fab_menu.html:1434:1459 */;
      this._expr_4 = currVal_4;
    }
    this._compView_6.detectHostChanges(firstCheck);
    this._compView_11.detectHostChanges(firstCheck);
    this._compView_4.detectChangesDeprecated();
    this._compView_6.detectChangesDeprecated();
    this._compView_8.detectChangesDeprecated();
    this._compView_11.detectChangesDeprecated();
    if ((!import27.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MenuItemGroupsComponent_11_7.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._compView_4.destroyInternalState();
    this._compView_6.destroyInternalState();
    this._compView_8.destroyInternalState();
    this._compView_11.destroyInternalState();
    this._MaterialListItemComponent_6_5.ngOnDestroy();
    this._MenuItemGroupsComponent_11_7.ngOnDestroy();
    this._FocusTrapComponent_4_5.ngOnDestroy();
  }
}

import29.EmbeddedView<void> viewFactory_MaterialFabMenuComponent2(import33.RenderView parentView, int parentIndex) {
  return _ViewMaterialFabMenuComponent2(parentView, parentIndex);
}

final List<Object> styles$MaterialFabMenuComponentHost = const [];

class _ViewMaterialFabMenuComponentHost0 extends import56.HostView<import2.MaterialFabMenuComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialFabMenuComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialFabMenuComponent(this.componentView);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import56.HostView<import2.MaterialFabMenuComponent> viewFactory_MaterialFabMenuComponentHost0() {
  return _ViewMaterialFabMenuComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialFabMenuComponent, createMaterialFabMenuComponentFactory());
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
  _ref16.initReflector();
}
