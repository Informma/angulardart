// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'fixed_material_tab_strip.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/annotations/rtl_annotation.template.dart' as _ref1;
import 'package:angulardart_components/focus/focus_item.template.dart' as _ref2;
import 'package:angulardart_components/focus/focus_list.template.dart' as _ref3;
import 'package:angulardart_components/material_tab/tab_button.template.dart' as _ref4;
import 'package:angulardart_components/material_tab/tab_change_event.template.dart' as _ref5;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref6;
import 'package:angulardart_components/material_tab/fixed_material_tab_strip.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'fixed_material_tab_strip.dart' as import2;
import '../focus/focus_list.template.dart' as import3;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_for.dart' as import5;
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import6;
import 'package:angulardart/src/core/linker/views/view.dart' as import7;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import9;
import 'package:angulardart/src/utilities.dart' as import10;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import11;
import 'package:angulardart/src/di/errors.dart' as import12;

import '../focus/focus_list.dart' as import13;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import14;
import 'package:angulardart/src/devtools.dart' as import15;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/runtime/check_binding.dart' as import17;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import19;

import 'tab_button.template.dart' as import20;
import '../focus/focus_item.template.dart' as import21;
import 'tab_button.dart' as import22;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import23;

import '../focus/focus_item.dart' as import24;
import '../focus/focus.dart' as import25;

import 'dart:core';

import 'package:angulardart/src/core/linker/views/host_view.dart' as import27;
import 'package:angulardart_meta/src/di_tokens.dart' as import28;

final List<Object> styles$FixedMaterialTabStripComponent = [import0.styles];

