// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'paper_tooltip.dart';

import 'package:angulardart_components/src/material_tooltip/paper_tooltip.dart' as _i1;
import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/content/deferred_content.template.dart' as _ref1;
import 'package:angulardart_components/content/deferred_content_aware.template.dart' as _ref2;
import 'package:angulardart_components/focus/focus.template.dart' as _ref3;
import 'package:angulardart_components/laminate/enums/alignment.template.dart' as _ref4;
import 'package:angulardart_components/laminate/popup/popup.template.dart' as _ref5;
import 'package:angulardart_components/material_popup/material_popup.template.dart' as _ref6;
import 'package:angulardart_components/material_tooltip/module.template.dart' as _ref7;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref8;
import 'package:angulardart_components/utils/angular/css/css.template.dart' as _ref9;

import 'tooltip_controller.template.dart' as _ref10;
import 'tooltip_target.template.dart' as _ref11;

import 'package:angulardart_components/src/material_tooltip/paper_tooltip.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'paper_tooltip.dart' as import2;

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

import '../../material_popup/material_popup.dart' as import17;
import '../../material_popup/material_popup.template.dart' as import18;
import '../../focus/focus.dart' as import19;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import20;
import 'package:angulardart/src/di/errors.dart' as import21;

import '../laminate/popup/popup_hierarchy.dart' as import22;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import23;

import '../laminate/overlay/overlay_service.dart' as import24;
import '../../utils/browser/dom_service/dom_service.dart' as import25;
import '../../laminate/overlay/zindexer.dart' as import26;

import 'package:angulardart_meta/src/di_tokens.dart' as import27;

import 'dart:core';

import 'package:angulardart_components/laminate/enums/alignment.dart' as import29;

import '../laminate/popup/popup_size_provider.dart' as import30;

import 'package:angulardart/src/core/linker/element_ref.dart';

import '../../laminate/components/modal/modal.dart' as import32;
import '../../content/deferred_content_aware.dart' as import33;
import '../../mixins/material_dropdown_base.dart' as import34;
import '../laminate/popup/popup_ref.dart' as import35;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import36;

import 'tooltip_controller.dart' as import37;
import '../../material_tooltip/module.dart' as import38;
import '../../utils/disposer/disposer.dart' as import39;

final List<Object> styles$MaterialPaperTooltipComponent = [import0.styles];

