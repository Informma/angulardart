// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'focus_trap.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/focus/focus.template.dart' as _ref1;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref2;
import 'package:angulardart_components/utils/browser/dom_iterator/dom_iterator.template.dart' as _ref3;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref4;
import 'package:angulardart_components/focus/focus_trap.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'focus_trap.dart' as import2;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import3;
import 'package:angulardart/src/core/linker/views/view.dart' as import4;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import6;
import 'package:angulardart/src/utilities.dart' as import7;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import8;
import 'package:angulardart/src/devtools.dart' as import9;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import11;

final List<Object> styles$FocusTrapComponent = [import0.styles];

class ViewFocusTrapComponent0 extends import1.ComponentView<import2.FocusTrapComponent> {
  late final import2.FocusContentWrapper _FocusContentWrapper_1_5;
  static import3.ComponentStyles? _componentStyles;
  ViewFocusTrapComponent0(import4.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import6.renderFactory.createElement('focus-trap');
  }
  static String? get _debugComponentUrl {
    return (import7.isDevMode ? 'asset:angulardart_components/lib/focus/focus_trap.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _el_0 = import8.createRenderElement('div');
    import8.appendRenderChild(parentRenderNode, _el_0);
    import8.updateRenderTabIndex(_el_0, 0);
    this.addShimC(_el_0);
    final _el_1 = import8.createRenderElement('div');
    import8.appendRenderChild(parentRenderNode, _el_1);
    import8.updateRenderAttribute(_el_1, 'focusContentWrapper', '');
    import8.updateRenderAttribute(_el_1, 'style', 'outline: none');
    import8.updateRenderTabIndex(_el_1, -1);
    this.addShimC(_el_1);
    this._FocusContentWrapper_1_5 = import2.FocusContentWrapper(import8.unwrapNode(_el_1));
    if (import9.isDevToolsEnabled) {
      import9.Inspector.instance.registerDirective(_el_1, this._FocusContentWrapper_1_5);
    }
    this.project(_el_1, 0);
    final _el_2 = import8.createRenderElement('div');
    import8.appendRenderChild(parentRenderNode, _el_2);
    import8.updateRenderTabIndex(_el_2, 0);
    this.addShimC(_el_2);
    import8.addRenderEventListener(_el_0, 'focus', this.eventHandler0(_ctx.focusLast));
    import8.addRenderEventListener(_el_2, 'focus', this.eventHandler0(_ctx.focusFirst));
    _ctx.content = this._FocusContentWrapper_1_5;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import3.ComponentStyles.scoped(styles$FocusTrapComponent, _debugComponentUrl));
      if (import7.isDevMode) {
        import3.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _FocusTrapComponentNgFactory = ComponentFactory<import2.FocusTrapComponent>('focus-trap', viewFactory_FocusTrapComponentHost0);
ComponentFactory<import2.FocusTrapComponent> get FocusTrapComponentNgFactory {
  return _FocusTrapComponentNgFactory;
}

ComponentFactory<import2.FocusTrapComponent> createFocusTrapComponentFactory() {
  return ComponentFactory('focus-trap', viewFactory_FocusTrapComponentHost0);
}

final List<Object> styles$FocusTrapComponentHost = const [];

class _ViewFocusTrapComponentHost0 extends import11.HostView<import2.FocusTrapComponent> {
  @override
  void build() {
    this.componentView = ViewFocusTrapComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.FocusTrapComponent();
    this.initRootNode(_el_0);
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import11.HostView<import2.FocusTrapComponent> viewFactory_FocusTrapComponentHost0() {
  return _ViewFocusTrapComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(FocusTrapComponent, createFocusTrapComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
}