class ViewFixedMaterialTabStripComponent0 extends import1.ComponentView<import2.FixedMaterialTabStripComponent> {
  bool _query_FocusableItem_0_0_isDirty = true;
  late final import3.FocusListDirectiveNgCd _FocusListDirective_0_5;
  late final ViewContainer _appEl_2;
  late final import5.NgFor _NgFor_2_9;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  late final _el_0;
  late final _el_1;
  static import6.ComponentStyles? _componentStyles;
  ViewFixedMaterialTabStripComponent0(import7.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import9.renderFactory.createElement('material-tab-strip');
  }
  static String? get _debugComponentUrl {
    return (import10.isDevMode ? 'asset:angulardart_components/lib/material_tab/fixed_material_tab_strip.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._el_0 = import11.createRenderElement('div');
    import11.appendRenderChild(parentRenderNode, this._el_0);
    this.updateChildClass(this._el_0, 'navi-bar');
    import11.updateRenderAttribute(this._el_0, 'focusList', '');
    import11.updateRenderAttribute(this._el_0, 'ignoreUpAndDown', '');
    import11.updateRenderAttribute(this._el_0, 'loop', '');
    import11.updateRenderAttribute(this._el_0, 'role', 'tablist');
    this.addShimC(this._el_0);
    this._FocusListDirective_0_5 = import3.FocusListDirectiveNgCd(
      (import10.isDevMode
          ? import12.debugInjectorWrap(import13.FocusListDirective, () {
              return import13.FocusListDirective((this.parentView!).injectorGet(import14.NgZone, this.parentIndex), 'tablist', '');
            })
          : import13.FocusListDirective((this.parentView!).injectorGet(import14.NgZone, this.parentIndex), 'tablist', '')),
    );
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(this._el_0, this._FocusListDirective_0_5.instance);
    }
    this._el_1 = import11.createRenderElement('div');
    import11.appendRenderChild(this._el_0, this._el_1);
    this.updateChildClass(this._el_1, 'tab-indicator');
    this.addShimC(this._el_1);
    final _anchor_2 = import11.createRenderAnchor();
    import11.appendRenderChild(this._el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_FixedMaterialTabStripComponent1);
    this._NgFor_2_9 = import5.NgFor(this._appEl_2, _TemplateRef_2_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_2, this._NgFor_2_9);
    }
    _ctx.focusController = this._FocusListDirective_0_5.instance;
    _ctx.naviBar = import11.unwrapNode(this._el_0);
    import11.addRenderEventListener(parentRenderNode, 'focusout', this.eventHandler1(_ctx.focusOutHandler));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    if (firstCheck) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._FocusListDirective_0_5.instance, 'loop', true);
      }
      this._FocusListDirective_0_5.instance.loop = true /* REF:package:angulardart_components/material_tab/fixed_material_tab_strip.html:275:279 */;
    }
    final currVal_2 = _ctx.tabLabels;
    if (import17.checkBinding(this._expr_2, currVal_2, 'tabLabels', 'package:angulardart_components/material_tab/fixed_material_tab_strip.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._NgFor_2_9, 'ngForOf', currVal_2);
      }
      this._NgFor_2_9.ngForOf = (currVal_2!) /* REF:package:angulardart_components/material_tab/fixed_material_tab_strip.html:389:440 */;
      this._expr_2 = currVal_2;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgFor_2_9.ngDoCheck();
    }
    this._FocusListDirective_0_5.detectHostChanges(this, this._el_0);
    final currVal_1 = _ctx.tabIndicatorTransform;
    if (import17.checkBinding(this._expr_1, currVal_1, 'tabIndicatorTransform', 'package:angulardart_components/material_tab/fixed_material_tab_strip.html')) {
      import11.updateRenderStyle(this._el_1, 'transform', currVal_1) /* REF:package:angulardart_components/material_tab/fixed_material_tab_strip.html:326:367 */;
      this._expr_1 = currVal_1;
    }
    this._appEl_2.detectChangesInNestedViews();
    if ((!import17.debugThrowIfChanged)) {
      if (this._query_FocusableItem_0_0_isDirty) {
        this._FocusListDirective_0_5.instance.listItems = this._appEl_2.mapNestedViewsWithSingleResult((_ViewFixedMaterialTabStripComponent1 nestedView) {
          return nestedView._FocusItemDirective_0_5.instance;
        });
        this._query_FocusableItem_0_0_isDirty = false;
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._FocusListDirective_0_5.instance.ngOnDestroy();
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_3 = import2.FixedMaterialTabStripComponent.hostClass;
    if (import17.checkBinding(this._expr_3, currVal_3, null, null)) {
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
      _componentStyles = (styles = import6.ComponentStyles.scoped(styles$FixedMaterialTabStripComponent, _debugComponentUrl));
      if (import10.isDevMode) {
        import6.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _FixedMaterialTabStripComponentNgFactory = ComponentFactory<import2.FixedMaterialTabStripComponent>('material-tab-strip', viewFactory_FixedMaterialTabStripComponentHost0);
ComponentFactory<import2.FixedMaterialTabStripComponent> get FixedMaterialTabStripComponentNgFactory {
  return _FixedMaterialTabStripComponentNgFactory;
}

ComponentFactory<import2.FixedMaterialTabStripComponent> createFixedMaterialTabStripComponentFactory() {
  return ComponentFactory('material-tab-strip', viewFactory_FixedMaterialTabStripComponentHost0);
}

class _ViewFixedMaterialTabStripComponent1 extends import19.EmbeddedView<import2.FixedMaterialTabStripComponent> {
  late final import20.ViewTabButtonComponent0 _compView_0;
  late final import21.FocusItemDirectiveNgCd _FocusItemDirective_0_5;
  late final import22.TabButtonComponent _TabButtonComponent_0_6;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_4;
  late final _el_0;
  _ViewFixedMaterialTabStripComponent1(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import20.ViewTabButtonComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'tab-button');
    import11.updateRenderAttribute(this._el_0, 'focusItem', '');
    import11.updateRenderAttribute(this._el_0, 'role', 'tab');
    this.addShimC(this._el_0);
    this._FocusItemDirective_0_5 = import21.FocusItemDirectiveNgCd(import24.FocusItemDirective(import11.unwrapNode(this._el_0), this._compView_0, 'tab'));
    this._TabButtonComponent_0_6 = import22.TabButtonComponent(import11.unwrapNode(this._el_0));
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(this._el_0, this._FocusItemDirective_0_5.instance);
    }
    this._compView_0.create(this._TabButtonComponent_0_6);
    import11.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(this._FocusItemDirective_0_5.instance.keydown));
    final subscription_0 = this._TabButtonComponent_0_6.trigger.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import10.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import25.FocusableItem) && (0 == nodeIndex))) {
      return this._FocusItemDirective_0_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_idx = import10.unsafeCast<int>(this.locals['index']);
    final local_tabLabel = this.locals['\$implicit'];
    changed = false;
    if (firstCheck) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._TabButtonComponent_0_6, 'role', 'tab');
      }
      this._TabButtonComponent_0_6.role = 'tab' /* REF:package:angulardart_components/material_tab/fixed_material_tab_strip.html:716:726 */;
      changed = true;
    }
    final currVal_2 = local_tabLabel;
    if (import17.checkBinding(this._expr_2, currVal_2, 'tabLabel', 'package:angulardart_components/material_tab/fixed_material_tab_strip.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._TabButtonComponent_0_6, 'label', currVal_2);
      }
      this._TabButtonComponent_0_6.label = (currVal_2!) /* REF:package:angulardart_components/material_tab/fixed_material_tab_strip.html:659:677 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_4 = (_ctx.activeTabIndex == local_idx);
    if (import17.checkBinding(this._expr_4, currVal_4, 'activeTabIndex == idx', 'package:angulardart_components/material_tab/fixed_material_tab_strip.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._TabButtonComponent_0_6, 'active', currVal_4);
      }
      this._TabButtonComponent_0_6.isActive = (currVal_4!) /* REF:package:angulardart_components/material_tab/fixed_material_tab_strip.html:560:592 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.tabId(local_idx);
    if (import17.checkBinding(this._expr_0, currVal_0, 'tabId(idx)', 'package:angulardart_components/material_tab/fixed_material_tab_strip.html')) {
      this._el_0.setProperty('id', currVal_0) /* REF:package:angulardart_components/material_tab/fixed_material_tab_strip.html:495:512 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.activeStr(local_idx);
    if (import17.checkBinding(this._expr_1, currVal_1, 'activeStr(idx)', 'package:angulardart_components/material_tab/fixed_material_tab_strip.html')) {
      import11.updateRenderAttribute(this._el_0, 'aria-selected', currVal_1) /* REF:package:angulardart_components/material_tab/fixed_material_tab_strip.html:607:644 */;
      this._expr_1 = currVal_1;
    }
    this._FocusItemDirective_0_5.detectHostChanges(this._compView_0, this._el_0);
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void dirtyParentQueriesInternal() {
    import10.unsafeCast<ViewFixedMaterialTabStripComponent0>((this.parentView!))._query_FocusableItem_0_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }

  void _handleEvent_0($event) {
    final local_idx = import10.unsafeCast<int>(this.locals['index']);
    final _ctx = this.ctx;
    _ctx.switchTo(local_idx);
  }
}

