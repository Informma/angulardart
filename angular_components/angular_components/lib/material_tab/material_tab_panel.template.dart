// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_tab_panel.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/material_tab/fixed_material_tab_strip.template.dart' as _ref1;
import 'package:angulardart_components/material_tab/material_tab.template.dart' as _ref2;
import 'package:angulardart_components/material_tab/tab_change_event.template.dart' as _ref3;
import 'package:angulardart_components/material_tab/material_tab_panel.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_tab_panel.dart' as import2;
import 'fixed_material_tab_strip.template.dart' as import3;
import 'fixed_material_tab_strip.dart' as import4;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import5;
import 'package:angulardart/src/core/linker/views/view.dart' as import6;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import8;
import 'package:angulardart/src/utilities.dart' as import9;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import10;
import 'package:angulardart/src/di/errors.dart' as import11;
import 'package:angulardart_meta/src/di_tokens.dart' as import12;

import 'dart:core';

import 'package:angulardart/src/core/zone/ng_zone.dart' as import14;
import 'package:angulardart/src/runtime/check_binding.dart' as import15;
import 'package:angulardart/src/devtools.dart' as import16;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import18;

final List<Object> styles$MaterialTabPanelComponent = [import0.styles];

class ViewMaterialTabPanelComponent0 extends import1.ComponentView<import2.MaterialTabPanelComponent> {
  late final import3.ViewFixedMaterialTabStripComponent0 _compView_0;
  late final import4.FixedMaterialTabStripComponent _FixedMaterialTabStripComponent_0_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialTabPanelComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-tab-panel');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/material_tab/material_tab_panel.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._compView_0 = import3.ViewFixedMaterialTabStripComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import10.appendRenderChild(parentRenderNode, _el_0);
    this.addShimC(_el_0);
    this._FixedMaterialTabStripComponent_0_5 = (import9.isDevMode
        ? import11.debugInjectorWrap(import4.FixedMaterialTabStripComponent, () {
            return import4.FixedMaterialTabStripComponent(this._compView_0, (this.parentView!).injectorGetOptional(const import12.OpaqueToken<Object>('isRtl'), this.parentIndex), (this.parentView!).injectorGet(import14.NgZone, this.parentIndex));
          })
        : import4.FixedMaterialTabStripComponent(this._compView_0, (this.parentView!).injectorGetOptional(const import12.OpaqueToken<Object>('isRtl'), this.parentIndex), (this.parentView!).injectorGet(import14.NgZone, this.parentIndex)));
    this._compView_0.create(this._FixedMaterialTabStripComponent_0_5);
    this.project(parentRenderNode, 0);
    final subscription_0 = this._FixedMaterialTabStripComponent_0_5.beforeTabChange.listen(this.eventHandler1(_ctx.onBeforeTabChange));
    final subscription_1 = this._FixedMaterialTabStripComponent_0_5.tabChange.listen(this.eventHandler1(_ctx.onTabChange));
    this.initSubscriptions([subscription_0, subscription_1]);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    final currVal_0 = _ctx.tabIds;
    if (import15.checkBinding(this._expr_0, currVal_0, 'tabIds', 'package:angulardart_components/material_tab/material_tab_panel.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._FixedMaterialTabStripComponent_0_5, 'tabIds', currVal_0);
      }
      this._FixedMaterialTabStripComponent_0_5.tabIds = (currVal_0!) /* REF:package:angulardart_components/material_tab/material_tab_panel.html:457:474 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.activeTabIndex;
    if (import15.checkBinding(this._expr_1, currVal_1, 'activeTabIndex', 'package:angulardart_components/material_tab/material_tab_panel.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._FixedMaterialTabStripComponent_0_5, 'activeTabIndex', currVal_1);
      }
      this._FixedMaterialTabStripComponent_0_5.activeTabIndex = (currVal_1!) /* REF:package:angulardart_components/material_tab/material_tab_panel.html:239:272 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.tabLabels;
    if (import15.checkBinding(this._expr_2, currVal_2, 'tabLabels', 'package:angulardart_components/material_tab/material_tab_panel.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._FixedMaterialTabStripComponent_0_5, 'tabLabels', currVal_2);
      }
      this._FixedMaterialTabStripComponent_0_5.tabLabels = (currVal_2!) /* REF:package:angulardart_components/material_tab/material_tab_panel.html:413:436 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
    if ((!import15.debugThrowIfChanged)) {
      if (firstCheck) {
        this._FixedMaterialTabStripComponent_0_5.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_3 = import2.MaterialTabPanelComponent.hostClass;
    if (import15.checkBinding(this._expr_3, currVal_3, null, null)) {
      this.updateChildClassNonHtml(this.rootElement, currVal_3);
      this._expr_3 = currVal_3;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialTabPanelComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialTabPanelComponentNgFactory = ComponentFactory<import2.MaterialTabPanelComponent>('material-tab-panel', viewFactory_MaterialTabPanelComponentHost0);
ComponentFactory<import2.MaterialTabPanelComponent> get MaterialTabPanelComponentNgFactory {
  return _MaterialTabPanelComponentNgFactory;
}

ComponentFactory<import2.MaterialTabPanelComponent> createMaterialTabPanelComponentFactory() {
  return ComponentFactory('material-tab-panel', viewFactory_MaterialTabPanelComponentHost0);
}

final List<Object> styles$MaterialTabPanelComponentHost = const [];

class _ViewMaterialTabPanelComponentHost0 extends import18.HostView<import2.MaterialTabPanelComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialTabPanelComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialTabPanelComponent(this.componentView);
    this.component.tabs = [];
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
    if ((!import15.debugThrowIfChanged)) {
      if (firstCheck) {
        this.component.ngAfterContentInit();
      }
    }
    this.componentView.detectChangesDeprecated();
  }
}

import18.HostView<import2.MaterialTabPanelComponent> viewFactory_MaterialTabPanelComponentHost0() {
  return _ViewMaterialTabPanelComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialTabPanelComponent, createMaterialTabPanelComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
}
