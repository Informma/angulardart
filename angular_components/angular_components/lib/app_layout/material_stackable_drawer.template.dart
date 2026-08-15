// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_stackable_drawer.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/app_layout/material_temporary_drawer.template.dart' as _ref1;
import 'package:angulardart_components/content/deferred_content_aware.template.dart' as _ref2;
import 'package:angulardart_components/app_layout/material_stackable_drawer.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_stackable_drawer.dart' as import2;

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

import '../content/deferred_content_aware.dart' as import13;

final List<Object> styles$MaterialStackableDrawerComponent = [import0.styles];

class ViewMaterialStackableDrawerComponent0 extends import1.ComponentView<import2.MaterialStackableDrawerComponent> {
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  late final _el_0;
  static import3.ComponentStyles? _componentStyles;
  ViewMaterialStackableDrawerComponent0(import4.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import6.renderFactory.createElement('material-drawer');
  }
  static String? get _debugComponentUrl {
    return (import7.isDevMode ? 'asset:angulardart_components/lib/app_layout/material_stackable_drawer.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._el_0 = import8.createRenderElement('div');
    import8.appendRenderChild(parentRenderNode, this._el_0);
    this.updateChildClass(this._el_0, 'drawer-content');
    this.addShimC(this._el_0);
    this.project(this._el_0, 0);
    import8.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._handleEvent_0));
    import8.addRenderEventListener(parentRenderNode, 'click', this.eventHandler0(_ctx.toggle));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.isExpanded;
    if (import9.checkBinding(this._expr_0, currVal_0, 'isExpanded', 'package:angulardart_components/app_layout/material_stackable_drawer.html')) {
      import8.updateRenderClass(this._el_0, 'drawer-content-expanded', (currVal_0 ?? false)) /* REF:package:angulardart_components/app_layout/material_stackable_drawer.html:286:330 */;
      this._expr_0 = currVal_0;
    }
  }

  void _handleEvent_0($event) {
    $event.stopPropagation();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_1 = _ctx.hostMatDrawerCollapsed;
    if (import9.checkBinding(this._expr_1, currVal_1, null, null)) {
      import8.updateRenderClass(this.rootElement, 'mat-drawer-collapsed', (currVal_1 ?? false));
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.hostMatDrawerExpanded;
    if (import9.checkBinding(this._expr_2, currVal_2, null, null)) {
      import8.updateRenderClass(this.rootElement, 'mat-drawer-expanded', (currVal_2 ?? false));
      this._expr_2 = currVal_2;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import3.ComponentStyles.scoped(styles$MaterialStackableDrawerComponent, _debugComponentUrl));
      if (import7.isDevMode) {
        import3.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialStackableDrawerComponentNgFactory = ComponentFactory<import2.MaterialStackableDrawerComponent>('material-drawer[stackable]', viewFactory_MaterialStackableDrawerComponentHost0);
ComponentFactory<import2.MaterialStackableDrawerComponent> get MaterialStackableDrawerComponentNgFactory {
  return _MaterialStackableDrawerComponentNgFactory;
}

ComponentFactory<import2.MaterialStackableDrawerComponent> createMaterialStackableDrawerComponentFactory() {
  return ComponentFactory('material-drawer[stackable]', viewFactory_MaterialStackableDrawerComponentHost0);
}

final List<Object> styles$MaterialStackableDrawerComponentHost = const [];

class _ViewMaterialStackableDrawerComponentHost0 extends import11.HostView<import2.MaterialStackableDrawerComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialStackableDrawerComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import7.isDevMode
        ? import12.debugInjectorWrap(import2.MaterialStackableDrawerComponent, () {
            return import2.MaterialStackableDrawerComponent(this.injectorGetOptional(import2.MaterialStackableDrawerComponent, this.parentIndex));
          })
        : import2.MaterialStackableDrawerComponent(this.injectorGetOptional(import2.MaterialStackableDrawerComponent, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import2.MaterialStackableDrawerComponent) || identical(token, import13.DeferredContentAware)) && (0 == nodeIndex))) {
      return this.component;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    if (((!import9.debugThrowIfChanged) && firstCheck)) {
      this.component.ngOnInit();
    }
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
  }
}

import11.HostView<import2.MaterialStackableDrawerComponent> viewFactory_MaterialStackableDrawerComponentHost0() {
  return _ViewMaterialStackableDrawerComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialStackableDrawerComponent, createMaterialStackableDrawerComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
}
