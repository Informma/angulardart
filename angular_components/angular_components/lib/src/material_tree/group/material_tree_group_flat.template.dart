// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_tree_group_flat.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angulardart_components/dynamic_component/dynamic_component.template.dart' as _ref2;
import 'package:angulardart_components/material_checkbox/material_checkbox.template.dart' as _ref3;
import 'package:angulardart_components/material_radio/material_radio.template.dart' as _ref4;
import 'package:angulardart_components/material_radio/material_radio_group.template.dart' as _ref5;
import 'package:angulardart_components/mixins/material_dropdown_base.template.dart' as _ref6;
import 'package:angulardart_components/model/selection/selection_model.template.dart' as _ref7;
import 'package:angulardart_components/src/material_tree/material_tree_node.template.dart' as _ref8;
import 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_list.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_tree_group_flat.dart' as import2;

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

import '../../../dynamic_component/dynamic_component.template.dart' as import18;
import '../../../dynamic_component/dynamic_component.dart' as import19;

import 'package:angulardart/src/di/errors.dart' as import20;
import 'package:angulardart/src/core/linker/dynamic_component_loader.dart' as import21;
import 'package:angulardart/src/runtime/text_binding.dart' as import22;
import 'package:angulardart/src/runtime/interpolate.dart' as import23;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import24;

import '../material_tree_root.dart' as import25;

import 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.scss.css.shim.dart' as import26;

import '../../../material_radio/material_radio_group.template.dart' as import27;
import '../../../material_radio/material_radio_group.dart' as import28;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import29;

import '../../../material_radio/material_radio.template.dart' as import30;
import '../../../material_radio/material_radio.dart' as import31;
import '../../../interfaces/has_disabled.dart' as import32;
import '../../../mixins/material_dropdown_base.dart' as import33;

import 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.scss.css.shim.dart' as import34;

import '../../../material_checkbox/material_checkbox.template.dart' as import35;
import '../../../material_checkbox/material_checkbox.dart' as import36;

final List<Object> styles$MaterialTreeGroupFlatListComponent = [import0.styles];

class ViewMaterialTreeGroupFlatListComponent0<T> extends import1.ComponentView<import2.MaterialTreeGroupFlatListComponent<T>> {
  late final ViewContainer _appEl_0;
  late final import4.NgFor _NgFor_0_9;
  Object? _expr_0;
  Object? _expr_1;
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialTreeGroupFlatListComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-tree-group-flat-list');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/src/material_tree/group/material_tree_group_flat.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _anchor_0 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_0);
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupFlatListComponent1<T>(parentView, parentIndex);
    });
    this._NgFor_0_9 = import4.NgFor(this._appEl_0, _TemplateRef_0_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_0, this._NgFor_0_9);
    }
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.group;
    if (import13.checkBinding(this._expr_0, currVal_0, 'group', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_list.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgFor_0_9, 'ngForOf', currVal_0);
      }
      this._NgFor_0_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_list.html:224:252 */;
      this._expr_0 = currVal_0;
    }
    if ((!import13.debugThrowIfChanged)) {
      this._NgFor_0_9.ngDoCheck();
    }
    this._appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_1 = _ctx.isMaterialTreeGroup;
    if (import13.checkBinding(this._expr_1, currVal_1, null, null)) {
      import10.updateRenderClass(this.rootElement, 'material-tree-group', (currVal_1 ?? false));
      this._expr_1 = currVal_1;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialTreeGroupFlatListComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialTreeGroupFlatListComponentNgFactory = ComponentFactory<import2.MaterialTreeGroupFlatListComponent>('material-tree-group-flat-list', viewFactory_MaterialTreeGroupFlatListComponentHost0);
ComponentFactory<import2.MaterialTreeGroupFlatListComponent> get MaterialTreeGroupFlatListComponentNgFactory {
  return _MaterialTreeGroupFlatListComponentNgFactory;
}

ComponentFactory<import2.MaterialTreeGroupFlatListComponent<T>> createMaterialTreeGroupFlatListComponentFactory<T>() {
  return ComponentFactory('material-tree-group-flat-list', viewFactory_MaterialTreeGroupFlatListComponentHost0);
}

class _ViewMaterialTreeGroupFlatListComponent1<T> extends import15.EmbeddedView<import2.MaterialTreeGroupFlatListComponent<T>> {
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  _ViewMaterialTreeGroupFlatListComponent1(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'material-tree-option');
    this.addShimC(_el_0);
    final _anchor_1 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupFlatListComponent2<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import10.createRenderAnchor();
    import10.appendRenderChild(_el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupFlatListComponent3<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.useComponentRenderer);
    }
    this._NgIf_1_9.ngIf = (_ctx.useComponentRenderer ?? false) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_list.html:308:336 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', (!(_ctx.useComponentRenderer ?? false)));
    }
    this._NgIf_2_9.ngIf = ((!(_ctx.useComponentRenderer ?? false)) ?? false) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_list.html:521:550 */;
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
  }
}

