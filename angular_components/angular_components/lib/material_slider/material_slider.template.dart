// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_slider.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref1;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref2;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.template.dart' as _ref3;
import 'package:angulardart_components/material_slider/material_slider.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_slider.dart' as import2;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import5;
import 'package:angulardart/src/core/linker/views/view.dart' as import6;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import8;
import 'package:angulardart/src/utilities.dart' as import9;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import10;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import12;
import 'package:angulardart/src/runtime/check_binding.dart' as import13;
import 'package:angulardart/src/runtime/interpolate.dart' as import14;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import16;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import17;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import18;
import 'package:angulardart/src/di/errors.dart' as import19;

import '../utils/browser/dom_service/dom_service.dart' as import20;
import '../interfaces/has_disabled.dart' as import21;

final List<Object> styles$MaterialSliderComponent = [import0.styles];

class ViewMaterialSliderComponent0 extends import1.ComponentView<import2.MaterialSliderComponent> {
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
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
  late final _el_0;
  late final _el_2;
  late final _el_4;
  late final _el_7;
  late final _el_8;
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialSliderComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-slider');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/material_slider/material_slider.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._el_0 = import10.createRenderElement('div');
    import10.appendRenderChild(parentRenderNode, this._el_0);
    this.updateChildClass(this._el_0, 'container');
    this.addShimC(this._el_0);
    final _anchor_1 = import10.createRenderAnchor();
    import10.appendRenderChild(this._el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MaterialSliderComponent1);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    this._el_2 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_0, this._el_2);
    this.updateChildClass(this._el_2, 'track-container left-track-container');
    this.addShimC(this._el_2);
    final _el_3 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_2, _el_3);
    this.updateChildClass(_el_3, 'track');
    this.addShimC(_el_3);
    this._el_4 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_0, this._el_4);
    this.updateChildClass(this._el_4, 'right-knob knob');
    import10.updateRenderAttribute(this._el_4, 'role', 'slider');
    this.addShimC(this._el_4);
    final _el_5 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_4, _el_5);
    this.updateChildClass(_el_5, 'knob-real');
    this.addShimC(_el_5);
    final _el_6 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_4, _el_6);
    this.updateChildClass(_el_6, 'knob-hover-shadow');
    this.addShimC(_el_6);
    this._el_7 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_4, this._el_7);
    this.updateChildClass(this._el_7, 'knob-drag-shadow');
    this.addShimC(this._el_7);
    this._el_8 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_0, this._el_8);
    this.updateChildClass(this._el_8, 'track-container right-track-container');
    this.addShimC(this._el_8);
    final _el_9 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_8, _el_9);
    this.updateChildClass(_el_9, 'track');
    this.addShimC(_el_9);
    import10.addRenderEventListener(this._el_0, 'mousedown', this.eventHandler1(_ctx.mouseDown));
    import10.addRenderEventListener(this._el_0, 'touchstart', this.eventHandler1(_ctx.touchStart));
    import10.addRenderEventListener(this._el_4, 'mousedown', this.eventHandler1(this._handleEvent_0));
    import10.addRenderEventListener(this._el_4, 'touchstart', this.eventHandler1(this._handleEvent_1));
    import10.addRenderEventListener(this._el_4, 'keydown', this.eventHandler1(_ctx.knobKeyDown));
    _ctx.container = import10.unwrapNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.isTwoSided);
    }
    this._NgIf_1_9.ngIf = (_ctx.isTwoSided ?? false) /* REF:package:angulardart_components/material_slider/material_slider.html:371:389 */;
    final currVal_0 = _ctx.disabled;
    if (import13.checkBinding(this._expr_0, currVal_0, 'disabled', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderClass(this._el_0, 'is-disabled', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_slider/material_slider.html:242:272 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = (_ctx.progressPercent - _ctx.leftProgressPercent);
    if (import13.checkBinding(this._expr_1, currVal_1, 'progressPercent - leftProgressPercent', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderStyle(this._el_2, 'width', ((currVal_1 == null) ? null : (currVal_1.toString() + '%'))) /* REF:package:angulardart_components/material_slider/material_slider.html:1256:1311 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = (_ctx.disabled ? (0 - 1) : 0);
    if (import13.checkBinding(this._expr_2, currVal_2, 'disabled ? -1 : 0', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderAttribute(this._el_4, 'tabindex', currVal_2?.toString()) /* REF:package:angulardart_components/material_slider/material_slider.html:1406:1441 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = (_ctx.isRtl ? 0 : (0 - 8));
    if (import13.checkBinding(this._expr_3, currVal_3, 'isRtl ? 0 : -8', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderStyle(this._el_4, 'left', ((currVal_3 == null) ? null : (currVal_3.toString() + 'px'))) /* REF:package:angulardart_components/material_slider/material_slider.html:1593:1625 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = (_ctx.isRtl ? (0 - 8) : 0);
    if (import13.checkBinding(this._expr_4, currVal_4, 'isRtl ? -8 : 0', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderStyle(this._el_4, 'right', ((currVal_4 == null) ? null : (currVal_4.toString() + 'px'))) /* REF:package:angulardart_components/material_slider/material_slider.html:1635:1668 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.min;
    if (import13.checkBinding(this._expr_5, currVal_5, 'min', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderAttribute(this._el_4, 'aria-valuemin', currVal_5?.toString()) /* REF:package:angulardart_components/material_slider/material_slider.html:1678:1704 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.max;
    if (import13.checkBinding(this._expr_6, currVal_6, 'max', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderAttribute(this._el_4, 'aria-valuemax', currVal_6?.toString()) /* REF:package:angulardart_components/material_slider/material_slider.html:1714:1740 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.value;
    if (import13.checkBinding(this._expr_7, currVal_7, 'value', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderAttribute(this._el_4, 'aria-valuenow', currVal_7?.toString()) /* REF:package:angulardart_components/material_slider/material_slider.html:1750:1778 */;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.isDragging;
    if (import13.checkBinding(this._expr_8, currVal_8, 'isDragging', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderClass(this._el_7, 'is-dragging', (currVal_8 ?? false)) /* REF:package:angulardart_components/material_slider/material_slider.html:1890:1922 */;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = import14.interpolate1('calc(', (100 - _ctx.progressPercent), '%)');
    if (import13.checkBinding(this._expr_9, currVal_9, 'calc({{100-progressPercent}}%)', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderStyle(this._el_8, 'width', currVal_9) /* REF:package:angulardart_components/material_slider/material_slider.html:1999:2043 */;
      this._expr_9 = currVal_9;
    }
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.isRightKnobSelected = true;
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.isRightKnobSelected = true;
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_10 = _ctx.disabled;
    if (import13.checkBinding(this._expr_10, currVal_10, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'aria-disabled', currVal_10?.toString());
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.disabled;
    if (import13.checkBinding(this._expr_11, currVal_11, null, null)) {
      import10.updateRenderClass(this.rootElement, 'is-disabled', (currVal_11 ?? false));
      this._expr_11 = currVal_11;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialSliderComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialSliderComponentNgFactory = ComponentFactory<import2.MaterialSliderComponent>('material-slider', viewFactory_MaterialSliderComponentHost0);
ComponentFactory<import2.MaterialSliderComponent> get MaterialSliderComponentNgFactory {
  return _MaterialSliderComponentNgFactory;
}

ComponentFactory<import2.MaterialSliderComponent> createMaterialSliderComponentFactory() {
  return ComponentFactory('material-slider', viewFactory_MaterialSliderComponentHost0);
}

class _ViewMaterialSliderComponent1 extends import16.EmbeddedView<import2.MaterialSliderComponent> {
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  late final _el_0;
  late final _el_2;
  late final _el_5;
  _ViewMaterialSliderComponent1(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import10.createRenderElement('div');
    this.updateChildClass(this._el_0, 'track-container double-sided-left-track-container');
    this.addShimC(this._el_0);
    final _el_1 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_0, _el_1);
    this.updateChildClass(_el_1, 'track');
    this.addShimC(_el_1);
    this._el_2 = import10.createRenderElement('div');
    this.updateChildClass(this._el_2, 'left-knob knob');
    import10.updateRenderAttribute(this._el_2, 'role', 'slider');
    this.addShimC(this._el_2);
    final _el_3 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_2, _el_3);
    this.updateChildClass(_el_3, 'knob-real');
    this.addShimC(_el_3);
    final _el_4 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_2, _el_4);
    this.updateChildClass(_el_4, 'knob-hover-shadow');
    this.addShimC(_el_4);
    this._el_5 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_2, this._el_5);
    this.updateChildClass(this._el_5, 'knob-drag-shadow');
    this.addShimC(this._el_5);
    import10.addRenderEventListener(this._el_2, 'mousedown', this.eventHandler1(this._handleEvent_0));
    import10.addRenderEventListener(this._el_2, 'touchstart', this.eventHandler1(this._handleEvent_1));
    import10.addRenderEventListener(this._el_2, 'keydown', this.eventHandler1(this._handleEvent_2));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[this._el_0, this._el_2]), null);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.leftProgressPercent;
    if (import13.checkBinding(this._expr_0, currVal_0, 'calc({{leftProgressPercent}}%)', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderStyle(this._el_0, 'width', import14.interpolate1('calc(', currVal_0, '%)').toString()) /* REF:package:angulardart_components/material_slider/material_slider.html:467:511 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = (_ctx.disabled ? (0 - 1) : 0);
    if (import13.checkBinding(this._expr_1, currVal_1, 'disabled ? -1 : 0', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderAttribute(this._el_2, 'tabindex', currVal_1?.toString()) /* REF:package:angulardart_components/material_slider/material_slider.html:611:646 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = (_ctx.isRtl ? 0 : (0 - 8));
    if (import13.checkBinding(this._expr_2, currVal_2, 'isRtl ? 0 : -8', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderStyle(this._el_2, 'left', ((currVal_2 == null) ? null : (currVal_2.toString() + 'px'))) /* REF:package:angulardart_components/material_slider/material_slider.html:821:853 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = (_ctx.isRtl ? (0 - 8) : 0);
    if (import13.checkBinding(this._expr_3, currVal_3, 'isRtl ? -8 : 0', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderStyle(this._el_2, 'right', ((currVal_3 == null) ? null : (currVal_3.toString() + 'px'))) /* REF:package:angulardart_components/material_slider/material_slider.html:863:896 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.min;
    if (import13.checkBinding(this._expr_4, currVal_4, 'min', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderAttribute(this._el_2, 'aria-valuemin', currVal_4?.toString()) /* REF:package:angulardart_components/material_slider/material_slider.html:906:932 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.max;
    if (import13.checkBinding(this._expr_5, currVal_5, 'max', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderAttribute(this._el_2, 'aria-valuemax', currVal_5?.toString()) /* REF:package:angulardart_components/material_slider/material_slider.html:942:968 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.leftValue;
    if (import13.checkBinding(this._expr_6, currVal_6, 'leftValue', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderAttribute(this._el_2, 'aria-valuenow', currVal_6?.toString()) /* REF:package:angulardart_components/material_slider/material_slider.html:978:1010 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.isDragging;
    if (import13.checkBinding(this._expr_7, currVal_7, 'isDragging', 'package:angulardart_components/material_slider/material_slider.html')) {
      import10.updateRenderClass(this._el_5, 'is-dragging', (currVal_7 ?? false)) /* REF:package:angulardart_components/material_slider/material_slider.html:1128:1160 */;
      this._expr_7 = currVal_7;
    }
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.isLeftKnobSelected = true;
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.isLeftKnobSelected = true;
  }

  void _handleEvent_2($event) {
    final _ctx = this.ctx;
    _ctx.knobKeyDown($event, isLeftKnobPressed: true);
  }
}

import16.EmbeddedView<void> viewFactory_MaterialSliderComponent1(import17.RenderView parentView, int parentIndex) {
  return _ViewMaterialSliderComponent1(parentView, parentIndex);
}

final List<Object> styles$MaterialSliderComponentHost = const [];

class _ViewMaterialSliderComponentHost0 extends import18.HostView<import2.MaterialSliderComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialSliderComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import9.isDevMode
        ? import19.debugInjectorWrap(import2.MaterialSliderComponent, () {
            return import2.MaterialSliderComponent(this.componentView, this.injectorGet(import20.DomService, this.parentIndex));
          })
        : import2.MaterialSliderComponent(this.componentView, this.injectorGet(import20.DomService, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import2.MaterialSliderComponent) || identical(token, import21.HasDisabled)) && (0 == nodeIndex))) {
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

import18.HostView<import2.MaterialSliderComponent> viewFactory_MaterialSliderComponentHost0() {
  return _ViewMaterialSliderComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialSliderComponent, createMaterialSliderComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
}
