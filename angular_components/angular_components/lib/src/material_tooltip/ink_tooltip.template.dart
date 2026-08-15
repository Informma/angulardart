// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'ink_tooltip.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/content/deferred_content.template.dart' as _ref1;
import 'package:angulardart_components/laminate/enums/alignment.template.dart' as _ref2;
import 'package:angulardart_components/laminate/popup/popup.template.dart' as _ref3;
import 'package:angulardart_components/material_popup/material_popup.template.dart' as _ref4;
import 'package:angulardart_components/material_tooltip/module.template.dart' as _ref5;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref6;
import 'package:angulardart_components/utils/angular/css/css.template.dart' as _ref7;

import 'tooltip_controller.template.dart' as _ref8;
import 'tooltip_target.template.dart' as _ref9;

import 'package:angulardart_components/src/material_tooltip/ink_tooltip.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'ink_tooltip.dart' as import2;

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
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import14;

import '../../material_popup/material_popup.dart' as import15;
import '../../material_popup/material_popup.template.dart' as import16;
import '../../content/deferred_content.dart' as import17;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import18;
import 'package:angulardart/src/di/errors.dart' as import19;

import '../laminate/popup/popup_hierarchy.dart' as import20;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import21;

import '../laminate/overlay/overlay_service.dart' as import22;
import '../../utils/browser/dom_service/dom_service.dart' as import23;
import '../../laminate/overlay/zindexer.dart' as import24;

import 'package:angulardart_meta/src/di_tokens.dart' as import25;

import 'dart:core';

import 'package:angulardart_components/laminate/enums/alignment.dart' as import27;

import '../laminate/popup/popup_size_provider.dart' as import28;

import 'package:angulardart/src/core/linker/element_ref.dart';

import '../../content/deferred_content_aware.dart' as import30;
import '../../mixins/material_dropdown_base.dart' as import31;
import '../laminate/popup/popup_ref.dart' as import32;

import 'package:angulardart/src/runtime/check_binding.dart' as import33;
import 'package:angulardart/src/runtime/interpolate.dart' as import34;
import 'package:angulardart/src/runtime/text_binding.dart' as import35;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import36;

import 'tooltip_controller.dart' as import37;
import '../../material_tooltip/module.dart' as import38;
import '../../utils/disposer/disposer.dart' as import39;

final List<Object> styles$MaterialInkTooltipComponent = [import0.styles];

class ViewMaterialInkTooltipComponent0 extends import1.ComponentView<import2.MaterialInkTooltipComponent> {
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialInkTooltipComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-tooltip-text');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _text_0 = import10.createRenderText('        ');
    import10.appendRenderChild(parentRenderNode, _text_0);
    final _anchor_1 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_1);
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MaterialInkTooltipComponent1);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', (_ctx.popupSource != null));
    }
    this._NgIf_1_9.ngIf = ((_ctx.popupSource != null) ?? false) /* REF:asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart:1712:1739 */;
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialInkTooltipComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialInkTooltipComponentNgFactory = ComponentFactory<import2.MaterialInkTooltipComponent>('material-tooltip-text', viewFactory_MaterialInkTooltipComponentHost0);
ComponentFactory<import2.MaterialInkTooltipComponent> get MaterialInkTooltipComponentNgFactory {
  return _MaterialInkTooltipComponentNgFactory;
}

ComponentFactory<import2.MaterialInkTooltipComponent> createMaterialInkTooltipComponentFactory() {
  return ComponentFactory('material-tooltip-text', viewFactory_MaterialInkTooltipComponentHost0);
}

