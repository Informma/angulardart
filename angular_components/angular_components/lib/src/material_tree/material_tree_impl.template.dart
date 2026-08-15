// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_tree_impl.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'group/material_tree_group.template.dart' as _ref0;
import 'group/material_tree_group_flat.template.dart' as _ref1;
import 'material_tree_rendering_options.template.dart' as _ref2;
import 'material_tree_root.template.dart' as _ref3;

import 'package:angulardart/angulardart.template.dart' as _ref4;
import 'package:angulardart_components/model/selection/select.template.dart' as _ref5;
import 'package:angulardart_components/model/selection/selection_container.template.dart' as _ref6;
import 'package:angulardart_components/model/selection/selection_model.template.dart' as _ref7;
import 'package:angulardart_components/model/selection/selection_options.template.dart' as _ref8;
import 'package:angulardart_components/model/ui/has_factory.template.dart' as _ref9;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import0;

import 'material_tree_impl.dart' as import1;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import4;
import 'package:angulardart/src/core/linker/views/view.dart' as import5;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import7;
import 'package:angulardart/src/utilities.dart' as import8;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import9;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import11;
import 'package:angulardart/src/runtime/check_binding.dart' as import12;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import14;
import 'package:angulardart/src/common/directives/ng_for.dart' as import15;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import16;

import 'group/material_tree_group.template.dart' as import17;
import 'group/material_tree_group.dart' as import18;

import 'package:angulardart/src/di/errors.dart' as import19;

import 'material_tree_root.dart' as import20;
import '../../mixins/material_dropdown_base.dart' as import21;

import 'package:angulardart_meta/src/di_tokens.dart' as import22;

import 'dart:core';

import 'group/material_tree_group_flat.template.dart' as import24;
import 'group/material_tree_group_flat.dart' as import25;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import26;

final List<Object> styles$MaterialTreeComponent = const [];

