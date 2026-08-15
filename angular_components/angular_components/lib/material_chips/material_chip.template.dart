// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_chip.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angulardart_components/focus/focus.template.dart' as _ref2;
import 'package:angulardart_components/model/selection/selection_model.template.dart' as _ref3;
import 'package:angulardart_components/model/ui/has_renderer.template.dart' as _ref4;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref5;
import 'package:angulardart_components/utils/id_generator/id_generator.template.dart' as _ref6;
import 'package:angulardart_components/material_chips/material_chip.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_chip.dart' as import2;

import 'package:angulardart/src/runtime/text_binding.dart' as import3;
import 'package:angulardart/src/core/linker/view_container.dart';
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
import 'package:angulardart/src/runtime/interpolate.dart' as import15;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import17;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import18;

import '../button_decorator/button_decorator.template.dart' as import19;
import '../button_decorator/button_decorator.dart' as import20;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import21;

import '../model/ui/has_renderer.dart' as import22;

final List<Object> styles$MaterialChipComponent = [import0.styles];

class ViewMaterialChipComponent0<T> extends import1.ComponentView<import2.MaterialChipComponent<T>> {
  final import3.TextBinding _textBinding_2 = import3.TextBinding();
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  late final ViewContainer _appEl_4;
  late final NgIf _NgIf_4_9;
  Object? _expr_0;
  Object? _expr_1;
  late final _el_1;
  static import6.ComponentStyles? _componentStyles;
  ViewMaterialChipComponent0(import7.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import9.renderFactory.createElement('material-chip');
  }
  static String? get _debugComponentUrl {
    return (import10.isDevMode ? 'asset:angulardart_components/lib/material_chips/material_chip.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _anchor_0 = import11.createRenderAnchor();
    import11.appendRenderChild(parentRenderNode, _anchor_0);
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, (parentView, parentIndex) {
      return viewFactory_MaterialChipComponent1<T>(parentView, parentIndex);
    });
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
    this._el_1 = import11.createRenderElement('div');
    import11.appendRenderChild(parentRenderNode, this._el_1);
    this.updateChildClass(this._el_1, 'content');
    this.addShimC(this._el_1);
    import11.appendRenderChild(this._el_1, this._textBinding_2.element);
    final _text_3 = import11.createRenderText(' ');
    import11.appendRenderChild(this._el_1, _text_3);
    this.project(this._el_1, 1);
    final _anchor_4 = import11.createRenderAnchor();
    import11.appendRenderChild(parentRenderNode, _anchor_4);
    this._appEl_4 = ViewContainer(4, null, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, (parentView, parentIndex) {
      return viewFactory_MaterialChipComponent2<T>(parentView, parentIndex);
    });
    this._NgIf_4_9 = NgIf(this._appEl_4, _TemplateRef_4_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_anchor_4, this._NgIf_4_9);
    }
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', _ctx.hasLeftIcon);
    }
    this._NgIf_0_9.ngIf = (_ctx.hasLeftIcon ?? false) /* REF:package:angulardart_components/material_chips/material_chip.html:242:261 */;
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.recordInput(this._NgIf_4_9, 'ngIf', _ctx.removable);
    }
    this._NgIf_4_9.ngIf = (_ctx.removable ?? false) /* REF:package:angulardart_components/material_chips/material_chip.html:405:422 */;
    final currVal_0 = _ctx.uuid;
    if (import14.checkBinding(this._expr_0, currVal_0, 'uuid', 'package:angulardart_components/material_chips/material_chip.html')) {
      this._el_1.setProperty('id', currVal_0) /* REF:package:angulardart_components/material_chips/material_chip.html:340:351 */;
      this._expr_0 = currVal_0;
    }
    this._appEl_0.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
    this._textBinding_2.updateText(import15.interpolateString0(_ctx.label)) /* REF:package:angulardart_components/material_chips/material_chip.html:355:364 */;
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_1 = import2.MaterialChipComponent.hostClass;
    if (import14.checkBinding(this._expr_1, currVal_1, null, null)) {
      this.updateChildClassNonHtml(this.rootElement, currVal_1);
      this._expr_1 = currVal_1;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import6.ComponentStyles.scoped(styles$MaterialChipComponent, _debugComponentUrl));
      if (import10.isDevMode) {
        import6.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialChipComponentNgFactory = ComponentFactory<import2.MaterialChipComponent>('material-chip', viewFactory_MaterialChipComponentHost0);
ComponentFactory<import2.MaterialChipComponent> get MaterialChipComponentNgFactory {
  return _MaterialChipComponentNgFactory;
}

ComponentFactory<import2.MaterialChipComponent<T>> createMaterialChipComponentFactory<T>() {
  return ComponentFactory('material-chip', viewFactory_MaterialChipComponentHost0);
}

class _ViewMaterialChipComponent1<T> extends import17.EmbeddedView<import2.MaterialChipComponent<T>> {
  _ViewMaterialChipComponent1(import18.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import11.createRenderElement('div');
    this.updateChildClass(_el_0, 'left-icon');
    this.addShimC(_el_0);
    this.project(_el_0, 0);
    this.initRootNode(_el_0);
  }
}

import17.EmbeddedView<void> viewFactory_MaterialChipComponent1<T>(import18.RenderView parentView, int parentIndex) {
  return _ViewMaterialChipComponent1<T>(parentView, parentIndex);
}

class _ViewMaterialChipComponent2<T> extends import17.EmbeddedView<import2.MaterialChipComponent<T>> {
  late final import19.ButtonDirectiveNgCd _ButtonDirective_0_5;
  Object? _expr_0;
  Object? _expr_1;
  late final _el_0;
  _ViewMaterialChipComponent2(import18.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _ctx = this.ctx;
    this._el_0 = import11.createRenderElement('div');
    import11.updateRenderAttribute(this._el_0, 'buttonDecorator', '');
    this.updateChildClass(this._el_0, 'delete-button');
    this.addShimC(this._el_0);
    this._ButtonDirective_0_5 = import19.ButtonDirectiveNgCd(import20.ButtonDirective(import11.unwrapNode(this._el_0), null));
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(this._el_0, this._ButtonDirective_0_5.instance);
    }
    final _el_1 = import11.createRenderElement('svg');
    import11.appendRenderChild(this._el_0, _el_1);
    this.updateChildClassNonHtml(_el_1, 'delete-icon');
    import11.updateRenderAttribute(_el_1, 'height', '24');
    import11.updateRenderAttribute(_el_1, 'viewBox', '0 0 24 24');
    import11.updateRenderAttribute(_el_1, 'width', '24');
    import11.updateRenderAttribute(_el_1, 'xmlns', 'http://www.w3.org/2000/svg');
    this.addShimE(_el_1);
    final _el_2 = import11.createRenderElement('path');
    import11.appendRenderChild(_el_1, _el_2);
    import11.updateRenderAttribute(_el_2, 'd', 'M12 2c-5.53 0-10 4.47-10 10s4.47 10 10 10 10-4.47 10-10-4.47-10-10-10zm5\n                 13.59l-1.41 1.41-3.59-3.59-3.59 3.59-1.41-1.41 3.59-3.59-3.59-3.59 1.41-1.41 3.59\n                 3.59 3.59-3.59 1.41 1.41-3.59 3.59 3.59 3.59z');
    this.addShimE(_el_2);
    import11.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._ButtonDirective_0_5.instance.handleClick));
    import11.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(this._ButtonDirective_0_5.instance.handleKeyPress));
    final subscription_0 = this._ButtonDirective_0_5.instance.trigger.listen(this.eventHandler1(_ctx.removeChip));
    this.initRootNodesAndSubscriptions(import10.unsafeCast(<Object>[this._el_0]), [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import20.ButtonDirective) && (nodeIndex <= 2))) {
      return this._ButtonDirective_0_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.deleteButtonAriaMessage;
    if (import14.checkBinding(this._expr_0, currVal_0, 'deleteButtonAriaMessage', 'package:angulardart_components/material_chips/material_chip.html')) {
      import11.updateRenderAttribute(this._el_0, 'aria-label', currVal_0) /* REF:package:angulardart_components/material_chips/material_chip.html:500:543 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.uuid;
    if (import14.checkBinding(this._expr_1, currVal_1, 'uuid', 'package:angulardart_components/material_chips/material_chip.html')) {
      import11.updateRenderAttribute(this._el_0, 'aria-describedby', currVal_1) /* REF:package:angulardart_components/material_chips/material_chip.html:548:578 */;
      this._expr_1 = currVal_1;
    }
    this._ButtonDirective_0_5.detectHostChanges(this, this._el_0);
  }
}

import17.EmbeddedView<void> viewFactory_MaterialChipComponent2<T>(import18.RenderView parentView, int parentIndex) {
  return _ViewMaterialChipComponent2<T>(parentView, parentIndex);
}

final List<Object> styles$MaterialChipComponentHost = const [];

class _ViewMaterialChipComponentHost0<T> extends import21.HostView<import2.MaterialChipComponent<T>> {
  @override
  void build() {
    this.componentView = ViewMaterialChipComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialChipComponent(import11.unwrapNode(_el_0));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import22.HasRenderer) && (0 == nodeIndex))) {
      return this.component;
    }
    return notFoundResult;
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
  }
}

import21.HostView<import2.MaterialChipComponent<T>> viewFactory_MaterialChipComponentHost0<T>() {
  return _ViewMaterialChipComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialChipComponent, createMaterialChipComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
}
