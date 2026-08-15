// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'menu_item_groups.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angulardart_components/content/deferred_content.template.dart' as _ref2;
import 'package:angulardart_components/focus/focus.template.dart' as _ref3;
import 'package:angulardart_components/focus/focus_activable_item.template.dart' as _ref4;
import 'package:angulardart_components/focus/focus_trap.template.dart' as _ref5;
import 'package:angulardart_components/highlighted_text/highlighted_text.template.dart' as _ref6;
import 'package:angulardart_components/laminate/enums/alignment.template.dart' as _ref7;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref8;
import 'package:angulardart_components/material_list/material_list.template.dart' as _ref9;
import 'package:angulardart_components/material_menu/material_menu.template.dart' as _ref10;
import 'package:angulardart_components/material_menu/menu_item_affix_list.template.dart' as _ref11;
import 'package:angulardart_components/material_menu/menu_root.template.dart' as _ref12;
import 'package:angulardart_components/material_popup/material_popup.template.dart' as _ref13;
import 'package:angulardart_components/material_select/material_select_item.template.dart' as _ref14;
import 'package:angulardart_components/material_tooltip/material_tooltip.template.dart' as _ref15;
import 'package:angulardart_components/mixins/material_dropdown_base.template.dart' as _ref16;
import 'package:angulardart_components/model/a11y/active_item.template.dart' as _ref17;
import 'package:angulardart_components/model/a11y/active_item_directive.template.dart' as _ref18;
import 'package:angulardart_components/model/action/delayed_action.template.dart' as _ref19;
import 'package:angulardart_components/model/menu/menu.template.dart' as _ref20;
import 'package:angulardart_components/model/menu/selectable_menu.template.dart' as _ref21;
import 'package:angulardart_components/model/selection/select.template.dart' as _ref22;
import 'package:angulardart_components/model/selection/selection_model.template.dart' as _ref23;
import 'package:angulardart_components/model/ui/highlighted_text_model.template.dart' as _ref24;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref25;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref26;
import 'package:angulardart_components/utils/id_generator/id_generator.template.dart' as _ref27;
import 'package:angulardart_components/material_menu/menu_item_groups.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'menu_item_groups.dart' as import2;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_for.dart' as import4;
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import5;
import 'package:angulardart/src/core/linker/views/view.dart' as import6;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import8;
import 'package:angulardart/src/utilities.dart' as import9;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import10;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import12;
import 'package:angulardart/src/runtime/check_binding.dart' as import13;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import15;
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/views/render_view.dart' as import17;
import 'package:angulardart/src/runtime/text_binding.dart' as import18;

import '../button_decorator/button_decorator.template.dart' as import19;
import '../button_decorator/button_decorator.dart' as import20;

import 'package:angulardart/src/runtime/interpolate.dart' as import21;

import '../material_icon/material_icon.template.dart' as import22;
import '../material_icon/material_icon.dart' as import23;

import 'package:angulardart/src/di/errors.dart' as import24;

import '../src/material_tooltip/tooltip_controller.dart' as import25;
import '../material_tooltip/module.dart' as import26;
import '../utils/disposer/disposer.dart' as import27;
import '../material_select/material_select_item.template.dart' as import28;
import '../model/a11y/active_item_directive.template.dart' as import29;
import '../focus/focus.dart' as import30;
import '../focus/focus_activable_item.dart' as import31;
import '../src/material_tooltip/tooltip.dart' as import32;
import '../material_select/material_select_item.dart' as import33;

import 'package:angulardart/src/common/directives/ng_class.dart' as import34;

import '../src/laminate/popup/popup_source_directive.dart' as import35;
import '../model/a11y/active_item_directive.dart' as import36;
import '../utils/browser/dom_service/dom_service.dart' as import37;
import '../laminate/components/modal/modal.dart' as import38;
import '../src/laminate/popup/popup_ref.dart' as import39;
import '../src/laminate/popup/dom_popup_source.dart' as import40;

import 'package:angulardart_components/src/dom/dom_apis.dart' as import41;

import '../mixins/material_dropdown_base.dart' as import42;
import '../material_select/activation_handler.dart' as import43;

import 'package:angulardart/src/core/linker/element_ref.dart';

import '../utils/angular/reference/reference.dart' as import45;
import '../focus/focus_interface.dart' as import46;
import '../model/selection/selection_container.dart' as import47;
import '../interfaces/has_disabled.dart' as import48;
import '../model/ui/has_renderer.dart' as import49;

import 'dart:core';

import '../highlighted_text/highlighted_text.template.dart' as import51;
import '../highlighted_text/highlighted_text.dart' as import52;
import 'menu_item_affix_list.template.dart' as import53;
import 'menu_item_affix_list.dart' as import54;
import '../material_popup/material_popup.dart' as import55;
import '../material_popup/material_popup.template.dart' as import56;
import '../focus/focus_trap.template.dart' as import57;
import '../focus/focus_trap.dart' as import58;
import '../content/deferred_content.dart' as import59;
import '../src/laminate/popup/popup_hierarchy.dart' as import60;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import61;

import '../src/laminate/overlay/overlay_service.dart' as import62;
import '../laminate/overlay/zindexer.dart' as import63;

import 'package:angulardart_meta/src/di_tokens.dart' as import64;
import 'package:angulardart_components/laminate/enums/alignment.dart' as import65;

import '../src/laminate/popup/popup_size_provider.dart' as import66;
import '../content/deferred_content_aware.dart' as import67;

import 'package:angulardart/src/runtime/queries.dart' as import68;

import '../material_list/material_list.template.dart' as import69;
import '../material_list/material_list.dart' as import70;
import 'common/menu_root.dart' as import71;
import '../utils/id_generator/id_generator.dart' as import72;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import73;

final List<Object> styles$MenuItemGroupsComponent = [import0.styles];

