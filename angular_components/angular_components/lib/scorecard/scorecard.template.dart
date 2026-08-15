// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'scorecard.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/focus/keyboard_only_focus_indicator.template.dart' as _ref1;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref2;
import 'package:angulardart_components/material_ripple/material_ripple.template.dart' as _ref3;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref4;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.template.dart' as _ref5;
import 'package:angulardart_components/utils/browser/events/events.template.dart' as _ref6;
import 'package:angulardart_components/utils/color/color.template.dart' as _ref7;
import 'package:angulardart_components/utils/color/material_chart_colors.template.dart' as _ref8;
import 'package:angulardart_components/scorecard/scorecard.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'scorecard.dart' as import2;

import 'package:angulardart/src/runtime/text_binding.dart' as import3;
import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import6;
import 'package:angulardart/src/core/linker/views/view.dart' as import7;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import9;
import 'package:angulardart/src/utilities.dart' as import10;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import11;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import13;
import 'package:angulardart/src/runtime/check_binding.dart' as import14;
import 'package:angulardart/src/runtime/interpolate.dart' as import15;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import17;

import '../material_ripple/material_ripple.template.dart' as import18;
import '../material_ripple/material_ripple.dart' as import19;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import20;

import '../material_icon/material_icon.template.dart' as import21;
import '../material_icon/material_icon.dart' as import22;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import23;
import 'package:angulardart/src/di/errors.dart' as import24;

import '../utils/browser/dom_service/dom_service.dart' as import25;

final List<Object> styles$ScorecardComponent = [import0.styles];

