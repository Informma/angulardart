// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'menu_popup.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/content/deferred_content.template.dart' as _ref1;
import 'package:angulardart_components/focus/focus.template.dart' as _ref2;
import 'package:angulardart_components/focus/focus_trap.template.dart' as _ref3;
import 'package:angulardart_components/laminate/popup/popup.template.dart' as _ref4;
import 'package:angulardart_components/material_list/material_list.template.dart' as _ref5;
import 'package:angulardart_components/material_menu/menu_item_groups.template.dart' as _ref6;
import 'package:angulardart_components/material_menu/menu_popup_wrapper.template.dart' as _ref7;
import 'package:angulardart_components/material_menu/menu_root.template.dart' as _ref8;
import 'package:angulardart_components/material_popup/material_popup.template.dart' as _ref9;
import 'package:angulardart_components/mixins/focusable_mixin.template.dart' as _ref10;
import 'package:angulardart_components/model/menu/menu.template.dart' as _ref11;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref12;
import 'package:angulardart_components/utils/angular/css/css.template.dart' as _ref13;
import 'package:angulardart_components/material_menu/menu_popup.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'menu_popup.dart' as import2;
import '../material_popup/material_popup.dart' as import3;
import '../material_popup/material_popup.template.dart' as import4;

import 'package:angulardart/src/core/linker/view_container.dart';

import '../focus/focus_trap.template.dart' as import6;
import '../focus/focus_trap.dart' as import7;
import '../content/deferred_content.dart' as import8;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import9;
import 'package:angulardart/src/core/linker/views/view.dart' as import10;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import12;
import 'package:angulardart/src/utilities.dart' as import13;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import14;
import 'package:angulardart/src/di/errors.dart' as import15;

import '../src/laminate/popup/popup_hierarchy.dart' as import16;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import17;

import '../src/laminate/overlay/overlay_service.dart' as import18;
import '../utils/browser/dom_service/dom_service.dart' as import19;
import '../laminate/overlay/zindexer.dart' as import20;

import 'package:angulardart_meta/src/di_tokens.dart' as import21;

import 'dart:core';

import 'package:angulardart_components/laminate/enums/alignment.dart' as import23;

import '../src/laminate/popup/popup_size_provider.dart' as import24;

import 'package:angulardart/src/core/linker/element_ref.dart';
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import27;

import '../content/deferred_content_aware.dart' as import28;
import '../mixins/material_dropdown_base.dart' as import29;
import '../src/laminate/popup/popup_ref.dart' as import30;

import 'package:angulardart/src/runtime/check_binding.dart' as import31;
import 'package:angulardart/src/runtime/queries.dart' as import32;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import34;

import '../material_list/material_list.template.dart' as import35;
import '../material_list/material_list.dart' as import36;
import 'menu_item_groups.template.dart' as import37;
import '../focus/focus.dart' as import38;
import 'common/menu_root.dart' as import39;
import 'menu_item_groups.dart' as import40;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import41;

import '../laminate/components/modal/modal.dart' as import42;
import '../utils/id_generator/id_generator.dart' as import43;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import44;

final List<Object> styles$MenuPopupComponent = [import0.styles];

