// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_select.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'material_select_base.template.dart' as _ref0;
import 'material_select_item.template.dart' as _ref1;

import 'package:angulardart/angulardart.template.dart' as _ref2;
import 'package:angulardart_components/focus/focus_item.template.dart' as _ref3;
import 'package:angulardart_components/focus/focus_list.template.dart' as _ref4;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref5;
import 'package:angulardart_components/material_list/material_list.template.dart' as _ref6;
import 'package:angulardart_components/model/selection/select.template.dart' as _ref7;
import 'package:angulardart_components/model/selection/selection_container.template.dart' as _ref8;
import 'package:angulardart_components/model/selection/selection_model.template.dart' as _ref9;
import 'package:angulardart_components/model/selection/selection_options.template.dart' as _ref10;
import 'package:angulardart_components/model/ui/has_factory.template.dart' as _ref11;
import 'package:angulardart_components/model/ui/template_support.template.dart' as _ref12;
import 'package:angulardart_components/material_select/material_select.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_select.dart' as import2;
import '../material_list/material_list.template.dart' as import3;
import '../focus/focus_list.template.dart' as import4;
import '../material_list/material_list.dart' as import5;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import8;
import 'package:angulardart/src/core/linker/views/view.dart' as import9;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import11;
import 'package:angulardart/src/utilities.dart' as import12;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import13;
import 'package:angulardart/src/di/errors.dart' as import14;

import '../focus/focus_list.dart' as import15;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import16;
import 'package:angulardart/src/devtools.dart' as import17;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/runtime/check_binding.dart' as import19;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import21;
import 'package:angulardart/src/common/directives/ng_for.dart' as import22;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import23;
import 'package:angulardart/src/runtime/text_binding.dart' as import24;
import 'package:angulardart/src/runtime/interpolate.dart' as import25;

import 'material_select_item.template.dart' as import26;
import '../focus/focus_item.template.dart' as import27;
import 'material_select_item.dart' as import28;
import '../focus/focus_item.dart' as import29;
import '../mixins/material_dropdown_base.dart' as import30;
import 'activation_handler.dart' as import31;
import '../focus/focus.dart' as import32;
import '../model/selection/selection_container.dart' as import33;
import '../interfaces/has_disabled.dart' as import34;
import '../model/ui/has_renderer.dart' as import35;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import36;

final List<Object> styles$MaterialSelectComponent = [import0.styles];