class ViewScorecardComponent0 extends import1.ComponentView<import2.ScorecardComponent> {
  final import3.TextBinding _textBinding_2 = import3.TextBinding();
  final import3.TextBinding _textBinding_4 = import3.TextBinding();
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  late final ViewContainer _appEl_5;
  late final NgIf _NgIf_5_9;
  late final ViewContainer _appEl_7;
  late final NgIf _NgIf_7_9;
  late final ViewContainer _appEl_9;
  late final NgIf _NgIf_9_9;
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
  late final _el_3;
  static import6.ComponentStyles? _componentStyles;
  ViewScorecardComponent0(import7.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import9.renderFactory.createElement('acx-scorecard');
  }
  static String? get _debugComponentUrl {
    return (import10.isDevMode ? 'asset:angulardart_components/lib/scorecard/scorecard.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _anchor_0 = import11.createRenderAnchor();
    import11.appendRenderChild(parentRenderNode, _anchor_0);
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, viewFactory_ScorecardComponent1);
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
    final _el_1 = import11.createRenderElement('div');
    import11.appendRenderChild(parentRenderNode, _el_1);
    this.updateChildClass(_el_1, 'label-name');
    this.addShimC(_el_1);
    import11.appendRenderChild(_el_1, this._textBinding_2.element);
    this.project(_el_1, 0);
    this._el_3 = import11.createRenderElement('div');
    import11.appendRenderChild(parentRenderNode, this._el_3);
    this.updateChildClass(this._el_3, 'label-value');
    this.addShimC(this._el_3);
    import11.appendRenderChild(this._el_3, this._textBinding_4.element);
    this.project(this._el_3, 1);
    final _anchor_5 = import11.createRenderAnchor();
    import11.appendRenderChild(parentRenderNode, _anchor_5);
    this._appEl_5 = ViewContainer(5, null, this, _anchor_5);
    var _TemplateRef_5_8 = TemplateRef(this._appEl_5, viewFactory_ScorecardComponent2);
    this._NgIf_5_9 = NgIf(this._appEl_5, _TemplateRef_5_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_5, this._NgIf_5_9);
    }
    final _text_6 = import11.createRenderText('\n');
    import11.appendRenderChild(parentRenderNode, _text_6);
    final _anchor_7 = import11.createRenderAnchor();
    import11.appendRenderChild(parentRenderNode, _anchor_7);
    this._appEl_7 = ViewContainer(7, null, this, _anchor_7);
    var _TemplateRef_7_8 = TemplateRef(this._appEl_7, viewFactory_ScorecardComponent3);
    this._NgIf_7_9 = NgIf(this._appEl_7, _TemplateRef_7_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_7, this._NgIf_7_9);
    }
    final _text_8 = import11.createRenderText('\n');
    import11.appendRenderChild(parentRenderNode, _text_8);
    final _anchor_9 = import11.createRenderAnchor();
    import11.appendRenderChild(parentRenderNode, _anchor_9);
    this._appEl_9 = ViewContainer(9, null, this, _anchor_9);
    var _TemplateRef_9_8 = TemplateRef(this._appEl_9, viewFactory_ScorecardComponent5);
    this._NgIf_9_9 = NgIf(this._appEl_9, _TemplateRef_9_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_9, this._NgIf_9_9);
    }
    final _text_10 = import11.createRenderText('\n');
    import11.appendRenderChild(parentRenderNode, _text_10);
    this.project(parentRenderNode, 3);
    import11.addRenderEventListener(parentRenderNode, 'keydown', this.eventHandler1(_ctx.keydown));
    import11.addRenderEventListener(parentRenderNode, 'blur', this.eventHandler0(_ctx.resetOutline));
    import11.addRenderEventListener(parentRenderNode, 'mousedown', this.eventHandler0(_ctx.onMouseInteraction));
    import11.addRenderEventListener(parentRenderNode, 'click', this.eventHandler0(_ctx.handleClick));
    import11.addRenderEventListener(parentRenderNode, 'focus', this.eventHandler1(_ctx.onFocus));
    import11.addRenderEventListener(parentRenderNode, 'keypress', this.eventHandler1(_ctx.handleKeypress));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', _ctx.selectable);
    }
    this._NgIf_0_9.ngIf = (_ctx.selectable ?? false) /* REF:package:angulardart_components/scorecard/scorecard.html:236:254 */;
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_5_9, 'ngIf', (_ctx.suggestionBefore != null));
    }
    this._NgIf_5_9.ngIf = ((_ctx.suggestionBefore != null) ?? false) /* REF:package:angulardart_components/scorecard/scorecard.html:458:490 */;
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_7_9, 'ngIf', (_ctx.description != null));
    }
    this._NgIf_7_9.ngIf = ((_ctx.description != null) ?? false) /* REF:package:angulardart_components/scorecard/scorecard.html:551:578 */;
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_9_9, 'ngIf', (_ctx.suggestionAfter != null));
    }
    this._NgIf_9_9.ngIf = ((_ctx.suggestionAfter != null) ?? false) /* REF:package:angulardart_components/scorecard/scorecard.html:901:932 */;
    final currVal_0 = _ctx.tooltip;
    if (import14.checkBinding(this._expr_0, currVal_0, 'tooltip', 'package:angulardart_components/scorecard/scorecard.html')) {
      this._el_3.setProperty('title', currVal_0) /* REF:package:angulardart_components/scorecard/scorecard.html:378:395 */;
      this._expr_0 = currVal_0;
    }
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_5.detectChangesInNestedViews();
    this._appEl_7.detectChangesInNestedViews();
    this._appEl_9.detectChangesInNestedViews();
    this._textBinding_2.updateText(import15.interpolateString0(_ctx.label)) /* REF:package:angulardart_components/scorecard/scorecard.html:298:307 */;
    this._textBinding_4.updateText(import15.interpolateString0(_ctx.value)) /* REF:package:angulardart_components/scorecard/scorecard.html:396:405 */;
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_5.destroyNestedViews();
    this._appEl_7.destroyNestedViews();
    this._appEl_9.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_1 = _ctx.isChangePositive;
    if (import14.checkBinding(this._expr_1, currVal_1, null, null)) {
      import11.updateRenderClass(this.rootElement, 'is-change-positive', (currVal_1 ?? false));
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.isChangeNegative;
    if (import14.checkBinding(this._expr_2, currVal_2, null, null)) {
      import11.updateRenderClass(this.rootElement, 'is-change-negative', (currVal_2 ?? false));
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.selectable;
    if (import14.checkBinding(this._expr_3, currVal_3, null, null)) {
      import11.updateRenderClass(this.rootElement, 'selectable', (currVal_3 ?? false));
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.hostTabIndex;
    if (import14.checkBinding(this._expr_4, currVal_4, null, null)) {
      import11.updateRenderAttribute(this.rootElement, 'tabindex', currVal_4?.toString());
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.hostRole;
    if (import14.checkBinding(this._expr_5, currVal_5, null, null)) {
      import11.updateRenderAttribute(this.rootElement, 'role', currVal_5);
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.backgroundStyle;
    if (import14.checkBinding(this._expr_6, currVal_6, null, null)) {
      import11.updateRenderStyle(this.rootElement, 'background', currVal_6);
      this._expr_6 = currVal_6;
    }
    final currVal_7 = import2.ScorecardComponent.hostClass;
    if (import14.checkBinding(this._expr_7, currVal_7, null, null)) {
      this.updateChildClassNonHtml(this.rootElement, currVal_7);
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.extraBig;
    if (import14.checkBinding(this._expr_8, currVal_8, null, null)) {
      import11.updateRenderClass(this.rootElement, 'extra-big', (currVal_8 ?? false));
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.selected;
    if (import14.checkBinding(this._expr_9, currVal_9, null, null)) {
      import11.updateRenderClass(this.rootElement, 'selected', (currVal_9 ?? false));
      this._expr_9 = currVal_9;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import6.ComponentStyles.scoped(styles$ScorecardComponent, _debugComponentUrl));
      if (import10.isDevMode) {
        import6.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _ScorecardComponentNgFactory = ComponentFactory<import2.ScorecardComponent>('acx-scorecard', viewFactory_ScorecardComponentHost0);
ComponentFactory<import2.ScorecardComponent> get ScorecardComponentNgFactory {
  return _ScorecardComponentNgFactory;
}

ComponentFactory<import2.ScorecardComponent> createScorecardComponentFactory() {
  return ComponentFactory('acx-scorecard', viewFactory_ScorecardComponentHost0);
}

class _ViewScorecardComponent1 extends import17.EmbeddedView<import2.ScorecardComponent> {
  late final import18.ViewMaterialRippleComponent0 _compView_0;
  late final import19.MaterialRippleComponent _MaterialRippleComponent_0_5;
  _ViewScorecardComponent1(import20.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import18.ViewMaterialRippleComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.addShimC(_el_0);
    this._MaterialRippleComponent_0_5 = import19.MaterialRippleComponent(import11.unwrapNode(_el_0));
    this._compView_0.create(this._MaterialRippleComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    changed = false;
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MaterialRippleComponent_0_5.ngOnDestroy();
  }
}

import17.EmbeddedView<void> viewFactory_ScorecardComponent1(import20.RenderView parentView, int parentIndex) {
  return _ViewScorecardComponent1(parentView, parentIndex);
}

class _ViewScorecardComponent2 extends import17.EmbeddedView<import2.ScorecardComponent> {
  final import3.TextBinding _textBinding_1 = import3.TextBinding();
  _ViewScorecardComponent2(import20.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import11.createRenderElement('span');
    this.updateChildClass(_el_0, 'suggestion before');
    this.addShimC(_el_0);
    import11.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import15.interpolateString0(_ctx.suggestionBefore)) /* REF:package:angulardart_components/scorecard/scorecard.html:517:537 */;
  }
}

import17.EmbeddedView<void> viewFactory_ScorecardComponent2(import20.RenderView parentView, int parentIndex) {
  return _ViewScorecardComponent2(parentView, parentIndex);
}

class _ViewScorecardComponent3 extends import17.EmbeddedView<import2.ScorecardComponent> {
  final import3.TextBinding _textBinding_3 = import3.TextBinding();
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  _ViewScorecardComponent3(import20.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import11.createRenderElement('span');
    this.updateChildClass(_el_0, 'description');
    this.addShimC(_el_0);
    final _anchor_1 = import11.createRenderAnchor();
    import11.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_ScorecardComponent4);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _text_2 = import11.createRenderText(' ');
    import11.appendRenderChild(_el_0, _text_2);
    import11.appendRenderChild(_el_0, this._textBinding_3.element);
    final _text_4 = import11.createRenderText('  ');
    import11.appendRenderChild(_el_0, _text_4);
    this.project(_el_0, 2);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', ((((_ctx.changeGlyph ?? false) && ((_ctx.description != '') ?? false)) ?? false) && ((!(_ctx.isChangeNeutral ?? false)) ?? false)));
    }
    this._NgIf_1_9.ngIf = (((((_ctx.changeGlyph ?? false) && ((_ctx.description != '') ?? false)) ?? false) && ((!(_ctx.isChangeNeutral ?? false)) ?? false)) ?? false) /* REF:package:angulardart_components/scorecard/scorecard.html:617:677 */;
    this._appEl_1.detectChangesInNestedViews();
    this._textBinding_3.updateText(import15.interpolateString0(_ctx.description)) /* REF:package:angulardart_components/scorecard/scorecard.html:816:831 */;
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }
}

import17.EmbeddedView<void> viewFactory_ScorecardComponent3(import20.RenderView parentView, int parentIndex) {
  return _ViewScorecardComponent3(parentView, parentIndex);
}

class _ViewScorecardComponent4 extends import17.EmbeddedView<import2.ScorecardComponent> {
  late final import21.ViewMaterialIconComponent0 _compView_0;
  late final import22.MaterialIconComponent _MaterialIconComponent_0_5;
  Object? _expr_0;
  _ViewScorecardComponent4(import20.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import21.ViewMaterialIconComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'change-glyph');
    import11.updateRenderAttribute(_el_0, 'size', 'small');
    this.addShimC(_el_0);
    this._MaterialIconComponent_0_5 = import22.MaterialIconComponent(import11.unwrapNode(_el_0));
    this._compView_0.create(this._MaterialIconComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    changed = false;
    final currVal_0 = _ctx.changeGlyphIcon;
    if (import14.checkBinding(this._expr_0, currVal_0, 'changeGlyphIcon', 'package:angulardart_components/scorecard/scorecard.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialIconComponent_0_5, 'icon', currVal_0);
      }
      this._MaterialIconComponent_0_5.icon = (currVal_0!) /* REF:package:angulardart_components/scorecard/scorecard.html:733:757 */;
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

import17.EmbeddedView<void> viewFactory_ScorecardComponent4(import20.RenderView parentView, int parentIndex) {
  return _ViewScorecardComponent4(parentView, parentIndex);
}

class _ViewScorecardComponent5 extends import17.EmbeddedView<import2.ScorecardComponent> {
  final import3.TextBinding _textBinding_1 = import3.TextBinding();
  _ViewScorecardComponent5(import20.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import11.createRenderElement('span');
    this.updateChildClass(_el_0, 'suggestion after');
    this.addShimC(_el_0);
    import11.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import15.interpolateString0(_ctx.suggestionAfter)) /* REF:package:angulardart_components/scorecard/scorecard.html:958:977 */;
  }
}

import17.EmbeddedView<void> viewFactory_ScorecardComponent5(import20.RenderView parentView, int parentIndex) {
  return _ViewScorecardComponent5(parentView, parentIndex);
}

final List<Object> styles$ScorecardComponentHost = const [];

class _ViewScorecardComponentHost0 extends import23.HostView<import2.ScorecardComponent> {
  @override
  void build() {
    this.componentView = ViewScorecardComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import10.isDevMode
        ? import24.debugInjectorWrap(import2.ScorecardComponent, () {
            return import2.ScorecardComponent(this.componentView, import11.unwrapNode(_el_0), this.injectorGet(import25.DomService, this.parentIndex));
          })
        : import2.ScorecardComponent(this.componentView, import11.unwrapNode(_el_0), this.injectorGet(import25.DomService, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
  }
}

import23.HostView<import2.ScorecardComponent> viewFactory_ScorecardComponentHost0() {
  return _ViewScorecardComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(ScorecardComponent, createScorecardComponentFactory());
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
