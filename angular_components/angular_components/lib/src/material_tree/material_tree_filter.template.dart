// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_tree_filter.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/material_input/material_input.template.dart' as _ref1;
import 'package:angulardart_components/model/selection/select.template.dart' as _ref2;
import 'package:angulardart_components/src/material_tree/material_tree_root.template.dart' as _ref3;
import 'package:angulardart_components/utils/async/async.template.dart' as _ref4;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import0;

import 'material_tree_filter.dart' as import1;

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
import 'package:angulardart/src/runtime/queries.dart' as import13;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import15;

import '../../material_input/material_input.template.dart' as import16;
import '../../material_input/deferred_validator.dart' as import17;

import 'dart:core';

import 'package:angulardart_forms/src/directives/ng_model.dart' as import19;

import '../../material_input/material_input.dart' as import20;
import '../../material_input/material_input_default_value_accessor.dart' as import21;

import 'package:angulardart/src/core/linker/views/render_view.dart' as import22;
import 'package:angulardart_meta/src/di_tokens.dart' as import23;
import 'package:angulardart_forms/src/directives/ng_control.dart' as import24;

import '../../material_input/base_material_input.dart' as import25;
import '../../utils/angular/reference/reference.dart' as import26;
import '../../focus/focus_interface.dart' as import27;
import '../../interfaces/has_disabled.dart' as import28;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import29;
import 'package:angulardart/src/di/errors.dart' as import30;

import 'material_tree_root.dart' as import31;

final List<Object> styles$MaterialTreeFilterComponent = const [];

