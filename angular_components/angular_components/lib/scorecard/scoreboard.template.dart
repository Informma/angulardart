// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'scoreboard.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/material_button/material_button.template.dart' as _ref1;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref2;
import 'package:angulardart_components/model/selection/selection_model.template.dart' as _ref3;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref4;
import 'package:angulardart_components/utils/browser/dom_service/angular_2.template.dart' as _ref5;
import 'package:angulardart_components/utils/color/material_chart_colors.template.dart' as _ref6;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref7;

import 'scorecard.template.dart' as _ref8;
import 'scorecard_bar.template.dart' as _ref9;

import 'package:angulardart_components/scorecard/scoreboard.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'scoreboard.dart' as import2;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';

import 'scorecard_bar.dart' as import5;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import6;
import 'package:angulardart/src/core/linker/views/view.dart' as import7;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import9;
import 'package:angulardart/src/utilities.dart' as import10;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import11;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import13;
import 'package:angulardart/src/di/errors.dart' as import14;

import '../utils/browser/dom_service/dom_service.dart' as import15;

import 'package:angulardart_meta/src/di_tokens.dart' as import16;

import 'dart:core';

import 'package:angulardart/src/runtime/check_binding.dart' as import18;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import20;

import '../material_button/material_button.template.dart' as import21;
import '../material_button/material_button.dart' as import22;
import '../material_icon/material_icon.template.dart' as import23;
import '../material_icon/material_icon.dart' as import24;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import25;

import '../theme/dark_theme.dart' as import26;
import '../button_decorator/button_decorator.dart' as import27;
import '../interfaces/has_disabled.dart' as import28;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import29;

final List<Object> styles$ScoreboardComponent = [import0.styles];

