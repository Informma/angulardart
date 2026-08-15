// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'simple_html.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref1;
import 'package:angulardart_components/utils/angular/properties/properties.template.dart' as _ref2;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.template.dart' as _ref3;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref4;
import 'package:angulardart_components/simple_html/simple_html.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'simple_html.dart' as import2;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import3;
import 'package:angulardart/src/core/linker/views/view.dart' as import4;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import6;
import 'package:angulardart/src/utilities.dart' as import7;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import8;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import10;
import 'package:angulardart/src/di/errors.dart' as import11;

import '../utils/browser/dom_service/dom_service.dart' as import12;

import 'package:angulardart_meta/src/di_tokens.dart' as import13;

import 'dart:core';

final List<Object> styles$SimpleHtmlComponent = [import0.styles];

class ViewSimpleHtmlComponent0 extends import1.ComponentView<import2.SimpleHtmlComponent> {
  static import3.ComponentStyles? _componentStyles;
  ViewSimpleHtmlComponent0(import4.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import6.renderFactory.createElement('simple-html');
  }
  static String? get _debugComponentUrl {
    return (import7.isDevMode ? 'asset:angulardart_components/lib/simple_html/simple_html.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _el_0 = import8.createRenderElement('span');
    import8.appendRenderChild(parentRenderNode, _el_0);
    this.addShimC(_el_0);
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import3.ComponentStyles.scoped(styles$SimpleHtmlComponent, _debugComponentUrl));
      if (import7.isDevMode) {
        import3.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _SimpleHtmlComponentNgFactory = ComponentFactory<import2.SimpleHtmlComponent>('simple-html', viewFactory_SimpleHtmlComponentHost0);
ComponentFactory<import2.SimpleHtmlComponent> get SimpleHtmlComponentNgFactory {
  return _SimpleHtmlComponentNgFactory;
}

ComponentFactory<import2.SimpleHtmlComponent> createSimpleHtmlComponentFactory() {
  return ComponentFactory('simple-html', viewFactory_SimpleHtmlComponentHost0);
}

final List<Object> styles$SimpleHtmlComponentHost = const [];

class _ViewSimpleHtmlComponentHost0 extends import10.HostView<import2.SimpleHtmlComponent> {
  @override
  void build() {
    this.componentView = ViewSimpleHtmlComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import7.isDevMode
        ? import11.debugInjectorWrap(import2.SimpleHtmlComponent, () {
            return import2.SimpleHtmlComponent(this.injectorGet(import12.DomService, this.parentIndex), import8.unwrapNode(_el_0), this.injectorGetOptional(const import13.OpaqueToken<List<Uri>>('simpleHtmlUriWhitelist'), this.parentIndex), null);
          })
        : import2.SimpleHtmlComponent(this.injectorGet(import12.DomService, this.parentIndex), import8.unwrapNode(_el_0), this.injectorGetOptional(const import13.OpaqueToken<List<Uri>>('simpleHtmlUriWhitelist'), this.parentIndex), null));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import10.HostView<import2.SimpleHtmlComponent> viewFactory_SimpleHtmlComponentHost0() {
  return _ViewSimpleHtmlComponentHost0();
}

final List<Object> styles$SimpleHtmlBlockComponent = [import0.styles];

class ViewSimpleHtmlBlockComponent0 extends import1.ComponentView<import2.SimpleHtmlBlockComponent> {
  static import3.ComponentStyles? _componentStyles;
  ViewSimpleHtmlBlockComponent0(import4.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import6.renderFactory.createElement('simple-html-block');
  }
  static String? get _debugComponentUrl {
    return (import7.isDevMode ? 'asset:angulardart_components/lib/simple_html/simple_html.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _el_0 = import8.createRenderElement('div');
    import8.appendRenderChild(parentRenderNode, _el_0);
    this.addShimC(_el_0);
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import3.ComponentStyles.scoped(styles$SimpleHtmlBlockComponent, _debugComponentUrl));
      if (import7.isDevMode) {
        import3.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _SimpleHtmlBlockComponentNgFactory = ComponentFactory<import2.SimpleHtmlBlockComponent>('simple-html-block', viewFactory_SimpleHtmlBlockComponentHost0);
ComponentFactory<import2.SimpleHtmlBlockComponent> get SimpleHtmlBlockComponentNgFactory {
  return _SimpleHtmlBlockComponentNgFactory;
}

ComponentFactory<import2.SimpleHtmlBlockComponent> createSimpleHtmlBlockComponentFactory() {
  return ComponentFactory('simple-html-block', viewFactory_SimpleHtmlBlockComponentHost0);
}

final List<Object> styles$SimpleHtmlBlockComponentHost = const [];

class _ViewSimpleHtmlBlockComponentHost0 extends import10.HostView<import2.SimpleHtmlBlockComponent> {
  @override
  void build() {
    this.componentView = ViewSimpleHtmlBlockComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import7.isDevMode
        ? import11.debugInjectorWrap(import2.SimpleHtmlBlockComponent, () {
            return import2.SimpleHtmlBlockComponent(this.injectorGet(import12.DomService, this.parentIndex), import8.unwrapNode(_el_0), this.injectorGetOptional(const import13.OpaqueToken<List<Uri>>('simpleHtmlUriWhitelist'), this.parentIndex), null);
          })
        : import2.SimpleHtmlBlockComponent(this.injectorGet(import12.DomService, this.parentIndex), import8.unwrapNode(_el_0), this.injectorGetOptional(const import13.OpaqueToken<List<Uri>>('simpleHtmlUriWhitelist'), this.parentIndex), null));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
    this.componentView.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import10.HostView<import2.SimpleHtmlBlockComponent> viewFactory_SimpleHtmlBlockComponentHost0() {
  return _ViewSimpleHtmlBlockComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(SimpleHtmlComponent, createSimpleHtmlComponentFactory());
  _ngRef.registerComponent(SimpleHtmlBlockComponent, createSimpleHtmlBlockComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
}
