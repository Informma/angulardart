// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'dynamic_component.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart/experimental.template.dart' as _ref1;
import 'package:angulardart/src/core/linker/dynamic_component_loader.template.dart' as _ref2;
import 'package:angulardart_components/model/ui/has_renderer.template.dart' as _ref3;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import0;

import 'dynamic_component.dart' as import1;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import4;
import 'package:angulardart/src/core/linker/views/view.dart' as import5;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import7;
import 'package:angulardart/src/utilities.dart' as import8;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import9;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import11;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import12;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import13;
import 'package:angulardart/src/di/errors.dart' as import14;
import 'package:angulardart/src/core/linker/dynamic_component_loader.dart' as import15;

final List<Object> styles$DynamicComponent = const [];

class ViewDynamicComponent0 extends import0.ComponentView<import1.DynamicComponent> {
  late final ViewContainer _appEl_0;
  late final TemplateRef _TemplateRef_0_8;
  static import4.ComponentStyles? _componentStyles;
  ViewDynamicComponent0(import5.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import7.renderFactory.createElement('dynamic-component');
  }
  static String? get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:angulardart_components/lib/dynamic_component/dynamic_component.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _anchor_0 = import9.createRenderAnchor();
    import9.appendRenderChild(parentRenderNode, _anchor_0);
    this._appEl_0 = ViewContainer(0, null, this, _anchor_0);
    this._TemplateRef_0_8 = TemplateRef(this._appEl_0, viewFactory_DynamicComponent1);
    _ctx.viewContainerRef = this._appEl_0;
  }

  @override
  void detectChangesInCheckAlwaysViews() {
    this._appEl_0.detectChangesInCheckAlwaysViews();
  }

  @override
  void detectChangesInternal() {
    this._appEl_0.detectChangesInNestedViews();
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
      _componentStyles = (styles = import4.ComponentStyles.unscoped(styles$DynamicComponent, _debugComponentUrl));
      if (import8.isDevMode) {
        import4.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _DynamicComponentNgFactory = ComponentFactory<import1.DynamicComponent>('dynamic-component', viewFactory_DynamicComponentHost0);
ComponentFactory<import1.DynamicComponent> get DynamicComponentNgFactory {
  return _DynamicComponentNgFactory;
}

ComponentFactory<import1.DynamicComponent> createDynamicComponentFactory() {
  return ComponentFactory('dynamic-component', viewFactory_DynamicComponentHost0);
}

class _ViewDynamicComponent1 extends import11.EmbeddedView<import1.DynamicComponent> {
  _ViewDynamicComponent1(import12.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this.initRootNodesAndSubscriptions(import8.unsafeCast(const <Object>[]), null);
  }
}

import11.EmbeddedView<void> viewFactory_DynamicComponent1(import12.RenderView parentView, int parentIndex) {
  return _ViewDynamicComponent1(parentView, parentIndex);
}

final List<Object> styles$DynamicComponentHost = const [];

class _ViewDynamicComponentHost0 extends import13.HostView<import1.DynamicComponent> {
  late final ViewContainer _appEl_0;
  @override
  void build() {
    this.componentView = ViewDynamicComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this._appEl_0 = ViewContainer(0, null, this, _el_0);
    this.component = (import8.isDevMode
        ? import14.debugInjectorWrap(import1.DynamicComponent, () {
            return import1.DynamicComponent(this.injectorGet(import15.SlowComponentLoader, this.parentIndex), this._appEl_0);
          })
        : import1.DynamicComponent(this.injectorGet(import15.SlowComponentLoader, this.parentIndex), this._appEl_0));
    this.initRootNode(this._appEl_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
    this._appEl_0.detectChangesInNestedViews();
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this.component.ngOnDestroy();
  }
}

import13.HostView<import1.DynamicComponent> viewFactory_DynamicComponentHost0() {
  return _ViewDynamicComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(DynamicComponent, createDynamicComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
}