class ViewMaterialTreeComponent0<T> extends import0.ComponentView<import1.MaterialTreeComponent<T>> {
  bool _viewQuery_MaterialTreeGroupComponent_0_isDirty = true;
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  static import4.ComponentStyles? _componentStyles;
  ViewMaterialTreeComponent0(import5.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import7.renderFactory.createElement('material-tree');
  }
  static String? get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:angulardart_components/lib/src/material_tree/material_tree_impl.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _anchor_0 = import9.createRenderAnchor();
    import9.appendRenderChild(parentRenderNode, _anchor_0);
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialTreeComponent1<T>(parentView, parentIndex);
    });
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
    final _anchor_1 = import9.createRenderAnchor();
    import9.appendRenderChild(parentRenderNode, _anchor_1);
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialTreeComponent3<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', _ctx.supportsHierarchy);
    }
    this._NgIf_0_9.ngIf = (_ctx.supportsHierarchy ?? false) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:229:255 */;
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', (!(_ctx.supportsHierarchy ?? false)));
    }
    this._NgIf_1_9.ngIf = ((!(_ctx.supportsHierarchy ?? false)) ?? false) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:718:745 */;
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_1.detectChangesInNestedViews();
    if ((!import12.debugThrowIfChanged)) {
      if (this._viewQuery_MaterialTreeGroupComponent_0_isDirty) {
        _ctx.treeGroupNodes = this._appEl_0.mapNestedViews((_ViewMaterialTreeComponent1 nestedView) {
          return nestedView._appEl_0.mapNestedViewsWithSingleResult((_ViewMaterialTreeComponent2 nestedView) {
            return nestedView._MaterialTreeGroupComponent_0_5;
          });
        });
        this._viewQuery_MaterialTreeGroupComponent_0_isDirty = false;
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_1.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.role;
    if (import12.checkBinding(this._expr_0, currVal_0, null, null)) {
      import9.updateRenderAttribute(this.rootElement, 'role', currVal_0);
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.hostMultiselectable;
    if (import12.checkBinding(this._expr_1, currVal_1, null, null)) {
      import9.updateRenderAttribute(this.rootElement, 'aria-multiselectable', currVal_1);
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.hostReadonly;
    if (import12.checkBinding(this._expr_2, currVal_2, null, null)) {
      import9.updateRenderAttribute(this.rootElement, 'aria-readonly', currVal_2);
      this._expr_2 = currVal_2;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import4.ComponentStyles.unscoped(styles$MaterialTreeComponent, _debugComponentUrl));
      if (import8.isDevMode) {
        import4.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialTreeComponentNgFactory = ComponentFactory<import1.MaterialTreeComponent>('material-tree', viewFactory_MaterialTreeComponentHost0);
ComponentFactory<import1.MaterialTreeComponent> get MaterialTreeComponentNgFactory {
  return _MaterialTreeComponentNgFactory;
}

ComponentFactory<import1.MaterialTreeComponent<T>> createMaterialTreeComponentFactory<T>() {
  return ComponentFactory('material-tree', viewFactory_MaterialTreeComponentHost0);
}

class _ViewMaterialTreeComponent1<T> extends import14.EmbeddedView<import1.MaterialTreeComponent<T>> {
  late final ViewContainer _appEl_0;
  late final import15.NgFor _NgFor_0_9;
  Object? _expr_0;
  _ViewMaterialTreeComponent1(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _anchor_0 = import9.createRenderAnchor();
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialTreeComponent2<T>(parentView, parentIndex);
    });
    this._NgFor_0_9 = import15.NgFor(this._appEl_0, _TemplateRef_0_8);
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.registerDirective(_anchor_0, this._NgFor_0_9);
    }
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.options.optionGroups;
    if (import12.checkBinding(this._expr_0, currVal_0, 'options.optionGroups', 'package:angulardart_components/src/material_tree/material_tree_impl.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._NgFor_0_9, 'ngForOf', currVal_0);
      }
      this._NgFor_0_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:284:351 */;
      this._expr_0 = currVal_0;
    }
    if ((!import12.debugThrowIfChanged)) {
      this._NgFor_0_9.ngDoCheck();
    }
    this._appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
  }
}

import14.EmbeddedView<void> viewFactory_MaterialTreeComponent1<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeComponent1<T>(parentView, parentIndex);
}

class _ViewMaterialTreeComponent2<T> extends import14.EmbeddedView<import1.MaterialTreeComponent<T>> {
  late final import17.ViewMaterialTreeGroupComponent0<T> _compView_0;
  late final import18.MaterialTreeGroupComponent<T> _MaterialTreeGroupComponent_0_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  _ViewMaterialTreeComponent2(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import17.ViewMaterialTreeGroupComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this._MaterialTreeGroupComponent_0_5 = (import8.isDevMode
        ? import19.debugInjectorWrap(import18.MaterialTreeGroupComponent, () {
            return import18.MaterialTreeGroupComponent((this.parentView!).injectorGet(import20.MaterialTreeRoot, this.parentIndex), this._compView_0, (this.parentView!).injectorGetOptional(import21.DropdownHandle, this.parentIndex), (this.parentView!).injectorGetOptional(const import22.OpaqueToken<Object>('MaterialTreeGroupComponent_materialTreeLeftPaddingToken'), this.parentIndex));
          })
        : import18.MaterialTreeGroupComponent((this.parentView!).injectorGet(import20.MaterialTreeRoot, this.parentIndex), this._compView_0, (this.parentView!).injectorGetOptional(import21.DropdownHandle, this.parentIndex), (this.parentView!).injectorGetOptional(const import22.OpaqueToken<Object>('MaterialTreeGroupComponent_materialTreeLeftPaddingToken'), this.parentIndex)));
    this._compView_0.create(this._MaterialTreeGroupComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    final local_group = this.locals['\$implicit'];
    final local_optionIndex = import8.unsafeCast<int>(this.locals['index']);
    final currVal_0 = _ctx.allowParentSingleSelection;
    if (import12.checkBinding(this._expr_0, currVal_0, 'allowParentSingleSelection', 'package:angulardart_components/src/material_tree/material_tree_impl.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'allowParentSingleSelection', currVal_0);
      }
      this._MaterialTreeGroupComponent_0_5.allowParentSingleSelection = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:427:484 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.allowParentMultiSelection;
    if (import12.checkBinding(this._expr_1, currVal_1, 'allowParentMultiSelection', 'package:angulardart_components/src/material_tree/material_tree_impl.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'allowParentMultiSelection', currVal_1);
      }
      this._MaterialTreeGroupComponent_0_5.allowParentMultiSelection = (currVal_1!) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:489:544 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.shouldExpand(local_group, local_optionIndex);
    if (import12.checkBinding(this._expr_2, currVal_2, 'shouldExpand(group, optionIndex)', 'package:angulardart_components/src/material_tree/material_tree_impl.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'expandAll', currVal_2);
      }
      this._MaterialTreeGroupComponent_0_5.expandAll = (currVal_2!) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:356:402 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = local_group;
    if (import12.checkBinding(this._expr_3, currVal_3, 'group', 'package:angulardart_components/src/material_tree/material_tree_impl.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'group', currVal_3);
      }
      this._MaterialTreeGroupComponent_0_5.group = (currVal_3!) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:407:422 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.allowDeselectInHierarchy;
    if (import12.checkBinding(this._expr_4, currVal_4, 'allowDeselectInHierarchy', 'package:angulardart_components/src/material_tree/material_tree_impl.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'deselectOnTrigger', currVal_4);
      }
      this._MaterialTreeGroupComponent_0_5.deselectOnTrigger = (currVal_4!) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:549:595 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.maxInitialOptionsShown(local_group, local_optionIndex);
    if (import12.checkBinding(this._expr_5, currVal_5, 'maxInitialOptionsShown(group, optionIndex)', 'package:angulardart_components/src/material_tree/material_tree_impl.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialTreeGroupComponent_0_5, 'maxInitialOptionsShown', currVal_5);
      }
      this._MaterialTreeGroupComponent_0_5.maxInitialOptionsShown = (currVal_5!) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:600:669 */;
      this._expr_5 = currVal_5;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void dirtyParentQueriesInternal() {
    import8.unsafeCast<ViewMaterialTreeComponent0>(((this.parentView!).parentView!))._viewQuery_MaterialTreeGroupComponent_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MaterialTreeGroupComponent_0_5.ngOnDestroy();
  }
}

import14.EmbeddedView<void> viewFactory_MaterialTreeComponent2<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeComponent2<T>(parentView, parentIndex);
}

class _ViewMaterialTreeComponent3<T> extends import14.EmbeddedView<import1.MaterialTreeComponent<T>> {
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  _ViewMaterialTreeComponent3(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _anchor_0 = import9.createRenderAnchor();
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialTreeComponent4<T>(parentView, parentIndex);
    });
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
    final _anchor_1 = import9.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialTreeComponent6<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import9.createRenderAnchor();
    this._appEl_2 = ViewContainer(2, null, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialTreeComponent8<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    this.initRootNodesAndSubscriptions(import8.unsafeCast(<Object>[this._appEl_0, this._appEl_1, this._appEl_2]), null);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', _ctx.showFlatList);
    }
    this._NgIf_0_9.ngIf = (_ctx.showFlatList ?? false) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:797:818 */;
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.showFlatRadio);
    }
    this._NgIf_1_9.ngIf = (_ctx.showFlatRadio ?? false) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:1033:1055 */;
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', _ctx.showFlatCheck);
    }
    this._NgIf_2_9.ngIf = (_ctx.showFlatCheck ?? false) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:1271:1293 */;
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
  }
}

import14.EmbeddedView<void> viewFactory_MaterialTreeComponent3<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeComponent3<T>(parentView, parentIndex);
}

class _ViewMaterialTreeComponent4<T> extends import14.EmbeddedView<import1.MaterialTreeComponent<T>> {
  late final ViewContainer _appEl_0;
  late final import15.NgFor _NgFor_0_9;
  Object? _expr_0;
  _ViewMaterialTreeComponent4(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _anchor_0 = import9.createRenderAnchor();
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialTreeComponent5<T>(parentView, parentIndex);
    });
    this._NgFor_0_9 = import15.NgFor(this._appEl_0, _TemplateRef_0_8);
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.registerDirective(_anchor_0, this._NgFor_0_9);
    }
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.options.optionGroups;
    if (import12.checkBinding(this._expr_0, currVal_0, 'options.optionGroups', 'package:angulardart_components/src/material_tree/material_tree_impl.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._NgFor_0_9, 'ngForOf', currVal_0);
      }
      this._NgFor_0_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:861:903 */;
      this._expr_0 = currVal_0;
    }
    if ((!import12.debugThrowIfChanged)) {
      this._NgFor_0_9.ngDoCheck();
    }
    this._appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
  }
}