class ViewScoreboardComponent0 extends import1.ComponentView<import2.ScoreboardComponent> {
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final import5.ScorecardBarDirective _ScorecardBarDirective_2_5;
  late final ViewContainer _appEl_3;
  late final NgIf _NgIf_3_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  late final _el_0;
  static import6.ComponentStyles? _componentStyles;
  ViewScoreboardComponent0(import7.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import9.renderFactory.createElement('acx-scoreboard');
  }
  static String? get _debugComponentUrl {
    return (import10.isDevMode ? 'asset:angulardart_components/lib/scorecard/scoreboard.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._el_0 = import11.createRenderElement('div');
    import11.appendRenderChild(parentRenderNode, this._el_0);
    this.updateChildClass(this._el_0, 'acx-scoreboard');
    this.addShimC(this._el_0);
    final _anchor_1 = import11.createRenderAnchor();
    import11.appendRenderChild(this._el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_ScoreboardComponent1);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _el_2 = import11.createRenderElement('div');
    import11.appendRenderChild(this._el_0, _el_2);
    this.updateChildClass(_el_2, 'scorecard-bar');
    import11.updateRenderAttribute(_el_2, 'scorecardBar', '');
    this.addShimC(_el_2);
    this._ScorecardBarDirective_2_5 = (import10.isDevMode
        ? import14.debugInjectorWrap(import5.ScorecardBarDirective, () {
            return import5.ScorecardBarDirective((this.parentView!).injectorGet(import15.DomService, this.parentIndex), import11.unwrapNode(_el_2), (this.parentView!).injectorGetOptional(const import16.OpaqueToken<Object>('isRtl'), this.parentIndex));
          })
        : import5.ScorecardBarDirective((this.parentView!).injectorGet(import15.DomService, this.parentIndex), import11.unwrapNode(_el_2), (this.parentView!).injectorGetOptional(const import16.OpaqueToken<Object>('isRtl'), this.parentIndex)));
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_2, this._ScorecardBarDirective_2_5);
    }
    this.project(_el_2, 0);
    final _anchor_3 = import11.createRenderAnchor();
    import11.appendRenderChild(this._el_0, _anchor_3);
    this._appEl_3 = ViewContainer(3, 0, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, viewFactory_ScoreboardComponent2);
    this._NgIf_3_9 = NgIf(this._appEl_3, _TemplateRef_3_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_3, this._NgIf_3_9);
    }
    _ctx.scorecardBar = this._ScorecardBarDirective_2_5;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.isScrollable);
    }
    this._NgIf_1_9.ngIf = (_ctx.isScrollable ?? false) /* REF:package:angulardart_components/scorecard/scoreboard.html:528:548 */;
    final currVal_2 = _ctx.isVertical;
    if (import18.checkBinding(this._expr_2, currVal_2, 'isVertical', 'package:angulardart_components/scorecard/scoreboard.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._ScorecardBarDirective_2_5, 'isVertical', currVal_2);
      }
      this._ScorecardBarDirective_2_5.isVertical = (currVal_2!) /* REF:package:angulardart_components/scorecard/scoreboard.html:738:763 */;
      this._expr_2 = currVal_2;
    }
    if (((!import18.debugThrowIfChanged) && firstCheck)) {
      this._ScorecardBarDirective_2_5.ngOnInit();
    }
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_3_9, 'ngIf', _ctx.isScrollable);
    }
    this._NgIf_3_9.ngIf = (_ctx.isScrollable ?? false) /* REF:package:angulardart_components/scorecard/scoreboard.html:985:1005 */;
    final currVal_0 = (!(_ctx.isVertical ?? false));
    if (import18.checkBinding(this._expr_0, currVal_0, '!isVertical', 'package:angulardart_components/scorecard/scoreboard.html')) {
      import11.updateRenderClass(this._el_0, 'acx-scoreboard-horizontal', (currVal_0 ?? false)) /* REF:package:angulardart_components/scorecard/scoreboard.html:252:299 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.isVertical;
    if (import18.checkBinding(this._expr_1, currVal_1, 'isVertical', 'package:angulardart_components/scorecard/scoreboard.html')) {
      import11.updateRenderClass(this._el_0, 'acx-scoreboard-vertical', (currVal_1 ?? false)) /* REF:package:angulardart_components/scorecard/scoreboard.html:305:349 */;
      this._expr_1 = currVal_1;
    }
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_3.detectChangesInNestedViews();
    if ((!import18.debugThrowIfChanged)) {
      this._ScorecardBarDirective_2_5.ngAfterViewChecked();
    }
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_3.destroyNestedViews();
    this._ScorecardBarDirective_2_5.ngOnDestroy();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import6.ComponentStyles.scoped(styles$ScoreboardComponent, _debugComponentUrl));
      if (import10.isDevMode) {
        import6.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _ScoreboardComponentNgFactory = ComponentFactory<import2.ScoreboardComponent>('acx-scoreboard', viewFactory_ScoreboardComponentHost0);
ComponentFactory<import2.ScoreboardComponent> get ScoreboardComponentNgFactory {
  return _ScoreboardComponentNgFactory;
}

ComponentFactory<import2.ScoreboardComponent> createScoreboardComponentFactory() {
  return ComponentFactory('acx-scoreboard', viewFactory_ScoreboardComponentHost0);
}

class _ViewScoreboardComponent1 extends import20.EmbeddedView<import2.ScoreboardComponent> {
  late final import21.ViewMaterialButtonComponent0 _compView_0;
  late final dynamic _AcxDarkTheme_0_5;
  late final import22.MaterialButtonComponent _MaterialButtonComponent_0_6;
  late final import23.ViewMaterialIconComponent0 _compView_1;
  late final import24.MaterialIconComponent _MaterialIconComponent_1_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  late final _el_0;
  late final _el_1;
  _ViewScoreboardComponent1(import25.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import21.ViewMaterialButtonComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'scroll-button scroll-back-button');
    this.addShimC(this._el_0);
    this._AcxDarkTheme_0_5 = (import10.isDevMode
        ? import14.debugInjectorWrap(import26.AcxDarkTheme, () {
            return import26.AcxDarkTheme(((this.parentView!).parentView!).injectorGetOptional(const import16.OpaqueToken<Object>('acxDarkTheme'), (this.parentView!).parentIndex));
          })
        : import26.AcxDarkTheme(((this.parentView!).parentView!).injectorGetOptional(const import16.OpaqueToken<Object>('acxDarkTheme'), (this.parentView!).parentIndex)));
    this._MaterialButtonComponent_0_6 = import22.MaterialButtonComponent(import11.unwrapNode(this._el_0), this._AcxDarkTheme_0_5, this._compView_0, null);
    this._compView_1 = import23.ViewMaterialIconComponent0(this, 1);
    this._el_1 = this._compView_1.rootElement;
    this.addShimC(this._el_1);
    this._MaterialIconComponent_1_5 = import24.MaterialIconComponent(import11.unwrapNode(this._el_1));
    this._compView_1.create(this._MaterialIconComponent_1_5);
    this._compView_0.createAndProject(this._MaterialButtonComponent_0_6, [
      <Object>[this._el_1],
    ]);
    final subscription_0 = this._MaterialButtonComponent_0_6.trigger.listen(this.eventHandler0(_ctx.scrollBack));
    this.initRootNodesAndSubscriptions(import10.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 1)) {
      if (identical(token, import26.AcxDarkTheme)) {
        return this._AcxDarkTheme_0_5;
      }
      if (((identical(token, import22.MaterialButtonComponent) || identical(token, import27.ButtonDirective)) || identical(token, import28.HasDisabled))) {
        return this._MaterialButtonComponent_0_6;
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
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    changed = false;
    final currVal_2 = _ctx.backIconType;
    if (import18.checkBinding(this._expr_2, currVal_2, 'backIconType', 'package:angulardart_components/scorecard/scoreboard.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialIconComponent_1_5, 'icon', currVal_2);
      }
      this._MaterialIconComponent_1_5.icon = (currVal_2!) /* REF:package:angulardart_components/scorecard/scoreboard.html:569:590 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    final currVal_0 = _ctx.atScorecardBarStart;
    if (import18.checkBinding(this._expr_0, currVal_0, 'atScorecardBarStart', 'package:angulardart_components/scorecard/scoreboard.html')) {
      import11.updateRenderClass(this._el_0, 'hide', (currVal_0 ?? false)) /* REF:package:angulardart_components/scorecard/scoreboard.html:474:508 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectHostChanges(firstCheck);
    final currVal_1 = import2.ScoreboardComponent.scrollScorecardBarBack;
    if (import18.checkBinding(this._expr_1, currVal_1, 'scrollScorecardBarBack', 'package:angulardart_components/scorecard/scoreboard.html')) {
      import11.updateRenderAttribute(this._el_1, 'aria-label', currVal_1) /* REF:package:angulardart_components/scorecard/scoreboard.html:610:652 */;
      this._expr_1 = currVal_1;
    }
    this._compView_0.detectChangesDeprecated();
    this._compView_1.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._compView_1.destroyInternalState();
  }
}

import20.EmbeddedView<void> viewFactory_ScoreboardComponent1(import25.RenderView parentView, int parentIndex) {
  return _ViewScoreboardComponent1(parentView, parentIndex);
}

class _ViewScoreboardComponent2 extends import20.EmbeddedView<import2.ScoreboardComponent> {
  late final import21.ViewMaterialButtonComponent0 _compView_0;
  late final dynamic _AcxDarkTheme_0_5;
  late final import22.MaterialButtonComponent _MaterialButtonComponent_0_6;
  late final import23.ViewMaterialIconComponent0 _compView_1;
  late final import24.MaterialIconComponent _MaterialIconComponent_1_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  late final _el_0;
  late final _el_1;
  _ViewScoreboardComponent2(import25.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import21.ViewMaterialButtonComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'scroll-button scroll-forward-button');
    this.addShimC(this._el_0);
    this._AcxDarkTheme_0_5 = (import10.isDevMode
        ? import14.debugInjectorWrap(import26.AcxDarkTheme, () {
            return import26.AcxDarkTheme(((this.parentView!).parentView!).injectorGetOptional(const import16.OpaqueToken<Object>('acxDarkTheme'), (this.parentView!).parentIndex));
          })
        : import26.AcxDarkTheme(((this.parentView!).parentView!).injectorGetOptional(const import16.OpaqueToken<Object>('acxDarkTheme'), (this.parentView!).parentIndex)));
    this._MaterialButtonComponent_0_6 = import22.MaterialButtonComponent(import11.unwrapNode(this._el_0), this._AcxDarkTheme_0_5, this._compView_0, null);
    this._compView_1 = import23.ViewMaterialIconComponent0(this, 1);
    this._el_1 = this._compView_1.rootElement;
    this.addShimC(this._el_1);
    this._MaterialIconComponent_1_5 = import24.MaterialIconComponent(import11.unwrapNode(this._el_1));
    this._compView_1.create(this._MaterialIconComponent_1_5);
    this._compView_0.createAndProject(this._MaterialButtonComponent_0_6, [
      <Object>[this._el_1],
    ]);
    final subscription_0 = this._MaterialButtonComponent_0_6.trigger.listen(this.eventHandler0(_ctx.scrollForward));
    this.initRootNodesAndSubscriptions(import10.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 1)) {
      if (identical(token, import26.AcxDarkTheme)) {
        return this._AcxDarkTheme_0_5;
      }
      if (((identical(token, import22.MaterialButtonComponent) || identical(token, import27.ButtonDirective)) || identical(token, import28.HasDisabled))) {
        return this._MaterialButtonComponent_0_6;
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
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    changed = false;
    final currVal_2 = _ctx.forwardIconType;
    if (import18.checkBinding(this._expr_2, currVal_2, 'forwardIconType', 'package:angulardart_components/scorecard/scoreboard.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialIconComponent_1_5, 'icon', currVal_2);
      }
      this._MaterialIconComponent_1_5.icon = (currVal_2!) /* REF:package:angulardart_components/scorecard/scoreboard.html:1026:1050 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    final currVal_0 = _ctx.atScorecardBarEnd;
    if (import18.checkBinding(this._expr_0, currVal_0, 'atScorecardBarEnd', 'package:angulardart_components/scorecard/scoreboard.html')) {
      import11.updateRenderClass(this._el_0, 'hide', (currVal_0 ?? false)) /* REF:package:angulardart_components/scorecard/scoreboard.html:933:965 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectHostChanges(firstCheck);
    final currVal_1 = import2.ScoreboardComponent.scrollScorecardBarForward;
    if (import18.checkBinding(this._expr_1, currVal_1, 'scrollScorecardBarForward', 'package:angulardart_components/scorecard/scoreboard.html')) {
      import11.updateRenderAttribute(this._el_1, 'aria-label', currVal_1) /* REF:package:angulardart_components/scorecard/scoreboard.html:1070:1115 */;
      this._expr_1 = currVal_1;
    }
    this._compView_0.detectChangesDeprecated();
    this._compView_1.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._compView_1.destroyInternalState();
  }
}

import20.EmbeddedView<void> viewFactory_ScoreboardComponent2(import25.RenderView parentView, int parentIndex) {
  return _ViewScoreboardComponent2(parentView, parentIndex);
}

final List<Object> styles$ScoreboardComponentHost = const [];

class _ViewScoreboardComponentHost0 extends import29.HostView<import2.ScoreboardComponent> {
  @override
  void build() {
    this.componentView = ViewScoreboardComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import10.isDevMode
        ? import14.debugInjectorWrap(import2.ScoreboardComponent, () {
            return import2.ScoreboardComponent(null, this.injectorGet(import15.DomService, this.parentIndex), this.componentView);
          })
        : import2.ScoreboardComponent(null, this.injectorGet(import15.DomService, this.parentIndex), this.componentView));
    this.component.scoreCards = [];
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
    if (((!import18.debugThrowIfChanged) && firstCheck)) {
      this.component.ngOnInit();
    }
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import29.HostView<import2.ScoreboardComponent> viewFactory_ScoreboardComponentHost0() {
  return _ViewScoreboardComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(ScoreboardComponent, createScoreboardComponentFactory());
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