class ViewMenuPopupComponent0 extends import1.ComponentView<import2.MenuPopupComponent> {
  late dynamic _PopupRef_0_10 = import3.getResolvedPopupRef(this._MaterialPopupComponent_0_8);
  late dynamic _PopupHierarchy_0_12 = import3.getHierarchy(this._MaterialPopupComponent_0_8);
  bool _query_AutoFocusDirective_1_0_isDirty = true;
  bool _viewQuery_MenuItemGroupsComponent_0_isDirty = true;
  late final import4.ViewMaterialPopupComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import3.MaterialPopupComponent _MaterialPopupComponent_0_8;
  late final import6.ViewFocusTrapComponent0 _compView_1;
  late final import7.FocusTrapComponent _FocusTrapComponent_1_5;
  late final ViewContainer _appEl_2;
  late final import8.DeferredContentDirective _DeferredContentDirective_2_9;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  late final _el_0;
  static import9.ComponentStyles? _componentStyles;
  ViewMenuPopupComponent0(import10.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import12.renderFactory.createElement('menu-popup');
  }
  static String? get _debugComponentUrl {
    return (import13.isDevMode ? 'asset:angulardart_components/lib/material_menu/menu_popup.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    this._compView_0 = import4.ViewMaterialPopupComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import14.appendRenderChild(parentRenderNode, this._el_0);
    import14.updateRenderAttribute(this._el_0, 'enforceSpaceConstraints', '');
    this.addShimC(this._el_0);
    this._appEl_0 = ViewContainer(0, null, this, this._el_0);
    this._MaterialPopupComponent_0_8 = (import13.isDevMode
        ? import15.debugInjectorWrap(import3.MaterialPopupComponent, () {
            return import3.MaterialPopupComponent((this.parentView!).injectorGetOptional(import16.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import3.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import17.NgZone, this.parentIndex), (this.parentView!).injectorGet(import18.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import19.DomService, this.parentIndex), (this.parentView!).injectorGet(import20.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import21.OpaqueToken<List<import23.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import21.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import21.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import24.PopupSizeProvider, this.parentIndex), this._compView_0, this._appEl_0, ElementRef(import14.unwrapNode(this._el_0)));
          })
        : import3.MaterialPopupComponent((this.parentView!).injectorGetOptional(import16.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import3.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import17.NgZone, this.parentIndex), (this.parentView!).injectorGet(import18.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import19.DomService, this.parentIndex), (this.parentView!).injectorGet(import20.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import21.OpaqueToken<List<import23.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import21.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import21.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import24.PopupSizeProvider, this.parentIndex), this._compView_0, this._appEl_0, ElementRef(import14.unwrapNode(this._el_0))));
    this._compView_1 = import6.ViewFocusTrapComponent0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    this.addShimC(_el_1);
    this._FocusTrapComponent_1_5 = import7.FocusTrapComponent();
    final _anchor_2 = import14.createRenderAnchor();
    this._appEl_2 = ViewContainer(2, 1, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MenuPopupComponent1);
    this._DeferredContentDirective_2_9 = import8.DeferredContentDirective(this._appEl_2, _TemplateRef_2_8, this._MaterialPopupComponent_0_8, this);
    if (import27.isDevToolsEnabled) {
      import27.Inspector.instance.registerDirective(_anchor_2, this._DeferredContentDirective_2_9);
    }
    this._compView_1.createAndProject(this._FocusTrapComponent_1_5, [
      <Object>[this.projectedNodes[0]]..addAll(<Object>[this._appEl_2]),
    ]);
    this._compView_0.createAndProject(this._MaterialPopupComponent_0_8, [
      const <Object>[],
      <Object>[_el_1],
      const <Object>[],
    ]);
    final subscription_0 = this._MaterialPopupComponent_0_8.onVisible.listen(this.eventHandler1(this._handleEvent_0));
    this.initSubscriptions([subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 2)) {
      if (((identical(token, import3.MaterialPopupComponent) || identical(token, import28.DeferredContentAware)) || identical(token, import29.DropdownHandle))) {
        return this._MaterialPopupComponent_0_8;
      }
      if (identical(token, import30.PopupRef)) {
        return this._PopupRef_0_10;
      }
      if (identical(token, import16.PopupHierarchy)) {
        return this._PopupHierarchy_0_12;
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
      if (import27.isDevToolsEnabled) {
        import27.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'enforceSpaceConstraints', true);
      }
      this._MaterialPopupComponent_0_8.enforceSpaceConstraints = true /* REF:package:angulardart_components/material_menu/menu_popup.html:235:258 */;
      changed = true;
    }
    final currVal_2 = _ctx.preferredPositions;
    if (import31.checkBinding(this._expr_2, currVal_2, 'preferredPositions', 'package:angulardart_components/material_menu/menu_popup.html')) {
      if (import27.isDevToolsEnabled) {
        import27.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'preferredPositions', currVal_2);
      }
      this._MaterialPopupComponent_0_8.preferredPositions = (currVal_2!) /* REF:package:angulardart_components/material_menu/menu_popup.html:344:385 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.popupSource;
    if (import31.checkBinding(this._expr_3, currVal_3, 'popupSource', 'package:angulardart_components/material_menu/menu_popup.html')) {
      if (import27.isDevToolsEnabled) {
        import27.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'source', currVal_3);
      }
      this._MaterialPopupComponent_0_8.source = (currVal_3!) /* REF:package:angulardart_components/material_menu/menu_popup.html:292:314 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.isExpanded;
    if (import31.checkBinding(this._expr_4, currVal_4, 'isExpanded', 'package:angulardart_components/material_menu/menu_popup.html')) {
      if (import27.isDevToolsEnabled) {
        import27.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'visible', currVal_4);
      }
      this._MaterialPopupComponent_0_8.visible = (currVal_4!) /* REF:package:angulardart_components/material_menu/menu_popup.html:263:287 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import27.isDevToolsEnabled) {
        import27.Inspector.instance.recordInput(this._DeferredContentDirective_2_9, 'deferredContent', true);
      }
      this._DeferredContentDirective_2_9.preserveDimensions = true /* REF:package:angulardart_components/material_menu/menu_popup.html:459:482 */;
    }
    final currVal_0 = _ctx.popupClass;
    if (import31.checkBinding(this._expr_0, currVal_0, 'popupClass', 'package:angulardart_components/material_menu/menu_popup.html')) {
      this._compView_0.updateChildClassNonHtml(this._el_0, currVal_0) /* REF:package:angulardart_components/material_menu/menu_popup.html:319:339 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    if ((!import31.debugThrowIfChanged)) {
      if (this._query_AutoFocusDirective_1_0_isDirty) {
        this._FocusTrapComponent_1_5.autoFocus = import32.firstOrNull(
          this._appEl_2.mapNestedViewsWithSingleResult((_ViewMenuPopupComponent1 nestedView) {
            return nestedView._AutoFocusDirective_1_5;
          }),
        );
        this._query_AutoFocusDirective_1_0_isDirty = false;
      }
      if (this._viewQuery_MenuItemGroupsComponent_0_isDirty) {
        _ctx.menuItemGroups = import32.firstOrNull(
          this._appEl_2.mapNestedViewsWithSingleResult((_ViewMenuPopupComponent1 nestedView) {
            import10.View.queryChangeDetectorRefs[nestedView._MenuItemGroupsComponent_1_8] = nestedView._compView_1;
            return nestedView._MenuItemGroupsComponent_1_8;
          }),
        );
        this._viewQuery_MenuItemGroupsComponent_0_isDirty = false;
      }
    }
    this._compView_0.detectChangesDeprecated();
    this._compView_1.detectChangesDeprecated();
    if ((!import31.debugThrowIfChanged)) {
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
    this._compView_1.destroyInternalState();
    this._DeferredContentDirective_2_9.ngOnDestroy();
    this._FocusTrapComponent_1_5.ngOnDestroy();
    this._MaterialPopupComponent_0_8.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.isExpanded = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import9.ComponentStyles.scoped(styles$MenuPopupComponent, _debugComponentUrl));
      if (import13.isDevMode) {
        import9.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MenuPopupComponentNgFactory = ComponentFactory<import2.MenuPopupComponent>('menu-popup', viewFactory_MenuPopupComponentHost0);
ComponentFactory<import2.MenuPopupComponent> get MenuPopupComponentNgFactory {
  return _MenuPopupComponentNgFactory;
}

ComponentFactory<import2.MenuPopupComponent> createMenuPopupComponentFactory() {
  return ComponentFactory('menu-popup', viewFactory_MenuPopupComponentHost0);
}

class _ViewMenuPopupComponent1 extends import34.EmbeddedView<import2.MenuPopupComponent> {
  late final import35.ViewMaterialListComponent0 _compView_0;
  late final import36.MaterialListComponent _MaterialListComponent_0_5;
  late final import37.ViewMenuItemGroupsComponent0 _compView_1;
  late final import38.AutoFocusDirective _AutoFocusDirective_1_5;
  late final import39.MenuRootDirective _MenuRootDirective_1_6;
  late final import40.MenuItemGroupsComponent _MenuItemGroupsComponent_1_8;
  Object? _expr_1;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  _ViewMenuPopupComponent1(import41.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import35.ViewMaterialListComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'item-group-list');
    import14.updateRenderAttribute(_el_0, 'role', 'none');
    this.addShimC(_el_0);
    this._MaterialListComponent_0_5 = import36.MaterialListComponent();
    this._compView_1 = import37.ViewMenuItemGroupsComponent0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    import14.updateRenderAttribute(_el_1, 'autoFocus', '');
    import14.updateRenderAttribute(_el_1, 'menu-root', '');
    import14.updateRenderAttribute(_el_1, 'preventCloseOnPressLeft', '');
    this.addShimC(_el_1);
    this._AutoFocusDirective_1_5 = (import13.isDevMode
        ? import15.debugInjectorWrap(import38.AutoFocusDirective, () {
            return import38.AutoFocusDirective(import14.unwrapNode(_el_1), ((this.parentView!).parentView!).injectorGetOptional(import19.DomService, (this.parentView!).parentIndex), null, ((this.parentView!).parentView!).injectorGetOptional(import42.ModalComponent, (this.parentView!).parentIndex), import13.unsafeCast<ViewMenuPopupComponent0>((this.parentView!))._PopupRef_0_10);
          })
        : import38.AutoFocusDirective(import14.unwrapNode(_el_1), ((this.parentView!).parentView!).injectorGetOptional(import19.DomService, (this.parentView!).parentIndex), null, ((this.parentView!).parentView!).injectorGetOptional(import42.ModalComponent, (this.parentView!).parentIndex), import13.unsafeCast<ViewMenuPopupComponent0>((this.parentView!))._PopupRef_0_10));
    this._MenuRootDirective_1_6 = import39.MenuRootDirective(import13.unsafeCast<ViewMenuPopupComponent0>((this.parentView!))._MaterialPopupComponent_0_8);
    this._MenuItemGroupsComponent_1_8 = (import13.isDevMode
        ? import15.debugInjectorWrap(import40.MenuItemGroupsComponent, () {
            return import40.MenuItemGroupsComponent(this._MenuRootDirective_1_6, this._compView_1, import13.unsafeCast<ViewMenuPopupComponent0>((this.parentView!))._MaterialPopupComponent_0_8, ((this.parentView!).parentView!).injectorGetOptional(import43.IdGenerator, (this.parentView!).parentIndex));
          })
        : import40.MenuItemGroupsComponent(this._MenuRootDirective_1_6, this._compView_1, import13.unsafeCast<ViewMenuPopupComponent0>((this.parentView!))._MaterialPopupComponent_0_8, ((this.parentView!).parentView!).injectorGetOptional(import43.IdGenerator, (this.parentView!).parentIndex)));
    if (import27.isDevToolsEnabled) {
      import27.Inspector.instance.registerDirective(_el_1, this._AutoFocusDirective_1_5);
      import27.Inspector.instance.registerDirective(_el_1, this._MenuRootDirective_1_6);
    }
    this._compView_1.create(this._MenuItemGroupsComponent_1_8);
    this._compView_0.createAndProject(this._MaterialListComponent_0_5, [
      <Object>[_el_1],
    ]);
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import39.MenuRoot) && (1 == nodeIndex))) {
      return this._MenuRootDirective_1_6;
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
      if (import27.isDevToolsEnabled) {
        import27.Inspector.instance.recordInput(this._MaterialListComponent_0_5, 'role', 'none');
      }
      this._MaterialListComponent_0_5.role = 'none' /* REF:package:angulardart_components/material_menu/menu_popup.html:523:534 */;
      changed = true;
    }
    final currVal_1 = _ctx.width;
    if (import31.checkBinding(this._expr_1, currVal_1, 'width', 'package:angulardart_components/material_menu/menu_popup.html')) {
      if (import27.isDevToolsEnabled) {
        import27.Inspector.instance.recordInput(this._MaterialListComponent_0_5, 'width', currVal_1);
      }
      this._MaterialListComponent_0_5.width = (currVal_1!) /* REF:package:angulardart_components/material_menu/menu_popup.html:543:558 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import27.isDevToolsEnabled) {
        import27.Inspector.instance.recordInput(this._AutoFocusDirective_1_5, 'autoFocus', true);
      }
      this._AutoFocusDirective_1_5.autoFocus = true /* REF:package:angulardart_components/material_menu/menu_popup.html:800:809 */;
    }
    if (((!import31.debugThrowIfChanged) && firstCheck)) {
      this._AutoFocusDirective_1_5.ngOnInit();
    }
    changed = false;
    if (firstCheck) {
      if (import27.isDevToolsEnabled) {
        import27.Inspector.instance.recordInput(this._MenuItemGroupsComponent_1_8, 'preventCloseOnPressLeft', true);
      }
      this._MenuItemGroupsComponent_1_8.preventCloseOnPressLeft = true /* REF:package:angulardart_components/material_menu/menu_popup.html:820:843 */;
      changed = true;
    }
    final currVal_3 = _ctx.activateFirstItemOnExpand;
    if (import31.checkBinding(this._expr_3, currVal_3, 'activateFirstItemOnExpand', 'package:angulardart_components/material_menu/menu_popup.html')) {
      if (import27.isDevToolsEnabled) {
        import27.Inspector.instance.recordInput(this._MenuItemGroupsComponent_1_8, 'activateFirstItemOnInit', currVal_3);
      }
      this._MenuItemGroupsComponent_1_8.activateFirstItemOnInit = (currVal_3!) /* REF:package:angulardart_components/material_menu/menu_popup.html:594:647 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.activateLastItemOnExpand;
    if (import31.checkBinding(this._expr_4, currVal_4, 'activateLastItemOnExpand', 'package:angulardart_components/material_menu/menu_popup.html')) {
      if (import27.isDevToolsEnabled) {
        import27.Inspector.instance.recordInput(this._MenuItemGroupsComponent_1_8, 'activateLastItemOnInit', currVal_4);
      }
      this._MenuItemGroupsComponent_1_8.activateLastItemOnInit = (currVal_4!) /* REF:package:angulardart_components/material_menu/menu_popup.html:658:709 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.popupClass;
    if (import31.checkBinding(this._expr_5, currVal_5, 'popupClass', 'package:angulardart_components/material_menu/menu_popup.html')) {
      if (import27.isDevToolsEnabled) {
        import27.Inspector.instance.recordInput(this._MenuItemGroupsComponent_1_8, 'popupClass', currVal_5);
      }
      this._MenuItemGroupsComponent_1_8.popupClass = (currVal_5!) /* REF:package:angulardart_components/material_menu/menu_popup.html:744:769 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.menu;
    if (import31.checkBinding(this._expr_6, currVal_6, 'menu', 'package:angulardart_components/material_menu/menu_popup.html')) {
      if (import27.isDevToolsEnabled) {
        import27.Inspector.instance.recordInput(this._MenuItemGroupsComponent_1_8, 'menu', currVal_6);
      }
      this._MenuItemGroupsComponent_1_8.menu = (currVal_6!) /* REF:package:angulardart_components/material_menu/menu_popup.html:720:733 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    if (((!import31.debugThrowIfChanged) && firstCheck)) {
      this._MenuItemGroupsComponent_1_8.ngOnInit();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_1.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
    this._compView_1.detectChangesDeprecated();
    if ((!import31.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MenuItemGroupsComponent_1_8.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    import13.unsafeCast<ViewMenuPopupComponent0>((this.parentView!))._query_AutoFocusDirective_1_0_isDirty = true;
    import13.unsafeCast<ViewMenuPopupComponent0>((this.parentView!))._viewQuery_MenuItemGroupsComponent_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._compView_1.destroyInternalState();
    this._AutoFocusDirective_1_5.ngOnDestroy();
    this._MenuItemGroupsComponent_1_8.ngOnDestroy();
  }
}

import34.EmbeddedView<void> viewFactory_MenuPopupComponent1(import41.RenderView parentView, int parentIndex) {
  return _ViewMenuPopupComponent1(parentView, parentIndex);
}

final List<Object> styles$MenuPopupComponentHost = const [];

class _ViewMenuPopupComponentHost0 extends import44.HostView<import2.MenuPopupComponent> {
  @override
  void build() {
    this.componentView = ViewMenuPopupComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MenuPopupComponent(import14.unwrapNode(_el_0));
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
}

import44.HostView<import2.MenuPopupComponent> viewFactory_MenuPopupComponentHost0() {
  return _ViewMenuPopupComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MenuPopupComponent, createMenuPopupComponentFactory());
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