class ViewMenuItemGroupsComponent0 extends import1.ComponentView<import2.MenuItemGroupsComponent> {
  bool _viewQuery_FocusableActivateItem_0_isDirty = true;
  late final ViewContainer _appEl_1;
  late final import4.NgFor _NgFor_1_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  static import5.ComponentStyles? _componentStyles;
  ViewMenuItemGroupsComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('menu-item-groups');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/material_menu/menu_item_groups.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _text_0 = import10.createRenderText('\n');
    import10.appendRenderChild(parentRenderNode, _text_0);
    final _anchor_1 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_1);
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MenuItemGroupsComponent1);
    this._NgFor_1_9 = import4.NgFor(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgFor_1_9);
    }
    final _text_2 = import10.createRenderText('\n');
    import10.appendRenderChild(parentRenderNode, _text_2);
    import10.addRenderEventListener(parentRenderNode, 'mouseover', this.eventHandler1(_ctx.onMouseOver));
    import10.addRenderEventListener(parentRenderNode, 'mouseout', this.eventHandler1(_ctx.onMouseOut));
    import10.addRenderEventListener(parentRenderNode, 'mousemove', this.eventHandler1(_ctx.onMouseMove));
    import10.addRenderEventListener(parentRenderNode, 'keydown', this.eventHandler1(_ctx.handleKeydown));
    import10.addRenderEventListener(parentRenderNode, 'focus', this.eventHandler1(_ctx.onFocus));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.menu.itemGroups;
    if (import13.checkBinding(this._expr_0, currVal_0, 'menu.itemGroups', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForOf', currVal_0);
      }
      this._NgFor_1_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:271:323 */;
      this._expr_0 = currVal_0;
    }
    if ((!import13.debugThrowIfChanged)) {
      this._NgFor_1_9.ngDoCheck();
    }
    this._appEl_1.detectChangesInNestedViews();
    if ((!import13.debugThrowIfChanged)) {
      if (this._viewQuery_FocusableActivateItem_0_isDirty) {
        _ctx.focusableItems = this._appEl_1.mapNestedViews((_ViewMenuItemGroupsComponent1 nestedView) {
          return nestedView._appEl_4.mapNestedViews((_ViewMenuItemGroupsComponent4 nestedView) {
            return nestedView._appEl_1.mapNestedViews((_ViewMenuItemGroupsComponent5 nestedView) {
              return nestedView._appEl_1.mapNestedViewsWithSingleResult((_ViewMenuItemGroupsComponent6 nestedView) {
                return nestedView._FocusActivableItemDirective_1_10;
              });
            });
          });
        });
        this._viewQuery_FocusableActivateItem_0_isDirty = false;
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_1 = _ctx.isMouseDriven;
    if (import13.checkBinding(this._expr_1, currVal_1, null, null)) {
      import10.updateRenderClass(this.rootElement, 'mouse-driven', (currVal_1 ?? false));
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.isKeyboardDriven;
    if (import13.checkBinding(this._expr_2, currVal_2, null, null)) {
      import10.updateRenderClass(this.rootElement, 'keyboard-driven', (currVal_2 ?? false));
      this._expr_2 = currVal_2;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MenuItemGroupsComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MenuItemGroupsComponentNgFactory = ComponentFactory<import2.MenuItemGroupsComponent>('menu-item-groups', viewFactory_MenuItemGroupsComponentHost0);
ComponentFactory<import2.MenuItemGroupsComponent> get MenuItemGroupsComponentNgFactory {
  return _MenuItemGroupsComponentNgFactory;
}

ComponentFactory<import2.MenuItemGroupsComponent> createMenuItemGroupsComponentFactory() {
  return ComponentFactory('menu-item-groups', viewFactory_MenuItemGroupsComponentHost0);
}

class _ViewMenuItemGroupsComponent1 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMenuItemGroupsComponent1(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import10.createRenderElement('div');
    this.updateChildClass(this._el_0, 'group');
    import10.updateRenderAttribute(this._el_0, 'group', '');
    import10.updateRenderAttribute(this._el_0, 'role', 'menu');
    this.addShimC(this._el_0);
    final _text_1 = import10.createRenderText('\n  ');
    import10.appendRenderChild(this._el_0, _text_1);
    final _anchor_2 = import10.createRenderAnchor();
    import10.appendRenderChild(this._el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MenuItemGroupsComponent2);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _text_3 = import10.createRenderText('\n  ');
    import10.appendRenderChild(this._el_0, _text_3);
    final _anchor_4 = import10.createRenderAnchor();
    import10.appendRenderChild(this._el_0, _anchor_4);
    this._appEl_4 = ViewContainer(4, 0, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_MenuItemGroupsComponent4);
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
    final _text_5 = import10.createRenderText('\n');
    import10.appendRenderChild(this._el_0, _text_5);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final local_group = this.locals['\$implicit'];
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', local_group.hasLabel);
    }
    this._NgIf_2_9.ngIf = (local_group.hasLabel ?? false) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:420:442 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', (((!(local_group.isCollapsible ?? false)) ?? false) || (local_group.isExpanded ?? false)));
    }
    this._NgIf_4_9.ngIf = ((((!(local_group.isCollapsible ?? false)) ?? false) || (local_group.isExpanded ?? false)) ?? false) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1055:1104 */;
    final currVal_0 = local_group.hasSeparator;
    if (import13.checkBinding(this._expr_0, currVal_0, 'group.hasSeparator', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderClass(this._el_0, 'has-separator', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:329:371 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = local_group.hasLabel;
    if (import13.checkBinding(this._expr_1, currVal_1, 'group.hasLabel', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderClass(this._el_0, 'has-label', (currVal_1 ?? false)) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:377:411 */;
      this._expr_1 = currVal_1;
    }
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent1(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent1(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent2 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  final import18.TextBinding _textBinding_4 = import18.TextBinding();
  late final import19.ButtonDirectiveNgCd _ButtonDirective_0_5;
  late final ViewContainer _appEl_7;
  late final NgIf _NgIf_7_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  late final _el_0;
  _ViewMenuItemGroupsComponent2(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import10.createRenderElement('div');
    import10.updateRenderAttribute(this._el_0, 'buttonDecorator', '');
    this.updateChildClass(this._el_0, 'group-header');
    this.addShimC(this._el_0);
    this._ButtonDirective_0_5 = import19.ButtonDirectiveNgCd(import20.ButtonDirective(import10.unwrapNode(this._el_0), null));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_0, this._ButtonDirective_0_5.instance);
    }
    final _text_1 = import10.createRenderText('\n    ');
    import10.appendRenderChild(this._el_0, _text_1);
    final _el_2 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_0, _el_2);
    this.updateChildClass(_el_2, 'group-label');
    this.addShimC(_el_2);
    final _text_3 = import10.createRenderText('\n      ');
    import10.appendRenderChild(_el_2, _text_3);
    import10.appendRenderChild(_el_2, this._textBinding_4.element);
    final _text_5 = import10.createRenderText('\n    ');
    import10.appendRenderChild(_el_2, _text_5);
    final _text_6 = import10.createRenderText('\n    ');
    import10.appendRenderChild(this._el_0, _text_6);
    final _anchor_7 = import10.createRenderAnchor();
    import10.appendRenderChild(this._el_0, _anchor_7);
    this._appEl_7 = ViewContainer(7, 0, this, _anchor_7);
    var _TemplateRef_7_8 = TemplateRef(this._appEl_7, viewFactory_MenuItemGroupsComponent3);
    this._NgIf_7_9 = NgIf(this._appEl_7, _TemplateRef_7_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_7, this._NgIf_7_9);
    }
    final _text_8 = import10.createRenderText('\n  ');
    import10.appendRenderChild(this._el_0, _text_8);
    import10.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._ButtonDirective_0_5.instance.handleClick));
    import10.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(this._ButtonDirective_0_5.instance.handleKeyPress));
    final subscription_0 = this._ButtonDirective_0_5.instance.trigger.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import20.ButtonDirective) && (nodeIndex <= 8))) {
      return this._ButtonDirective_0_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final local_group = import9.unsafeCast<_ViewMenuItemGroupsComponent1>((this.parentView!)).locals['\$implicit'];
    final currVal_2 = (local_group.isCollapsible ? 'button' : 'none');
    if (import13.checkBinding(this._expr_2, currVal_2, 'group.isCollapsible ? \'button\' : \'none\'', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._ButtonDirective_0_5.instance, 'role', currVal_2);
      }
      this._ButtonDirective_0_5.instance.role = (currVal_2!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:501:549 */;
      this._expr_2 = currVal_2;
    }
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_7_9, 'ngIf', local_group.isCollapsible);
    }
    this._NgIf_7_9.ngIf = (local_group.isCollapsible ?? false) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:843:870 */;
    final currVal_0 = (local_group.isCollapsible ? local_group.isExpanded.toString() : null);
    if (import13.checkBinding(this._expr_0, currVal_0, 'group.isCollapsible ? group.isExpanded.toString() : null', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderAttribute(this._el_0, 'aria-expanded', currVal_0?.toString()) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:557:636 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = local_group.isCollapsible;
    if (import13.checkBinding(this._expr_1, currVal_1, 'group.isCollapsible', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderClass(this._el_0, 'is-collapsible', (currVal_1 ?? false)) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:644:688 */;
      this._expr_1 = currVal_1;
    }
    this._ButtonDirective_0_5.detectHostChanges(this, this._el_0);
    this._appEl_7.detectChangesInNestedViews();
    this._textBinding_4.updateText(import21.interpolate0(local_group.uiDisplayName)) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:781:804 */;
  }

  @override
  void destroyInternal() {
    this._appEl_7.destroyNestedViews();
  }

  void _handleEvent_0($event) {
    final local_group = import9.unsafeCast<_ViewMenuItemGroupsComponent1>((this.parentView!)).locals['\$implicit'];
    final _ctx = this.ctx;
    _ctx.toggleExpansionIfCollapsible(local_group);
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent2(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent2(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent3 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  late final import22.ViewMaterialIconComponent0 _compView_0;
  late final import23.MaterialIconComponent _MaterialIconComponent_0_5;
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMenuItemGroupsComponent3(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import22.ViewMaterialIconComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'expansion-icon');
    this.addShimC(this._el_0);
    this._MaterialIconComponent_0_5 = import23.MaterialIconComponent(import10.unwrapNode(this._el_0));
    this._compView_0.create(this._MaterialIconComponent_0_5);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    final local_group = import9.unsafeCast<_ViewMenuItemGroupsComponent1>(((this.parentView!).parentView!)).locals['\$implicit'];
    changed = false;
    final currVal_1 = (local_group.isExpanded ? 'expand_less' : 'expand_more');
    if (import13.checkBinding(this._expr_1, currVal_1, 'group.isExpanded ? \'expand_less\' : \'expand_more\'', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialIconComponent_0_5, 'icon', currVal_1);
      }
      this._MaterialIconComponent_0_5.icon = (currVal_1!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:954:1011 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_0 = local_group.isExpanded;
    if (import13.checkBinding(this._expr_0, currVal_0, 'group.isExpanded', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderClass(this._el_0, 'expanded', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:910:945 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent3(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent3(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent4 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  late final ViewContainer _appEl_1;
  late final import4.NgFor _NgFor_1_9;
  Object? _expr_0;
  _ViewMenuItemGroupsComponent4(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _text_0 = import10.createRenderText('\n    ');
    final _anchor_1 = import10.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MenuItemGroupsComponent5);
    this._NgFor_1_9 = import4.NgFor(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgFor_1_9);
    }
    final _text_2 = import10.createRenderText('\n  ');
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_text_0, this._appEl_1, _text_2]), null);
  }

  @override
  void detectChangesInternal() {
    final local_group = import9.unsafeCast<_ViewMenuItemGroupsComponent1>((this.parentView!)).locals['\$implicit'];
    final currVal_0 = local_group;
    if (import13.checkBinding(this._expr_0, currVal_0, 'group', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForOf', currVal_0);
      }
      this._NgFor_1_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1135:1152 */;
      this._expr_0 = currVal_0;
    }
    if ((!import13.debugThrowIfChanged)) {
      this._NgFor_1_9.ngDoCheck();
    }
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent4(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent4(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent5 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  _ViewMenuItemGroupsComponent5(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _text_0 = import10.createRenderText('\n      ');
    final _anchor_1 = import10.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MenuItemGroupsComponent6);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _text_2 = import10.createRenderText('\n    ');
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_text_0, this._appEl_1, _text_2]), null);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final local_item = this.locals['\$implicit'];
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.isItemVisible(local_item));
    }
    this._NgIf_1_9.ngIf = (_ctx.isItemVisible(local_item) ?? false) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1184:1212 */;
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent5(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent5(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent6 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  late dynamic _TooltipController_1_19 = (import9.isDevMode
      ? import24.debugInjectorWrap(import25.TooltipController, () {
          return import26.createTooltipController(((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import25.TooltipController, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import27.Disposer, (((this.parentView!).parentView!).parentView!).parentIndex));
        })
      : import26.createTooltipController(((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import25.TooltipController, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import27.Disposer, (((this.parentView!).parentView!).parentView!).parentIndex)));
  late final import28.ViewMaterialSelectItemComponent0 _compView_1;
  late final ViewContainer _appEl_1;
  late final import29.ActiveItemDirectiveNgCd _ActiveItemDirective_1_8;
  late final import30.AutoFocusDirective _AutoFocusDirective_1_9;
  late final import31.FocusActivableItemDirective _FocusActivableItemDirective_1_10;
  late final import32.MaterialTooltipDirective _MaterialTooltipDirective_1_11;
  late final import33.MaterialSelectItemComponent _MaterialSelectItemComponent_1_12;
  late final import34.NgClass _NgClass_1_13;
  late final import35.PopupSourceDirective _PopupSourceDirective_1_14;
  late final ViewContainer _appEl_3;
  late final NgIf _NgIf_3_9;
  late final ViewContainer _appEl_7;
  late final NgIf _NgIf_7_9;
  late final ViewContainer _appEl_9;
  late final NgIf _NgIf_9_9;
  late final ViewContainer _appEl_11;
  late final NgIf _NgIf_11_9;
  late final ViewContainer _appEl_14;
  late final NgIf _NgIf_14_9;
  late final ViewContainer _appEl_16;
  late final NgIf _NgIf_16_9;
  late final ViewContainer _appEl_19;
  late final NgIf _NgIf_19_9;
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
  Object? _expr_10;
  Object? _expr_11;
  Object? _expr_12;
  Object? _expr_13;
  Object? _expr_14;
  Object? _expr_15;
  Object? _expr_16;
  Object? _expr_17;
  Object? _expr_20;
  Object? _expr_21;
  Object? _expr_23;
  late final _el_1;
  _ViewMenuItemGroupsComponent6(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _text_0 = import10.createRenderText('\n        ');
    this._compView_1 = import28.ViewMaterialSelectItemComponent0(this, 1);
    this._el_1 = this._compView_1.rootElement;
    this.updateChildClassNonHtml(this._el_1, 'menu-item');
    import10.updateRenderAttribute(this._el_1, 'popupSource', '');
    this.addShimC(this._el_1);
    this._appEl_1 = ViewContainer(1, null, this, this._el_1);
    this._ActiveItemDirective_1_8 = import29.ActiveItemDirectiveNgCd(
      (import9.isDevMode
          ? import24.debugInjectorWrap(import36.ActiveItemDirective, () {
              return import36.ActiveItemDirective(import10.unwrapNode(this._el_1), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import37.DomService, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import38.Modal, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import39.PopupRef, (((this.parentView!).parentView!).parentView!).parentIndex));
            })
          : import36.ActiveItemDirective(import10.unwrapNode(this._el_1), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import37.DomService, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import38.Modal, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import39.PopupRef, (((this.parentView!).parentView!).parentView!).parentIndex))),
    );
    this._AutoFocusDirective_1_9 = (import9.isDevMode
        ? import24.debugInjectorWrap(import30.AutoFocusDirective, () {
            return import30.AutoFocusDirective(import10.unwrapNode(this._el_1), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import37.DomService, (((this.parentView!).parentView!).parentView!).parentIndex), null, ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import38.ModalComponent, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import39.PopupRef, (((this.parentView!).parentView!).parentView!).parentIndex));
          })
        : import30.AutoFocusDirective(import10.unwrapNode(this._el_1), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import37.DomService, (((this.parentView!).parentView!).parentView!).parentIndex), null, ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import38.ModalComponent, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import39.PopupRef, (((this.parentView!).parentView!).parentView!).parentIndex)));
    this._FocusActivableItemDirective_1_10 = import31.FocusActivableItemDirective(import10.unwrapNode(this._el_1));
    this._MaterialTooltipDirective_1_11 = (import9.isDevMode
        ? import24.debugInjectorWrap(import32.MaterialTooltipDirective, () {
            return import32.MaterialTooltipDirective(((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import40.DomPopupSourceFactory, (((this.parentView!).parentView!).parentView!).parentIndex), this._appEl_1, import10.unwrapNode(this._el_1), this._appEl_1, this._compView_1, ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import41.Window, (((this.parentView!).parentView!).parentView!).parentIndex), null, null);
          })
        : import32.MaterialTooltipDirective(((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import40.DomPopupSourceFactory, (((this.parentView!).parentView!).parentView!).parentIndex), this._appEl_1, import10.unwrapNode(this._el_1), this._appEl_1, this._compView_1, ((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import41.Window, (((this.parentView!).parentView!).parentView!).parentIndex), null, null));
    this._MaterialSelectItemComponent_1_12 = (import9.isDevMode
        ? import24.debugInjectorWrap(import33.MaterialSelectItemComponent, () {
            return import33.MaterialSelectItemComponent(import10.unwrapNode(this._el_1), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import42.DropdownHandle, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import43.ActivationHandler, (((this.parentView!).parentView!).parentView!).parentIndex), this._compView_1, null);
          })
        : import33.MaterialSelectItemComponent(import10.unwrapNode(this._el_1), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import42.DropdownHandle, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import43.ActivationHandler, (((this.parentView!).parentView!).parentView!).parentIndex), this._compView_1, null));
    this._NgClass_1_13 = import34.NgClass(ElementRef(import10.unwrapNode(this._el_1)));
    this._PopupSourceDirective_1_14 = (import9.isDevMode
        ? import24.debugInjectorWrap(import35.PopupSourceDirective, () {
            return import35.PopupSourceDirective(((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import40.DomPopupSourceFactory, (((this.parentView!).parentView!).parentView!).parentIndex), import10.unwrapNode(this._el_1), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import45.ReferenceDirective, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import46.Focusable, (((this.parentView!).parentView!).parentView!).parentIndex), null);
          })
        : import35.PopupSourceDirective(((((this.parentView!).parentView!).parentView!).parentView!).injectorGet(import40.DomPopupSourceFactory, (((this.parentView!).parentView!).parentView!).parentIndex), import10.unwrapNode(this._el_1), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import45.ReferenceDirective, (((this.parentView!).parentView!).parentView!).parentIndex), ((((this.parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import46.Focusable, (((this.parentView!).parentView!).parentView!).parentIndex), null));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_1, this._ActiveItemDirective_1_8.instance);
      import12.Inspector.instance.registerDirective(this._el_1, this._AutoFocusDirective_1_9);
      import12.Inspector.instance.registerDirective(this._el_1, this._FocusActivableItemDirective_1_10);
      import12.Inspector.instance.registerDirective(this._el_1, this._MaterialTooltipDirective_1_11);
      import12.Inspector.instance.registerDirective(this._el_1, this._NgClass_1_13);
      import12.Inspector.instance.registerDirective(this._el_1, this._PopupSourceDirective_1_14);
    }
    final _text_2 = import10.createRenderText('\n          ');
    final _anchor_3 = import10.createRenderAnchor();
    this._appEl_3 = ViewContainer(3, 1, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, viewFactory_MenuItemGroupsComponent7);
    this._NgIf_3_9 = NgIf(this._appEl_3, _TemplateRef_3_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_3, this._NgIf_3_9);
    }
    final _text_4 = import10.createRenderText('\n          ');
    final _el_5 = import10.createRenderElement('span');
    this.updateChildClass(_el_5, 'menu-item-label-section');
    this.addShimC(_el_5);
    final _text_6 = import10.createRenderText('\n            ');
    import10.appendRenderChild(_el_5, _text_6);
    final _anchor_7 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_5, _anchor_7);
    this._appEl_7 = ViewContainer(7, 5, this, _anchor_7);
    var _TemplateRef_7_8 = TemplateRef(this._appEl_7, viewFactory_MenuItemGroupsComponent8);
    this._NgIf_7_9 = NgIf(this._appEl_7, _TemplateRef_7_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_7, this._NgIf_7_9);
    }
    final _text_8 = import10.createRenderText('\n            ');
    import10.appendRenderChild(_el_5, _text_8);
    final _anchor_9 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_5, _anchor_9);
    this._appEl_9 = ViewContainer(9, 5, this, _anchor_9);
    var _TemplateRef_9_8 = TemplateRef(this._appEl_9, viewFactory_MenuItemGroupsComponent10);
    this._NgIf_9_9 = NgIf(this._appEl_9, _TemplateRef_9_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_9, this._NgIf_9_9);
    }
    final _text_10 = import10.createRenderText('\n            ');
    import10.appendRenderChild(_el_5, _text_10);
    final _anchor_11 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_5, _anchor_11);
    this._appEl_11 = ViewContainer(11, 5, this, _anchor_11);
    var _TemplateRef_11_8 = TemplateRef(this._appEl_11, viewFactory_MenuItemGroupsComponent12);
    this._NgIf_11_9 = NgIf(this._appEl_11, _TemplateRef_11_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_11, this._NgIf_11_9);
    }
    final _text_12 = import10.createRenderText('\n          ');
    import10.appendRenderChild(_el_5, _text_12);
    final _text_13 = import10.createRenderText('\n          ');
    final _anchor_14 = import10.createRenderAnchor();
    this._appEl_14 = ViewContainer(14, 1, this, _anchor_14);
    var _TemplateRef_14_8 = TemplateRef(this._appEl_14, viewFactory_MenuItemGroupsComponent13);
    this._NgIf_14_9 = NgIf(this._appEl_14, _TemplateRef_14_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_14, this._NgIf_14_9);
    }
    final _text_15 = import10.createRenderText('\n          ');
    final _anchor_16 = import10.createRenderAnchor();
    this._appEl_16 = ViewContainer(16, 1, this, _anchor_16);
    var _TemplateRef_16_8 = TemplateRef(this._appEl_16, viewFactory_MenuItemGroupsComponent14);
    this._NgIf_16_9 = NgIf(this._appEl_16, _TemplateRef_16_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_16, this._NgIf_16_9);
    }
    final _text_17 = import10.createRenderText('\n        ');
    this._compView_1.createAndProject(this._MaterialSelectItemComponent_1_12, [
      <Object>[_text_2, this._appEl_3, _text_4, _el_5, _text_13, this._appEl_14, _text_15, this._appEl_16, _text_17],
    ]);
    final _text_18 = import10.createRenderText('\n        ');
    final _anchor_19 = import10.createRenderAnchor();
    this._appEl_19 = ViewContainer(19, null, this, _anchor_19);
    var _TemplateRef_19_8 = TemplateRef(this._appEl_19, viewFactory_MenuItemGroupsComponent15);
    this._NgIf_19_9 = NgIf(this._appEl_19, _TemplateRef_19_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_19, this._NgIf_19_9);
    }
    final _text_20 = import10.createRenderText('\n      ');
    import10.addRenderEventListener(this._el_1, 'mouseenter', this.eventHandler0(this._ActiveItemDirective_1_8.instance.onMouseEnter));
    import10.addRenderEventListener(this._el_1, 'mouseleave', this.eventHandler0(this._ActiveItemDirective_1_8.instance.onMouseLeave));
    final subscription_0 = this._MaterialSelectItemComponent_1_12.trigger.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_text_0, this._appEl_1, _text_18, this._appEl_19, _text_20]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((1 <= nodeIndex) && (nodeIndex <= 17))) {
      if (identical(token, import31.FocusableActivateItem)) {
        return this._FocusActivableItemDirective_1_10;
      }
      if (((identical(token, import47.SelectionItem) || identical(token, import48.HasDisabled)) || identical(token, import49.HasRenderer))) {
        return this._MaterialSelectItemComponent_1_12;
      }
      if (identical(token, import25.TooltipController)) {
        return this._TooltipController_1_19;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_i = import9.unsafeCast<int>(import9.unsafeCast<_ViewMenuItemGroupsComponent1>((((this.parentView!).parentView!).parentView!)).locals['index']);
    final local_j = import9.unsafeCast<int>(import9.unsafeCast<_ViewMenuItemGroupsComponent5>((this.parentView!)).locals['index']);
    final local_item = import9.unsafeCast<_ViewMenuItemGroupsComponent5>((this.parentView!)).locals['\$implicit'];
    final local_group = import9.unsafeCast<_ViewMenuItemGroupsComponent1>((((this.parentView!).parentView!).parentView!)).locals['\$implicit'];
    final currVal_9 = _ctx.isItemActive(local_item);
    if (import13.checkBinding(this._expr_9, currVal_9, 'isItemActive(item)', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._ActiveItemDirective_1_8.instance, 'itemActive', currVal_9);
      }
      this._ActiveItemDirective_1_8.instance.itemActive = (currVal_9!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2240:2273 */;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.hasAutoFocus((_ctx.activeModel.id(local_item)!));
    if (import13.checkBinding(this._expr_10, currVal_10, 'hasAutoFocus(activeModel.id(item)!)', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._AutoFocusDirective_1_9, 'autoFocus', currVal_10);
      }
      this._AutoFocusDirective_1_9.autoFocus = (currVal_10!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1322:1371 */;
      this._expr_10 = currVal_10;
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._AutoFocusDirective_1_9.ngOnInit();
    }
    final currVal_11 = _ctx.activeModel?.id(local_item);
    if (import13.checkBinding(this._expr_11, currVal_11, 'activeModel?.id(item)', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._FocusActivableItemDirective_1_10, 'focusActivableItem', currVal_11);
      }
      this._FocusActivableItemDirective_1_10.key = (currVal_11!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1384:1428 */;
      this._expr_11 = currVal_11;
    }
    final currVal_12 = _ctx.tooltipPositions;
    if (import13.checkBinding(this._expr_12, currVal_12, 'tooltipPositions', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialTooltipDirective_1_11, 'tooltipPositions', currVal_12);
      }
      this._MaterialTooltipDirective_1_11.positions = (currVal_12!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1699:1736 */;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = local_item.tooltip;
    if (import13.checkBinding(this._expr_13, currVal_13, 'item.tooltip', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialTooltipDirective_1_11, 'materialTooltip', currVal_13);
      }
      this._MaterialTooltipDirective_1_11.text = (currVal_13!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1607:1639 */;
      this._expr_13 = currVal_13;
    }
    final currVal_14 = local_item.showTooltip;
    if (import13.checkBinding(this._expr_14, currVal_14, 'item.showTooltip', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialTooltipDirective_1_11, 'showTooltipIf', currVal_14);
      }
      this._MaterialTooltipDirective_1_11.canShow = (currVal_14!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1652:1686 */;
      this._expr_14 = currVal_14;
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._MaterialTooltipDirective_1_11.ngOnInit();
    }
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_1_12, 'useCheckMarks', true);
      }
      this._MaterialSelectItemComponent_1_12.useCheckMarks = true /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2205:2227 */;
      changed = true;
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_1_12, 'closeOnActivate', false);
      }
      this._MaterialSelectItemComponent_1_12.closeOnActivate = false /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2167:2192 */;
      changed = true;
    }
    final currVal_15 = import21.interpolate0(local_group.itemsRole);
    if (import13.checkBinding(this._expr_15, currVal_15, '{{group.itemsRole}}', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_1_12, 'role', currVal_15);
      }
      this._MaterialSelectItemComponent_1_12.role = currVal_15 /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1442:1468 */;
      changed = true;
      this._expr_15 = currVal_15;
    }
    final currVal_16 = (!(local_item.enabled ?? false));
    if (import13.checkBinding(this._expr_16, currVal_16, '!item.enabled', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_1_12, 'disabled', currVal_16);
      }
      this._MaterialSelectItemComponent_1_12.disabled = (currVal_16!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2286:2312 */;
      changed = true;
      this._expr_16 = currVal_16;
    }
    final currVal_17 = _ctx.getItemValue(local_item);
    if (import13.checkBinding(this._expr_17, currVal_17, 'getItemValue(item)', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_1_12, 'value', currVal_17);
      }
      this._MaterialSelectItemComponent_1_12.value = (currVal_17!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2439:2467 */;
      changed = true;
      this._expr_17 = currVal_17;
    }
    final currVal_20 = _ctx.shouldSelectItemOnClick(local_item);
    if (import13.checkBinding(this._expr_20, currVal_20, 'shouldSelectItemOnClick(item)', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_1_12, 'selectOnActivate', currVal_20);
      }
      this._MaterialSelectItemComponent_1_12.selectOnActivate = (currVal_20!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2376:2426 */;
      changed = true;
      this._expr_20 = currVal_20;
    }
    final currVal_21 = _ctx.getSelectionModel(local_group);
    if (import13.checkBinding(this._expr_21, currVal_21, 'getSelectionModel(group)', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialSelectItemComponent_1_12, 'selection', currVal_21);
      }
      this._MaterialSelectItemComponent_1_12.selection = (currVal_21!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2325:2363 */;
      changed = true;
      this._expr_21 = currVal_21;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_1_13, 'class', 'menu-item');
      }
      this._NgClass_1_13.initialClasses = 'menu-item' /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1750:1767 */;
    }
    final currVal_23 = local_item.cssClasses;
    if (import13.checkBinding(this._expr_23, currVal_23, 'item.cssClasses', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_1_13, 'ngClass', currVal_23);
      }
      this._NgClass_1_13.rawClass = (currVal_23!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1780:1807 */;
      this._expr_23 = currVal_23;
    }
    if ((!import13.debugThrowIfChanged)) {
      this._NgClass_1_13.ngDoCheck();
    }
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_3_9, 'ngIf', local_item.hasIcon);
    }
    this._NgIf_3_9.ngIf = (local_item.hasIcon ?? false) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2577:2597 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_7_9, 'ngIf', _ctx.hasHighlight);
    }
    this._NgIf_7_9.ngIf = (_ctx.hasHighlight ?? false) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2775:2795 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_9_9, 'ngIf', (!(_ctx.hasHighlight ?? false)));
    }
    this._NgIf_9_9.ngIf = ((!(_ctx.hasHighlight ?? false)) ?? false) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:3165:3186 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_11_9, 'ngIf', local_item.hasSecondaryLabel);
    }
    this._NgIf_11_9.ngIf = (local_item.hasSecondaryLabel ?? false) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:3483:3513 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_14_9, 'ngIf', local_item.itemSuffixes.isNotEmpty);
    }
    this._NgIf_14_9.ngIf = (local_item.itemSuffixes.isNotEmpty ?? false) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:3671:3707 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_16_9, 'ngIf', local_item.hasSubMenu);
    }
    this._NgIf_16_9.ngIf = (local_item.hasSubMenu ?? false) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:3899:3922 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_19_9, 'ngIf', local_item.hasSubMenu);
    }
    this._NgIf_19_9.ngIf = (local_item.hasSubMenu ?? false) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4120:4143 */;
    final currVal_0 = local_i;
    if (import13.checkBinding(this._expr_0, currVal_0, 'i', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderAttribute(this._el_1, 'data-group-index', currVal_0?.toString()) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1481:1508 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = local_j;
    if (import13.checkBinding(this._expr_1, currVal_1, 'j', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderAttribute(this._el_1, 'data-item-index', currVal_1?.toString()) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1521:1547 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.activeModel?.id(local_item);
    if (import13.checkBinding(this._expr_2, currVal_2, 'activeModel?.id(item)', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderAttribute(this._el_1, 'id', currVal_2) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1560:1593 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.isSubMenuVisible(local_item);
    if (import13.checkBinding(this._expr_3, currVal_3, 'isSubMenuVisible(item)', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderClass(this._el_1, 'is-menu-parent', (currVal_3 ?? false)) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1820:1867 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = local_item.ariaLabel;
    if (import13.checkBinding(this._expr_4, currVal_4, 'item.ariaLabel', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderAttribute(this._el_1, 'aria-label', currVal_4?.toString()) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1880:1914 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = (!(local_item.enabled ?? false));
    if (import13.checkBinding(this._expr_5, currVal_5, '!item.enabled', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderAttribute(this._el_1, 'aria-disabled', currVal_5?.toString()) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1927:1963 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = local_item.hasSubMenu;
    if (import13.checkBinding(this._expr_6, currVal_6, 'item.hasSubMenu', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderAttribute(this._el_1, 'aria-haspopup', currVal_6?.toString()) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:1976:2014 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = (local_item.hasSubMenu ? _ctx.isSubMenuVisible(local_item) : null);
    if (import13.checkBinding(this._expr_7, currVal_7, 'item.hasSubMenu ? isSubMenuVisible(item) : null', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderAttribute(this._el_1, 'aria-expanded', currVal_7?.toString()) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2027:2097 */;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.itemAriaChecked(local_item);
    if (import13.checkBinding(this._expr_8, currVal_8, 'itemAriaChecked(item)', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      import10.updateRenderAttribute(this._el_1, 'aria-checked', currVal_8) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2110:2153 */;
      this._expr_8 = currVal_8;
    }
    this._ActiveItemDirective_1_8.detectHostChanges(this._compView_1, this._el_1);
    this._compView_1.detectHostChanges(firstCheck);
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_3.detectChangesInNestedViews();
    this._appEl_7.detectChangesInNestedViews();
    this._appEl_9.detectChangesInNestedViews();
    this._appEl_11.detectChangesInNestedViews();
    this._appEl_14.detectChangesInNestedViews();
    this._appEl_16.detectChangesInNestedViews();
    this._appEl_19.detectChangesInNestedViews();
    this._compView_1.detectChangesDeprecated();
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this._ActiveItemDirective_1_8.instance.ngAfterViewInit();
        this._MaterialTooltipDirective_1_11.ngAfterViewInit();
        this._PopupSourceDirective_1_14.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    import9.unsafeCast<ViewMenuItemGroupsComponent0>(((((this.parentView!).parentView!).parentView!).parentView!))._viewQuery_FocusableActivateItem_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_3.destroyNestedViews();
    this._appEl_7.destroyNestedViews();
    this._appEl_9.destroyNestedViews();
    this._appEl_11.destroyNestedViews();
    this._appEl_14.destroyNestedViews();
    this._appEl_16.destroyNestedViews();
    this._appEl_19.destroyNestedViews();
    this._compView_1.destroyInternalState();
    this._ActiveItemDirective_1_8.instance.ngOnDestroy();
    this._AutoFocusDirective_1_9.ngOnDestroy();
    this._MaterialTooltipDirective_1_11.ngOnDestroy();
    this._MaterialSelectItemComponent_1_12.ngOnDestroy();
    this._NgClass_1_13.ngOnDestroy();
    this._PopupSourceDirective_1_14.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final local_item = import9.unsafeCast<_ViewMenuItemGroupsComponent5>((this.parentView!)).locals['\$implicit'];
    final local_group = import9.unsafeCast<_ViewMenuItemGroupsComponent1>((((this.parentView!).parentView!).parentView!)).locals['\$implicit'];
    final _ctx = this.ctx;
    _ctx.handleSelectItemTrigger(local_item, local_group, $event);
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent6(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent6(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent7 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  late final import22.ViewMaterialIconComponent0 _compView_0;
  late final import23.MaterialIconComponent _MaterialIconComponent_0_5;
  Object? _expr_0;
  _ViewMenuItemGroupsComponent7(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import22.ViewMaterialIconComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'material-list-item-primary');
    this.addShimC(_el_0);
    this._MaterialIconComponent_0_5 = import23.MaterialIconComponent(import10.unwrapNode(_el_0));
    this._compView_0.create(this._MaterialIconComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    final local_item = import9.unsafeCast<_ViewMenuItemGroupsComponent5>(((this.parentView!).parentView!)).locals['\$implicit'];
    changed = false;
    final currVal_0 = local_item.icon;
    if (import13.checkBinding(this._expr_0, currVal_0, 'item.icon', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialIconComponent_0_5, 'icon', currVal_0);
      }
      this._MaterialIconComponent_0_5.icon = (currVal_0!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2661:2679 */;
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

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent7(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent7(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent8 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  late final import51.ViewHighlightedTextComponent0 _compView_2;
  late final import52.HighlightedTextComponent _HighlightedTextComponent_2_5;
  late final ViewContainer _appEl_5;
  late final NgIf _NgIf_5_9;
  Object? _expr_0;
  _ViewMenuItemGroupsComponent8(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('span');
    this.updateChildClass(_el_0, 'menu-item-label');
    this.addShimC(_el_0);
    final _text_1 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_0, _text_1);
    this._compView_2 = import51.ViewHighlightedTextComponent0(this, 2);
    final _el_2 = this._compView_2.rootElement;
    import10.appendRenderChild(_el_0, _el_2);
    this.addShimC(_el_2);
    this._HighlightedTextComponent_2_5 = import52.HighlightedTextComponent();
    this._compView_2.create(this._HighlightedTextComponent_2_5);
    final _text_4 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_0, _text_4);
    final _anchor_5 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_0, _anchor_5);
    this._appEl_5 = ViewContainer(5, 0, this, _anchor_5);
    var _TemplateRef_5_8 = TemplateRef(this._appEl_5, viewFactory_MenuItemGroupsComponent9);
    this._NgIf_5_9 = NgIf(this._appEl_5, _TemplateRef_5_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_5, this._NgIf_5_9);
    }
    final _text_6 = import10.createRenderText('\n            ');
    import10.appendRenderChild(_el_0, _text_6);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    final local_item = import9.unsafeCast<_ViewMenuItemGroupsComponent5>(((this.parentView!).parentView!)).locals['\$implicit'];
    changed = false;
    final currVal_0 = _ctx.highlighted(local_item.uiDisplayName);
    if (import13.checkBinding(this._expr_0, currVal_0, 'highlighted(item.uiDisplayName)', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._HighlightedTextComponent_2_5, 'segments', currVal_0);
      }
      this._HighlightedTextComponent_2_5.segments = (currVal_0!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2853:2897 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    if (changed) {
      this._compView_2.markAsCheckOnce();
    }
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_5_9, 'ngIf', (((local_item.labelAnnotation != null) ?? false) && (local_item.labelAnnotation.isNotEmpty ?? false)));
    }
    this._NgIf_5_9.ngIf = ((((local_item.labelAnnotation != null) ?? false) && (local_item.labelAnnotation.isNotEmpty ?? false)) ?? false) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:2952:3023 */;
    this._appEl_5.detectChangesInNestedViews();
    this._compView_2.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_5.destroyNestedViews();
    this._compView_2.destroyInternalState();
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent8(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent8(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent9 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  final import18.TextBinding _textBinding_2 = import18.TextBinding();
  _ViewMenuItemGroupsComponent9(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('sup');
    this.updateChildClass(_el_0, 'label-annotation');
    this.addShimC(_el_0);
    final _text_1 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_0, _text_1);
    import10.appendRenderChild(_el_0, this._textBinding_2.element);
    final _text_3 = import10.createRenderText('\n            ');
    import10.appendRenderChild(_el_0, _text_3);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final local_item = import9.unsafeCast<_ViewMenuItemGroupsComponent5>((((this.parentView!).parentView!).parentView!)).locals['\$implicit'];
    this._textBinding_2.updateText(import21.interpolate0(local_item.labelAnnotation)) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:3083:3107 */;
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent9(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent9(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent10 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  final import18.TextBinding _textBinding_2 = import18.TextBinding();
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
  _ViewMenuItemGroupsComponent10(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('span');
    this.updateChildClass(_el_0, 'menu-item-label');
    this.addShimC(_el_0);
    final _text_1 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_0, _text_1);
    import10.appendRenderChild(_el_0, this._textBinding_2.element);
    final _text_3 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_0, _text_3);
    final _anchor_4 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_0, _anchor_4);
    this._appEl_4 = ViewContainer(4, 0, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_MenuItemGroupsComponent11);
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
    final _text_5 = import10.createRenderText('\n            ');
    import10.appendRenderChild(_el_0, _text_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final local_item = import9.unsafeCast<_ViewMenuItemGroupsComponent5>(((this.parentView!).parentView!)).locals['\$implicit'];
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', (((local_item.labelAnnotation != null) ?? false) && (local_item.labelAnnotation.isNotEmpty ?? false)));
    }
    this._NgIf_4_9.ngIf = ((((local_item.labelAnnotation != null) ?? false) && (local_item.labelAnnotation.isNotEmpty ?? false)) ?? false) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:3268:3339 */;
    this._appEl_4.detectChangesInNestedViews();
    this._textBinding_2.updateText(import21.interpolate0(local_item.uiDisplayName)) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:3226:3248 */;
  }

  @override
  void destroyInternal() {
    this._appEl_4.destroyNestedViews();
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent10(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent10(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent11 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  final import18.TextBinding _textBinding_2 = import18.TextBinding();
  _ViewMenuItemGroupsComponent11(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('sup');
    this.updateChildClass(_el_0, 'label-annotation');
    this.addShimC(_el_0);
    final _text_1 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_0, _text_1);
    import10.appendRenderChild(_el_0, this._textBinding_2.element);
    final _text_3 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_0, _text_3);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final local_item = import9.unsafeCast<_ViewMenuItemGroupsComponent5>((((this.parentView!).parentView!).parentView!)).locals['\$implicit'];
    this._textBinding_2.updateText(import21.interpolate0(local_item.labelAnnotation)) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:3399:3423 */;
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent11(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent11(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent12 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  final import18.TextBinding _textBinding_2 = import18.TextBinding();
  _ViewMenuItemGroupsComponent12(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('span');
    this.updateChildClass(_el_0, 'menu-item-secondary-label');
    this.addShimC(_el_0);
    final _text_1 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_0, _text_1);
    import10.appendRenderChild(_el_0, this._textBinding_2.element);
    final _text_3 = import10.createRenderText('\n            ');
    import10.appendRenderChild(_el_0, _text_3);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final local_item = import9.unsafeCast<_ViewMenuItemGroupsComponent5>(((this.parentView!).parentView!)).locals['\$implicit'];
    this._textBinding_2.updateText(import21.interpolate0(local_item.secondaryLabel)) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:3563:3586 */;
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent12(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent12(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent13 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  late final import53.ViewMenuItemAffixListComponent0 _compView_0;
  late final import54.MenuItemAffixListComponent _MenuItemAffixListComponent_0_5;
  Object? _expr_0;
  Object? _expr_1;
  _ViewMenuItemGroupsComponent13(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import53.ViewMenuItemAffixListComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'suffix-list');
    this.addShimC(_el_0);
    this._MenuItemAffixListComponent_0_5 = import54.MenuItemAffixListComponent(this._compView_0);
    this._compView_0.create(this._MenuItemAffixListComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import48.HasDisabled) && (nodeIndex <= 1))) {
      return this._MenuItemAffixListComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    final local_item = import9.unsafeCast<_ViewMenuItemGroupsComponent5>(((this.parentView!).parentView!)).locals['\$implicit'];
    changed = false;
    final currVal_0 = (!(local_item.enabled ?? false));
    if (import13.checkBinding(this._expr_0, currVal_0, '!item.enabled', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MenuItemAffixListComponent_0_5, 'disabled', currVal_0);
      }
      this._MenuItemAffixListComponent_0_5.disabled = (currVal_0!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:3756:3782 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = local_item.itemSuffixes;
    if (import13.checkBinding(this._expr_1, currVal_1, 'item.itemSuffixes', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MenuItemAffixListComponent_0_5, 'items', currVal_1);
      }
      this._MenuItemAffixListComponent_0_5.items = (currVal_1!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:3797:3824 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MenuItemAffixListComponent_0_5.ngOnDestroy();
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent13(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent13(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent14 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  late final import22.ViewMaterialIconComponent0 _compView_0;
  late final import23.MaterialIconComponent _MaterialIconComponent_0_5;
  _ViewMenuItemGroupsComponent14(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import22.ViewMaterialIconComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'material-list-item-secondary submenu-icon');
    import10.updateRenderAttribute(_el_0, 'icon', 'arrow_drop_down');
    this.addShimC(_el_0);
    this._MaterialIconComponent_0_5 = import23.MaterialIconComponent(import10.unwrapNode(_el_0));
    this._compView_0.create(this._MaterialIconComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialIconComponent_0_5, 'icon', 'arrow_drop_down');
      }
      this._MaterialIconComponent_0_5.icon = 'arrow_drop_down' /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4001:4023 */;
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

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent14(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent14(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent15 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  late dynamic _PopupRef_0_10 = import55.getResolvedPopupRef(this._MaterialPopupComponent_0_8);
  late dynamic _PopupHierarchy_0_12 = import55.getHierarchy(this._MaterialPopupComponent_0_8);
  bool _query_AutoFocusDirective_2_0_isDirty = true;
  late final import56.ViewMaterialPopupComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import55.MaterialPopupComponent _MaterialPopupComponent_0_8;
  late final import57.ViewFocusTrapComponent0 _compView_2;
  late final import58.FocusTrapComponent _FocusTrapComponent_2_5;
  late final ViewContainer _appEl_4;
  late final import59.DeferredContentDirective _DeferredContentDirective_4_9;
  Object? _expr_0;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  late final _el_0;
  _ViewMenuItemGroupsComponent15(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import56.ViewMaterialPopupComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import10.updateRenderAttribute(this._el_0, 'enforceSpaceConstraints', '');
    this.addShimC(this._el_0);
    this._appEl_0 = ViewContainer(0, null, this, this._el_0);
    this._MaterialPopupComponent_0_8 = (import9.isDevMode
        ? import24.debugInjectorWrap(import55.MaterialPopupComponent, () {
            return import55.MaterialPopupComponent((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import60.PopupHierarchy, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import55.MaterialPopupComponent, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), null, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import61.NgZone, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import62.OverlayService, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import37.DomService, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import63.ZIndexer, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(const import64.OpaqueToken<List<import65.RelativePosition>>('defaultPopupPositions'), ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(const import64.OpaqueToken<Object>('overlayRepositionLoop'), ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(const import64.OpaqueToken<Object>('overlayViewportBoundaries'), ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import66.PopupSizeProvider, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0, this._appEl_0, ElementRef(import10.unwrapNode(this._el_0)));
          })
        : import55.MaterialPopupComponent((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import60.PopupHierarchy, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import55.MaterialPopupComponent, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), null, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import61.NgZone, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import62.OverlayService, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import37.DomService, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import63.ZIndexer, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(const import64.OpaqueToken<List<import65.RelativePosition>>('defaultPopupPositions'), ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(const import64.OpaqueToken<Object>('overlayRepositionLoop'), ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(const import64.OpaqueToken<Object>('overlayViewportBoundaries'), ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import66.PopupSizeProvider, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0, this._appEl_0, ElementRef(import10.unwrapNode(this._el_0))));
    final _text_1 = import10.createRenderText('\n          ');
    this._compView_2 = import57.ViewFocusTrapComponent0(this, 2);
    final _el_2 = this._compView_2.rootElement;
    this.addShimC(_el_2);
    this._FocusTrapComponent_2_5 = import58.FocusTrapComponent();
    final _text_3 = import10.createRenderText('\n            ');
    final _anchor_4 = import10.createRenderAnchor();
    this._appEl_4 = ViewContainer(4, 2, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_MenuItemGroupsComponent16);
    this._DeferredContentDirective_4_9 = import59.DeferredContentDirective(this._appEl_4, _TemplateRef_4_8, this._MaterialPopupComponent_0_8, this);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_4, this._DeferredContentDirective_4_9);
    }
    final _text_5 = import10.createRenderText('\n          ');
    this._compView_2.createAndProject(this._FocusTrapComponent_2_5, [
      <Object>[_text_3, this._appEl_4, _text_5],
    ]);
    final _text_6 = import10.createRenderText('\n        ');
    this._compView_0.createAndProject(this._MaterialPopupComponent_0_8, [
      const <Object>[],
      <Object>[_text_1, _el_2, _text_6],
      const <Object>[],
    ]);
    final subscription_0 = this._MaterialPopupComponent_0_8.onVisible.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[this._appEl_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((nodeIndex <= 6)) {
      if (((identical(token, import55.MaterialPopupComponent) || identical(token, import67.DeferredContentAware)) || identical(token, import42.DropdownHandle))) {
        return this._MaterialPopupComponent_0_8;
      }
      if (identical(token, import39.PopupRef)) {
        return this._PopupRef_0_10;
      }
      if (identical(token, import60.PopupHierarchy)) {
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
    final local_subMenuSource = import9.unsafeCast<_ViewMenuItemGroupsComponent6>((this.parentView!))._PopupSourceDirective_1_14;
    final local_item = import9.unsafeCast<_ViewMenuItemGroupsComponent5>(((this.parentView!).parentView!)).locals['\$implicit'];
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'autoDismiss', false);
      }
      this._MaterialPopupComponent_0_8.autoDismiss = false /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4442:4463 */;
      changed = true;
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'enforceSpaceConstraints', true);
      }
      this._MaterialPopupComponent_0_8.enforceSpaceConstraints = true /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4227:4250 */;
      changed = true;
    }
    final currVal_3 = _ctx.preferredSubMenuPositions;
    if (import13.checkBinding(this._expr_3, currVal_3, 'preferredSubMenuPositions', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'preferredPositions', currVal_3);
      }
      this._MaterialPopupComponent_0_8.preferredPositions = (currVal_3!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4263:4311 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = local_subMenuSource;
    if (import13.checkBinding(this._expr_4, currVal_4, 'subMenuSource', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'source', currVal_4);
      }
      this._MaterialPopupComponent_0_8.source = (currVal_4!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4190:4214 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.isSubMenuVisible(local_item);
    if (import13.checkBinding(this._expr_5, currVal_5, 'isSubMenuVisible(item)', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialPopupComponent_0_8, 'visible', currVal_5);
      }
      this._MaterialPopupComponent_0_8.visible = (currVal_5!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4324:4358 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DeferredContentDirective_4_9, 'deferredContent', true);
      }
      this._DeferredContentDirective_4_9.preserveDimensions = true /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4552:4568 */;
    }
    final currVal_0 = (_ctx.popupClass!);
    if (import13.checkBinding(this._expr_0, currVal_0, 'popupClass!', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      this._compView_0.updateChildClassNonHtml(this._el_0, currVal_0) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4156:4177 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
    if ((!import13.debugThrowIfChanged)) {
      if (this._query_AutoFocusDirective_2_0_isDirty) {
        this._FocusTrapComponent_2_5.autoFocus = import68.firstOrNull(
          this._appEl_4.mapNestedViewsWithSingleResult((_ViewMenuItemGroupsComponent16 nestedView) {
            return nestedView._AutoFocusDirective_2_5;
          }),
        );
        this._query_AutoFocusDirective_2_0_isDirty = false;
      }
    }
    this._compView_0.detectChangesDeprecated();
    this._compView_2.detectChangesDeprecated();
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialPopupComponent_0_8.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._compView_2.destroyInternalState();
    this._DeferredContentDirective_4_9.ngOnDestroy();
    this._FocusTrapComponent_2_5.ngOnDestroy();
    this._MaterialPopupComponent_0_8.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final local_item = import9.unsafeCast<_ViewMenuItemGroupsComponent5>(((this.parentView!).parentView!)).locals['\$implicit'];
    final _ctx = this.ctx;
    _ctx.onSubMenuVisibilityChanged(local_item, $event);
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent15(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent15(parentView, parentIndex);
}

class _ViewMenuItemGroupsComponent16 extends import15.EmbeddedView<import2.MenuItemGroupsComponent> {
  late final import69.ViewMaterialListComponent0 _compView_0;
  late final import70.MaterialListComponent _MaterialListComponent_0_5;
  late final ViewMenuItemGroupsComponent0 _compView_2;
  late final import30.AutoFocusDirective _AutoFocusDirective_2_5;
  late final import2.MenuItemGroupsComponent _MenuItemGroupsComponent_2_6;
  Object? _expr_1;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  _ViewMenuItemGroupsComponent16(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import69.ViewMaterialListComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'item-group-list');
    import10.updateRenderAttribute(_el_0, 'role', 'none');
    this.addShimC(_el_0);
    this._MaterialListComponent_0_5 = import70.MaterialListComponent();
    final _text_1 = import10.createRenderText('\n              ');
    this._compView_2 = ViewMenuItemGroupsComponent0(this, 2);
    final _el_2 = this._compView_2.rootElement;
    import10.updateRenderAttribute(_el_2, 'autoFocus', '');
    this.addShimC(_el_2);
    this._AutoFocusDirective_2_5 = (import9.isDevMode
        ? import24.debugInjectorWrap(import30.AutoFocusDirective, () {
            return import30.AutoFocusDirective(import10.unwrapNode(_el_2), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import37.DomService, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), null, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import38.ModalComponent, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), import9.unsafeCast<_ViewMenuItemGroupsComponent15>((this.parentView!))._PopupRef_0_10);
          })
        : import30.AutoFocusDirective(import10.unwrapNode(_el_2), ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import37.DomService, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), null, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import38.ModalComponent, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), import9.unsafeCast<_ViewMenuItemGroupsComponent15>((this.parentView!))._PopupRef_0_10));
    this._MenuItemGroupsComponent_2_6 = (import9.isDevMode
        ? import24.debugInjectorWrap(import2.MenuItemGroupsComponent, () {
            return import2.MenuItemGroupsComponent(((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import71.MenuRoot, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_2, import9.unsafeCast<_ViewMenuItemGroupsComponent15>((this.parentView!))._MaterialPopupComponent_0_8, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import72.IdGenerator, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex));
          })
        : import2.MenuItemGroupsComponent(((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGet(import71.MenuRoot, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_2, import9.unsafeCast<_ViewMenuItemGroupsComponent15>((this.parentView!))._MaterialPopupComponent_0_8, ((((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import72.IdGenerator, (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).parentIndex)));
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_2, this._AutoFocusDirective_2_5);
    }
    this._compView_2.create(this._MenuItemGroupsComponent_2_6);
    final _text_4 = import10.createRenderText('\n            ');
    this._compView_0.createAndProject(this._MaterialListComponent_0_5, [
      <Object>[_text_1, _el_2, _text_4],
    ]);
    final subscription_0 = this._MenuItemGroupsComponent_2_6.selected.listen(this.eventHandler1(_ctx.onSubMenuItemSelected));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_el_0]), [subscription_0]);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_item = import9.unsafeCast<_ViewMenuItemGroupsComponent5>((((this.parentView!).parentView!).parentView!)).locals['\$implicit'];
    changed = false;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialListComponent_0_5, 'role', 'none');
      }
      this._MaterialListComponent_0_5.role = 'none' /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4585:4596 */;
      changed = true;
    }
    final currVal_1 = local_item.subMenu.width;
    if (import13.checkBinding(this._expr_1, currVal_1, 'item.subMenu.width', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialListComponent_0_5, 'width', currVal_1);
      }
      this._MaterialListComponent_0_5.width = (currVal_1!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4653:4681 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._AutoFocusDirective_2_5, 'autoFocus', true);
      }
      this._AutoFocusDirective_2_5.autoFocus = true /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4733:4742 */;
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._AutoFocusDirective_2_5.ngOnInit();
    }
    changed = false;
    final currVal_3 = _ctx.isKeyboardOpenedSubmenu;
    if (import13.checkBinding(this._expr_3, currVal_3, 'isKeyboardOpenedSubmenu', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MenuItemGroupsComponent_2_6, 'activateFirstItemOnInit', currVal_3);
      }
      this._MenuItemGroupsComponent_2_6.activateFirstItemOnInit = (currVal_3!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4761:4812 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.popupClass;
    if (import13.checkBinding(this._expr_4, currVal_4, 'popupClass', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MenuItemGroupsComponent_2_6, 'popupClass', currVal_4);
      }
      this._MenuItemGroupsComponent_2_6.popupClass = (currVal_4!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4884:4909 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = local_item.subMenu;
    if (import13.checkBinding(this._expr_5, currVal_5, 'item.subMenu', 'package:angulardart_components/material_menu/menu_item_groups.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MenuItemGroupsComponent_2_6, 'menu', currVal_5);
      }
      this._MenuItemGroupsComponent_2_6.menu = (currVal_5!) /* REF:package:angulardart_components/material_menu/menu_item_groups.html:4928:4949 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    if (changed) {
      this._compView_2.markAsCheckOnce();
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this._MenuItemGroupsComponent_2_6.ngOnInit();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_2.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
    this._compView_2.detectChangesDeprecated();
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MenuItemGroupsComponent_2_6.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    import9.unsafeCast<_ViewMenuItemGroupsComponent15>((this.parentView!))._query_AutoFocusDirective_2_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._compView_2.destroyInternalState();
    this._AutoFocusDirective_2_5.ngOnDestroy();
    this._MenuItemGroupsComponent_2_6.ngOnDestroy();
  }
}

import15.EmbeddedView<void> viewFactory_MenuItemGroupsComponent16(import17.RenderView parentView, int parentIndex) {
  return _ViewMenuItemGroupsComponent16(parentView, parentIndex);
}

final List<Object> styles$MenuItemGroupsComponentHost = const [];

class _ViewMenuItemGroupsComponentHost0 extends import73.HostView<import2.MenuItemGroupsComponent> {
  @override
  void build() {
    this.componentView = ViewMenuItemGroupsComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import9.isDevMode
        ? import24.debugInjectorWrap(import2.MenuItemGroupsComponent, () {
            return import2.MenuItemGroupsComponent(this.injectorGet(import71.MenuRoot, this.parentIndex), this.componentView, this.injectorGetOptional(import42.DropdownHandle, this.parentIndex), this.injectorGetOptional(import72.IdGenerator, this.parentIndex));
          })
        : import2.MenuItemGroupsComponent(this.injectorGet(import71.MenuRoot, this.parentIndex), this.componentView, this.injectorGetOptional(import42.DropdownHandle, this.parentIndex), this.injectorGetOptional(import72.IdGenerator, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
    if (((!import13.debugThrowIfChanged) && firstCheck)) {
      this.component.ngOnInit();
    }
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this.component.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import73.HostView<import2.MenuItemGroupsComponent> viewFactory_MenuItemGroupsComponentHost0() {
  return _ViewMenuItemGroupsComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MenuItemGroupsComponent, createMenuItemGroupsComponentFactory());
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
  _ref17.initReflector();
  _ref18.initReflector();
  _ref19.initReflector();
  _ref20.initReflector();
  _ref21.initReflector();
  _ref22.initReflector();
  _ref23.initReflector();
  _ref24.initReflector();
  _ref25.initReflector();
  _ref26.initReflector();
  _ref27.initReflector();
}
