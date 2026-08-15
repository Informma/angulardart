// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_tab.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/content/deferred_content_aware.template.dart' as _ref1;
import 'package:angulardart_components/focus/focus.template.dart' as _ref2;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref3;
import 'package:angulardart_components/utils/id_generator/id_generator.template.dart' as _ref4;
import 'package:angulardart_components/material_tab/material_tab.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_tab.dart' as import2;

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
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import15;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import16;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import17;
import 'package:angulardart/src/di/errors.dart' as import18;

import '../utils/id_generator/id_generator.dart' as import19;
import '../content/deferred_content_aware.dart' as import20;

final List<Object> styles$MaterialTabComponent = [import0.styles];

class ViewMaterialTabComponent0 extends import1.ComponentView<import2.MaterialTabComponent> {
  late final ViewContainer _appEl_0;
  late final NgIf _NgIf_0_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialTabComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-tab');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/material_tab/material_tab.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _anchor_0 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_0);
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    var _TemplateRef_0_8 = TemplateRef(this._appEl_0, viewFactory_MaterialTabComponent1);
    this._NgIf_0_9 = NgIf(this._appEl_0, _TemplateRef_0_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_0, this._NgIf_0_9);
    }
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_0_9, 'ngIf', _ctx.active);
    }
    this._NgIf_0_9.ngIf = (_ctx.active ?? false) /* REF:asset:angulardart_components/lib/material_tab/material_tab.dart:1385:1399 */;
    this._appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.active;
    if (import13.checkBinding(this._expr_0, currVal_0, null, null)) {
      import10.updateRenderClass(this.rootElement, 'material-tab', (currVal_0 ?? false));
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.panelId;
    if (import13.checkBinding(this._expr_1, currVal_1, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'id', currVal_1);
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.tabId;
    if (import13.checkBinding(this._expr_2, currVal_2, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'aria-labelledby', currVal_2);
      this._expr_2 = currVal_2;
    }
    final currVal_3 = import2.MaterialTabComponent.hostRole;
    if (import13.checkBinding(this._expr_3, currVal_3, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'role', currVal_3);
      this._expr_3 = currVal_3;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialTabComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialTabComponentNgFactory = ComponentFactory<import2.MaterialTabComponent>('material-tab', viewFactory_MaterialTabComponentHost0);
ComponentFactory<import2.MaterialTabComponent> get MaterialTabComponentNgFactory {
  return _MaterialTabComponentNgFactory;
}

ComponentFactory<import2.MaterialTabComponent> createMaterialTabComponentFactory() {
  return ComponentFactory('material-tab', viewFactory_MaterialTabComponentHost0);
}

class _ViewMaterialTabComponent1 extends import15.EmbeddedView<import2.MaterialTabComponent> {
  _ViewMaterialTabComponent1(import16.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import10.createRenderElement('div');
    this.updateChildClass(_el_0, 'tab-content');
    this.addShimC(_el_0);
    this.project(_el_0, 0);
    this.initRootNode(_el_0);
  }
}

import15.EmbeddedView<void> viewFactory_MaterialTabComponent1(import16.RenderView parentView, int parentIndex) {
  return _ViewMaterialTabComponent1(parentView, parentIndex);
}

final List<Object> styles$MaterialTabComponentHost = const [];

class _ViewMaterialTabComponentHost0 extends import17.HostView<import2.MaterialTabComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialTabComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import9.isDevMode
        ? import18.debugInjectorWrap(import2.MaterialTabComponent, () {
            return import2.MaterialTabComponent(import10.unwrapNode(_el_0), this.injectorGetOptional(import19.IdGenerator, this.parentIndex));
          })
        : import2.MaterialTabComponent(import10.unwrapNode(_el_0), this.injectorGetOptional(import19.IdGenerator, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import2.Tab) || identical(token, import20.DeferredContentAware)) && (0 == nodeIndex))) {
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

import17.HostView<import2.MaterialTabComponent> viewFactory_MaterialTabComponentHost0() {
  return _ViewMaterialTabComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialTabComponent, createMaterialTabComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
}