class ViewMaterialSelectComponent0<T> extends import1.ComponentView<import2.MaterialSelectComponent<T>> {
  bool _query_FocusableItem_0_0_isDirty = true;
  late final import3.ViewMaterialListComponent0 _compView_0;
  late final import4.FocusListDirectiveNgCd _FocusListDirective_0_5;
  late final import5.MaterialListComponent _MaterialListComponent_0_6;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  late final _el_0;
  static import8.ComponentStyles? _componentStyles;
  ViewMaterialSelectComponent0(import9.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import11.renderFactory.createElement('material-select');
  }
  static String? get _debugComponentUrl {
    return (import12.isDevMode ? 'asset:angulardart_components/lib/material_select/material_select.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    this._compView_0 = import3.ViewMaterialListComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import13.appendRenderChild(parentRenderNode, this._el_0);
    import13.updateRenderAttribute(this._el_0, 'focusList', '');
    import13.updateRenderAttribute(this._el_0, 'role', 'none');
    this.addShimC(this._el_0);
    this._FocusListDirective_0_5 = import4.FocusListDirectiveNgCd(
      (import12.isDevMode
          ? import14.debugInjectorWrap(import15.FocusListDirective, () {
              return import15.FocusListDirective((this.parentView!).injectorGet(import16.NgZone, this.parentIndex), 'none', null);
            })
          : import15.FocusListDirective((this.parentView!).injectorGet(import16.NgZone, this.parentIndex), 'none', null)),
    );
    this._MaterialListComponent_0_6 = import5.MaterialListComponent();
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(this._el_0, this._FocusListDirective_0_5.instance);
    }
    final _anchor_1 = import13.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialSelectComponent1<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    this._compView_0.createAndProject(this._MaterialListComponent_0_6, [
      <Object>[this.projectedNodes[0]]..addAll(<Object>[this._appEl_1]),
    ]);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final currVal_0 = _ctx.autoFocusIndex;
    if (import19.checkBinding(this._expr_0, currVal_0, 'autoFocusIndex', 'package:angulardart_components/material_select/material_select.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._FocusListDirective_0_5.instance, 'autoFocusIndex', currVal_0);
      }
      this._FocusListDirective_0_5.instance.autoFocusIndex = (currVal_0!) /* REF:package:angulardart_components/material_select/material_select.html:244:277 */;
      this._expr_0 = currVal_0;
    }
    changed = false;
    if (firstCheck) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialListComponent_0_6, 'role', 'none');
      }
      this._MaterialListComponent_0_6.role = 'none' /* REF:package:angulardart_components/material_select/material_select.html:278:289 */;
      changed = true;
    }
    final currVal_2 = _ctx.width;
    if (import19.checkBinding(this._expr_2, currVal_2, 'width', 'package:angulardart_components/material_select/material_select.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialListComponent_0_6, 'width', currVal_2);
      }
      this._MaterialListComponent_0_6.width = (currVal_2!) /* REF:package:angulardart_components/material_select/material_select.html:290:305 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', (_ctx.options != null));
    }
    this._NgIf_1_9.ngIf = ((_ctx.options != null) ?? false) /* REF:package:angulardart_components/material_select/material_select.html:373:396 */;
    this._FocusListDirective_0_5.detectHostChanges(this._compView_0, this._el_0);
    this._compView_0.detectHostChanges(firstCheck);
    this._appEl_1.detectChangesInNestedViews();
    if ((!import19.debugThrowIfChanged)) {
      if (this._query_FocusableItem_0_0_isDirty) {
        this._FocusListDirective_0_5.instance.listItems = this._appEl_1.mapNestedViews((_ViewMaterialSelectComponent1 nestedView) {
          return nestedView._appEl_1.mapNestedViews((_ViewMaterialSelectComponent2 nestedView) {
            return nestedView._appEl_1.mapNestedViews((_ViewMaterialSelectComponent3 nestedView) {
              return nestedView._appEl_1.mapNestedViewsWithSingleResult((_ViewMaterialSelectComponent5 nestedView) {
                return nestedView._FocusItemDirective_0_5.instance;
              });
            });
          });
        });
        this._query_FocusableItem_0_0_isDirty = false;
      }
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._FocusListDirective_0_5.instance.ngOnDestroy();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_3 = _ctx.isMultiSelect;
    if (import19.checkBinding(this._expr_3, currVal_3, null, null)) {
      import13.updateRenderAttribute(this.rootElement, 'aria-multiselectable', currVal_3?.toString());
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.disabledStr;
    if (import19.checkBinding(this._expr_4, currVal_4, null, null)) {
      import13.updateRenderAttribute(this.rootElement, 'aria-disabled', currVal_4);
      this._expr_4 = currVal_4;
    }
    final currVal_5 = import2.MaterialSelectComponent.hostRole;
    if (import19.checkBinding(this._expr_5, currVal_5, null, null)) {
      import13.updateRenderAttribute(this.rootElement, 'role', currVal_5);
      this._expr_5 = currVal_5;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import8.ComponentStyles.scoped(styles$MaterialSelectComponent, _debugComponentUrl));
      if (import12.isDevMode) {
        import8.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialSelectComponentNgFactory = ComponentFactory<import2.MaterialSelectComponent>('material-select', viewFactory_MaterialSelectComponentHost0);
ComponentFactory<import2.MaterialSelectComponent> get MaterialSelectComponentNgFactory {
  return _MaterialSelectComponentNgFactory;
}

ComponentFactory<import2.MaterialSelectComponent<T>> createMaterialSelectComponentFactory<T>() {
  return ComponentFactory('material-select', viewFactory_MaterialSelectComponentHost0);
}

class _ViewMaterialSelectComponent1<T> extends import21.EmbeddedView<import2.MaterialSelectComponent<T>> {
  late final ViewContainer _appEl_1;
  late final import22.NgFor _NgFor_1_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  late final _el_0;
  _ViewMaterialSelectComponent1(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import13.createRenderElement('div');
    this.updateChildClass(this._el_0, 'options-wrapper');
    import13.updateRenderAttribute(this._el_0, 'role', 'group');
    this.addShimC(this._el_0);
    final _anchor_1 = import13.createRenderAnchor();
    import13.appendRenderChild(this._el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialSelectComponent2<T>(parentView, parentIndex);
    });
    this._NgFor_1_9 = import22.NgFor(this._appEl_1, _TemplateRef_1_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_1, this._NgFor_1_9);
    }
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_2 = _ctx.options.optionGroups;
    if (import19.checkBinding(this._expr_2, currVal_2, 'options.optionGroups', 'package:angulardart_components/material_select/material_select.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForOf', currVal_2);
      }
      this._NgFor_1_9.ngForOf = (currVal_2!) /* REF:package:angulardart_components/material_select/material_select.html:523:590 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.trackByIndexFn;
    if (import19.checkBinding(this._expr_3, currVal_3, 'trackByIndexFn', 'package:angulardart_components/material_select/material_select.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForTrackBy', currVal_3);
      }
      this._NgFor_1_9.ngForTrackBy = (currVal_3!) /* REF:package:angulardart_components/material_select/material_select.html:523:590 */;
      this._expr_3 = currVal_3;
    }
    if ((!import19.debugThrowIfChanged)) {
      this._NgFor_1_9.ngDoCheck();
    }
    final currVal_0 = _ctx.ariaLabelledBy;
    if (import19.checkBinding(this._expr_0, currVal_0, 'ariaLabelledBy', 'package:angulardart_components/material_select/material_select.html')) {
      import13.updateRenderAttribute(this._el_0, 'aria-labelledby', currVal_0) /* REF:package:angulardart_components/material_select/material_select.html:424:463 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.ariaDescribedBy;
    if (import19.checkBinding(this._expr_1, currVal_1, 'ariaDescribedBy', 'package:angulardart_components/material_select/material_select.html')) {
      import13.updateRenderAttribute(this._el_0, 'aria-describedby', currVal_1) /* REF:package:angulardart_components/material_select/material_select.html:471:512 */;
      this._expr_1 = currVal_1;
    }
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }
}

import21.EmbeddedView<void> viewFactory_MaterialSelectComponent1<T>(import23.RenderView parentView, int parentIndex) {
  return _ViewMaterialSelectComponent1<T>(parentView, parentIndex);
}

class _ViewMaterialSelectComponent2<T> extends import21.EmbeddedView<import2.MaterialSelectComponent<T>> {
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  Object? _expr_0;
  late final _el_0;
  _ViewMaterialSelectComponent2(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import13.createRenderElement('div');
    import13.updateRenderAttribute(this._el_0, 'group', '');
    this.addShimC(this._el_0);
    final _anchor_1 = import13.createRenderAnchor();
    import13.appendRenderChild(this._el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialSelectComponent3<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final local_group = this.locals['\$implicit'];
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', local_group.isNotEmpty);
    }
    this._NgIf_1_9.ngIf = (local_group.isNotEmpty ?? false) /* REF:package:angulardart_components/material_select/material_select.html:653:678 */;
    final currVal_0 = local_group.isEmpty;
    if (import19.checkBinding(this._expr_0, currVal_0, 'group.isEmpty', 'package:angulardart_components/material_select/material_select.html')) {
      import13.updateRenderClass(this._el_0, 'empty', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_select/material_select.html:606:635 */;
      this._expr_0 = currVal_0;
    }
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }
}

import21.EmbeddedView<void> viewFactory_MaterialSelectComponent2<T>(import23.RenderView parentView, int parentIndex) {
  return _ViewMaterialSelectComponent2<T>(parentView, parentIndex);
}

class _ViewMaterialSelectComponent3<T> extends import21.EmbeddedView<import2.MaterialSelectComponent<T>> {
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  late final ViewContainer _appEl_1;
  late final import22.NgFor _NgFor_1_9;
  Object? _expr_0;
  _ViewMaterialSelectComponent3(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _anchor_0 = import13.createRenderAnchor();
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialSelectComponent4<T>(parentView, parentIndex);
    });
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
    final _anchor_1 = import13.createRenderAnchor();
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialSelectComponent5<T>(parentView, parentIndex);
    });
    this._NgFor_1_9 = import22.NgFor(this._appEl_1, _TemplateRef_1_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_1, this._NgFor_1_9);
    }
    this.initRootNodesAndSubscriptions(import12.unsafeCast(<Object>[this._appEl_0, this._appEl_1]), null);
  }

  @override
  void detectChangesInternal() {
    final local_group = import12.unsafeCast<_ViewMaterialSelectComponent2>((this.parentView!)).locals['\$implicit'];
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', local_group.hasLabel);
    }
    this._NgIf_0_9.ngIf = (local_group.hasLabel ?? false) /* REF:package:angulardart_components/material_select/material_select.html:694:716 */;
    final currVal_0 = local_group;
    if (import19.checkBinding(this._expr_0, currVal_0, 'group', 'package:angulardart_components/material_select/material_select.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForOf', currVal_0);
      }
      this._NgFor_1_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/material_select/material_select.html:784:810 */;
      this._expr_0 = currVal_0;
    }
    if ((!import19.debugThrowIfChanged)) {
      this._NgFor_1_9.ngDoCheck();
    }
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_1.destroyNestedViews();
  }
}

