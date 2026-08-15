// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_tree_group.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angulardart_components/dynamic_component/dynamic_component.template.dart' as _ref2;
import 'package:angulardart_components/focus/keyboard_only_focus_indicator.template.dart' as _ref3;
import 'package:angulardart_components/material_checkbox/material_checkbox.template.dart' as _ref4;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref5;
import 'package:angulardart_components/mixins/material_dropdown_base.template.dart' as _ref6;
import 'package:angulardart_components/model/selection/selection_options.template.dart' as _ref7;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref8;
import 'package:angulardart_components/src/material_tree/material_tree_node.template.dart' as _ref9;
import 'package:angulardart_components/src/material_tree/material_tree_root.template.dart' as _ref10;
import 'package:angulardart_components/src/material_tree/group/material_tree_group.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_tree_group.dart' as import2;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_for.dart' as import4;
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
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import16;

import '../../../button_decorator/button_decorator.template.dart' as import17;
import '../../../focus/keyboard_only_focus_indicator.dart' as import18;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import19;

import '../../../button_decorator/button_decorator.dart' as import20;

import 'package:angulardart/src/di/errors.dart' as import21;

import '../../../utils/browser/dom_service/dom_service.dart' as import22;

import 'package:angulardart/src/runtime/interpolate.dart' as import23;

import '../../../material_checkbox/material_checkbox.template.dart' as import24;
import '../../../material_checkbox/material_checkbox.dart' as import25;
import '../../../interfaces/has_disabled.dart' as import26;
import '../../../material_icon/material_icon.template.dart' as import27;
import '../../../material_icon/material_icon.dart' as import28;
import '../../../dynamic_component/dynamic_component.template.dart' as import29;
import '../../../dynamic_component/dynamic_component.dart' as import30;

import 'package:angulardart/src/core/linker/dynamic_component_loader.dart' as import31;
import 'package:angulardart/src/runtime/text_binding.dart' as import32;

import '../material_tree_root.dart' as import33;
import '../../../mixins/material_dropdown_base.dart' as import34;

import 'package:angulardart_meta/src/di_tokens.dart' as import35;

import 'dart:core';

import '../../../model/selection/selection_options.dart' as import37;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import38;

final List<Object> styles$MaterialTreeGroupComponent = [import0.styles];