import14.EmbeddedView<void> viewFactory_MaterialTreeComponent4<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeComponent4<T>(parentView, parentIndex);
}

class _ViewMaterialTreeComponent5<T> extends import14.EmbeddedView<import1.MaterialTreeComponent<T>> {
  late final import24.ViewMaterialTreeGroupFlatListComponent0<T> _compView_0;
  late final import25.MaterialTreeGroupFlatListComponent<T> _MaterialTreeGroupFlatListComponent_0_5;
  Object? _expr_0;
  _ViewMaterialTreeComponent5(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import24.ViewMaterialTreeGroupFlatListComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this._MaterialTreeGroupFlatListComponent_0_5 = (import8.isDevMode
        ? import19.debugInjectorWrap(import25.MaterialTreeGroupFlatListComponent, () {
            return import25.MaterialTreeGroupFlatListComponent((this.parentView!).injectorGet(import20.MaterialTreeRoot, this.parentIndex), this._compView_0);
          })
        : import25.MaterialTreeGroupFlatListComponent((this.parentView!).injectorGet(import20.MaterialTreeRoot, this.parentIndex), this._compView_0));
    this._compView_0.create(this._MaterialTreeGroupFlatListComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    final local_group = this.locals['\$implicit'];
    final currVal_0 = local_group;
    if (import12.checkBinding(this._expr_0, currVal_0, 'group', 'package:angulardart_components/src/material_tree/material_tree_impl.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialTreeGroupFlatListComponent_0_5, 'group', currVal_0);
      }
      this._MaterialTreeGroupFlatListComponent_0_5.group = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:910:925 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }
}

import14.EmbeddedView<void> viewFactory_MaterialTreeComponent5<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeComponent5<T>(parentView, parentIndex);
}

class _ViewMaterialTreeComponent6<T> extends import14.EmbeddedView<import1.MaterialTreeComponent<T>> {
  late final ViewContainer _appEl_0;
  late final import15.NgFor _NgFor_0_9;
  Object? _expr_0;
  _ViewMaterialTreeComponent6(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _anchor_0 = import9.createRenderAnchor();
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialTreeComponent7<T>(parentView, parentIndex);
    });
    this._NgFor_0_9 = import15.NgFor(this._appEl_0, _TemplateRef_0_8);
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.registerDirective(_anchor_0, this._NgFor_0_9);
    }
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.options.optionGroups;
    if (import12.checkBinding(this._expr_0, currVal_0, 'options.optionGroups', 'package:angulardart_components/src/material_tree/material_tree_impl.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._NgFor_0_9, 'ngForOf', currVal_0);
      }
      this._NgFor_0_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:1099:1141 */;
      this._expr_0 = currVal_0;
    }
    if ((!import12.debugThrowIfChanged)) {
      this._NgFor_0_9.ngDoCheck();
    }
    this._appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
  }
}

