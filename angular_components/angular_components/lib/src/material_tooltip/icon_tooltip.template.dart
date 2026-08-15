// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'icon_tooltip.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/content/deferred_content_aware.template.dart' as _ref1;
import 'package:angulardart_components/focus/keyboard_only_focus_indicator.template.dart' as _ref2;
import 'package:angulardart_components/laminate/enums/alignment.template.dart' as _ref3;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref4;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref5;
import 'package:angulardart_components/theme/dark_theme.template.dart' as _ref6;

import 'paper_tooltip.template.dart' as _ref7;
import 'tooltip_target.template.dart' as _ref8;

import 'package:angulardart_components/src/material_tooltip/icon_tooltip.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'icon_tooltip.dart' as import2;
import 'paper_tooltip.dart' as import3;
import '../../material_icon/material_icon.template.dart' as import4;

import 'package:angulardart/src/core/linker/view_container.dart';

import 'tooltip_target.dart' as import6;
import '../../material_icon/material_icon.dart' as import7;
import '../../focus/keyboard_only_focus_indicator.dart' as import8;
import 'paper_tooltip.template.dart' as import9;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import10;
import 'package:angulardart/src/core/linker/views/view.dart' as import11;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import13;
import 'package:angulardart/src/utilities.dart' as import14;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import15;
import 'package:angulardart/src/di/errors.dart' as import16;

import '../laminate/popup/dom_popup_source.dart' as import17;
import '../../utils/browser/dom_service/dom_service.dart' as import18;

import 'package:angulardart/src/devtools.dart' as import19;

import 'tooltip_controller.dart' as import20;
import '../../material_tooltip/module.dart' as import21;
import '../../utils/disposer/disposer.dart' as import22;
import '../../content/deferred_content_aware.dart' as import23;

import 'package:angulardart/src/runtime/check_binding.dart' as import24;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import26;

import '../../theme/dark_theme.dart' as import27;

import 'package:angulardart_meta/src/di_tokens.dart' as import28;

import 'dart:core';

final List<Object> styles$MaterialIconTooltipComponent = [import0.styles];