class ViewMaterialPaperTooltipComponent0 extends import1.ComponentView<import2.MaterialPaperTooltipComponent> {
  bool _viewQuery_MaterialPopupComponent_0_isDirty = true;
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialPaperTooltipComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-tooltip-card');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _anchor_0 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_0);
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, viewFactory_MaterialPaperTooltipComponent1);
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', (_ctx.popupSource != null));
    }
    this._NgIf_0_9.ngIf = ((_ctx.popupSource != null) ?? false) /* REF:asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart:2313:2340 */;
    this._appEl_0.detectChangesInNestedViews();
    if ((!import13.debugThrowIfChanged)) {
      if (this._viewQuery_MaterialPopupComponent_0_isDirty) {
        _ctx.popupChild = import14.firstOrNull(
          this._appEl_0.mapNestedViewsWithSingleResult((_ViewMaterialPaperTooltipComponent1 nestedView) {
            import6.View.queryChangeDetectorRefs[nestedView._MaterialPopupComponent_0_8] = nestedView._compView_0;
            return nestedView._MaterialPopupComponent_0_8;
          }),
        );
        this._viewQuery_MaterialPopupComponent_0_isDirty = false;
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialPaperTooltipComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialPaperTooltipComponentNgFactory = ComponentFactory<import2.MaterialPaperTooltipComponent>('material-tooltip-card', viewFactory_MaterialPaperTooltipComponentHost0);
ComponentFactory<import2.MaterialPaperTooltipComponent> get MaterialPaperTooltipComponentNgFactory {
  return _MaterialPaperTooltipComponentNgFactory;
}

ComponentFactory<import2.MaterialPaperTooltipComponent> createMaterialPaperTooltipComponentFactory() {
  return ComponentFactory('material-tooltip-card', viewFactory_MaterialPaperTooltipComponentHost0);
}

class _ViewMaterialPaperTooltipComponent1 extends import16.EmbeddedView<import2.MaterialPaperTooltipComponent> {
  late dynamic _PopupHierarchy_0_12 = import17.getHierarchy(this._MaterialPopupComponent_0_8);
  late final import18.ViewMaterialPopupComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import17.MaterialPopupComponent _MaterialPopupComponent_0_8;
  late final dynamic _PopupRef_0_9;
  late final import19.AutoFocusDirective _AutoFocusDirective_2_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_9;
  Object? _expr_10;
  late final _el_0;
  _ViewMaterialPaperTooltipComponent1(import20.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import18.ViewMaterialPopupComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import10.updateRenderAttribute(this._el_0, 'enforceSpaceConstraints', '');
    import10.updateRenderAttribute(this._el_0, 'trackLayoutChanges', '');
    this.addShimC(this._el_0);
    this._appEl_0 = ViewContainer(0, null, this, this._el_0);
    this._MaterialPopupComponent_0_8 = (import9.isDevMode
        ? import21.debugInjectorWrap(import17.MaterialPopupComponent, () {
            return import17.MaterialPopupComponent((this.parentView!).injectorGetOptional(import22.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import17.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import23.NgZone, this.parentIndex), (this.parentView!).injectorGet(import24.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import25.DomService, this.parentIndex), (this.parentView!).injectorGet(import26.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import27.OpaqueToken<List<import29.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import27.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import27.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import30.PopupSizeProvider, this.parentIndex), this._compView_0, this._appEl_0, ElementRef(import10.unwrapNode(this._el_0)));
          })
        : import17.MaterialPopupComponent((this.parentView!).injectorGetOptional(import22.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import17.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import23.NgZone, this.parentIndex), (this.parentView!).injectorGet(import24.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import25.DomService, this.parentIndex), (this.parentView!).injectorGet(import26.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import27.OpaqueToken<List<import29.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import27.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import27.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import30.PopupSizeProvider, this.parentIndex), this._compView_0, this._appEl_0, ElementRef(import10.unwrapNode(this._el_0))));
    this._PopupRef_0_9 = import17.getResolvedPopupRef(this._MaterialPopupComponent_0_8);
    final _text_1 = import10.createRenderText('\n  ');
    final _el_2 = import10.createRenderElement('div');
    this.updateChildClass(_el_2, 'paper-container');
    this.addShimC(_el_2);
    this._AutoFocusDirective_2_5 = (import9.isDevMode
        ? import21.debugInjectorWrap(import19.AutoFocusDirective, () {
            return import19.AutoFocusDirective(import10.unwrapNode(_el_2), (this.parentView!).injectorGetOptional(import25.DomService, this.parentIndex), null, (this.parentView!).injectorGetOptional(import32.ModalComponent, this.parentIndex), this._PopupRef_0_9);
          })
        : import19.AutoFocusDirective(import10.unwrapNode(_el_2), (this.parentView!).injectorGetOptional(import25.DomService, this.parentIndex), null, (this.parentView!).injectorGetOptional(import32.ModalComponent, this.parentIndex), this._PopupRef_0_9));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_2, this._AutoFocusDirective_2_5);
    }
    final _text_3 = import10.createRenderText('\n    ');
    import10.appendRenderChild(_el_2, _text_3);
    final _el_4 = import10.createRenderElement('div');
    import10.appendRenderChild(_el_2, _el_4);
    this.updateChildClass(_el_4, 'header');
    this.addShimC(_el_4);
    this.project(_el_4, 0);
    final _text_5 = import10.createRenderText('\n    ');
    import10.appendRenderChild(_el_2, _text_5);
    final _el_6 = import10.createRenderElement('div');
    import10.appendRenderChild(_el_2, _el_6);
    this.updateChildClass(_el_6, 'body');
    this.addShimC(_el_6);
    this.project(_el_6, 1);
    final _text_7 = import10.createRenderText('\n    ');
    import10.appendRenderChild(_el_2, _text_7);
    final _el_8 = import10.createRenderElement('div');
    import10.appendRenderChild(_el_2, _el_8);
    this.updateChildClass(_el_8, 'footer');
    this.addShimC(_el_8);
    this.project(_el_8, 2);
    final _text_9 = import10.createRenderText('\n  ');
    import10.appendRenderChild(_el_2, _text_9);
    final _text_10 = import10.createRenderText('\n');
    this._compView_0.createAndProject(this._MaterialPopupComponent_0_8, [
      const <Object>[],
      <Object>[_text_1, _el_2, _text_10],
      const <Object>[],
    ]);
    import10.addRenderEventListener(_el_2, 'mouseover', this.eventHandler0(_ctx.onMouseOver));
    import10.addRenderEventListener(_el_2, 'mouseleave', this.eventHandler0(_ctx.onMouseLeave));
    this.initRootNode(this._appEl_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 10)) {
      if (((identical(token, import17.MaterialPopupComponent) || identical(token, import33.DeferredContentAware)) || identical(token, import34.DropdownHandle))) {
        return this._MaterialPopupComponent_0_8;
      }
      if (identical(token, import35.PopupRef)) {
        return this._PopupRef_0_9;
      }
      if (identical(token, import22.PopupHierarchy)) {
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
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'enforceSpaceConstraints', true);
      }
      this._MaterialPopupComponent_0_8.enforceSpaceConstraints = true /* REF:asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart:2395:2418 */;
      changed = true;
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'trackLayoutChanges', true);
      }
      this._MaterialPopupComponent_0_8.trackLayoutChanges = true /* REF:asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart:2435:2453 */;
      changed = true;
    }
    final currVal_2 = _ctx.focusContents;
    if (import13.checkBinding(this._expr_2, currVal_2, 'focusContents', 'asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'autoDismiss', currVal_2);
      }
      this._MaterialPopupComponent_0_8.autoDismiss = (currVal_2!) /* REF:asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart:2600:2629 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_4 = _ctx.offsetX;
    if (import13.checkBinding(this._expr_4, currVal_4, 'offsetX', 'asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'offsetX', currVal_4);
      }
      this._MaterialPopupComponent_0_8.offsetX = (currVal_4!) /* REF:asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart:2528:2547 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.offsetY;
    if (import13.checkBinding(this._expr_5, currVal_5, 'offsetY', 'asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'offsetY', currVal_5);
      }
      this._MaterialPopupComponent_0_8.offsetY = (currVal_5!) /* REF:asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart:2564:2583 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.preferredPositions;
    if (import13.checkBinding(this._expr_6, currVal_6, 'preferredPositions', 'asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'preferredPositions', currVal_6);
      }
      this._MaterialPopupComponent_0_8.preferredPositions = (currVal_6!) /* REF:asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart:2470:2511 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = (_ctx.popupSource!);
    if (import13.checkBinding(this._expr_7, currVal_7, 'popupSource!', 'asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'source', currVal_7);
      }
      this._MaterialPopupComponent_0_8.source = currVal_7 /* REF:asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart:2687:2710 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    final currVal_9 = _ctx.showPopup;
    if (import13.checkBinding(this._expr_9, currVal_9, 'showPopup', 'asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'visible', currVal_9);
      }
      this._MaterialPopupComponent_0_8.visible = (currVal_9!) /* REF:asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart:2357:2378 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_10 = _ctx.focusContents;
    if (import13.checkBinding(this._expr_10, currVal_10, 'focusContents', 'asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._AutoFocusDirective_2_5, 'autoFocus', currVal_10);
      }
      this._AutoFocusDirective_2_5.autoFocus = (currVal_10!) /* REF:asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart:2817:2844 */;
      this._expr_10 = currVal_10;
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._AutoFocusDirective_2_5.ngOnInit();
    }
    final currVal_0 = _ctx.popupClassName;
    if (import13.checkBinding(this._expr_0, currVal_0, 'popupClassName', 'asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart')) {
      this._compView_0.updateChildClassNonHtml(this._el_0, currVal_0) /* REF:asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart:2646:2670 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = (_ctx.focusContents ? 'dialog' : 'tooltip');
    if (import13.checkBinding(this._expr_1, currVal_1, 'focusContents ? \'dialog\' : \'tooltip\'', 'asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart')) {
      import10.updateRenderAttribute(this._el_0, 'role', currVal_1?.toString()) /* REF:asset:angulardart_components/lib/src/material_tooltip/paper_tooltip.dart:2727:2777 */;
      this._expr_1 = currVal_1;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_0.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialPopupComponent_0_8.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    import9.unsafeCast<ViewMaterialPaperTooltipComponent0>((this.parentView!))._viewQuery_MaterialPopupComponent_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._AutoFocusDirective_2_5.ngOnDestroy();
    this._MaterialPopupComponent_0_8.ngOnDestroy();
  }
}