import14.EmbeddedView<void> viewFactory_MaterialTreeComponent6<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeComponent6<T>(parentView, parentIndex);
}

class _ViewMaterialTreeComponent7<T> extends import14.EmbeddedView<import1.MaterialTreeComponent<T>> {
  late final import24.ViewMaterialTreeGroupFlatRadioComponent0<T> _compView_0;
  late final import25.MaterialTreeGroupFlatRadioComponent<T> _MaterialTreeGroupFlatRadioComponent_0_5;
  Object? _expr_0;
  _ViewMaterialTreeComponent7(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import24.ViewMaterialTreeGroupFlatRadioComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this._MaterialTreeGroupFlatRadioComponent_0_5 = (import8.isDevMode
        ? import19.debugInjectorWrap(import25.MaterialTreeGroupFlatRadioComponent, () {
            return import25.MaterialTreeGroupFlatRadioComponent((this.parentView!).injectorGet(import20.MaterialTreeRoot, this.parentIndex), this._compView_0, (this.parentView!).injectorGetOptional(import21.DropdownHandle, this.parentIndex));
          })
        : import25.MaterialTreeGroupFlatRadioComponent((this.parentView!).injectorGet(import20.MaterialTreeRoot, this.parentIndex), this._compView_0, (this.parentView!).injectorGetOptional(import21.DropdownHandle, this.parentIndex)));
    this._compView_0.create(this._MaterialTreeGroupFlatRadioComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    final local_group = this.locals['\$implicit'];
    final currVal_0 = local_group;
    if (import12.checkBinding(this._expr_0, currVal_0, 'group', 'package:angulardart_components/src/material_tree/material_tree_impl.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialTreeGroupFlatRadioComponent_0_5, 'group', currVal_0);
      }
      this._MaterialTreeGroupFlatRadioComponent_0_5.group = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:1148:1163 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }
}

import14.EmbeddedView<void> viewFactory_MaterialTreeComponent7<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeComponent7<T>(parentView, parentIndex);
}

class _ViewMaterialTreeComponent8<T> extends import14.EmbeddedView<import1.MaterialTreeComponent<T>> {
  late final ViewContainer _appEl_0;
  late final import15.NgFor _NgFor_0_9;
  Object? _expr_0;
  _ViewMaterialTreeComponent8(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _anchor_0 = import9.createRenderAnchor();
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialTreeComponent9<T>(parentView, parentIndex);
    });
    this._NgFor_0_9 = import15.NgFor(this._appEl_0, _TemplateRef_0_8);
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.registerDirective(_anchor_0, this._NgFor_0_9);
    }
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.options.optionGroups;
    if (import12.checkBinding(this._expr_0, currVal_0, 'options.optionGroups', 'package:angulardart_components/src/material_tree/material_tree_impl.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._NgFor_0_9, 'ngForOf', currVal_0);
      }
      this._NgFor_0_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:1337:1379 */;
      this._expr_0 = currVal_0;
    }
    if ((!import12.debugThrowIfChanged)) {
      this._NgFor_0_9.ngDoCheck();
    }
    this._appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
  }
}