class ViewMaterialTreeGroupComponent0<T> extends import1.ComponentView<import2.MaterialTreeGroupComponent<T>> {
  late final ViewContainer _appEl_1;
  late final import4.NgFor _NgFor_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  static import6.ComponentStyles? _componentStyles;
  ViewMaterialTreeGroupComponent0(import7.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import9.renderFactory.createElement('material-tree-group');
  }
  static String? get _debugComponentUrl {
    return (import10.isDevMode ? 'asset:angulardart_components/lib/src/material_tree/group/material_tree_group.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _el_0 = import11.createRenderElement('ul');
    import11.appendRenderChild(parentRenderNode, _el_0);
    this.addShimC(_el_0);
    final _anchor_1 = import11.createRenderAnchor();
    import11.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupComponent1<T>(parentView, parentIndex);
    });
    this._NgFor_1_9 = import4.NgFor(this._appEl_1, _TemplateRef_1_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_1, this._NgFor_1_9);
    }
    final _anchor_2 = import11.createRenderAnchor();
    import11.appendRenderChild(_el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupComponent9<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.visibleGroup;
    if (import14.checkBinding(this._expr_0, currVal_0, 'visibleGroup', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForOf', currVal_0);
      }
      this._NgFor_1_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:230:265 */;
      this._expr_0 = currVal_0;
    }
    if ((!import14.debugThrowIfChanged)) {
      this._NgFor_1_9.ngDoCheck();
    }
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', _ctx.viewMoreLinkVisible);
    }
    this._NgIf_2_9.ngIf = (_ctx.viewMoreLinkVisible ?? false) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:3184:3211 */;
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_1 = import2.MaterialTreeGroupComponent.hostRole;
    if (import14.checkBinding(this._expr_1, currVal_1, null, null)) {
      import11.updateRenderAttribute(this.rootElement, 'role', currVal_1);
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.isMaterialTreeGroup;
    if (import14.checkBinding(this._expr_2, currVal_2, null, null)) {
      import11.updateRenderClass(this.rootElement, 'material-tree-group', (currVal_2 ?? false));
      this._expr_2 = currVal_2;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import6.ComponentStyles.scoped(styles$MaterialTreeGroupComponent, _debugComponentUrl));
      if (import10.isDevMode) {
        import6.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialTreeGroupComponentNgFactory = ComponentFactory<import2.MaterialTreeGroupComponent>('material-tree-group', viewFactory_MaterialTreeGroupComponentHost0);
ComponentFactory<import2.MaterialTreeGroupComponent> get MaterialTreeGroupComponentNgFactory {
  return _MaterialTreeGroupComponentNgFactory;
}

ComponentFactory<import2.MaterialTreeGroupComponent<T>> createMaterialTreeGroupComponentFactory<T>() {
  return ComponentFactory('material-tree-group', viewFactory_MaterialTreeGroupComponentHost0);
}

class _ViewMaterialTreeGroupComponent1<T> extends import16.EmbeddedView<import2.MaterialTreeGroupComponent<T>> {
  late final import17.ButtonDirectiveNgCd _ButtonDirective_0_5;
  late final import18.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_6;
  late final ViewContainer _appEl_3;
  late final NgIf _NgIf_3_9;
  late final ViewContainer _appEl_6;
  late final NgIf _NgIf_6_9;
  late final ViewContainer _appEl_7;
  late final NgIf _NgIf_7_9;
  late final ViewContainer _appEl_10;
  late final NgIf _NgIf_10_9;
  late final ViewContainer _appEl_12;
  late final import4.NgFor _NgFor_12_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  late final _el_0;
  late final _el_1;
  late final _el_2;
  late final _el_4;
  _ViewMaterialTreeGroupComponent1(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import11.createRenderElement('li');
    import11.updateRenderAttribute(this._el_0, 'buttonDecorator', '');
    this.updateChildClass(this._el_0, 'material-tree-option');
    import11.updateRenderAttribute(this._el_0, 'keyboardOnlyFocusIndicator', '');
    this.addShimC(this._el_0);
    this._ButtonDirective_0_5 = import17.ButtonDirectiveNgCd(import20.ButtonDirective(import11.unwrapNode(this._el_0), null));
    this._KeyboardOnlyFocusIndicatorDirective_0_6 = (import10.isDevMode
        ? import21.debugInjectorWrap(import18.KeyboardOnlyFocusIndicatorDirective, () {
            return import18.KeyboardOnlyFocusIndicatorDirective(import11.unwrapNode(this._el_0), ((this.parentView!).parentView!).injectorGet(import22.DomService, (this.parentView!).parentIndex));
          })
        : import18.KeyboardOnlyFocusIndicatorDirective(import11.unwrapNode(this._el_0), ((this.parentView!).parentView!).injectorGet(import22.DomService, (this.parentView!).parentIndex)));
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(this._el_0, this._ButtonDirective_0_5.instance);
      import13.Inspector.instance.registerDirective(this._el_0, this._KeyboardOnlyFocusIndicatorDirective_0_6);
    }
    this._el_1 = import11.createRenderElement('div');
    import11.appendRenderChild(this._el_0, this._el_1);
    this.updateChildClass(this._el_1, 'material-tree-item');
    import11.updateRenderAttribute(this._el_1, 'role', 'treeitem');
    this.addShimC(this._el_1);
    this._el_2 = import11.createRenderElement('div');
    import11.appendRenderChild(this._el_1, this._el_2);
    this.updateChildClass(this._el_2, 'material-tree-shift');
    this.addShimC(this._el_2);
    final _anchor_3 = import11.createRenderAnchor();
    import11.appendRenderChild(this._el_2, _anchor_3);
    this._appEl_3 = ViewContainer(3, 2, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupComponent2<T>(parentView, parentIndex);
    });
    this._NgIf_3_9 = NgIf(this._appEl_3, _TemplateRef_3_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_3, this._NgIf_3_9);
    }
    this._el_4 = import11.createRenderElement('div');
    import11.appendRenderChild(this._el_2, this._el_4);
    this.updateChildClass(this._el_4, 'material-tree-border');
    this.addShimC(this._el_4);
    final _text_5 = import11.createRenderText(' ');
    import11.appendRenderChild(this._el_2, _text_5);
    final _anchor_6 = import11.createRenderAnchor();
    import11.appendRenderChild(this._el_2, _anchor_6);
    this._appEl_6 = ViewContainer(6, 2, this, _anchor_6);
    var _TemplateRef_6_8 = TemplateRef(this._appEl_6, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupComponent5<T>(parentView, parentIndex);
    });
    this._NgIf_6_9 = NgIf(this._appEl_6, _TemplateRef_6_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_6, this._NgIf_6_9);
    }
    final _anchor_7 = import11.createRenderAnchor();
    import11.appendRenderChild(this._el_2, _anchor_7);
    this._appEl_7 = ViewContainer(7, 2, this, _anchor_7);
    var _TemplateRef_7_8 = TemplateRef(this._appEl_7, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupComponent6<T>(parentView, parentIndex);
    });
    this._NgIf_7_9 = NgIf(this._appEl_7, _TemplateRef_7_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_7, this._NgIf_7_9);
    }
    final _text_8 = import11.createRenderText(' ');
    import11.appendRenderChild(this._el_2, _text_8);
    final _text_9 = import11.createRenderText(' ');
    import11.appendRenderChild(this._el_2, _text_9);
    final _anchor_10 = import11.createRenderAnchor();
    import11.appendRenderChild(this._el_2, _anchor_10);
    this._appEl_10 = ViewContainer(10, 2, this, _anchor_10);
    var _TemplateRef_10_8 = TemplateRef(this._appEl_10, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupComponent7<T>(parentView, parentIndex);
    });
    this._NgIf_10_9 = NgIf(this._appEl_10, _TemplateRef_10_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_10, this._NgIf_10_9);
    }
    final _text_11 = import11.createRenderText(' ');
    import11.appendRenderChild(this._el_0, _text_11);
    final _anchor_12 = import11.createRenderAnchor();
    import11.appendRenderChild(this._el_0, _anchor_12);
    this._appEl_12 = ViewContainer(12, 0, this, _anchor_12);
    var _TemplateRef_12_8 = TemplateRef(this._appEl_12, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupComponent8<T>(parentView, parentIndex);
    });
    this._NgFor_12_9 = import4.NgFor(this._appEl_12, _TemplateRef_12_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_12, this._NgFor_12_9);
    }
    import11.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._handleEvent_0));
    import11.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(this._ButtonDirective_0_5.instance.handleKeyPress));
    import11.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_6.keydown));
    import11.addRenderEventListener(this._el_0, 'blur', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_6.resetOutline));
    import11.addRenderEventListener(this._el_0, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_6.onMouseInteraction));
    import11.addRenderEventListener(this._el_0, 'focus', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_6.onFocus));
    final subscription_0 = this._ButtonDirective_0_5.instance.trigger.listen(this.eventHandler1(this._handleEvent_1));
    this.initRootNodesAndSubscriptions(import10.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import20.ButtonDirective) && (nodeIndex <= 12))) {
      return this._ButtonDirective_0_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final local_option = this.locals['\$implicit'];
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_3_9, 'ngIf', _ctx.showCheckbox(local_option));
    }
    this._NgIf_3_9.ngIf = (_ctx.showCheckbox(local_option) ?? false) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:785:813 */;
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_6_9, 'ngIf', _ctx.useComponentRenderer);
    }
    this._NgIf_6_9.ngIf = (_ctx.useComponentRenderer ?? false) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:1644:1672 */;
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_7_9, 'ngIf', (!(_ctx.useComponentRenderer ?? false)));
    }
    this._NgIf_7_9.ngIf = ((!(_ctx.useComponentRenderer ?? false)) ?? false) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:1899:1928 */;
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_10_9, 'ngIf', _ctx.hasChildren(local_option));
    }
    this._NgIf_10_9.ngIf = (_ctx.hasChildren(local_option) ?? false) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:2228:2255 */;
    final currVal_8 = _ctx.getChildGroups(local_option);
    if (import14.checkBinding(this._expr_8, currVal_8, 'getChildGroups(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgFor_12_9, 'ngForOf', currVal_8);
      }
      this._NgFor_12_9.ngForOf = (currVal_8!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:2633:2680 */;
      this._expr_8 = currVal_8;
    }
    if ((!import14.debugThrowIfChanged)) {
      this._NgFor_12_9.ngDoCheck();
    }
    final currVal_0 = _ctx.isSelected(local_option);
    if (import14.checkBinding(this._expr_0, currVal_0, 'isSelected(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      import11.updateRenderClass(this._el_0, 'selected', (currVal_0 ?? false)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:388:425 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.isSelectable(local_option);
    if (import14.checkBinding(this._expr_1, currVal_1, 'isSelectable(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      import11.updateRenderClass(this._el_0, 'selectable', (currVal_1 ?? false)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:432:473 */;
      this._expr_1 = currVal_1;
    }
    this._ButtonDirective_0_5.detectHostChanges(this, this._el_0);
    final currVal_2 = _ctx.getIndent(local_option);
    if (import14.checkBinding(this._expr_2, currVal_2, 'getIndent(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      import11.updateRenderStyle(this._el_1, 'padding-left', currVal_2) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:555:595 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.isSelected(local_option);
    if (import14.checkBinding(this._expr_3, currVal_3, '{{isSelected(option)}}', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      import11.updateRenderAttribute(this._el_1, 'aria-selected', import23.interpolate0(currVal_3)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:630:673 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.fixedPadding;
    if (import14.checkBinding(this._expr_4, currVal_4, 'fixedPadding', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      import11.updateRenderStyle(this._el_2, 'padding-left', currVal_4) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:725:760 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.hasChildren(local_option);
    if (import14.checkBinding(this._expr_5, currVal_5, 'hasChildren(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      import11.updateRenderClass(this._el_4, 'is-parent', (currVal_5 ?? false)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:1383:1422 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.isExpanded(local_option);
    if (import14.checkBinding(this._expr_6, currVal_6, 'isExpanded(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      import11.updateRenderClass(this._el_4, 'is-expanded', (currVal_6 ?? false)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:1436:1476 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = (_ctx.level == 0);
    if (import14.checkBinding(this._expr_7, currVal_7, 'level==0', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      import11.updateRenderClass(this._el_4, 'root-border', (currVal_7 ?? false)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:1490:1520 */;
      this._expr_7 = currVal_7;
    }
    this._appEl_3.detectChangesInNestedViews();
    this._appEl_6.detectChangesInNestedViews();
    this._appEl_7.detectChangesInNestedViews();
    this._appEl_10.detectChangesInNestedViews();
    this._appEl_12.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_3.destroyNestedViews();
    this._appEl_6.destroyNestedViews();
    this._appEl_7.destroyNestedViews();
    this._appEl_10.destroyNestedViews();
    this._appEl_12.destroyNestedViews();
  }

  void _handleEvent_0($event) {
    this._ButtonDirective_0_5.instance.handleClick($event);
    this._KeyboardOnlyFocusIndicatorDirective_0_6.onMouseInteraction();
  }

  void _handleEvent_1($event) {
    final local_option = this.locals['\$implicit'];
    final _ctx = this.ctx;
    _ctx.handleSelectionOrExpansion($event, local_option);
  }
}

import16.EmbeddedView<void> viewFactory_MaterialTreeGroupComponent1<T>(import19.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupComponent1<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupComponent2<T> extends import16.EmbeddedView<import2.MaterialTreeGroupComponent<T>> {
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  _ViewMaterialTreeGroupComponent2(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import11.createRenderElement('div');
    this.updateChildClass(_el_0, 'tree-selection-state');
    this.addShimC(_el_0);
    final _anchor_1 = import11.createRenderAnchor();
    import11.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupComponent3<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import11.createRenderAnchor();
    import11.appendRenderChild(_el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupComponent4<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final local_option = import10.unsafeCast<_ViewMaterialTreeGroupComponent1>((this.parentView!)).locals['\$implicit'];
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.isMultiSelect);
    }
    this._NgIf_1_9.ngIf = (_ctx.isMultiSelect ?? false) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:895:916 */;
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', (((!(_ctx.isMultiSelect ?? false)) ?? false) && (_ctx.isSelected(local_option) ?? false)));
    }
    this._NgIf_2_9.ngIf = ((((!(_ctx.isMultiSelect ?? false)) ?? false) && (_ctx.isSelected(local_option) ?? false)) ?? false) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:1170:1214 */;
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
  }
}

import16.EmbeddedView<void> viewFactory_MaterialTreeGroupComponent2<T>(import19.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupComponent2<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupComponent3<T> extends import16.EmbeddedView<import2.MaterialTreeGroupComponent<T>> {
  late final import24.ViewMaterialCheckboxComponent0 _compView_0;
  late final import25.MaterialCheckboxComponent _MaterialCheckboxComponent_0_5;
  Object? _expr_0;
  Object? _expr_2;
  _ViewMaterialTreeGroupComponent3(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import24.ViewMaterialCheckboxComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'tree-selection-state');
    this.addShimC(_el_0);
    this._MaterialCheckboxComponent_0_5 = import25.MaterialCheckboxComponent(import11.unwrapNode(_el_0), this._compView_0, null, null, null);
    this._compView_0.createAndProject(this._MaterialCheckboxComponent_0_5, [const <Object>[]]);
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import26.HasDisabled) && (0 == nodeIndex))) {
      return this._MaterialCheckboxComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_option = import10.unsafeCast<_ViewMaterialTreeGroupComponent1>(((this.parentView!).parentView!)).locals['\$implicit'];
    changed = false;
    if (firstCheck) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialCheckboxComponent_0_5, 'readOnly', true);
      }
      this._MaterialCheckboxComponent_0_5.readOnly = true /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:970:987 */;
      changed = true;
    }
    final currVal_0 = ((_ctx.isReadOnly ?? false) || (_ctx.showDisabledCheckbox(local_option) ?? false));
    if (import14.checkBinding(this._expr_0, currVal_0, 'isReadOnly || showDisabledCheckbox(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialCheckboxComponent_0_5, 'disabled', currVal_0);
      }
      this._MaterialCheckboxComponent_0_5.disabled = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:1043:1098 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_2 = _ctx.isSelected(local_option);
    if (import14.checkBinding(this._expr_2, currVal_2, 'isSelected(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialCheckboxComponent_0_5, 'checked', currVal_2);
      }
      this._MaterialCheckboxComponent_0_5.checked = (currVal_2!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:1000:1030 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MaterialCheckboxComponent_0_5.ngOnDestroy();
  }
}

import16.EmbeddedView<void> viewFactory_MaterialTreeGroupComponent3<T>(import19.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupComponent3<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupComponent4<T> extends import16.EmbeddedView<import2.MaterialTreeGroupComponent<T>> {
  late final import27.ViewMaterialIconComponent0 _compView_0;
  late final import28.MaterialIconComponent _MaterialIconComponent_0_5;
  _ViewMaterialTreeGroupComponent4(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import27.ViewMaterialIconComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'tree-selection-state');
    import11.updateRenderAttribute(_el_0, 'icon', 'check');
    this.addShimC(_el_0);
    this._MaterialIconComponent_0_5 = import28.MaterialIconComponent(import11.unwrapNode(_el_0));
    this._compView_0.create(this._MaterialIconComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialIconComponent_0_5, 'icon', 'check');
      }
      this._MaterialIconComponent_0_5.icon = 'check' /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:1272:1284 */;
      changed = true;
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

import16.EmbeddedView<void> viewFactory_MaterialTreeGroupComponent4<T>(import19.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupComponent4<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupComponent5<T> extends import16.EmbeddedView<import2.MaterialTreeGroupComponent<T>> {
  late final import29.ViewDynamicComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import30.DynamicComponent _DynamicComponent_0_8;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  _ViewMaterialTreeGroupComponent5(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import29.ViewDynamicComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'item component');
    this.addShimC(_el_0);
    this._appEl_0 = ViewContainer(0, null, this, _el_0);
    this._DynamicComponent_0_8 = (import10.isDevMode
        ? import21.debugInjectorWrap(import30.DynamicComponent, () {
            return import30.DynamicComponent((((this.parentView!).parentView!).parentView!).injectorGet(import31.SlowComponentLoader, ((this.parentView!).parentView!).parentIndex), this._appEl_0);
          })
        : import30.DynamicComponent((((this.parentView!).parentView!).parentView!).injectorGet(import31.SlowComponentLoader, ((this.parentView!).parentView!).parentIndex), this._appEl_0));
    this._compView_0.create(this._DynamicComponent_0_8);
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    final local_option = import10.unsafeCast<_ViewMaterialTreeGroupComponent1>((this.parentView!)).locals['\$implicit'];
    changed = false;
    final currVal_0 = _ctx.getComponentType(local_option);
    if (import14.checkBinding(this._expr_0, currVal_0, 'getComponentType(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'componentType', currVal_0);
      }
      this._DynamicComponent_0_8.componentType = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:1716:1758 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.getComponentFactory(local_option);
    if (import14.checkBinding(this._expr_1, currVal_1, 'getComponentFactory(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'componentFactory', currVal_1);
      }
      this._DynamicComponent_0_8.componentFactory = (currVal_1!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:1769:1817 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = local_option;
    if (import14.checkBinding(this._expr_2, currVal_2, 'option', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'value', currVal_2);
      }
      this._DynamicComponent_0_8.value = (currVal_2!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:1828:1844 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (changed) {
      this._DynamicComponent_0_8.ngAfterChanges();
    }
    this._appEl_0.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._DynamicComponent_0_8.ngOnDestroy();
  }
}

import16.EmbeddedView<void> viewFactory_MaterialTreeGroupComponent5<T>(import19.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupComponent5<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupComponent6<T> extends import16.EmbeddedView<import2.MaterialTreeGroupComponent<T>> {
  final import32.TextBinding _textBinding_1 = import32.TextBinding();
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMaterialTreeGroupComponent6(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import11.createRenderElement('span');
    this.updateChildClass(this._el_0, 'text');
    this.addShimC(this._el_0);
    import11.appendRenderChild(this._el_0, this._textBinding_1.element);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final local_option = import10.unsafeCast<_ViewMaterialTreeGroupComponent1>((this.parentView!)).locals['\$implicit'];
    final currVal_0 = (!(_ctx.showDisabledCheckbox(local_option) ?? false));
    if (import14.checkBinding(this._expr_0, currVal_0, '!showDisabledCheckbox(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      import11.updateRenderClass(this._el_0, 'item', (currVal_0 ?? false)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:1962:2006 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.showDisabledCheckbox(local_option);
    if (import14.checkBinding(this._expr_1, currVal_1, 'showDisabledCheckbox(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      import11.updateRenderClass(this._el_0, 'disabled-item', (currVal_1 ?? false)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:2017:2069 */;
      this._expr_1 = currVal_1;
    }
    this._textBinding_1.updateText(import23.interpolateString0(_ctx.getOptionAsText(local_option))) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:2081:2108 */;
  }
}

import16.EmbeddedView<void> viewFactory_MaterialTreeGroupComponent6<T>(import19.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupComponent6<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupComponent7<T> extends import16.EmbeddedView<import2.MaterialTreeGroupComponent<T>> {
  late final import27.ViewMaterialIconComponent0 _compView_0;
  late final import17.ButtonDirectiveNgCd _ButtonDirective_0_5;
  late final import28.MaterialIconComponent _MaterialIconComponent_0_6;
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMaterialTreeGroupComponent7(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import27.ViewMaterialIconComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import11.updateRenderAttribute(this._el_0, 'buttonDecorator', '');
    this.updateChildClassNonHtml(this._el_0, 'tree-expansion-state');
    this.addShimC(this._el_0);
    this._ButtonDirective_0_5 = import17.ButtonDirectiveNgCd(import20.ButtonDirective(import11.unwrapNode(this._el_0), null));
    this._MaterialIconComponent_0_6 = import28.MaterialIconComponent(import11.unwrapNode(this._el_0));
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(this._el_0, this._ButtonDirective_0_5.instance);
    }
    this._compView_0.create(this._MaterialIconComponent_0_6);
    import11.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._ButtonDirective_0_5.instance.handleClick));
    import11.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(this._ButtonDirective_0_5.instance.handleKeyPress));
    final subscription_0 = this._ButtonDirective_0_5.instance.trigger.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import10.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import20.ButtonDirective) && (0 == nodeIndex))) {
      return this._ButtonDirective_0_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    final local_option = import10.unsafeCast<_ViewMaterialTreeGroupComponent1>((this.parentView!)).locals['\$implicit'];
    changed = false;
    final currVal_1 = (_ctx.isExpanded(local_option) ? 'expand_less' : 'expand_more');
    if (import14.checkBinding(this._expr_1, currVal_1, 'isExpanded(option) ? \'expand_less\' : \'expand_more\'', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialIconComponent_0_6, 'icon', currVal_1);
      }
      this._MaterialIconComponent_0_6.icon = (currVal_1!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:2379:2438 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.isExpanded(local_option);
    if (import14.checkBinding(this._expr_0, currVal_0, 'isExpanded(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      import11.updateRenderClass(this._el_0, 'expanded', (currVal_0 ?? false)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:2331:2368 */;
      this._expr_0 = currVal_0;
    }
    this._ButtonDirective_0_5.detectHostChanges(this._compView_0, this._el_0);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }

  void _handleEvent_0($event) {
    final local_option = import10.unsafeCast<_ViewMaterialTreeGroupComponent1>((this.parentView!)).locals['\$implicit'];
    final _ctx = this.ctx;
    _ctx.handleExpansion($event, local_option);
  }
}

import16.EmbeddedView<void> viewFactory_MaterialTreeGroupComponent7<T>(import19.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupComponent7<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupComponent8<T> extends import16.EmbeddedView<import2.MaterialTreeGroupComponent<T>> {
  late final ViewMaterialTreeGroupComponent0<T> _compView_0;
  late final import2.MaterialTreeGroupComponent<T> _MaterialTreeGroupComponent_0_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  _ViewMaterialTreeGroupComponent8(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = ViewMaterialTreeGroupComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'child-tree');
    this.addShimC(_el_0);
    this._MaterialTreeGroupComponent_0_5 = (import10.isDevMode
        ? import21.debugInjectorWrap(import2.MaterialTreeGroupComponent, () {
            return import2.MaterialTreeGroupComponent((((this.parentView!).parentView!).parentView!).injectorGet(import33.MaterialTreeRoot, ((this.parentView!).parentView!).parentIndex), this._compView_0, (((this.parentView!).parentView!).parentView!).injectorGetOptional(import34.DropdownHandle, ((this.parentView!).parentView!).parentIndex), (((this.parentView!).parentView!).parentView!).injectorGetOptional(const import35.OpaqueToken<Object>('MaterialTreeGroupComponent_materialTreeLeftPaddingToken'), ((this.parentView!).parentView!).parentIndex));
          })
        : import2.MaterialTreeGroupComponent((((this.parentView!).parentView!).parentView!).injectorGet(import33.MaterialTreeRoot, ((this.parentView!).parentView!).parentIndex), this._compView_0, (((this.parentView!).parentView!).parentView!).injectorGetOptional(import34.DropdownHandle, ((this.parentView!).parentView!).parentIndex), (((this.parentView!).parentView!).parentView!).injectorGetOptional(const import35.OpaqueToken<Object>('MaterialTreeGroupComponent_materialTreeLeftPaddingToken'), ((this.parentView!).parentView!).parentIndex)));
    this._compView_0.create(this._MaterialTreeGroupComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    final local_subGroup = import10.unsafeCast<import37.OptionGroup<T>>(this.locals['\$implicit']);
    final local_option = import10.unsafeCast<_ViewMaterialTreeGroupComponent1>((this.parentView!)).locals['\$implicit'];
    final currVal_0 = _ctx.allowParentSingleSelection;
    if (import14.checkBinding(this._expr_0, currVal_0, 'allowParentSingleSelection', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'allowParentSingleSelection', currVal_0);
      }
      this._MaterialTreeGroupComponent_0_5.allowParentSingleSelection = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:2878:2935 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.allowParentMultiSelection;
    if (import14.checkBinding(this._expr_1, currVal_1, 'allowParentMultiSelection', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'allowParentMultiSelection', currVal_1);
      }
      this._MaterialTreeGroupComponent_0_5.allowParentMultiSelection = (currVal_1!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:2948:3003 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.expandAll;
    if (import14.checkBinding(this._expr_2, currVal_2, 'expandAll', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'expandAll', currVal_2);
      }
      this._MaterialTreeGroupComponent_0_5.expandAll = (currVal_2!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:2724:2747 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = local_subGroup;
    if (import14.checkBinding(this._expr_3, currVal_3, 'subGroup', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'group', currVal_3);
      }
      this._MaterialTreeGroupComponent_0_5.group = (currVal_3!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:2760:2778 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = (_ctx.level + 1);
    if (import14.checkBinding(this._expr_4, currVal_4, 'level + 1', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'level', currVal_4);
      }
      this._MaterialTreeGroupComponent_0_5.level = (currVal_4!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:2791:2810 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.showCheckbox(local_option);
    if (import14.checkBinding(this._expr_5, currVal_5, 'showCheckbox(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'parentHasCheckbox', currVal_5);
      }
      this._MaterialTreeGroupComponent_0_5.parentHasCheckbox = (currVal_5!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:2823:2865 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.deselectOnTrigger;
    if (import14.checkBinding(this._expr_6, currVal_6, 'deselectOnTrigger', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'deselectOnTrigger', currVal_6);
      }
      this._MaterialTreeGroupComponent_0_5.deselectOnTrigger = (currVal_6!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:3016:3055 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.maxInitialOptionsShown;
    if (import14.checkBinding(this._expr_7, currVal_7, 'maxInitialOptionsShown', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'maxInitialOptionsShown', currVal_7);
      }
      this._MaterialTreeGroupComponent_0_5.maxInitialOptionsShown = (currVal_7!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:3068:3117 */;
      this._expr_7 = currVal_7;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MaterialTreeGroupComponent_0_5.ngOnDestroy();
  }
}

import16.EmbeddedView<void> viewFactory_MaterialTreeGroupComponent8<T>(import19.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupComponent8<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupComponent9<T> extends import16.EmbeddedView<import2.MaterialTreeGroupComponent<T>> {
  final import32.TextBinding _textBinding_4 = import32.TextBinding();
  late final import17.ButtonDirectiveNgCd _ButtonDirective_3_5;
  Object? _expr_0;
  Object? _expr_1;
  late final _el_1;
  late final _el_2;
  late final _el_3;
  _ViewMaterialTreeGroupComponent9(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    final _el_0 = import11.createRenderElement('li');
    this.addShimC(_el_0);
    this._el_1 = import11.createRenderElement('div');
    import11.appendRenderChild(_el_0, this._el_1);
    this.updateChildClass(this._el_1, 'view-more-link-item');
    this.addShimC(this._el_1);
    this._el_2 = import11.createRenderElement('div');
    import11.appendRenderChild(this._el_1, this._el_2);
    this.updateChildClass(this._el_2, 'material-tree-shift');
    this.addShimC(this._el_2);
    this._el_3 = import11.createRenderElement('a');
    import11.appendRenderChild(this._el_2, this._el_3);
    import11.updateRenderAttribute(this._el_3, 'buttonDecorator', '');
    this.updateChildClass(this._el_3, 'view-more-link');
    import11.updateRenderAttribute(this._el_3, 'href', '#');
    this.addShimC(this._el_3);
    this._ButtonDirective_3_5 = import17.ButtonDirectiveNgCd(import20.ButtonDirective(import11.unwrapNode(this._el_3), null));
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(this._el_3, this._ButtonDirective_3_5.instance);
    }
    import11.appendRenderChild(this._el_3, this._textBinding_4.element);
    import11.addRenderEventListener(this._el_3, 'click', this.eventHandler1(this._ButtonDirective_3_5.instance.handleClick));
    import11.addRenderEventListener(this._el_3, 'keypress', this.eventHandler1(this._ButtonDirective_3_5.instance.handleKeyPress));
    final subscription_0 = this._ButtonDirective_3_5.instance.trigger.listen(this.eventHandler1(_ctx.viewMoreOptions));
    this.initRootNodesAndSubscriptions(import10.unsafeCast(<Object>[_el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import20.ButtonDirective) && ((3 <= nodeIndex) && (nodeIndex <= 4)))) {
      return this._ButtonDirective_3_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.getIndent(_ctx.visibleGroup.last);
    if (import14.checkBinding(this._expr_0, currVal_0, 'getIndent(visibleGroup.last)', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      import11.updateRenderStyle(this._el_1, 'padding-left', currVal_0) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:3259:3310 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.fixedPadding;
    if (import14.checkBinding(this._expr_1, currVal_1, 'fixedPadding', 'package:angulardart_components/src/material_tree/group/material_tree_group.html')) {
      import11.updateRenderStyle(this._el_2, 'padding-left', currVal_1) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:3362:3397 */;
      this._expr_1 = currVal_1;
    }
    this._ButtonDirective_3_5.detectHostChanges(this, this._el_3);
    this._textBinding_4.updateText(import23.interpolateString0(import2.MaterialTreeGroupComponent.viewMoreMsg)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group.html:3538:3553 */;
  }
}

import16.EmbeddedView<void> viewFactory_MaterialTreeGroupComponent9<T>(import19.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupComponent9<T>(parentView, parentIndex);
}

final List<Object> styles$MaterialTreeGroupComponentHost = const [];

class _ViewMaterialTreeGroupComponentHost0<T> extends import38.HostView<import2.MaterialTreeGroupComponent<T>> {
  @override
  void build() {
    this.componentView = ViewMaterialTreeGroupComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import10.isDevMode
        ? import21.debugInjectorWrap(import2.MaterialTreeGroupComponent, () {
            return import2.MaterialTreeGroupComponent(this.injectorGet(import33.MaterialTreeRoot, this.parentIndex), this.componentView, this.injectorGetOptional(import34.DropdownHandle, this.parentIndex), this.injectorGetOptional(const import35.OpaqueToken<Object>('MaterialTreeGroupComponent_materialTreeLeftPaddingToken'), this.parentIndex));
          })
        : import2.MaterialTreeGroupComponent(this.injectorGet(import33.MaterialTreeRoot, this.parentIndex), this.componentView, this.injectorGetOptional(import34.DropdownHandle, this.parentIndex), this.injectorGetOptional(const import35.OpaqueToken<Object>('MaterialTreeGroupComponent_materialTreeLeftPaddingToken'), this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import38.HostView<import2.MaterialTreeGroupComponent<T>> viewFactory_MaterialTreeGroupComponentHost0<T>() {
  return _ViewMaterialTreeGroupComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialTreeGroupComponent, createMaterialTreeGroupComponentFactory());
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
}
