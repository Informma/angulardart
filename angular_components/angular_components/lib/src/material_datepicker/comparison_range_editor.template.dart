// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'comparison_range_editor.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/material_datepicker/comparison_option.template.dart' as _ref1;
import 'package:angulardart_components/material_datepicker/date_range_input.template.dart' as _ref2;
import 'package:angulardart_components/material_datepicker/range.template.dart' as _ref3;
import 'package:angulardart_components/material_list/material_list.template.dart' as _ref4;
import 'package:angulardart_components/material_list/material_list_item.template.dart' as _ref5;
import 'package:angulardart_components/material_select/material_dropdown_select.template.dart' as _ref6;
import 'package:angulardart_components/material_select/material_select_item.template.dart' as _ref7;
import 'package:angulardart_components/material_toggle/material_toggle.template.dart' as _ref8;
import 'package:angulardart_components/model/date/date.template.dart' as _ref9;
import 'package:angulardart_components/src/material_datepicker/date_range_editor_model.template.dart' as _ref10;
import 'package:angulardart_components/utils/angular/scroll_host/angular_2.template.dart' as _ref11;
import 'package:angulardart_components/src/material_datepicker/comparison_range_editor.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'comparison_range_editor.dart' as import2;
import '../../material_toggle/material_toggle.template.dart' as import3;
import '../../material_toggle/material_toggle.dart' as import4;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import7;
import 'package:angulardart/src/core/linker/views/view.dart' as import8;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import10;
import 'package:angulardart/src/utilities.dart' as import11;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import12;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import14;

import '../../interfaces/has_disabled.dart' as import15;

import 'package:angulardart/src/runtime/check_binding.dart' as import16;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import18;
import 'package:angulardart/src/common/directives/ng_for.dart' as import19;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import20;
import 'package:angulardart/src/runtime/text_binding.dart' as import21;

import '../../material_select/material_select_item.template.dart' as import22;
import '../../material_select/material_select_item.dart' as import23;

import 'package:angulardart/src/di/errors.dart' as import24;

import '../../mixins/material_dropdown_base.dart' as import25;
import '../../material_select/activation_handler.dart' as import26;
import '../../model/selection/selection_container.dart' as import27;
import '../../model/ui/has_renderer.dart' as import28;

import 'package:angulardart/src/runtime/interpolate.dart' as import29;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import30;
import 'package:angulardart/src/core/zone/ng_zone.dart' as import31;

import '../utils/angular/scroll_host/scroll_host_interface.dart' as import32;

final List<Object> styles$ComparisonRangeEditorComponent = [import0.styles];

