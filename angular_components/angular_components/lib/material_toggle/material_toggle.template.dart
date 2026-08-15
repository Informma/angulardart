// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_toggle.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref1;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref2;
import 'package:angulardart_components/utils/browser/events/events.template.dart' as _ref3;
import 'package:angulardart_forms/angulardart_forms.template.dart' as _ref4;
import 'package:angulardart_components/material_toggle/material_toggle.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_toggle.dart' as import2;

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
import 'package:angulardart/src/runtime/text_binding.dart' as import17;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import18;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import19;

import '../interfaces/has_disabled.dart' as import20;

final List<Object> styles$MaterialToggleComponent = [import0.styles];

class ViewMaterialToggleComponent0 extends import1.ComponentView<import2.MaterialToggleComponent> {
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
  late final _el_0;
  late final _el_3;
  late final _el_5;
  late final _el_6;
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialToggleComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-toggle');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/material_toggle/material_toggle.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._el_0 = import10.createRenderElement('div');
    import10.appendRenderChild(parentRenderNode, this._el_0);
    this.updateChildClass(this._el_0, 'material-toggle');
    import10.updateRenderAttribute(this._el_0, 'role', 'button');
    this.addShimC(this._el_0);
    final _anchor_1 = import10.createRenderAnchor();
    import10.appendRenderChild(this._el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_MaterialToggleComponent1);
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _el_2 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_0, _el_2);
    this.updateChildClass(_el_2, 'tgl-container');
    this.addShimC(_el_2);
    this._el_3 = import10.createRenderElement('div');
    import10.appendRenderChild(_el_2, this._el_3);
    import10.updateRenderAttribute(this._el_3, 'animated', '');
    this.updateChildClass(this._el_3, 'tgl-bar');
    this.addShimC(this._el_3);
    final _el_4 = import10.createRenderElement('div');
    import10.appendRenderChild(_el_2, _el_4);
    this.updateChildClass(_el_4, 'tgl-btn-container');
    this.addShimC(_el_4);
    this._el_5 = import10.createRenderElement('div');
    import10.appendRenderChild(_el_4, this._el_5);
    this.updateChildClass(this._el_5, 'tgl-btn-underlay');
    this.addShimC(this._el_5);
    this._el_6 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_5, this._el_6);
    import10.updateRenderAttribute(this._el_6, 'animated', '');
    this.updateChildClass(this._el_6, 'tgl-btn');
    this.addShimC(this._el_6);
    this.project(this._el_6, 0);
    import10.addRenderEventListener(this._el_0, 'blur', this.eventHandler1(this._handleEvent_0));
    import10.addRenderEventListener(this._el_0, 'focus', this.eventHandler1(this._handleEvent_1));
    import10.addRenderEventListener(this._el_0, 'mouseenter', this.eventHandler1(this._handleEvent_2));
    import10.addRenderEventListener(this._el_0, 'mouseleave', this.eventHandler1(this._handleEvent_3));
    _ctx.toggleElement = import10.unwrapNode(this._el_0);
    import10.addRenderEventListener(parentRenderNode, 'click', this.eventHandler1(_ctx.handleClick));
    import10.addRenderEventListener(parentRenderNode, 'keypress', this.eventHandler1(_ctx.handleKeyPress));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', _ctx.hasLabel);
    }
    this._NgIf_1_9.ngIf = (_ctx.hasLabel ?? false) /* REF:package:angulardart_components/material_toggle/material_toggle.html:617:633 */;
    final currVal_0 = _ctx.checked;
    if (import13.checkBinding(this._expr_0, currVal_0, 'checked', 'package:angulardart_components/material_toggle/material_toggle.html')) {
      import10.updateRenderClass(this._el_0, 'checked', (currVal_0 ?? false)) /* REF:package:angulardart_components/material_toggle/material_toggle.html:342:367 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.disabled;
    if (import13.checkBinding(this._expr_1, currVal_1, 'disabled', 'package:angulardart_components/material_toggle/material_toggle.html')) {
      import10.updateRenderClass(this._el_0, 'disabled', (currVal_1 ?? false)) /* REF:package:angulardart_components/material_toggle/material_toggle.html:373:400 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = (_ctx.disabled ? '-1' : '0');
    if (import13.checkBinding(this._expr_2, currVal_2, 'disabled ? \'-1\': \'0\'', 'package:angulardart_components/material_toggle/material_toggle.html')) {
      import10.updateRenderAttribute(this._el_0, 'tabindex', currVal_2?.toString()) /* REF:package:angulardart_components/material_toggle/material_toggle.html:554:592 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.disabled;
    if (import13.checkBinding(this._expr_3, currVal_3, '{{disabled}}', 'package:angulardart_components/material_toggle/material_toggle.html')) {
      import10.updateRenderAttribute(this._el_0, 'aria-disabled', import14.interpolate0(currVal_3)) /* REF:package:angulardart_components/material_toggle/material_toggle.html:237:270 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = import14.interpolateString0(_ctx.ariaLabel);
    if (import13.checkBinding(this._expr_4, currVal_4, '{{ariaLabel}}', 'package:angulardart_components/material_toggle/material_toggle.html')) {
      import10.updateRenderAttribute(this._el_0, 'aria-label', currVal_4) /* REF:package:angulardart_components/material_toggle/material_toggle.html:276:307 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.shadowZ;
    if (import13.checkBinding(this._expr_5, currVal_5, '{{shadowZ}}', 'package:angulardart_components/material_toggle/material_toggle.html')) {
      import10.updateRenderAttribute(this._el_3, 'elevation', import14.interpolate0(currVal_5)) /* REF:package:angulardart_components/material_toggle/material_toggle.html:714:742 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.checked;
    if (import13.checkBinding(this._expr_6, currVal_6, 'checked', 'package:angulardart_components/material_toggle/material_toggle.html')) {
      import10.updateRenderClass(this._el_5, 'under-checked', (currVal_6 ?? false)) /* REF:package:angulardart_components/material_toggle/material_toggle.html:838:869 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.hasFocus;
    if (import13.checkBinding(this._expr_7, currVal_7, 'hasFocus', 'package:angulardart_components/material_toggle/material_toggle.html')) {
      import10.updateRenderClass(this._el_5, 'under-focus', (currVal_7 ?? false)) /* REF:package:angulardart_components/material_toggle/material_toggle.html:878:908 */;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.shadowZ;
    if (import13.checkBinding(this._expr_8, currVal_8, '{{shadowZ}}', 'package:angulardart_components/material_toggle/material_toggle.html')) {
      import10.updateRenderAttribute(this._el_6, 'elevation', import14.interpolate0(currVal_8)) /* REF:package:angulardart_components/material_toggle/material_toggle.html:946:974 */;
      this._expr_8 = currVal_8;
    }
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.hasFocus = false;
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.hasFocus = true;
  }

  void _handleEvent_2($event) {
    final _ctx = this.ctx;
    _ctx.isHovered = true;
  }

  void _handleEvent_3($event) {
    final _ctx = this.ctx;
    _ctx.isHovered = false;
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_9 = import2.MaterialToggleComponent.hostClass;
    if (import13.checkBinding(this._expr_9, currVal_9, null, null)) {
      this.updateChildClassNonHtml(this.rootElement, currVal_9);
      this._expr_9 = currVal_9;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialToggleComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialToggleComponentNgFactory = ComponentFactory<import2.MaterialToggleComponent>('material-toggle', viewFactory_MaterialToggleComponentHost0);
ComponentFactory<import2.MaterialToggleComponent> get MaterialToggleComponentNgFactory {
  return _MaterialToggleComponentNgFactory;
}

ComponentFactory<import2.MaterialToggleComponent> createMaterialToggleComponentFactory() {
  return ComponentFactory('material-toggle', viewFactory_MaterialToggleComponentHost0);
}

class _ViewMaterialToggleComponent1 extends import16.EmbeddedView<import2.MaterialToggleComponent> {
  final import17.TextBinding _textBinding_1 = import17.TextBinding();
  _ViewMaterialToggleComponent1(import18.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'tgl-lbl');
    this.addShimC(_el_0);
    import10.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import14.interpolateString0(_ctx.label)) /* REF:package:angulardart_components/material_toggle/material_toggle.html:634:643 */;
  }
}

import16.EmbeddedView<void> viewFactory_MaterialToggleComponent1(import18.RenderView parentView, int parentIndex) {
  return _ViewMaterialToggleComponent1(parentView, parentIndex);
}

final List<Object> styles$MaterialToggleComponentHost = const [];

class _ViewMaterialToggleComponentHost0 extends import19.HostView<import2.MaterialToggleComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialToggleComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialToggleComponent(this.componentView, null);
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import20.HasDisabled) && (0 == nodeIndex))) {
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
    if ((!import13.debugThrowIfChanged)) {
      if (firstCheck) {
        this.component.ngAfterViewInit();
      }
    }
  }
}

import19.HostView<import2.MaterialToggleComponent> viewFactory_MaterialToggleComponentHost0() {
  return _ViewMaterialToggleComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialToggleComponent, createMaterialToggleComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
}
