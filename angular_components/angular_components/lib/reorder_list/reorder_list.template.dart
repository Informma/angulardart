// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'reorder_list.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/reorder_list/reorder_events.template.dart' as _ref1;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref2;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref3;
import 'package:angulardart_components/utils/keyboard/keyboard.template.dart' as _ref4;

import 'reorder_events.template.dart' as _ref5;

import 'package:angulardart_components/reorder_list/reorder_list.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'reorder_list.dart' as import2;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import3;
import 'package:angulardart/src/core/linker/views/view.dart' as import4;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import6;
import 'package:angulardart/src/utilities.dart' as import7;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import8;
import 'package:angulardart/src/runtime/check_binding.dart' as import9;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import11;
import 'package:angulardart/src/di/errors.dart' as import12;
import 'package:angulardart/src/core/zone/ng_zone.dart' as import13;
import 'package:angulardart/src/core/change_detection/directive_change_detector.dart' as import14;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import15;

final List<Object> styles$ReorderListComponent = [import0.styles];

class ViewReorderListComponent0 extends import1.ComponentView<import2.ReorderListComponent> {
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  late final _el_1;
  static import3.ComponentStyles? _componentStyles;
  ViewReorderListComponent0(import4.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import6.renderFactory.createElement('reorder-list');
  }
  static String? get _debugComponentUrl {
    return (import7.isDevMode ? 'asset:angulardart_components/lib/reorder_list/reorder_list.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _text_0 = import8.createRenderText('\n');
    import8.appendRenderChild(parentRenderNode, _text_0);
    this.project(parentRenderNode, 0);
    this._el_1 = import8.createRenderElement('div');
    import8.appendRenderChild(parentRenderNode, this._el_1);
    this.updateChildClass(this._el_1, 'placeholder');
    this.addShimC(this._el_1);
    this.project(this._el_1, 1);
    _ctx.placeholder = import8.unwrapNode(this._el_1);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = (!(_ctx.showPlaceholder ?? false));
    if (import9.checkBinding(this._expr_0, currVal_0, '!showPlaceholder', 'package:angulardart_components/reorder_list/reorder_list.html')) {
      import8.updateRenderClass(this._el_1, 'hidden', (currVal_0 ?? false)) /* REF:package:angulardart_components/reorder_list/reorder_list.html:283:316 */;
      this._expr_0 = currVal_0;
    }
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_1 = import2.ReorderListComponent.hostClass;
    if (import9.checkBinding(this._expr_1, currVal_1, null, null)) {
      this.updateChildClassNonHtml(this.rootElement, currVal_1);
      this._expr_1 = currVal_1;
    }
    final currVal_2 = import2.ReorderListComponent.hostRole;
    if (import9.checkBinding(this._expr_2, currVal_2, null, null)) {
      import8.updateRenderAttribute(this.rootElement, 'role', currVal_2);
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.verticalItems;
    if (import9.checkBinding(this._expr_3, currVal_3, null, null)) {
      import8.updateRenderClass(this.rootElement, 'vertical', (currVal_3 ?? false));
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.multiSelect;
    if (import9.checkBinding(this._expr_4, currVal_4, null, null)) {
      import8.updateRenderClass(this.rootElement, 'multiselect', (currVal_4 ?? false));
      this._expr_4 = currVal_4;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import3.ComponentStyles.scoped(styles$ReorderListComponent, _debugComponentUrl));
      if (import7.isDevMode) {
        import3.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _ReorderListComponentNgFactory = ComponentFactory<import2.ReorderListComponent>('reorder-list', viewFactory_ReorderListComponentHost0);
ComponentFactory<import2.ReorderListComponent> get ReorderListComponentNgFactory {
  return _ReorderListComponentNgFactory;
}

ComponentFactory<import2.ReorderListComponent> createReorderListComponentFactory() {
  return ComponentFactory('reorder-list', viewFactory_ReorderListComponentHost0);
}

final List<Object> styles$ReorderListComponentHost = const [];

class _ViewReorderListComponentHost0 extends import11.HostView<import2.ReorderListComponent> {
  @override
  void build() {
    this.componentView = ViewReorderListComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import7.isDevMode
        ? import12.debugInjectorWrap(import2.ReorderListComponent, () {
            return import2.ReorderListComponent(this.injectorGet(import13.NgZone, this.parentIndex));
          })
        : import2.ReorderListComponent(this.injectorGet(import13.NgZone, this.parentIndex)));
    this.component.items = [];
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.ReorderListComponent) && (0 == nodeIndex))) {
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

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import11.HostView<import2.ReorderListComponent> viewFactory_ReorderListComponentHost0() {
  return _ViewReorderListComponentHost0();
}

class ReorderItemDirectiveNgCd extends import14.DirectiveChangeDetector {
  final import2.ReorderItemDirective instance;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  ReorderItemDirectiveNgCd(this.instance);
  void detectHostChanges(import15.RenderView view, dynamic el) {
    final currVal_0 = this.instance.hostDraggable;
    if (import9.checkBinding(this._expr_0, currVal_0, null, null)) {
      import8.updateRenderAttribute(el, 'draggable', currVal_0);
      this._expr_0 = currVal_0;
    }
    final currVal_1 = import2.ReorderItemDirective.hostRole;
    if (import9.checkBinding(this._expr_1, currVal_1, null, null)) {
      import8.updateRenderAttribute(el, 'role', currVal_1);
      this._expr_1 = currVal_1;
    }
    final currVal_2 = import2.ReorderItemDirective.hostTabIndex;
    if (import9.checkBinding(this._expr_2, currVal_2, null, null)) {
      el.setProperty('tabIndex', currVal_2);
      this._expr_2 = currVal_2;
    }
  }
}

class ReorderHandleDirectiveNgCd extends import14.DirectiveChangeDetector {
  final import2.ReorderHandleDirective instance;
  Object? _expr_0;
  ReorderHandleDirectiveNgCd(this.instance);
  void detectHostChanges(import15.RenderView view, dynamic el) {
    final currVal_0 = import2.ReorderHandleDirective.hostDraggable;
    if (import9.checkBinding(this._expr_0, currVal_0, null, null)) {
      import8.updateRenderAttribute(el, 'draggable', currVal_0);
      this._expr_0 = currVal_0;
    }
  }
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(ReorderListComponent, createReorderListComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
}