import15.EmbeddedView<void> viewFactory_MaterialTreeGroupFlatListComponent1<T>(import17.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupFlatListComponent1<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupFlatListComponent2<T> extends import15.EmbeddedView<import2.MaterialTreeGroupFlatListComponent<T>> {
  late final import18.ViewDynamicComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import19.DynamicComponent _DynamicComponent_0_8;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  _ViewMaterialTreeGroupFlatListComponent2(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import18.ViewDynamicComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'item component');
    this.addShimC(_el_0);
    this._appEl_0 = ViewContainer(0, null, this, _el_0);
    this._DynamicComponent_0_8 = (import9.isDevMode
        ? import20.debugInjectorWrap(import19.DynamicComponent, () {
            return import19.DynamicComponent(((this.parentView!).parentView!).injectorGet(import21.SlowComponentLoader, (this.parentView!).parentIndex), this._appEl_0);
          })
        : import19.DynamicComponent(((this.parentView!).parentView!).injectorGet(import21.SlowComponentLoader, (this.parentView!).parentIndex), this._appEl_0));
    this._compView_0.create(this._DynamicComponent_0_8);
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    final local_option = import9.unsafeCast<_ViewMaterialTreeGroupFlatListComponent1>((this.parentView!)).locals['\$implicit'];
    changed = false;
    final currVal_0 = _ctx.getComponentType(local_option);
    if (import13.checkBinding(this._expr_0, currVal_0, 'getComponentType(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_list.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'componentType', currVal_0);
      }
      this._DynamicComponent_0_8.componentType = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_list.html:368:410 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.getComponentFactory(local_option);
    if (import13.checkBinding(this._expr_1, currVal_1, 'getComponentFactory(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_list.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'componentFactory', currVal_1);
      }
      this._DynamicComponent_0_8.componentFactory = (currVal_1!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_list.html:415:463 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = local_option;
    if (import13.checkBinding(this._expr_2, currVal_2, 'option', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_list.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'value', currVal_2);
      }
      this._DynamicComponent_0_8.value = (currVal_2!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_list.html:468:484 */;
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

import15.EmbeddedView<void> viewFactory_MaterialTreeGroupFlatListComponent2<T>(import17.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupFlatListComponent2<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupFlatListComponent3<T> extends import15.EmbeddedView<import2.MaterialTreeGroupFlatListComponent<T>> {
  final import22.TextBinding _textBinding_1 = import22.TextBinding();
  _ViewMaterialTreeGroupFlatListComponent3(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('span');
    this.updateChildClass(_el_0, 'item text');
    this.addShimC(_el_0);
    import10.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final local_option = import9.unsafeCast<_ViewMaterialTreeGroupFlatListComponent1>((this.parentView!)).locals['\$implicit'];
    this._textBinding_1.updateText(import23.interpolateString0(_ctx.getOptionAsText(local_option))) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_list.html:578:605 */;
  }
}

import15.EmbeddedView<void> viewFactory_MaterialTreeGroupFlatListComponent3<T>(import17.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupFlatListComponent3<T>(parentView, parentIndex);
}

final List<Object> styles$MaterialTreeGroupFlatListComponentHost = const [];

class _ViewMaterialTreeGroupFlatListComponentHost0<T> extends import24.HostView<import2.MaterialTreeGroupFlatListComponent<T>> {
  @override
  void build() {
    this.componentView = ViewMaterialTreeGroupFlatListComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import9.isDevMode
        ? import20.debugInjectorWrap(import2.MaterialTreeGroupFlatListComponent, () {
            return import2.MaterialTreeGroupFlatListComponent(this.injectorGet(import25.MaterialTreeRoot, this.parentIndex), this.componentView);
          })
        : import2.MaterialTreeGroupFlatListComponent(this.injectorGet(import25.MaterialTreeRoot, this.parentIndex), this.componentView));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
  }
}

import24.HostView<import2.MaterialTreeGroupFlatListComponent<T>> viewFactory_MaterialTreeGroupFlatListComponentHost0<T>() {
  return _ViewMaterialTreeGroupFlatListComponentHost0();
}

final List<Object> styles$MaterialTreeGroupFlatRadioComponent = [import26.styles];

class ViewMaterialTreeGroupFlatRadioComponent0<T> extends import1.ComponentView<import2.MaterialTreeGroupFlatRadioComponent<T>> {
  bool _query_MaterialRadioComponent_0_0_isDirty = true;
  late final import27.ViewMaterialRadioGroupComponent0 _compView_0;
  late final import28.MaterialRadioGroupComponent _MaterialRadioGroupComponent_0_5;
  late final ViewContainer _appEl_1;
  late final import4.NgFor _NgFor_1_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialTreeGroupFlatRadioComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-tree-group-flat-radio');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/src/material_tree/group/material_tree_group_flat.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    this._compView_0 = import27.ViewMaterialRadioGroupComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import10.appendRenderChild(parentRenderNode, _el_0);
    this.addShimC(_el_0);
    this._MaterialRadioGroupComponent_0_5 = (import9.isDevMode
        ? import20.debugInjectorWrap(import28.MaterialRadioGroupComponent, () {
            return import28.MaterialRadioGroupComponent((this.parentView!).injectorGet(import29.NgZone, this.parentIndex), null);
          })
        : import28.MaterialRadioGroupComponent((this.parentView!).injectorGet(import29.NgZone, this.parentIndex), null));
    final _anchor_1 = import10.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupFlatRadioComponent1<T>(parentView, parentIndex);
    });
    this._NgFor_1_9 = import4.NgFor(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgFor_1_9);
    }
    this._compView_0.createAndProject(this._MaterialRadioGroupComponent_0_5, [
      <Object>[this._appEl_1],
    ]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import28.MaterialRadioGroupComponent) && (nodeIndex <= 1))) {
      return this._MaterialRadioGroupComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    final currVal_0 = _ctx.selectionModel;
    if (import13.checkBinding(this._expr_0, currVal_0, 'selectionModel', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialRadioGroupComponent_0_5, 'selectionModel', currVal_0);
      }
      this._MaterialRadioGroupComponent_0_5.valueSelection = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html:243:276 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    final currVal_1 = _ctx.group;
    if (import13.checkBinding(this._expr_1, currVal_1, 'group', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForOf', currVal_1);
      }
      this._NgFor_1_9.ngForOf = (currVal_1!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html:300:328 */;
      this._expr_1 = currVal_1;
    }
    if ((!import13.debugThrowIfChanged)) {
      this._NgFor_1_9.ngDoCheck();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_1.detectChangesInNestedViews();
    if ((!import13.debugThrowIfChanged)) {
      if (this._query_MaterialRadioComponent_0_0_isDirty) {
        this._MaterialRadioGroupComponent_0_5.radioComponents = this._appEl_1.mapNestedViewsWithSingleResult((_ViewMaterialTreeGroupFlatRadioComponent1 nestedView) {
          import6.View.queryChangeDetectorRefs[nestedView._MaterialRadioComponent_0_5] = nestedView._compView_0;
          return nestedView._MaterialRadioComponent_0_5;
        });
        this._query_MaterialRadioComponent_0_0_isDirty = false;
      }
      if (firstCheck) {
        this._MaterialRadioGroupComponent_0_5.ngAfterContentInit();
      }
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._MaterialRadioGroupComponent_0_5.ngOnDestroy();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_2 = _ctx.isMaterialTreeGroup;
    if (import13.checkBinding(this._expr_2, currVal_2, null, null)) {
      import10.updateRenderClass(this.rootElement, 'material-tree-group', (currVal_2 ?? false));
      this._expr_2 = currVal_2;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialTreeGroupFlatRadioComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialTreeGroupFlatRadioComponentNgFactory = ComponentFactory<import2.MaterialTreeGroupFlatRadioComponent>('material-tree-group-flat-radio', viewFactory_MaterialTreeGroupFlatRadioComponentHost0);
ComponentFactory<import2.MaterialTreeGroupFlatRadioComponent> get MaterialTreeGroupFlatRadioComponentNgFactory {
  return _MaterialTreeGroupFlatRadioComponentNgFactory;
}

ComponentFactory<import2.MaterialTreeGroupFlatRadioComponent<T>> createMaterialTreeGroupFlatRadioComponentFactory<T>() {
  return ComponentFactory('material-tree-group-flat-radio', viewFactory_MaterialTreeGroupFlatRadioComponentHost0);
}

class _ViewMaterialTreeGroupFlatRadioComponent1<T> extends import15.EmbeddedView<import2.MaterialTreeGroupFlatRadioComponent<T>> {
  late final import30.ViewMaterialRadioComponent0 _compView_0;
  late final import31.MaterialRadioComponent _MaterialRadioComponent_0_5;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  late final _el_0;
  _ViewMaterialTreeGroupFlatRadioComponent1(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import30.ViewMaterialRadioComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'material-tree-option tree-selection-state');
    import10.updateRenderAttribute(this._el_0, 'role', 'option');
    this.addShimC(this._el_0);
    this._MaterialRadioComponent_0_5 = import31.MaterialRadioComponent(import10.unwrapNode(this._el_0), this._compView_0, import9.unsafeCast<ViewMaterialTreeGroupFlatRadioComponent0>((this.parentView!))._MaterialRadioGroupComponent_0_5, null, 'option');
    final _anchor_1 = import10.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupFlatRadioComponent2<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import10.createRenderAnchor();
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupFlatRadioComponent3<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    this._compView_0.createAndProject(this._MaterialRadioComponent_0_5, [
      <Object>[this._appEl_1, this._appEl_2],
    ]);
    this.initRootNode(this._el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import32.HasDisabled) && (nodeIndex <= 2))) {
      return this._MaterialRadioComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_option = this.locals['\$implicit'];
    changed = false;
    final currVal_2 = local_option;
    if (import13.checkBinding(this._expr_2, currVal_2, 'option', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialRadioComponent_0_5, 'value', currVal_2);
      }
      this._MaterialRadioComponent_0_5.value = (currVal_2!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html:503:519 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.isReadOnly;
    if (import13.checkBinding(this._expr_3, currVal_3, 'isReadOnly', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialRadioComponent_0_5, 'disabled', currVal_3);
      }
      this._MaterialRadioComponent_0_5.disabled = (currVal_3!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html:475:498 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.useComponentRenderer);
    }
    this._NgIf_1_9.ngIf = (_ctx.useComponentRenderer ?? false) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html:572:600 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', (!(_ctx.useComponentRenderer ?? false)));
    }
    this._NgIf_2_9.ngIf = ((!(_ctx.useComponentRenderer ?? false)) ?? false) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html:809:838 */;
    final currVal_0 = _ctx.isSelected(local_option);
    if (import13.checkBinding(this._expr_0, currVal_0, 'isSelected(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html')) {
      import10.updateRenderClass(this._el_0, 'selected', (currVal_0 ?? false)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html:387:424 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.isSelectable(local_option);
    if (import13.checkBinding(this._expr_1, currVal_1, 'isSelectable(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html')) {
      import10.updateRenderClass(this._el_0, 'selectable', (currVal_1 ?? false)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html:429:470 */;
      this._expr_1 = currVal_1;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void dirtyParentQueriesInternal() {
    import9.unsafeCast<ViewMaterialTreeGroupFlatRadioComponent0>((this.parentView!))._query_MaterialRadioComponent_0_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._MaterialRadioComponent_0_5.ngOnDestroy();
  }
}

import15.EmbeddedView<void> viewFactory_MaterialTreeGroupFlatRadioComponent1<T>(import17.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupFlatRadioComponent1<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupFlatRadioComponent2<T> extends import15.EmbeddedView<import2.MaterialTreeGroupFlatRadioComponent<T>> {
  late final import18.ViewDynamicComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import19.DynamicComponent _DynamicComponent_0_8;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  _ViewMaterialTreeGroupFlatRadioComponent2(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import18.ViewDynamicComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'item component');
    this.addShimC(_el_0);
    this._appEl_0 = ViewContainer(0, null, this, _el_0);
    this._DynamicComponent_0_8 = (import9.isDevMode
        ? import20.debugInjectorWrap(import19.DynamicComponent, () {
            return import19.DynamicComponent((((this.parentView!).parentView!).parentView!).injectorGet(import21.SlowComponentLoader, ((this.parentView!).parentView!).parentIndex), this._appEl_0);
          })
        : import19.DynamicComponent((((this.parentView!).parentView!).parentView!).injectorGet(import21.SlowComponentLoader, ((this.parentView!).parentView!).parentIndex), this._appEl_0));
    this._compView_0.create(this._DynamicComponent_0_8);
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    final local_option = import9.unsafeCast<_ViewMaterialTreeGroupFlatRadioComponent1>((this.parentView!)).locals['\$implicit'];
    changed = false;
    final currVal_0 = _ctx.getComponentType(local_option);
    if (import13.checkBinding(this._expr_0, currVal_0, 'getComponentType(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'componentType', currVal_0);
      }
      this._DynamicComponent_0_8.componentType = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html:640:682 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.getComponentFactory(local_option);
    if (import13.checkBinding(this._expr_1, currVal_1, 'getComponentFactory(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'componentFactory', currVal_1);
      }
      this._DynamicComponent_0_8.componentFactory = (currVal_1!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html:691:739 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = local_option;
    if (import13.checkBinding(this._expr_2, currVal_2, 'option', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'value', currVal_2);
      }
      this._DynamicComponent_0_8.value = (currVal_2!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html:748:764 */;
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

import15.EmbeddedView<void> viewFactory_MaterialTreeGroupFlatRadioComponent2<T>(import17.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupFlatRadioComponent2<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupFlatRadioComponent3<T> extends import15.EmbeddedView<import2.MaterialTreeGroupFlatRadioComponent<T>> {
  final import22.TextBinding _textBinding_1 = import22.TextBinding();
  _ViewMaterialTreeGroupFlatRadioComponent3(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('span');
    this.updateChildClass(_el_0, 'item text');
    this.addShimC(_el_0);
    import10.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final local_option = import9.unsafeCast<_ViewMaterialTreeGroupFlatRadioComponent1>((this.parentView!)).locals['\$implicit'];
    this._textBinding_1.updateText(import23.interpolateString0(_ctx.getOptionAsText(local_option))) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_radio.html:870:897 */;
  }
}

import15.EmbeddedView<void> viewFactory_MaterialTreeGroupFlatRadioComponent3<T>(import17.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupFlatRadioComponent3<T>(parentView, parentIndex);
}

final List<Object> styles$MaterialTreeGroupFlatRadioComponentHost = const [];

class _ViewMaterialTreeGroupFlatRadioComponentHost0<T> extends import24.HostView<import2.MaterialTreeGroupFlatRadioComponent<T>> {
  @override
  void build() {
    this.componentView = ViewMaterialTreeGroupFlatRadioComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import9.isDevMode
        ? import20.debugInjectorWrap(import2.MaterialTreeGroupFlatRadioComponent, () {
            return import2.MaterialTreeGroupFlatRadioComponent(this.injectorGet(import25.MaterialTreeRoot, this.parentIndex), this.componentView, this.injectorGetOptional(import33.DropdownHandle, this.parentIndex));
          })
        : import2.MaterialTreeGroupFlatRadioComponent(this.injectorGet(import25.MaterialTreeRoot, this.parentIndex), this.componentView, this.injectorGetOptional(import33.DropdownHandle, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
  }
}

import24.HostView<import2.MaterialTreeGroupFlatRadioComponent<T>> viewFactory_MaterialTreeGroupFlatRadioComponentHost0<T>() {
  return _ViewMaterialTreeGroupFlatRadioComponentHost0();
}

final List<Object> styles$MaterialTreeGroupFlatCheckComponent = [import34.styles];

class ViewMaterialTreeGroupFlatCheckComponent0<T> extends import1.ComponentView<import2.MaterialTreeGroupFlatCheckComponent<T>> {
  late final ViewContainer _appEl_0;
  late final import4.NgFor _NgFor_0_9;
  Object? _expr_0;
  Object? _expr_1;
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialTreeGroupFlatCheckComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-tree-group-flat-check');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/src/material_tree/group/material_tree_group_flat.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _anchor_0 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_0);
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupFlatCheckComponent1<T>(parentView, parentIndex);
    });
    this._NgFor_0_9 = import4.NgFor(this._appEl_0, _TemplateRef_0_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_0, this._NgFor_0_9);
    }
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.group;
    if (import13.checkBinding(this._expr_0, currVal_0, 'group', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgFor_0_9, 'ngForOf', currVal_0);
      }
      this._NgFor_0_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html:240:268 */;
      this._expr_0 = currVal_0;
    }
    if ((!import13.debugThrowIfChanged)) {
      this._NgFor_0_9.ngDoCheck();
    }
    this._appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_1 = _ctx.isMaterialTreeGroup;
    if (import13.checkBinding(this._expr_1, currVal_1, null, null)) {
      import10.updateRenderClass(this.rootElement, 'material-tree-group', (currVal_1 ?? false));
      this._expr_1 = currVal_1;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialTreeGroupFlatCheckComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialTreeGroupFlatCheckComponentNgFactory = ComponentFactory<import2.MaterialTreeGroupFlatCheckComponent>('material-tree-group-flat-check', viewFactory_MaterialTreeGroupFlatCheckComponentHost0);
ComponentFactory<import2.MaterialTreeGroupFlatCheckComponent> get MaterialTreeGroupFlatCheckComponentNgFactory {
  return _MaterialTreeGroupFlatCheckComponentNgFactory;
}

ComponentFactory<import2.MaterialTreeGroupFlatCheckComponent<T>> createMaterialTreeGroupFlatCheckComponentFactory<T>() {
  return ComponentFactory('material-tree-group-flat-check', viewFactory_MaterialTreeGroupFlatCheckComponentHost0);
}

class _ViewMaterialTreeGroupFlatCheckComponent1<T> extends import15.EmbeddedView<import2.MaterialTreeGroupFlatCheckComponent<T>> {
  late final import35.ViewMaterialCheckboxComponent0 _compView_0;
  late final import36.MaterialCheckboxComponent _MaterialCheckboxComponent_0_5;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  late final _el_0;
  _ViewMaterialTreeGroupFlatCheckComponent1(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import35.ViewMaterialCheckboxComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(this._el_0, 'material-tree-option tree-selection-state');
    import10.updateRenderAttribute(this._el_0, 'role', 'option');
    this.addShimC(this._el_0);
    this._MaterialCheckboxComponent_0_5 = import36.MaterialCheckboxComponent(import10.unwrapNode(this._el_0), this._compView_0, null, null, 'option');
    final _anchor_1 = import10.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupFlatCheckComponent2<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import10.createRenderAnchor();
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialTreeGroupFlatCheckComponent3<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    this._compView_0.createAndProject(this._MaterialCheckboxComponent_0_5, [
      <Object>[this._appEl_1, this._appEl_2],
    ]);
    final subscription_0 = this._MaterialCheckboxComponent_0_5.onChecked.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import32.HasDisabled) && (nodeIndex <= 2))) {
      return this._MaterialCheckboxComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_option = this.locals['\$implicit'];
    changed = false;
    final currVal_2 = ((_ctx.isReadOnly ?? false) || (_ctx.showDisabledCheckbox(local_option) ?? false));
    if (import13.checkBinding(this._expr_2, currVal_2, 'isReadOnly || showDisabledCheckbox(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialCheckboxComponent_0_5, 'disabled', currVal_2);
      }
      this._MaterialCheckboxComponent_0_5.disabled = (currVal_2!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html:494:549 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.isSelected(local_option);
    if (import13.checkBinding(this._expr_3, currVal_3, 'isSelected(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._MaterialCheckboxComponent_0_5, 'checked', currVal_3);
      }
      this._MaterialCheckboxComponent_0_5.checked = (currVal_3!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html:407:437 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.useComponentRenderer);
    }
    this._NgIf_1_9.ngIf = (_ctx.useComponentRenderer ?? false) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html:596:624 */;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', (!(_ctx.useComponentRenderer ?? false)));
    }
    this._NgIf_2_9.ngIf = ((!(_ctx.useComponentRenderer ?? false)) ?? false) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html:823:852 */;
    final currVal_0 = _ctx.isSelected(local_option);
    if (import13.checkBinding(this._expr_0, currVal_0, 'isSelected(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html')) {
      import10.updateRenderClass(this._el_0, 'selected', (currVal_0 ?? false)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html:323:360 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.isSelectable(local_option);
    if (import13.checkBinding(this._expr_1, currVal_1, 'isSelectable(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html')) {
      import10.updateRenderClass(this._el_0, 'selectable', (currVal_1 ?? false)) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html:363:404 */;
      this._expr_1 = currVal_1;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._MaterialCheckboxComponent_0_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final local_option = this.locals['\$implicit'];
    final _ctx = this.ctx;
    _ctx.setSelectionState(local_option, $event);
  }
}

import15.EmbeddedView<void> viewFactory_MaterialTreeGroupFlatCheckComponent1<T>(import17.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupFlatCheckComponent1<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupFlatCheckComponent2<T> extends import15.EmbeddedView<import2.MaterialTreeGroupFlatCheckComponent<T>> {
  late final import18.ViewDynamicComponent0 _compView_0;
  late final ViewContainer _appEl_0;
  late final import19.DynamicComponent _DynamicComponent_0_8;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  _ViewMaterialTreeGroupFlatCheckComponent2(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import18.ViewDynamicComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'item component');
    this.addShimC(_el_0);
    this._appEl_0 = ViewContainer(0, null, this, _el_0);
    this._DynamicComponent_0_8 = (import9.isDevMode
        ? import20.debugInjectorWrap(import19.DynamicComponent, () {
            return import19.DynamicComponent(((this.parentView!).parentView!).injectorGet(import21.SlowComponentLoader, (this.parentView!).parentIndex), this._appEl_0);
          })
        : import19.DynamicComponent(((this.parentView!).parentView!).injectorGet(import21.SlowComponentLoader, (this.parentView!).parentIndex), this._appEl_0));
    this._compView_0.create(this._DynamicComponent_0_8);
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    final local_option = import9.unsafeCast<_ViewMaterialTreeGroupFlatCheckComponent1>((this.parentView!)).locals['\$implicit'];
    changed = false;
    final currVal_0 = _ctx.getComponentType(local_option);
    if (import13.checkBinding(this._expr_0, currVal_0, 'getComponentType(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'componentType', currVal_0);
      }
      this._DynamicComponent_0_8.componentType = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html:660:702 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.getComponentFactory(local_option);
    if (import13.checkBinding(this._expr_1, currVal_1, 'getComponentFactory(option)', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'componentFactory', currVal_1);
      }
      this._DynamicComponent_0_8.componentFactory = (currVal_1!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html:709:757 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = local_option;
    if (import13.checkBinding(this._expr_2, currVal_2, 'option', 'package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._DynamicComponent_0_8, 'value', currVal_2);
      }
      this._DynamicComponent_0_8.value = (currVal_2!) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html:764:780 */;
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

import15.EmbeddedView<void> viewFactory_MaterialTreeGroupFlatCheckComponent2<T>(import17.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupFlatCheckComponent2<T>(parentView, parentIndex);
}

class _ViewMaterialTreeGroupFlatCheckComponent3<T> extends import15.EmbeddedView<import2.MaterialTreeGroupFlatCheckComponent<T>> {
  final import22.TextBinding _textBinding_1 = import22.TextBinding();
  _ViewMaterialTreeGroupFlatCheckComponent3(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('span');
    this.updateChildClass(_el_0, 'item text');
    this.addShimC(_el_0);
    import10.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final local_option = import9.unsafeCast<_ViewMaterialTreeGroupFlatCheckComponent1>((this.parentView!)).locals['\$implicit'];
    this._textBinding_1.updateText(import23.interpolateString0(_ctx.getOptionAsText(local_option))) /* REF:package:angulardart_components/src/material_tree/group/material_tree_group_flat_check.html:884:911 */;
  }
}

import15.EmbeddedView<void> viewFactory_MaterialTreeGroupFlatCheckComponent3<T>(import17.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeGroupFlatCheckComponent3<T>(parentView, parentIndex);
}

final List<Object> styles$MaterialTreeGroupFlatCheckComponentHost = const [];

class _ViewMaterialTreeGroupFlatCheckComponentHost0<T> extends import24.HostView<import2.MaterialTreeGroupFlatCheckComponent<T>> {
  @override
  void build() {
    this.componentView = ViewMaterialTreeGroupFlatCheckComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import9.isDevMode
        ? import20.debugInjectorWrap(import2.MaterialTreeGroupFlatCheckComponent, () {
            return import2.MaterialTreeGroupFlatCheckComponent(this.injectorGet(import25.MaterialTreeRoot, this.parentIndex), this.componentView, this.injectorGetOptional(import33.DropdownHandle, this.parentIndex));
          })
        : import2.MaterialTreeGroupFlatCheckComponent(this.injectorGet(import25.MaterialTreeRoot, this.parentIndex), this.componentView, this.injectorGetOptional(import33.DropdownHandle, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
  }
}

import24.HostView<import2.MaterialTreeGroupFlatCheckComponent<T>> viewFactory_MaterialTreeGroupFlatCheckComponentHost0<T>() {
  return _ViewMaterialTreeGroupFlatCheckComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialTreeGroupFlatListComponent, createMaterialTreeGroupFlatListComponentFactory());
  _ngRef.registerComponent(MaterialTreeGroupFlatRadioComponent, createMaterialTreeGroupFlatRadioComponentFactory());
  _ngRef.registerComponent(MaterialTreeGroupFlatCheckComponent, createMaterialTreeGroupFlatCheckComponentFactory());
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