class _ViewMaterialInkTooltipComponent1 extends import14.EmbeddedView<import2.MaterialInkTooltipComponent> {
  late dynamic _PopupHierarchy_0_11 = import15.getHierarchy(this._MaterialPopupComponent_0_8);
  late dynamic _PopupRef_0_12 = import15.getResolvedPopupRef(this._MaterialPopupComponent_0_8);
  late final import16.ViewMaterialPopupComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import15.MaterialPopupComponent _MaterialPopupComponent_0_8;
  late final ViewContainer _appEl_2;
  late final import17.DeferredContentDirective _DeferredContentDirective_2_9;
  Object? _expr_0;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_7;
  late final _el_0;
  _ViewMaterialInkTooltipComponent1(import18.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import16.ViewMaterialPopupComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import10.updateRenderAttribute(this._el_0, 'enforceSpaceConstraints', '');
    import10.updateRenderAttribute(this._el_0, 'ink', '');
    import10.updateRenderAttribute(this._el_0, 'role', 'tooltip');
    import10.updateRenderAttribute(this._el_0, 'trackLayoutChanges', '');
    this.addShimC(this._el_0);
    this._appEl_0 = ViewContainer(0, null, this, this._el_0);
    this._MaterialPopupComponent_0_8 = (import9.isDevMode
        ? import19.debugInjectorWrap(import15.MaterialPopupComponent, () {
            return import15.MaterialPopupComponent((this.parentView!).injectorGetOptional(import20.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import15.MaterialPopupComponent, this.parentIndex), 'tooltip', (this.parentView!).injectorGet(import21.NgZone, this.parentIndex), (this.parentView!).injectorGet(import22.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import23.DomService, this.parentIndex), (this.parentView!).injectorGet(import24.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import25.OpaqueToken<List<import27.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import25.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import25.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import28.PopupSizeProvider, this.parentIndex), this._compView_0, this._appEl_0, ElementRef(import10.unwrapNode(this._el_0)));
          })
        : import15.MaterialPopupComponent((this.parentView!).injectorGetOptional(import20.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import15.MaterialPopupComponent, this.parentIndex), 'tooltip', (this.parentView!).injectorGet(import21.NgZone, this.parentIndex), (this.parentView!).injectorGet(import22.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import23.DomService, this.parentIndex), (this.parentView!).injectorGet(import24.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import25.OpaqueToken<List<import27.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import25.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import25.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import28.PopupSizeProvider, this.parentIndex), this._compView_0, this._appEl_0, ElementRef(import10.unwrapNode(this._el_0))));
    final _text_1 = import10.createRenderText('\n          ');
    final _anchor_2 = import10.createRenderAnchor();
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialInkTooltipComponent2);
    this._DeferredContentDirective_2_9 = import17.DeferredContentDirective(this._appEl_2, _TemplateRef_2_8, this._MaterialPopupComponent_0_8, this);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_2, this._DeferredContentDirective_2_9);
    }
    final _text_3 = import10.createRenderText('\n        ');
    this._compView_0.createAndProject(this._MaterialPopupComponent_0_8, [
      const <Object>[],
      <Object>[_text_1, this._appEl_2, _text_3],
      const <Object>[],
    ]);
    this.initRootNode(this._appEl_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 3)) {
      if (((identical(token, import15.MaterialPopupComponent) || identical(token, import30.DeferredContentAware)) || identical(token, import31.DropdownHandle))) {
        return this._MaterialPopupComponent_0_8;
      }
      if (identical(token, import20.PopupHierarchy)) {
        return this._PopupHierarchy_0_11;
      }
      if (identical(token, import32.PopupRef)) {
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
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'autoDismiss', false);
      }
      this._MaterialPopupComponent_0_8.autoDismiss = false /* REF:asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart:1831:1852 */;
      changed = true;
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'enforceSpaceConstraints', true);
      }
      this._MaterialPopupComponent_0_8.enforceSpaceConstraints = true /* REF:asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart:1877:1900 */;
      changed = true;
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'matchMinSourceWidth', false);
      }
      this._MaterialPopupComponent_0_8.matchMinSourceWidth = false /* REF:asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart:1925:1954 */;
      changed = true;
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'trackLayoutChanges', true);
      }
      this._MaterialPopupComponent_0_8.trackLayoutChanges = true /* REF:asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart:2057:2075 */;
      changed = true;
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'ink', true);
      }
      this._MaterialPopupComponent_0_8.inkBackground = true /* REF:asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart:1764:1767 */;
      changed = true;
    }
    final currVal_4 = _ctx.positions;
    if (import33.checkBinding(this._expr_4, currVal_4, 'positions', 'asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'preferredPositions', currVal_4);
      }
      this._MaterialPopupComponent_0_8.preferredPositions = (currVal_4!) /* REF:asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart:2100:2132 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = (_ctx.popupSource!);
    if (import33.checkBinding(this._expr_5, currVal_5, 'popupSource!', 'asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'source', currVal_5);
      }
      this._MaterialPopupComponent_0_8.source = currVal_5 /* REF:asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart:2157:2180 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_7 = _ctx.showPopup;
    if (import33.checkBinding(this._expr_7, currVal_7, 'showPopup', 'asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'visible', currVal_7);
      }
      this._MaterialPopupComponent_0_8.visible = (currVal_7!) /* REF:asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart:2205:2226 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DeferredContentDirective_2_9, 'deferredContent', true);
      }
      this._DeferredContentDirective_2_9.preserveDimensions = true /* REF:asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart:2243:2259 */;
    }
    final currVal_0 = import34.interpolateString1('aacmtit-ink-tooltip-shadow ', _ctx.popupClassName, '');
    if (import33.checkBinding(this._expr_0, currVal_0, 'aacmtit-ink-tooltip-shadow {{popupClassName}}', 'asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart')) {
      this._compView_0.updateChildClassNonHtml(this._el_0, currVal_0) /* REF:asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart:1979:2032 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
    if ((!import33.debugThrowIfChanged)) {
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

import14.EmbeddedView<void> viewFactory_MaterialInkTooltipComponent1(import18.RenderView parentView, int parentIndex) {
  return _ViewMaterialInkTooltipComponent1(parentView, parentIndex);
}

class _ViewMaterialInkTooltipComponent2 extends import14.EmbeddedView<import2.MaterialInkTooltipComponent> {
  final import35.TextBinding _textBinding_2 = import35.TextBinding();
  _ViewMaterialInkTooltipComponent2(import18.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'ink-container');
    this.addShimC(_el_0);
    final _text_1 = import10.createRenderText('\n            ');
    import10.appendRenderChild(_el_0, _text_1);
    import10.appendRenderChild(_el_0, this._textBinding_2.element);
    this.project(_el_0, 0);
    final _text_3 = import10.createRenderText('\n          ');
    import10.appendRenderChild(_el_0, _text_3);
    import10.addRenderEventListener(_el_0, 'mouseover', this.eventHandler0(_ctx.onMouseOver));
    import10.addRenderEventListener(_el_0, 'mouseleave', this.eventHandler0(_ctx.onMouseLeave));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_2.updateText(import34.interpolateString0(_ctx.text)) /* REF:asset:angulardart_components/lib/src/material_tooltip/ink_tooltip.dart:2383:2391 */;
  }
}

