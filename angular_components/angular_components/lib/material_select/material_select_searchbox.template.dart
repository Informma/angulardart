// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_select_searchbox.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/focus/focus_interface.template.dart' as _ref1;
import 'package:angulardart_components/material_input/material_input.template.dart' as _ref2;
import 'package:angulardart_components/mixins/focusable_mixin.template.dart' as _ref3;
import 'package:angulardart_components/model/selection/select.template.dart' as _ref4;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref5;
import 'package:angulardart_components/utils/async/async.template.dart' as _ref6;
import 'package:angulardart_components/utils/browser/events/events.template.dart' as _ref7;
import 'package:angulardart_components/material_select/material_select_searchbox.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_select_searchbox.dart' as import2;
import '../material_input/material_input.template.dart' as import3;
import '../material_input/deferred_validator.dart' as import4;

import 'dart:core';

import 'package:angulardart_forms/src/directives/ng_model.dart' as import6;

import '../material_input/material_input.dart' as import7;
import '../material_input/material_input_default_value_accessor.dart' as import8;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import9;
import 'package:angulardart/src/core/linker/views/view.dart' as import10;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import12;
import 'package:angulardart/src/utilities.dart' as import13;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import14;
import 'package:angulardart/src/devtools.dart' as import15;
import 'package:angulardart_meta/src/di_tokens.dart' as import16;
import 'package:angulardart_forms/src/directives/ng_control.dart' as import17;

import '../material_input/base_material_input.dart' as import18;
import '../utils/angular/reference/reference.dart' as import19;
import '../focus/focus_interface.dart' as import20;
import '../interfaces/has_disabled.dart' as import21;

import 'package:angulardart/src/runtime/check_binding.dart' as import22;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import24;

final List<Object> styles$MaterialSelectSearchboxComponent = [import0.styles];

