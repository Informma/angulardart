// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_dialog.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/focus/focus_trap.template.dart' as _ref1;
import 'package:angulardart_components/laminate/components/modal/modal.template.dart' as _ref2;
import 'package:angulardart_components/model/a11y/keyboard_handler_mixin.template.dart' as _ref3;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref4;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.template.dart' as _ref5;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref6;
import 'package:angulardart_components/utils/id_generator/id_generator.template.dart' as _ref7;
import 'package:angulardart_components/material_dialog/material_dialog.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_dialog.dart' as import2;

import 'package:angulardart/src/runtime/text_binding.dart' as import3;

import '../focus/focus_trap.template.dart' as import4;
import '../focus/focus_trap.dart' as import5;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import8;
import 'package:angulardart/src/core/linker/views/view.dart' as import9;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import11;
import 'package:angulardart/src/utilities.dart' as import12;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import13;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import15;
import 'package:angulardart/src/runtime/check_binding.dart' as import16;
import 'package:angulardart/src/runtime/interpolate.dart' as import17;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import19;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import20;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import21;
import 'package:angulardart/src/di/errors.dart' as import22;

import '../utils/browser/dom_service/dom_service.dart' as import23;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import24;

import '../laminate/components/modal/modal.dart' as import25;

final List<Object> styles$MaterialDialogComponent = [import0.styles];