class ViewMaterialIconTooltipComponent0 extends import1.ComponentView<import2.MaterialIconTooltipComponent> {
  late dynamic _Tooltip_4_7 = import3.getTooltipHandle(this._MaterialPaperTooltipComponent_4_6);
  late final import4.ViewMaterialIconComponent0 _compView_1;
  late final ViewContainer _appEl_1;
  late final import6.ClickableTooltipTargetDirective _ClickableTooltipTargetDirective_1_8;
  late final import7.MaterialIconComponent _MaterialIconComponent_1_9;
  late final import8.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_1_10;
  late final import9.ViewMaterialPaperTooltipComponent0 _compView_4;
  late final dynamic _TooltipController_4_5;
  late final import3.MaterialPaperTooltipComponent _MaterialPaperTooltipComponent_4_6;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  late final _el_1;
  static import10.ComponentStyles? _componentStyles;
  ViewMaterialIconTooltipComponent0(import11.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import13.renderFactory.createElement('material-icon-tooltip');
  }
  static String? get _debugComponentUrl {
    return (import14.isDevMode ? 'asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _text_0 = import15.createRenderText('    ');
    import15.appendRenderChild(parentRenderNode, _text_0);
    this._compView_1 = import4.ViewMaterialIconComponent0(this, 1);
    this._el_1 = this._compView_1.rootElement;
    import15.appendRenderChild(parentRenderNode, this._el_1);
    import15.updateRenderAttribute(this._el_1, 'clickableTooltipTarget', '');
    import15.updateRenderAttribute(this._el_1, 'keyboardOnlyFocusIndicator', '');
    import15.updateRenderTabIndex(this._el_1, 0);
    this.addShimC(this._el_1);
    this._appEl_1 = ViewContainer(1, null, this, this._el_1);
    this._ClickableTooltipTargetDirective_1_8 = (import14.isDevMode
        ? import16.debugInjectorWrap(import6.ClickableTooltipTargetDirective, () {
            return import6.ClickableTooltipTargetDirective((this.parentView!).injectorGet(import17.DomPopupSourceFactory, this.parentIndex), this._appEl_1, import15.unwrapNode(this._el_1), this._compView_1, null);
          })
        : import6.ClickableTooltipTargetDirective((this.parentView!).injectorGet(import17.DomPopupSourceFactory, this.parentIndex), this._appEl_1, import15.unwrapNode(this._el_1), this._compView_1, null));
    this._MaterialIconComponent_1_9 = import7.MaterialIconComponent(import15.unwrapNode(this._el_1));
    this._KeyboardOnlyFocusIndicatorDirective_1_10 = (import14.isDevMode
        ? import16.debugInjectorWrap(import8.KeyboardOnlyFocusIndicatorDirective, () {
            return import8.KeyboardOnlyFocusIndicatorDirective(import15.unwrapNode(this._el_1), (this.parentView!).injectorGet(import18.DomService, this.parentIndex));
          })
        : import8.KeyboardOnlyFocusIndicatorDirective(import15.unwrapNode(this._el_1), (this.parentView!).injectorGet(import18.DomService, this.parentIndex)));
    if (import19.isDevToolsEnabled) {
      import19.Inspector.instance.registerDirective(this._el_1, this._ClickableTooltipTargetDirective_1_8);
      import19.Inspector.instance.registerDirective(this._el_1, this._KeyboardOnlyFocusIndicatorDirective_1_10);
    }
    this._compView_1.create(this._MaterialIconComponent_1_9);
    final _text_3 = import15.createRenderText('\n    ');
    import15.appendRenderChild(parentRenderNode, _text_3);
    this._compView_4 = import9.ViewMaterialPaperTooltipComponent0(this, 4);
    final _el_4 = this._compView_4.rootElement;
    import15.appendRenderChild(parentRenderNode, _el_4);
    this.addShimC(_el_4);
    this._TooltipController_4_5 = (import14.isDevMode
        ? import16.debugInjectorWrap(import20.TooltipController, () {
            return import21.createTooltipController((this.parentView!).injectorGetOptional(import20.TooltipController, this.parentIndex), (this.parentView!).injectorGetOptional(import22.Disposer, this.parentIndex));
          })
        : import21.createTooltipController((this.parentView!).injectorGetOptional(import20.TooltipController, this.parentIndex), (this.parentView!).injectorGetOptional(import22.Disposer, this.parentIndex)));
    this._MaterialPaperTooltipComponent_4_6 = import3.MaterialPaperTooltipComponent(this._TooltipController_4_5, this._compView_4, import15.unwrapNode(_el_4), null);
    final _text_5 = import15.createRenderText('\n      ');
    final _text_6 = import15.createRenderText('\n    ');
    this._compView_4.createAndProject(this._MaterialPaperTooltipComponent_4_6, [
      const <Object>[],
      <Object>[_text_5]
        ..addAll(import14.unsafeCast(this.projectedNodes[0]))
        ..addAll(<Object>[_text_6]),
      const <Object>[],
    ]);
    import15.addRenderEventListener(this._el_1, 'click', this.eventHandler1(this._handleEvent_0));
    import15.addRenderEventListener(this._el_1, 'mouseover', this.eventHandler0(this._ClickableTooltipTargetDirective_1_8.onMouseOver));
    import15.addRenderEventListener(this._el_1, 'mouseleave', this.eventHandler0(this._ClickableTooltipTargetDirective_1_8.onMouseLeave));
    import15.addRenderEventListener(this._el_1, 'blur', this.eventHandler1(this._handleEvent_1));
    import15.addRenderEventListener(this._el_1, 'keypress', this.eventHandler1(this._ClickableTooltipTargetDirective_1_8.kbTrigger));
    import15.addRenderEventListener(this._el_1, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_1_10.keydown));
    import15.addRenderEventListener(this._el_1, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_1_10.onMouseInteraction));
    import15.addRenderEventListener(this._el_1, 'focus', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_1_10.onFocus));
    _ctx.tooltipBehavior = this._ClickableTooltipTargetDirective_1_8;
    import11.View.queryChangeDetectorRefs[this._MaterialPaperTooltipComponent_4_6] = this._compView_4;
    _ctx.deferredContentAware = this._MaterialPaperTooltipComponent_4_6;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((4 <= nodeIndex) && (nodeIndex <= 6))) {
      if (identical(token, import20.TooltipController)) {
        return this._TooltipController_4_5;
      }
      if ((identical(token, import3.MaterialPaperTooltipComponent) || identical(token, import23.DeferredContentAware))) {
        return this._MaterialPaperTooltipComponent_4_6;
      }
      if (identical(token, import20.Tooltip)) {
        return this._Tooltip_4_7;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_tooltipRef = this._ClickableTooltipTargetDirective_1_8;
    changed = false;
    final currVal_2 = _ctx.icon;
    if (import24.checkBinding(this._expr_2, currVal_2, 'icon', 'asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialIconComponent_1_9, 'icon', currVal_2);
      }
      this._MaterialIconComponent_1_9.icon = (currVal_2!) /* REF:asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart:2222:2235 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    changed = false;
    final currVal_3 = _ctx.preferredPositions;
    if (import24.checkBinding(this._expr_3, currVal_3, 'preferredPositions', 'asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialPaperTooltipComponent_4_6, 'preferredPositions', currVal_3);
      }
      this._MaterialPaperTooltipComponent_4_6.preferredPositions = (currVal_3!) /* REF:asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart:2435:2476 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.offsetX;
    if (import24.checkBinding(this._expr_4, currVal_4, 'offsetX', 'asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialPaperTooltipComponent_4_6, 'offsetX', currVal_4);
      }
      this._MaterialPaperTooltipComponent_4_6.offsetX = (currVal_4!) /* REF:asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart:2485:2504 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.offsetY;
    if (import24.checkBinding(this._expr_5, currVal_5, 'offsetY', 'asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialPaperTooltipComponent_4_6, 'offsetY', currVal_5);
      }
      this._MaterialPaperTooltipComponent_4_6.offsetY = (currVal_5!) /* REF:asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart:2513:2532 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = local_tooltipRef;
    if (import24.checkBinding(this._expr_6, currVal_6, 'tooltipRef', 'asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart')) {
      if (import19.isDevToolsEnabled) {
        import19.Inspector.instance.recordInput(this._MaterialPaperTooltipComponent_4_6, 'for', currVal_6);
      }
      this._MaterialPaperTooltipComponent_4_6.tooltipRef = (currVal_6!) /* REF:asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart:2408:2426 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    if (changed) {
      this._compView_4.markAsCheckOnce();
    }
    final currVal_0 = import2.MaterialIconTooltipComponent.helpTooltipLabel;
    if (import24.checkBinding(this._expr_0, currVal_0, 'helpTooltipLabel', 'asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart')) {
      import15.updateRenderAttribute(this._el_1, 'aria-label', currVal_0) /* REF:asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart:2146:2182 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.iconSize;
    if (import24.checkBinding(this._expr_1, currVal_1, 'iconSize', 'asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart')) {
      import15.updateRenderAttribute(this._el_1, 'size', currVal_1) /* REF:asset:angulardart_components/lib/src/material_tooltip/icon_tooltip.dart:2191:2213 */;
      this._expr_1 = currVal_1;
    }
    this._appEl_1.detectChangesInNestedViews();
    this._compView_1.detectChangesDeprecated();
    this._compView_4.detectChangesDeprecated();
    if ((!import24.debugThrowIfChanged)) {
      if (firstCheck) {
        this._ClickableTooltipTargetDirective_1_8.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._compView_1.destroyInternalState();
    this._compView_4.destroyInternalState();
    this._ClickableTooltipTargetDirective_1_8.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    this._ClickableTooltipTargetDirective_1_8.onClick();
    this._KeyboardOnlyFocusIndicatorDirective_1_10.onMouseInteraction();
  }

  void _handleEvent_1($event) {
    this._ClickableTooltipTargetDirective_1_8.onBlur($event);
    this._KeyboardOnlyFocusIndicatorDirective_1_10.resetOutline();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import10.ComponentStyles.scoped(styles$MaterialIconTooltipComponent, _debugComponentUrl));
      if (import14.isDevMode) {
        import10.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialIconTooltipComponentNgFactory = ComponentFactory<import2.MaterialIconTooltipComponent>('material-icon-tooltip', viewFactory_MaterialIconTooltipComponentHost0);
ComponentFactory<import2.MaterialIconTooltipComponent> get MaterialIconTooltipComponentNgFactory {
  return _MaterialIconTooltipComponentNgFactory;
}

ComponentFactory<import2.MaterialIconTooltipComponent> createMaterialIconTooltipComponentFactory() {
  return ComponentFactory('material-icon-tooltip', viewFactory_MaterialIconTooltipComponentHost0);
}

final List<Object> styles$MaterialIconTooltipComponentHost = const [];

class _ViewMaterialIconTooltipComponentHost0 extends import26.HostView<import2.MaterialIconTooltipComponent> {
  late final dynamic _AcxDarkTheme_0_5;
  @override
  void build() {
    this.componentView = ViewMaterialIconTooltipComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this._AcxDarkTheme_0_5 = (import14.isDevMode
        ? import16.debugInjectorWrap(import27.AcxDarkTheme, () {
            return import27.AcxDarkTheme(this.injectorGetOptional(const import28.OpaqueToken<Object>('acxDarkTheme'), this.parentIndex));
          })
        : import27.AcxDarkTheme(this.injectorGetOptional(const import28.OpaqueToken<Object>('acxDarkTheme'), this.parentIndex)));
    this.component = import2.MaterialIconTooltipComponent(this._AcxDarkTheme_0_5, import15.unwrapNode(_el_0), null, null, null);
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import27.AcxDarkTheme)) {
        return this._AcxDarkTheme_0_5;
      }
      if (identical(token, import23.DeferredContentAware)) {
        return this.component;
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

import26.HostView<import2.MaterialIconTooltipComponent> viewFactory_MaterialIconTooltipComponentHost0() {
  return _ViewMaterialIconTooltipComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialIconTooltipComponent, createMaterialIconTooltipComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
  _ref7.initReflector();
  _ref8.initReflector();
}