class ViewComparisonRangeEditorComponent0 extends import1.ComponentView<import2.ComparisonRangeEditorComponent> {
  late final import3.ViewMaterialToggleComponent0 _compView_1;
  late final import4.MaterialToggleComponent _MaterialToggleComponent_1_5;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  static import7.ComponentStyles? _componentStyles;
  ViewComparisonRangeEditorComponent0(import8.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import10.renderFactory.createElement('comparison-range-editor');
  }
  static String? get _debugComponentUrl {
    return (import11.isDevMode ? 'asset:angulardart_components/lib/src/material_datepicker/comparison_range_editor.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _el_0 = import12.createRenderElement('div');
    import12.appendRenderChild(parentRenderNode, _el_0);
    this.updateChildClass(_el_0, 'comparison-toggle-section');
    this.addShimC(_el_0);
    this._compView_1 = import3.ViewMaterialToggleComponent0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    import12.appendRenderChild(_el_0, _el_1);
    this.updateChildClassNonHtml(_el_1, 'comparison-toggle');
    this.addShimC(_el_1);
    this._MaterialToggleComponent_1_5 = import4.MaterialToggleComponent(this._compView_1, null);
    this._compView_1.createAndProject(this._MaterialToggleComponent_1_5, [const <Object>[]]);
    final _anchor_2 = import12.createRenderAnchor();
    import12.appendRenderChild(parentRenderNode, _anchor_2);
    this._appEl_2 = ViewContainer(2, null, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_ComparisonRangeEditorComponent1);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final subscription_0 = this._MaterialToggleComponent_1_5.onChecked.listen(this.eventHandler1(this._handleEvent_0));
    this.initSubscriptions([subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import15.HasDisabled) && (1 == nodeIndex))) {
      return this._MaterialToggleComponent_1_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    final currVal_0 = (!(_ctx.model.comparisonSupported ?? false));
    if (import16.checkBinding(this._expr_0, currVal_0, '!model.comparisonSupported', 'package:angulardart_components/src/material_datepicker/comparison_range_editor.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._MaterialToggleComponent_1_5, 'disabled', currVal_0);
      }
      this._MaterialToggleComponent_1_5.disabled = (currVal_0!) /* REF:package:angulardart_components/src/material_datepicker/comparison_range_editor.html:372:411 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = import2.ComparisonRangeEditorComponent.comparisonHeaderMsg;
    if (import16.checkBinding(this._expr_1, currVal_1, 'comparisonHeaderMsg', 'package:angulardart_components/src/material_datepicker/comparison_range_editor.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._MaterialToggleComponent_1_5, 'label', currVal_1);
      }
      this._MaterialToggleComponent_1_5.label = (currVal_1!) /* REF:package:angulardart_components/src/material_datepicker/comparison_range_editor.html:323:352 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.comparisonEnabled;
    if (import16.checkBinding(this._expr_2, currVal_2, 'comparisonEnabled', 'package:angulardart_components/src/material_datepicker/comparison_range_editor.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._MaterialToggleComponent_1_5, 'checked', currVal_2);
      }
      this._MaterialToggleComponent_1_5.checked = (currVal_2!) /* REF:package:angulardart_components/src/material_datepicker/comparison_range_editor.html:431:462 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', _ctx.model.comparisonEnabled);
    }
    this._NgIf_2_9.ngIf = (_ctx.model.comparisonEnabled ?? false) /* REF:package:angulardart_components/src/material_datepicker/comparison_range_editor.html:498:529 */;
    this._compView_1.detectHostChanges(firstCheck);
    this._appEl_2.detectChangesInNestedViews();
    this._compView_1.detectChangesDeprecated();
    if ((!import16.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MaterialToggleComponent_1_5.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._compView_1.destroyInternalState();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.comparisonEnabled = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import7.ComponentStyles.scoped(styles$ComparisonRangeEditorComponent, _debugComponentUrl));
      if (import11.isDevMode) {
        import7.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _ComparisonRangeEditorComponentNgFactory = ComponentFactory<import2.ComparisonRangeEditorComponent>('comparison-range-editor', viewFactory_ComparisonRangeEditorComponentHost0);
ComponentFactory<import2.ComparisonRangeEditorComponent> get ComparisonRangeEditorComponentNgFactory {
  return _ComparisonRangeEditorComponentNgFactory;
}

ComponentFactory<import2.ComparisonRangeEditorComponent> createComparisonRangeEditorComponentFactory() {
  return ComponentFactory('comparison-range-editor', viewFactory_ComparisonRangeEditorComponentHost0);
}

class _ViewComparisonRangeEditorComponent1 extends import18.EmbeddedView<import2.ComparisonRangeEditorComponent> {
  late final ViewContainer _appEl_1;
  late final import19.NgFor _NgFor_1_9;
  Object? _expr_0;
  _ViewComparisonRangeEditorComponent1(import20.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import12.createRenderElement('div');
    this.addShimC(_el_0);
    final _anchor_1 = import12.createRenderAnchor();
    import12.appendRenderChild(_el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_ComparisonRangeEditorComponent2);
    this._NgFor_1_9 = import19.NgFor(this._appEl_1, _TemplateRef_1_8);
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.registerDirective(_anchor_1, this._NgFor_1_9);
    }
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.model.validComparisonOptions;
    if (import16.checkBinding(this._expr_0, currVal_0, 'model.validComparisonOptions', 'package:angulardart_components/src/material_datepicker/comparison_range_editor.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForOf', currVal_0);
      }
      this._NgFor_1_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/src/material_datepicker/comparison_range_editor.html:557:608 */;
      this._expr_0 = currVal_0;
    }
    if ((!import16.debugThrowIfChanged)) {
      this._NgFor_1_9.ngDoCheck();
    }
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }
}

import18.EmbeddedView<void> viewFactory_ComparisonRangeEditorComponent1(import20.RenderView parentView, int parentIndex) {
  return _ViewComparisonRangeEditorComponent1(parentView, parentIndex);
}

class _ViewComparisonRangeEditorComponent2 extends import18.EmbeddedView<import2.ComparisonRangeEditorComponent> {
  final import21.TextBinding _textBinding_1 = import21.TextBinding();
  late final import22.ViewMaterialSelectItemComponent0 _compView_0;
  late final import23.MaterialSelectItemComponent _MaterialSelectItemComponent_0_5;
  Object? _expr_0;
  _ViewComparisonRangeEditorComponent2(import20.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import22.ViewMaterialSelectItemComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.addShimC(_el_0);
    this._MaterialSelectItemComponent_0_5 = (import11.isDevMode
        ? import24.debugInjectorWrap(import23.MaterialSelectItemComponent, () {
            return import23.MaterialSelectItemComponent(import12.unwrapNode(_el_0), ((this.parentView!).parentView!).injectorGetOptional(import25.DropdownHandle, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import26.ActivationHandler, (this.parentView!).parentIndex), this._compView_0, null);
          })
        : import23.MaterialSelectItemComponent(import12.unwrapNode(_el_0), ((this.parentView!).parentView!).injectorGetOptional(import25.DropdownHandle, (this.parentView!).parentIndex), ((this.parentView!).parentView!).injectorGetOptional(import26.ActivationHandler, (this.parentView!).parentIndex), this._compView_0, null));
    this._compView_0.createAndProject(this._MaterialSelectItemComponent_0_5, [
      <Object>[this._textBinding_1.element],
    ]);
    final subscription_0 = this._MaterialSelectItemComponent_0_5.trigger.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import11.unsafeCast(<Object>[_el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import27.SelectionItem) || identical(token, import15.HasDisabled)) || identical(token, import28.HasRenderer)) && (nodeIndex <= 1))) {
      return this._MaterialSelectItemComponent_0_5;
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
    if (firstCheck) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_5, 'closeOnActivate', false);
      }
      this._MaterialSelectItemComponent_0_5.closeOnActivate = false /* REF:package:angulardart_components/src/material_datepicker/comparison_range_editor.html:635:660 */;
      changed = true;
    }
    final currVal_0 = (_ctx.model.comparisonOption == local_option);
    if (import16.checkBinding(this._expr_0, currVal_0, 'model.comparisonOption == option', 'package:angulardart_components/src/material_datepicker/comparison_range_editor.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._MaterialSelectItemComponent_0_5, 'selected', currVal_0);
      }
      this._MaterialSelectItemComponent_0_5.selected = (currVal_0!) /* REF:package:angulardart_components/src/material_datepicker/comparison_range_editor.html:757:802 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._textBinding_1.updateText(import29.interpolateString0(_ctx.comparisonOptionMsg(local_option))) /* REF:package:angulardart_components/src/material_datepicker/comparison_range_editor.html:803:834 */;
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._MaterialSelectItemComponent_0_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final local_option = this.locals['\$implicit'];
    final _ctx = this.ctx;
    _ctx.model.comparisonOption = local_option;
  }
}

import18.EmbeddedView<void> viewFactory_ComparisonRangeEditorComponent2(import20.RenderView parentView, int parentIndex) {
  return _ViewComparisonRangeEditorComponent2(parentView, parentIndex);
}

final List<Object> styles$ComparisonRangeEditorComponentHost = const [];

class _ViewComparisonRangeEditorComponentHost0 extends import30.HostView<import2.ComparisonRangeEditorComponent> {
  @override
  void build() {
    this.componentView = ViewComparisonRangeEditorComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import11.isDevMode
        ? import24.debugInjectorWrap(import2.ComparisonRangeEditorComponent, () {
            return import2.ComparisonRangeEditorComponent(this.injectorGet(import31.NgZone, this.parentIndex), this.injectorGetOptional(import32.ScrollHost, this.parentIndex));
          })
        : import2.ComparisonRangeEditorComponent(this.injectorGet(import31.NgZone, this.parentIndex), this.injectorGetOptional(import32.ScrollHost, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import30.HostView<import2.ComparisonRangeEditorComponent> viewFactory_ComparisonRangeEditorComponentHost0() {
  return _ViewComparisonRangeEditorComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(ComparisonRangeEditorComponent, createComparisonRangeEditorComponentFactory());
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
}