import14.EmbeddedView<void> viewFactory_MaterialTreeComponent8<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeComponent8<T>(parentView, parentIndex);
}

class _ViewMaterialTreeComponent9<T> extends import14.EmbeddedView<import1.MaterialTreeComponent<T>> {
  late final import24.ViewMaterialTreeGroupFlatCheckComponent0<T> _compView_0;
  late final import25.MaterialTreeGroupFlatCheckComponent<T> _MaterialTreeGroupFlatCheckComponent_0_5;
  Object? _expr_0;
  _ViewMaterialTreeComponent9(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import24.ViewMaterialTreeGroupFlatCheckComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this._MaterialTreeGroupFlatCheckComponent_0_5 = (import8.isDevMode
        ? import19.debugInjectorWrap(import25.MaterialTreeGroupFlatCheckComponent, () {
            return import25.MaterialTreeGroupFlatCheckComponent((this.parentView!).injectorGet(import20.MaterialTreeRoot, this.parentIndex), this._compView_0, (this.parentView!).injectorGetOptional(import21.DropdownHandle, this.parentIndex));
          })
        : import25.MaterialTreeGroupFlatCheckComponent((this.parentView!).injectorGet(import20.MaterialTreeRoot, this.parentIndex), this._compView_0, (this.parentView!).injectorGetOptional(import21.DropdownHandle, this.parentIndex)));
    this._compView_0.create(this._MaterialTreeGroupFlatCheckComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    final local_group = this.locals['\$implicit'];
    final currVal_0 = local_group;
    if (import12.checkBinding(this._expr_0, currVal_0, 'group', 'package:angulardart_components/src/material_tree/material_tree_impl.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialTreeGroupFlatCheckComponent_0_5, 'group', currVal_0);
      }
      this._MaterialTreeGroupFlatCheckComponent_0_5.group = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/material_tree_impl.html:1386:1401 */;
      this._expr_0 = currVal_0;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }
}

import14.EmbeddedView<void> viewFactory_MaterialTreeComponent9<T>(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeComponent9<T>(parentView, parentIndex);
}

final List<Object> styles$MaterialTreeComponentHost = const [];

class _ViewMaterialTreeComponentHost0<T> extends import26.HostView<import1.MaterialTreeComponent<T>> {
  @override
  void build() {
    this.componentView = ViewMaterialTreeComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import8.isDevMode
        ? import19.debugInjectorWrap(import1.MaterialTreeComponent, () {
            return import1.MaterialTreeComponent(this.injectorGetOptional(import20.MaterialTreeRoot, this.parentIndex), null);
          })
        : import1.MaterialTreeComponent(this.injectorGetOptional(import20.MaterialTreeRoot, this.parentIndex), null));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import20.MaterialTreeRoot) && (0 == nodeIndex))) {
      return this.component;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
  }
}

import26.HostView<import1.MaterialTreeComponent<T>> viewFactory_MaterialTreeComponentHost0<T>() {
  return _ViewMaterialTreeComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialTreeComponent, createMaterialTreeComponentFactory());
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
