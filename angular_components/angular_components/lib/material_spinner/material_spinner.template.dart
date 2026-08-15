// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_spinner.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/material_spinner/material_spinner.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_spinner.dart' as import2;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import3;
import 'package:angulardart/src/core/linker/views/view.dart' as import4;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import6;
import 'package:angulardart/src/utilities.dart' as import7;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import8;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import10;

final List<Object> styles$MaterialSpinnerComponent = [import0.styles];

class ViewMaterialSpinnerComponent0 extends import1.ComponentView<import2.MaterialSpinnerComponent> {
  static import3.ComponentStyles? _componentStyles;
  ViewMaterialSpinnerComponent0(import4.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import6.renderFactory.createElement('material-spinner');
  }
  static String? get _debugComponentUrl {
    return (import7.isDevMode ? 'asset:angulardart_components/lib/material_spinner/material_spinner.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _el_0 = import8.createRenderElement('div');
    import8.appendRenderChild(parentRenderNode, _el_0);
    this.updateChildClass(_el_0, 'spinner');
    this.addShimC(_el_0);
    final _el_1 = import8.createRenderElement('div');
    import8.appendRenderChild(_el_0, _el_1);
    this.updateChildClass(_el_1, 'circle left');
    this.addShimC(_el_1);
    final _el_2 = import8.createRenderElement('div');
    import8.appendRenderChild(_el_0, _el_2);
    this.updateChildClass(_el_2, 'circle right');
    this.addShimC(_el_2);
    final _el_3 = import8.createRenderElement('div');
    import8.appendRenderChild(_el_0, _el_3);
    this.updateChildClass(_el_3, 'circle gap');
    this.addShimC(_el_3);
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import3.ComponentStyles.scoped(styles$MaterialSpinnerComponent, _debugComponentUrl));
      if (import7.isDevMode) {
        import3.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialSpinnerComponentNgFactory = ComponentFactory<import2.MaterialSpinnerComponent>('material-spinner', viewFactory_MaterialSpinnerComponentHost0);
ComponentFactory<import2.MaterialSpinnerComponent> get MaterialSpinnerComponentNgFactory {
  return _MaterialSpinnerComponentNgFactory;
}

ComponentFactory<import2.MaterialSpinnerComponent> createMaterialSpinnerComponentFactory() {
  return ComponentFactory('material-spinner', viewFactory_MaterialSpinnerComponentHost0);
}

final List<Object> styles$MaterialSpinnerComponentHost = const [];

class _ViewMaterialSpinnerComponentHost0 extends import10.HostView<import2.MaterialSpinnerComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialSpinnerComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialSpinnerComponent();
    this.initRootNode(_el_0);
  }
}

import10.HostView<import2.MaterialSpinnerComponent> viewFactory_MaterialSpinnerComponentHost0() {
  return _ViewMaterialSpinnerComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialSpinnerComponent, createMaterialSpinnerComponentFactory());
  _ref0.initReflector();
}