import14.EmbeddedView<void> viewFactory_MaterialInkTooltipComponent2(import18.RenderView parentView, int parentIndex) {
  return _ViewMaterialInkTooltipComponent2(parentView, parentIndex);
}

final List<Object> styles$MaterialInkTooltipComponentHost = const [];

class _ViewMaterialInkTooltipComponentHost0 extends import36.HostView<import2.MaterialInkTooltipComponent> {
  late final dynamic _TooltipController_0_5;
  @override
  void build() {
    this.componentView = ViewMaterialInkTooltipComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this._TooltipController_0_5 = (import9.isDevMode
        ? import19.debugInjectorWrap(import37.TooltipController, () {
            return import38.createTooltipController(this.injectorGetOptional(import37.TooltipController, this.parentIndex), this.injectorGetOptional(import39.Disposer, this.parentIndex));
          })
        : import38.createTooltipController(this.injectorGetOptional(import37.TooltipController, this.parentIndex), this.injectorGetOptional(import39.Disposer, this.parentIndex)));
    this.component = import2.MaterialInkTooltipComponent(this._TooltipController_0_5, this.componentView, import10.unwrapNode(_el_0), null);
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import37.TooltipController) && (0 == nodeIndex))) {
      return this._TooltipController_0_5;
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

import36.HostView<import2.MaterialInkTooltipComponent> viewFactory_MaterialInkTooltipComponentHost0() {
  return _ViewMaterialInkTooltipComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialInkTooltipComponent, createMaterialInkTooltipComponentFactory());
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