import19.EmbeddedView<void> viewFactory_FixedMaterialTabStripComponent1(import23.RenderView parentView, int parentIndex) {
  return _ViewFixedMaterialTabStripComponent1(parentView, parentIndex);
}

final List<Object> styles$FixedMaterialTabStripComponentHost = const [];

class _ViewFixedMaterialTabStripComponentHost0 extends import27.HostView<import2.FixedMaterialTabStripComponent> {
  @override
  void build() {
    this.componentView = ViewFixedMaterialTabStripComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import10.isDevMode
        ? import12.debugInjectorWrap(import2.FixedMaterialTabStripComponent, () {
            return import2.FixedMaterialTabStripComponent(this.componentView, this.injectorGetOptional(const import28.OpaqueToken<Object>('isRtl'), this.parentIndex), this.injectorGet(import14.NgZone, this.parentIndex));
          })
        : import2.FixedMaterialTabStripComponent(this.componentView, this.injectorGetOptional(const import28.OpaqueToken<Object>('isRtl'), this.parentIndex), this.injectorGet(import14.NgZone, this.parentIndex)));
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
    if ((!import17.debugThrowIfChanged)) {
      if (firstCheck) {
        this.component.ngAfterViewInit();
      }
    }
  }
}

import27.HostView<import2.FixedMaterialTabStripComponent> viewFactory_FixedMaterialTabStripComponentHost0() {
  return _ViewFixedMaterialTabStripComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(FixedMaterialTabStripComponent, createFixedMaterialTabStripComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
}