class ViewMaterialSelectSearchboxComponent0 extends import1.ComponentView<import2.MaterialSelectSearchboxComponent> {
  late final import3.ViewMaterialInputComponent0 _compView_0;
  late final import4.DeferredValidator _DeferredValidator_0_5;
  late final List<Object> _NgValidators_0_6;
  late final import6.NgModel _NgModel_0_7;
  late final import7.MaterialInputComponent _MaterialInputComponent_0_9;
  late final import8.MaterialInputDefaultValueAccessor _MaterialInputDefaultValueAccessor_0_11;
  Object? _expr_0;
  Object? _expr_1;
  static import9.ComponentStyles? _componentStyles;
  ViewMaterialSelectSearchboxComponent0(import10.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import12.renderFactory.createElement('material-select-searchbox');
  }
  static String? get _debugComponentUrl {
    return (import13.isDevMode ? 'asset:angulardart_components/lib/material_select/material_select_searchbox.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._compView_0 = import3.ViewMaterialInputComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import14.appendRenderChild(parentRenderNode, _el_0);
    this.updateChildClassNonHtml(_el_0, 'searchbox-input');
    import14.updateRenderAttribute(_el_0, 'leadingGlyph', 'search');
    this.addShimC(_el_0);
    this._DeferredValidator_0_5 = import4.DeferredValidator();
    this._NgValidators_0_6 = [this._DeferredValidator_0_5];
    this._NgModel_0_7 = import6.NgModel(this._NgValidators_0_6, null);
    this._MaterialInputComponent_0_9 = import7.MaterialInputComponent(null, null, this._NgModel_0_7, this._compView_0, this._DeferredValidator_0_5);
    this._MaterialInputDefaultValueAccessor_0_11 = import8.MaterialInputDefaultValueAccessor(this._MaterialInputComponent_0_9, this._NgModel_0_7);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_el_0, this._NgModel_0_7);
      import15.Inspector.instance.registerDirective(_el_0, this._MaterialInputDefaultValueAccessor_0_11);
    }
    this._compView_0.createAndProject(this._MaterialInputComponent_0_9, [const <Object>[], const <Object>[]]);
    import14.addRenderEventListener(_el_0, 'keypress', this.eventHandler1(_ctx.stopSpaceKeyPropagation));
    final subscription_0 = this._NgModel_0_7.update.listen(this.eventHandler1(this._handleEvent_0));
    final subscription_1 = this._MaterialInputComponent_0_9.onFocus.listen(this.eventHandler1(_ctx.handleFocus));
    import10.View.queryChangeDetectorRefs[this._MaterialInputComponent_0_9] = this._compView_0;
    _ctx.input = this._MaterialInputComponent_0_9;
    this.initSubscriptions([subscription_0, subscription_1]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import4.DeferredValidator)) {
        return this._DeferredValidator_0_5;
      }
      if (identical(token, const import16.MultiToken<Object>('NgValidators'))) {
        return this._NgValidators_0_6;
      }
      if ((identical(token, import6.NgModel) || identical(token, import17.NgControl))) {
        return this._NgModel_0_7;
      }
      if (((((identical(token, import7.MaterialInputComponent) || identical(token, import18.BaseMaterialInput)) || identical(token, import19.ReferenceDirective)) || identical(token, import20.Focusable)) || identical(token, import21.HasDisabled))) {
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
    if (import22.checkBinding(this._expr_0, currVal_0, 'inputText', 'package:angulardart_components/material_select/material_select_searchbox.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._NgModel_0_7, 'ngModel', currVal_0);
      }
      this._NgModel_0_7.model = (currVal_0!) /* REF:package:angulardart_components/material_select/material_select_searchbox.html:409:432 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    if (changed) {
      this._NgModel_0_7.ngAfterChanges();
    }
    if (((!import22.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_0_7.ngOnInit();
    }
    changed = false;
    if (firstCheck) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'displayBottomPanel', false);
      }
      this._MaterialInputComponent_0_9.displayBottomPanel = false /* REF:package:angulardart_components/material_select/material_select_searchbox.html:293:321 */;
      changed = true;
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'leadingGlyph', 'search');
      }
      this._MaterialInputComponent_0_9.leadingGlyph = 'search' /* REF:package:angulardart_components/material_select/material_select_searchbox.html:267:288 */;
      changed = true;
    }
    final currVal_1 = _ctx.label;
    if (import22.checkBinding(this._expr_1, currVal_1, 'label', 'package:angulardart_components/material_select/material_select_searchbox.html')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialInputComponent_0_9, 'label', currVal_1);
      }
      this._MaterialInputComponent_0_9.label = (currVal_1!) /* REF:package:angulardart_components/material_select/material_select_searchbox.html:437:452 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
    if ((!import22.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialInputComponent_0_9.ngAfterViewInit();
      }
    }
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

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import9.ComponentStyles.scoped(styles$MaterialSelectSearchboxComponent, _debugComponentUrl));
      if (import13.isDevMode) {
        import9.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialSelectSearchboxComponentNgFactory = ComponentFactory<import2.MaterialSelectSearchboxComponent>('material-select-searchbox', viewFactory_MaterialSelectSearchboxComponentHost0);
ComponentFactory<import2.MaterialSelectSearchboxComponent> get MaterialSelectSearchboxComponentNgFactory {
  return _MaterialSelectSearchboxComponentNgFactory;
}

ComponentFactory<import2.MaterialSelectSearchboxComponent> createMaterialSelectSearchboxComponentFactory() {
  return ComponentFactory('material-select-searchbox', viewFactory_MaterialSelectSearchboxComponentHost0);
}

final List<Object> styles$MaterialSelectSearchboxComponentHost = const [];

class _ViewMaterialSelectSearchboxComponentHost0 extends import24.HostView<import2.MaterialSelectSearchboxComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialSelectSearchboxComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialSelectSearchboxComponent();
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import20.Focusable) && (0 == nodeIndex))) {
      return this.component;
    }
    return notFoundResult;
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import24.HostView<import2.MaterialSelectSearchboxComponent> viewFactory_MaterialSelectSearchboxComponentHost0() {
  return _ViewMaterialSelectSearchboxComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialSelectSearchboxComponent, createMaterialSelectSearchboxComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
  _ref7.initReflector();
}
