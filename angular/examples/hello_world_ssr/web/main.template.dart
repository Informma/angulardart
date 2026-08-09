// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'main.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'main.template.dart' as _ref0;

import 'package:angulardart/angulardart.template.dart' as _ref1;
import 'package:angulardart_server/angulardart_server.template.dart' as _ref2;
import 'package:examples_hello_world_ssr/platform_dom.template.dart' as _ref3;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import0;

import 'main.dart' as import1;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import2;
import 'package:angulardart/src/core/linker/views/view.dart' as import3;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import5;
import 'package:angulardart/src/utilities.dart' as import6;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import7;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_meta/angulardart_meta.dart' as import9;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import10;



final List<Object> styles$HelloWorldComponent = const [];

class ViewHelloWorldComponent0 extends import0.ComponentView<import1.HelloWorldComponent> {
  static import2.ComponentStyles? _componentStyles;
  ViewHelloWorldComponent0(import3.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import5.renderFactory.createElement('hello-world');
  }
  static String? get _debugComponentUrl {
    return (import6.isDevMode ? 'asset:examples_hello_world_ssr/web/main.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _el_0 = import7.createRenderElement('h1');
    parentRenderNode.appendChild(_el_0);
    final _text_1 = import7.createRenderText('Hello World');
    _el_0.appendChild(_text_1);
    final _el_2 = import7.createRenderElement('p');
    parentRenderNode.appendChild(_el_2);
    final _text_3 = import7.createRenderText('This page demonstrates AngularDart SSR.');
    _el_2.appendChild(_text_3);
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import2.ComponentStyles.unscoped(styles$HelloWorldComponent, _debugComponentUrl));
      if (import6.isDevMode) {
        import2.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _HelloWorldComponentNgFactory = ComponentFactory<import1.HelloWorldComponent>('hello-world', viewFactory_HelloWorldComponentHost0, import9.RenderMode.automatic);
ComponentFactory<import1.HelloWorldComponent> get HelloWorldComponentNgFactory {
  return _HelloWorldComponentNgFactory;
}

ComponentFactory<import1.HelloWorldComponent> createHelloWorldComponentFactory() {
  return ComponentFactory('hello-world', viewFactory_HelloWorldComponentHost0, import9.RenderMode.automatic);
}

final List<Object> styles$HelloWorldComponentHost = const [];

class _ViewHelloWorldComponentHost0 extends import10.HostView<import1.HelloWorldComponent> {
  @override
  void build() {
    this.componentView = ViewHelloWorldComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import1.HelloWorldComponent();
    this.initRootNode(_el_0);
  }
}

import10.HostView<import1.HelloWorldComponent> viewFactory_HelloWorldComponentHost0() {
  return _ViewHelloWorldComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(HelloWorldComponent, createHelloWorldComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
}