class ViewMaterialTreeFilterComponent0 extends import0.ComponentView<import1.MaterialTreeFilterComponent> {
  bool _viewQuery_materialInput_0_isDirty = true;
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  static import4.ComponentStyles? _componentStyles;
  ViewMaterialTreeFilterComponent0(import5.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import7.renderFactory.createElement('material-tree-filter');
  }
  static String? get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:angulardart_components/lib/src/material_tree/material_tree_filter.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _anchor_0 = import9.createRenderAnchor();
    import9.appendRenderChild(parentRenderNode, _anchor_0);
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, viewFactory_MaterialTreeFilterComponent1);
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', _ctx.hasFilterable);
    }
    this._NgIf_0_9.ngIf = (_ctx.hasFilterable ?? false) /* REF:package:angulardart_components/src/material_tree/material_tree_filter.html:254:275 */;
    this._appEl_0.detectChangesInNestedViews();
    if ((!import12.debugThrowIfChanged)) {
      if (this._viewQuery_materialInput_0_isDirty) {
        _ctx.materialInput = import13.firstOrNull(
          this._appEl_0.mapNestedViewsWithSingleResult((_ViewMaterialTreeFilterComponent1 nestedView) {
            import5.View.queryChangeDetectorRefs[nestedView._MaterialInputComponent_0_9] = nestedView._compView_0;
            return nestedView._MaterialInputComponent_0_9;
          }),
        );
        this._viewQuery_materialInput_0_isDirty = false;
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import4.ComponentStyles.unscoped(styles$MaterialTreeFilterComponent, _debugComponentUrl));
      if (import8.isDevMode) {
        import4.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialTreeFilterComponentNgFactory = ComponentFactory<import1.MaterialTreeFilterComponent>('material-tree-filter', viewFactory_MaterialTreeFilterComponentHost0);
ComponentFactory<import1.MaterialTreeFilterComponent> get MaterialTreeFilterComponentNgFactory {
  return _MaterialTreeFilterComponentNgFactory;
}

ComponentFactory<import1.MaterialTreeFilterComponent> createMaterialTreeFilterComponentFactory() {
  return ComponentFactory('material-tree-filter', viewFactory_MaterialTreeFilterComponentHost0);
}

class _ViewMaterialTreeFilterComponent1 extends import15.EmbeddedView<import1.MaterialTreeFilterComponent> {
  late final import16.ViewMaterialInputComponent0 _compView_0;
  late final import17.DeferredValidator _DeferredValidator_0_5;
  late final List<Object> _NgValidators_0_6;
  late final import19.NgModel _NgModel_0_7;
  late final import20.MaterialInputComponent _MaterialInputComponent_0_9;
  late final import21.MaterialInputDefaultValueAccessor _MaterialInputDefaultValueAccessor_0_11;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_3;
  _ViewMaterialTreeFilterComponent1(import22.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._compView_0 = import16.ViewMaterialInputComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import9.updateRenderAttribute(_el_0, 'style', 'width: 100%;');
    this._DeferredValidator_0_5 = import17.DeferredValidator();
    this._NgValidators_0_6 = [this._DeferredValidator_0_5];
    this._NgModel_0_7 = import19.NgModel(this._NgValidators_0_6, null);
    this._MaterialInputComponent_0_9 = import20.MaterialInputComponent(null, null, this._NgModel_0_7, this._compView_0, this._DeferredValidator_0_5);
    this._MaterialInputDefaultValueAccessor_0_11 = import21.MaterialInputDefaultValueAccessor(this._MaterialInputComponent_0_9, this._NgModel_0_7);
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.registerDirective(_el_0, this._NgModel_0_7);
      import11.Inspector.instance.registerDirective(_el_0, this._MaterialInputDefaultValueAccessor_0_11);
    }
    this._compView_0.createAndProject(this._MaterialInputComponent_0_9, [const <Object>[], const <Object>[]]);
    final subscription_0 = this._MaterialInputComponent_0_9.onFocus.listen(this.eventHandler0(_ctx.handleFocus));
    final subscription_1 = this._MaterialInputComponent_0_9.onKeypress.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import8.unsafeCast(<Object>[_el_0]), [subscription_0, subscription_1]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import17.DeferredValidator)) {
        return this._DeferredValidator_0_5;
      }
      if (identical(token, const import23.MultiToken<Object>('NgValidators'))) {
        return this._NgValidators_0_6;
      }
      if ((identical(token, import19.NgModel) || identical(token, import24.NgControl))) {
        return this._NgModel_0_7;
      }
      if (((((identical(token, import20.MaterialInputComponent) || identical(token, import25.BaseMaterialInput)) || identical(token, import26.ReferenceDirective)) || identical(token, import27.Focusable)) || identical(token, import28.HasDisabled))) {
        return this._MaterialInputComponent_0_9;
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
    final currVal_0 = _ctx.inputText;
    if (import12.checkBinding(this._expr_0, currVal_0, 'inputText', 'package:angulardart_components/src/material_tree/material_tree_filter.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._NgModel_0_7, 'ngModel', currVal_0);
      }
      this._NgModel_0_7.model = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/material_tree_filter.html:429:450 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    if (changed) {
      this._NgModel_0_7.ngAfterChanges();
    }
    if (((!import12.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_0_7.ngOnInit();
    }
    changed = false;
    if (firstCheck) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'displayBottomPanel', false);
      }
      this._MaterialInputComponent_0_9.displayBottomPanel = false /* REF:package:angulardart_components/src/material_tree/material_tree_filter.html:333:361 */;
      changed = true;
    }
    final currVal_1 = _ctx.placeholder;
    if (import12.checkBinding(this._expr_1, currVal_1, 'placeholder', 'package:angulardart_components/src/material_tree/material_tree_filter.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'label', currVal_1);
      }
      this._MaterialInputComponent_0_9.label = (currVal_1!) /* REF:package:angulardart_components/src/material_tree/material_tree_filter.html:453:474 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_3 = _ctx.leadingGlyph;
    if (import12.checkBinding(this._expr_3, currVal_3, 'leadingGlyph', 'package:angulardart_components/src/material_tree/material_tree_filter.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'leadingGlyph', currVal_3);
      }
      this._MaterialInputComponent_0_9.leadingGlyph = (currVal_3!) /* REF:package:angulardart_components/src/material_tree/material_tree_filter.html:301:330 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
    if ((!import12.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialInputComponent_0_9.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    import8.unsafeCast<ViewMaterialTreeFilterComponent0>((this.parentView!))._viewQuery_materialInput_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MaterialInputComponent_0_9.ngOnDestroy();
    this._MaterialInputDefaultValueAccessor_0_11.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.inputText = $event;
  }
}

import15.EmbeddedView<void> viewFactory_MaterialTreeFilterComponent1(import22.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeFilterComponent1(parentView, parentIndex);
}

final List<Object> styles$MaterialTreeFilterComponentHost = const [];

class _ViewMaterialTreeFilterComponentHost0 extends import29.HostView<import1.MaterialTreeFilterComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialTreeFilterComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import8.isDevMode
        ? import30.debugInjectorWrap(import1.MaterialTreeFilterComponent, () {
            return import1.MaterialTreeFilterComponent(this.injectorGetOptional(import31.MaterialTreeRoot, this.parentIndex));
          })
        : import1.MaterialTreeFilterComponent(this.injectorGetOptional(import31.MaterialTreeRoot, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import29.HostView<import1.MaterialTreeFilterComponent> viewFactory_MaterialTreeFilterComponentHost0() {
  return _ViewMaterialTreeFilterComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialTreeFilterComponent, createMaterialTreeFilterComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
}