import16.EmbeddedView<void> viewFactory_MaterialPaperTooltipComponent1(import20.RenderView parentView, int parentIndex) {
  return _ViewMaterialPaperTooltipComponent1(parentView, parentIndex);
}

final List<Object> styles$MaterialPaperTooltipComponentHost = const [];

class _ViewMaterialPaperTooltipComponentHost0 extends import36.HostView<import2.MaterialPaperTooltipComponent> {
  late dynamic _Tooltip_0_7 = import2.getTooltipHandle(this.component);
  late final dynamic _TooltipController_0_5;
  @override
  void build() {
    this.componentView = ViewMaterialPaperTooltipComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this._TooltipController_0_5 = (import9.isDevMode
        ? import21.debugInjectorWrap(import37.TooltipController, () {
            return import38.createTooltipController(this.injectorGetOptional(import37.TooltipController, this.parentIndex), this.injectorGetOptional(import39.Disposer, this.parentIndex));
          })
        : import38.createTooltipController(this.injectorGetOptional(import37.TooltipController, this.parentIndex), this.injectorGetOptional(import39.Disposer, this.parentIndex)));
    this.component = import2.MaterialPaperTooltipComponent(this._TooltipController_0_5, this.componentView, import10.unwrapNode(_el_0), null);
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import37.TooltipController)) {
        return this._TooltipController_0_5;
      }
      if ((identical(token, import2.MaterialPaperTooltipComponent) || identical(token, import33.DeferredContentAware))) {
        return this.component;
      }
      if (identical(token, import37.Tooltip)) {
        return this._Tooltip_0_7;
      }
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

import36.HostView<import2.MaterialPaperTooltipComponent> viewFactory_MaterialPaperTooltipComponentHost0() {
  return _ViewMaterialPaperTooltipComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialPaperTooltipComponent, createMaterialPaperTooltipComponentFactory());
  _ngRef.registerDependencies(getTooltipHandle, const [
    [_i1.MaterialPaperTooltipComponent],
  ]);
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
}