class ViewMaterialDialogComponent0 extends import1.ComponentView<import2.MaterialDialogComponent> {
  final import3.TextBinding _textBinding_4 = import3.TextBinding();
  late final import4.ViewFocusTrapComponent0 _compView_0;
  late final import5.FocusTrapComponent _FocusTrapComponent_0_5;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final ViewContainer _appEl_6;
  late final NgIf _NgIf_6_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  late final _el_3;
  late final _el_5;
  static import8.ComponentStyles? _componentStyles;
  ViewMaterialDialogComponent0(import9.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import11.renderFactory.createElement('material-dialog');
  }
  static String? get _debugComponentUrl {
    return (import12.isDevMode ? 'asset:angulardart_components/lib/material_dialog/material_dialog.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._compView_0 = import4.ViewFocusTrapComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    import13.appendRenderChild(parentRenderNode, _el_0);
    this.addShimC(_el_0);
    this._FocusTrapComponent_0_5 = import5.FocusTrapComponent();
    final _el_1 = import13.createRenderElement('div');
    this.updateChildClass(_el_1, 'wrapper');
    this.addShimC(_el_1);
    final _anchor_2 = import13.createRenderAnchor();
    import13.appendRenderChild(_el_1, _anchor_2);
    this._appEl_2 = ViewContainer(2, 1, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, viewFactory_MaterialDialogComponent1);
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    this._el_3 = import13.createRenderElement('div');
    import13.appendRenderChild(_el_1, this._el_3);
    this.updateChildClass(this._el_3, 'error');
    this.addShimC(this._el_3);
    import13.appendRenderChild(this._el_3, this._textBinding_4.element);
    this._el_5 = import13.createRenderElement('main');
    import13.appendRenderChild(_el_1, this._el_5);
    import13.updateRenderAttribute(this._el_5, 'role', 'presentation');
    this.addShimC(this._el_5);
    this.project(this._el_5, 1);
    final _anchor_6 = import13.createRenderAnchor();
    import13.appendRenderChild(_el_1, _anchor_6);
    this._appEl_6 = ViewContainer(6, 1, this, _anchor_6);
    var _TemplateRef_6_8 = TemplateRef(this._appEl_6, viewFactory_MaterialDialogComponent2);
    this._NgIf_6_9 = NgIf(this._appEl_6, _TemplateRef_6_8);
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(_anchor_6, this._NgIf_6_9);
    }
    this._compView_0.createAndProject(this._FocusTrapComponent_0_5, [
      <Object>[_el_1],
    ]);
    import13.addRenderEventListener(_el_0, 'keyup', this.eventHandler1(_ctx.onKeyUp));
    _ctx.main = import13.unwrapNode(this._el_5);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', _ctx.shouldShowHeader);
    }
    this._NgIf_2_9.ngIf = (_ctx.shouldShowHeader ?? false) /* REF:package:angulardart_components/material_dialog/material_dialog.html:294:318 */;
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.recordInput(this._NgIf_6_9, 'ngIf', _ctx.shouldShowFooter);
    }
    this._NgIf_6_9.ngIf = (_ctx.shouldShowFooter ?? false) /* REF:package:angulardart_components/material_dialog/material_dialog.html:791:815 */;
    final currVal_0 = (_ctx.error != null);
    if (import16.checkBinding(this._expr_0, currVal_0, 'error != null', 'package:angulardart_components/material_dialog/material_dialog.html')) {
      import13.updateRenderClass(this._el_3, 'expanded', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_dialog/material_dialog.html:449:481 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.shouldShowScrollStrokes;
    if (import16.checkBinding(this._expr_1, currVal_1, 'shouldShowScrollStrokes', 'package:angulardart_components/material_dialog/material_dialog.html')) {
      import13.updateRenderClass(this._el_5, 'with-scroll-strokes', (currVal_1 ?? false)) /* REF:package:angulardart_components/material_dialog/material_dialog.html:545:598 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.shouldShowTopScrollStroke;
    if (import16.checkBinding(this._expr_2, currVal_2, 'shouldShowTopScrollStroke', 'package:angulardart_components/material_dialog/material_dialog.html')) {
      import13.updateRenderClass(this._el_5, 'top-scroll-stroke', (currVal_2 ?? false)) /* REF:package:angulardart_components/material_dialog/material_dialog.html:609:662 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.shouldShowBottomScrollStroke;
    if (import16.checkBinding(this._expr_3, currVal_3, 'shouldShowBottomScrollStroke', 'package:angulardart_components/material_dialog/material_dialog.html')) {
      import13.updateRenderClass(this._el_5, 'bottom-scroll-stroke', (currVal_3 ?? false)) /* REF:package:angulardart_components/material_dialog/material_dialog.html:673:732 */;
      this._expr_3 = currVal_3;
    }
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_6.detectChangesInNestedViews();
    this._textBinding_4.updateText(import17.interpolateString0(_ctx.error)) /* REF:package:angulardart_components/material_dialog/material_dialog.html:482:491 */;
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_2.destroyNestedViews();
    this._appEl_6.destroyNestedViews();
    this._compView_0.destroyInternalState();
    this._FocusTrapComponent_0_5.ngOnDestroy();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_4 = _ctx.headerId;
    if (import16.checkBinding(this._expr_4, currVal_4, null, null)) {
      import13.updateRenderAttribute(this.rootElement, 'aria-labelledby', currVal_4);
      this._expr_4 = currVal_4;
    }
    final currVal_5 = import2.MaterialDialogComponent.hostRole;
    if (import16.checkBinding(this._expr_5, currVal_5, null, null)) {
      import13.updateRenderAttribute(this.rootElement, 'role', currVal_5);
      this._expr_5 = currVal_5;
    }
    final currVal_6 = import2.MaterialDialogComponent.ariaModel;
    if (import16.checkBinding(this._expr_6, currVal_6, null, null)) {
      import13.updateRenderAttribute(this.rootElement, 'aria-modal', currVal_6);
      this._expr_6 = currVal_6;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import8.ComponentStyles.scoped(styles$MaterialDialogComponent, _debugComponentUrl));
      if (import12.isDevMode) {
        import8.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialDialogComponentNgFactory = ComponentFactory<import2.MaterialDialogComponent>('material-dialog', viewFactory_MaterialDialogComponentHost0);
ComponentFactory<import2.MaterialDialogComponent> get MaterialDialogComponentNgFactory {
  return _MaterialDialogComponentNgFactory;
}

ComponentFactory<import2.MaterialDialogComponent> createMaterialDialogComponentFactory() {
  return ComponentFactory('material-dialog', viewFactory_MaterialDialogComponentHost0);
}

class _ViewMaterialDialogComponent1 extends import19.EmbeddedView<import2.MaterialDialogComponent> {
  Object? _expr_0;
  late final _el_0;
  _ViewMaterialDialogComponent1(import20.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import13.createRenderElement('header');
    import13.updateRenderAttribute(this._el_0, 'role', 'presentation');
    this.addShimC(this._el_0);
    this.project(this._el_0, 0);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.headerId;
    if (import16.checkBinding(this._expr_0, currVal_0, 'headerId', 'package:angulardart_components/material_dialog/material_dialog.html')) {
      import13.updateRenderAttribute(this._el_0, 'id', currVal_0) /* REF:package:angulardart_components/material_dialog/material_dialog.html:319:339 */;
      this._expr_0 = currVal_0;
    }
  }
}

import19.EmbeddedView<void> viewFactory_MaterialDialogComponent1(import20.RenderView parentView, int parentIndex) {
  return _ViewMaterialDialogComponent1(parentView, parentIndex);
}

class _ViewMaterialDialogComponent2 extends import19.EmbeddedView<import2.MaterialDialogComponent> {
  _ViewMaterialDialogComponent2(import20.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import13.createRenderElement('footer');
    import13.updateRenderAttribute(_el_0, 'role', 'presentation');
    this.addShimC(_el_0);
    this.project(_el_0, 2);
    this.initRootNode(_el_0);
  }
}

import19.EmbeddedView<void> viewFactory_MaterialDialogComponent2(import20.RenderView parentView, int parentIndex) {
  return _ViewMaterialDialogComponent2(parentView, parentIndex);
}

final List<Object> styles$MaterialDialogComponentHost = const [];

class _ViewMaterialDialogComponentHost0 extends import21.HostView<import2.MaterialDialogComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialDialogComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import12.isDevMode
        ? import22.debugInjectorWrap(import2.MaterialDialogComponent, () {
            return import2.MaterialDialogComponent(import13.unwrapNode(_el_0), this.injectorGet(import23.DomService, this.parentIndex), this.componentView, this.injectorGet(import24.NgZone, this.parentIndex), this.injectorGetOptional(import25.ModalComponent, this.parentIndex));
          })
        : import2.MaterialDialogComponent(import13.unwrapNode(_el_0), this.injectorGet(import23.DomService, this.parentIndex), this.componentView, this.injectorGet(import24.NgZone, this.parentIndex), this.injectorGetOptional(import25.ModalComponent, this.parentIndex)));
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
    if ((!import16.debugThrowIfChanged)) {
      this.component.ngAfterContentChecked();
    }
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import21.HostView<import2.MaterialDialogComponent> viewFactory_MaterialDialogComponentHost0() {
  return _ViewMaterialDialogComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialDialogComponent, createMaterialDialogComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
  _ref7.initReflector();
}
