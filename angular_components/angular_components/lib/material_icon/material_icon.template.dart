// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_icon.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/model/ui/icon.template.dart' as _ref1;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref2;
import 'package:angulardart_components/material_icon/material_icon.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_icon.dart' as import2;

import 'package:angulardart/src/runtime/text_binding.dart' as import3;
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import4;
import 'package:angulardart/src/core/linker/views/view.dart' as import5;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import7;
import 'package:angulardart/src/utilities.dart' as import8;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import9;
import 'package:angulardart/src/runtime/interpolate.dart' as import10;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import12;

final List<Object> styles$MaterialIconComponent = [import0.styles];

class ViewMaterialIconComponent0 extends import1.ComponentView<import2.MaterialIconComponent> {
  final import3.TextBinding _textBinding_2 = import3.TextBinding();
  static import4.ComponentStyles? _componentStyles;
  ViewMaterialIconComponent0(import5.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import7.renderFactory.createElement('material-icon');
  }
  static String? get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:angulardart_components/lib/material_icon/material_icon.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _text_0 = import9.createRenderText('\n');
    import9.appendRenderChild(parentRenderNode, _text_0);
    final _el_1 = import9.createRenderElement('i');
    import9.appendRenderChild(parentRenderNode, _el_1);
    import9.updateRenderAttribute(_el_1, 'aria-hidden', 'true');
    this.updateChildClass(_el_1, 'material-icon-i material-icons');
    this.addShimC(_el_1);
    import9.appendRenderChild(_el_1, this._textBinding_2.element);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_2.updateText(import10.interpolateString0(_ctx.iconName)) /* REF:package:angulardart_components/material_icon/material_icon.html:286:298 */;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import4.ComponentStyles.scoped(styles$MaterialIconComponent, _debugComponentUrl));
      if (import8.isDevMode) {
        import4.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialIconComponentNgFactory = ComponentFactory<import2.MaterialIconComponent>('material-icon', viewFactory_MaterialIconComponentHost0);
ComponentFactory<import2.MaterialIconComponent> get MaterialIconComponentNgFactory {
  return _MaterialIconComponentNgFactory;
}

ComponentFactory<import2.MaterialIconComponent> createMaterialIconComponentFactory() {
  return ComponentFactory('material-icon', viewFactory_MaterialIconComponentHost0);
}

final List<Object> styles$MaterialIconComponentHost = const [];

class _ViewMaterialIconComponentHost0 extends import12.HostView<import2.MaterialIconComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialIconComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialIconComponent(import9.unwrapNode(_el_0));
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
}

import12.HostView<import2.MaterialIconComponent> viewFactory_MaterialIconComponentHost0() {
  return _ViewMaterialIconComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialIconComponent, createMaterialIconComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
}