import21.EmbeddedView<void> viewFactory_MaterialSelectComponent3<T>(import23.RenderView parentView, int parentIndex) {
  return _ViewMaterialSelectComponent3<T>(parentView, parentIndex);
}

class _ViewMaterialSelectComponent4<T> extends import21.EmbeddedView<import2.MaterialSelectComponent<T>> {
  final import24.TextBinding _textBinding_1 = import24.TextBinding();
  _ViewMaterialSelectComponent4(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import13.createRenderElement('span');
    import13.updateRenderAttribute(_el_0, 'label', '');
    this.addShimC(_el_0);
    import13.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final local_group = import12.unsafeCast<_ViewMaterialSelectComponent2>(((this.parentView!).parentView!)).locals['\$implicit'];
    this._textBinding_1.updateText(import25.interpolate0(local_group.uiDisplayName)) /* REF:package:angulardart_components/material_select/material_select.html:723:746 */;
  }
}

import21.EmbeddedView<void> viewFactory_MaterialSelectComponent4<T>(import23.RenderView parentView, int parentIndex) {
  return _ViewMaterialSelectComponent4<T>(parentView, parentIndex);
}

class _ViewMaterialSelectComponent5<T> extends import21.EmbeddedView<import2.MaterialSelectComponent<T>> {
  late final import26.ViewMaterialSelectItemComponent0<T> _compView_0;
  late final import27.FocusItemDirectiveNgCd _FocusItemDirective_0_5;
  late final import28.MaterialSelectItemComponent<T> _MaterialSelectItemComponent_0_6;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  late final _el_0;
  _ViewMaterialSelectComponent5(import23.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import26.ViewMaterialSelectItemComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import13.updateRenderAttribute(this._el_0, 'focusItem', '');
    this.addShimC(this._el_0);
    this._FocusItemDirective_0_5 = import27.FocusItemDirectiveNgCd(import29.FocusItemDirective(import13.unwrapNode(this._el_0), this._compView_0, null));
    this._MaterialSelectItemComponent_0_6 = (import12.isDevMode
        ? import14.debugInjectorWrap(import28.MaterialSelectItemComponent, () {
            return import28.MaterialSelectItemComponent(import13.unwrapNode(this._el_0), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import30.DropdownHandle, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import31.ActivationHandler, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0, null);
          })
        : import28.MaterialSelectItemComponent(import13.unwrapNode(this._el_0), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import30.DropdownHandle, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), (((((this.parentView!).parentView!).parentView!).parentView!).parentView!).injectorGetOptional(import31.ActivationHandler, ((((this.parentView!).parentView!).parentView!).parentView!).parentIndex), this._compView_0, null));
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(this._el_0, this._FocusItemDirective_0_5.instance);
    }
    this._compView_0.createAndProject(this._MaterialSelectItemComponent_0_6, [const <Object>[]]);
    import13.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(this._FocusItemDirective_0_5.instance.keydown));
    this.initRootNode(this._el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import32.FocusableItem)) {
        return this._FocusItemDirective_0_5.instance;
      }
      if (((identical(token, import33.SelectionItem) || identical(token, import34.HasDisabled)) || identical(token, import35.HasRenderer))) {
        return this._MaterialSelectItemComponent_0_6;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_item = this.locals['\$implicit'];
    changed = false;
    final currVal_0 = ((_ctx.disabled ?? false) || (_ctx.isOptionDisabled(local_item) ?? false));
    if (import19.checkBinding(this._expr_0, currVal_0, 'disabled || isOptionDisabled(item)', 'package:angulardart_components/material_select/material_select.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_6, 'disabled', currVal_0);
      }
      this._MaterialSelectItemComponent_0_6.disabled = (currVal_0!) /* REF:package:angulardart_components/material_select/material_select.html:941:988 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = local_item;
    if (import19.checkBinding(this._expr_1, currVal_1, 'item', 'package:angulardart_components/material_select/material_select.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_6, 'value', currVal_1);
      }
      this._MaterialSelectItemComponent_0_6.value = (currVal_1!) /* REF:package:angulardart_components/material_select/material_select.html:1209:1223 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.itemRenderer;
    if (import19.checkBinding(this._expr_2, currVal_2, 'itemRenderer', 'package:angulardart_components/material_select/material_select.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_6, 'itemRenderer', currVal_2);
      }
      this._MaterialSelectItemComponent_0_6.itemRenderer = (currVal_2!) /* REF:package:angulardart_components/material_select/material_select.html:881:910 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.componentRenderer;
    if (import19.checkBinding(this._expr_3, currVal_3, 'componentRenderer', 'package:angulardart_components/material_select/material_select.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_6, 'componentRenderer', currVal_3);
      }
      this._MaterialSelectItemComponent_0_6.componentRenderer = (currVal_3!) /* REF:package:angulardart_components/material_select/material_select.html:1019:1058 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.factoryRenderer;
    if (import19.checkBinding(this._expr_4, currVal_4, 'factoryRenderer', 'package:angulardart_components/material_select/material_select.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_6, 'factoryRenderer', currVal_4);
      }
      this._MaterialSelectItemComponent_0_6.factoryRenderer = (currVal_4!) /* REF:package:angulardart_components/material_select/material_select.html:1089:1124 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.selection;
    if (import19.checkBinding(this._expr_5, currVal_5, 'selection', 'package:angulardart_components/material_select/material_select.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_6, 'selection', currVal_5);
      }
      this._MaterialSelectItemComponent_0_6.selection = (currVal_5!) /* REF:package:angulardart_components/material_select/material_select.html:1155:1178 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._FocusItemDirective_0_5.detectHostChanges(this._compView_0, this._el_0);
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void dirtyParentQueriesInternal() {
    import12.unsafeCast<ViewMaterialSelectComponent0>(((((this.parentView!).parentView!).parentView!).parentView!))._query_FocusableItem_0_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MaterialSelectItemComponent_0_6.ngOnDestroy();
  }
}

import21.EmbeddedView<void> viewFactory_MaterialSelectComponent5<T>(import23.RenderView parentView, int parentIndex) {
  return _ViewMaterialSelectComponent5<T>(parentView, parentIndex);
}

final List<Object> styles$MaterialSelectComponentHost = const [];

class _ViewMaterialSelectComponentHost0<T> extends import36.HostView<import2.MaterialSelectComponent<T>> {
  @override
  void build() {
    this.componentView = ViewMaterialSelectComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialSelectComponent();
    this.component.selectItems = [];
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import34.HasDisabled) || identical(token, import35.HasRenderer)) || identical(token, import33.SelectionContainer)) && (0 == nodeIndex))) {
      return this.component;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    if (((!import19.debugThrowIfChanged) && firstCheck)) {
      this.component.ngOnInit();
    }
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
  }
}

import36.HostView<import2.MaterialSelectComponent<T>> viewFactory_MaterialSelectComponentHost0<T>() {
  return _ViewMaterialSelectComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialSelectComponent, createMaterialSelectComponentFactory());
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
}
