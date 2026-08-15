// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_progress.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref1;
import 'package:angulardart_components/utils/browser/feature_detector/feature_detector.template.dart' as _ref2;
import 'package:angulardart_components/material_progress/material_progress.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_progress.dart' as import2;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import3;
import 'package:angulardart/src/core/linker/views/view.dart' as import4;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import6;
import 'package:angulardart/src/utilities.dart' as import7;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import8;
import 'package:angulardart/src/runtime/check_binding.dart' as import9;
import 'package:angulardart/src/runtime/interpolate.dart' as import10;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import12;

final List<Object> styles$MaterialProgressComponent = [import0.styles];

class ViewMaterialProgressComponent0 extends import1.ComponentView<import2.MaterialProgressComponent> {
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  late final _el_0;
  late final _el_1;
  late final _el_2;
  static import3.ComponentStyles? _componentStyles;
  ViewMaterialProgressComponent0(import4.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import6.renderFactory.createElement('material-progress');
  }
  static String? get _debugComponentUrl {
    return (import7.isDevMode ? 'asset:angulardart_components/lib/material_progress/material_progress.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._el_0 = import8.createRenderElement('div');
    import8.appendRenderChild(parentRenderNode, this._el_0);
    this.updateChildClass(this._el_0, 'progress-container');
    import8.updateRenderAttribute(this._el_0, 'role', 'progressbar');
    this.addShimC(this._el_0);
    this._el_1 = import8.createRenderElement('div');
    import8.appendRenderChild(this._el_0, this._el_1);
    this.updateChildClass(this._el_1, 'secondary-progress');
    this.addShimC(this._el_1);
    this._el_2 = import8.createRenderElement('div');
    import8.appendRenderChild(this._el_0, this._el_2);
    this.updateChildClass(this._el_2, 'active-progress');
    this.addShimC(this._el_2);
    _ctx.primary = import8.unwrapNode(this._el_2);
    _ctx.secondary = import8.unwrapNode(this._el_1);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.ariaValue;
    if (import9.checkBinding(this._expr_0, currVal_0, 'ariaValue', 'package:angulardart_components/material_progress/material_progress.html')) {
      import8.updateRenderAttribute(this._el_0, 'aria-label', currVal_0) /* REF:package:angulardart_components/material_progress/material_progress.html:282:311 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.ariaValueNow;
    if (import9.checkBinding(this._expr_1, currVal_1, 'ariaValueNow', 'package:angulardart_components/material_progress/material_progress.html')) {
      import8.updateRenderAttribute(this._el_0, 'aria-valuenow', currVal_1) /* REF:package:angulardart_components/material_progress/material_progress.html:382:417 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.indeterminate;
    if (import9.checkBinding(this._expr_2, currVal_2, 'indeterminate', 'package:angulardart_components/material_progress/material_progress.html')) {
      import8.updateRenderClass(this._el_0, 'indeterminate', (currVal_2 ?? false)) /* REF:package:angulardart_components/material_progress/material_progress.html:422:459 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.useFallbackAnimation;
    if (import9.checkBinding(this._expr_3, currVal_3, 'useFallbackAnimation', 'package:angulardart_components/material_progress/material_progress.html')) {
      import8.updateRenderClass(this._el_0, 'fallback', (currVal_3 ?? false)) /* REF:package:angulardart_components/material_progress/material_progress.html:464:503 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.min;
    if (import9.checkBinding(this._expr_4, currVal_4, '{{min}}', 'package:angulardart_components/material_progress/material_progress.html')) {
      import8.updateRenderAttribute(this._el_0, 'aria-valuemin', import10.interpolate0(currVal_4)) /* REF:package:angulardart_components/material_progress/material_progress.html:316:344 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.max;
    if (import9.checkBinding(this._expr_5, currVal_5, '{{max}}', 'package:angulardart_components/material_progress/material_progress.html')) {
      import8.updateRenderAttribute(this._el_0, 'aria-valuemax', import10.interpolate0(currVal_5)) /* REF:package:angulardart_components/material_progress/material_progress.html:349:377 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.activeAndSecondaryProgressValue;
    if (import9.checkBinding(this._expr_6, currVal_6, 'activeAndSecondaryProgressValue', 'package:angulardart_components/material_progress/material_progress.html')) {
      import8.updateRenderAttribute(this._el_1, 'aria-label', currVal_6) /* REF:package:angulardart_components/material_progress/material_progress.html:530:581 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.secondaryTransform;
    if (import9.checkBinding(this._expr_7, currVal_7, 'secondaryTransform', 'package:angulardart_components/material_progress/material_progress.html')) {
      import8.updateRenderStyle(this._el_1, 'transform', currVal_7) /* REF:package:angulardart_components/material_progress/material_progress.html:623:661 */;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.primaryTransform;
    if (import9.checkBinding(this._expr_8, currVal_8, 'primaryTransform', 'package:angulardart_components/material_progress/material_progress.html')) {
      import8.updateRenderStyle(this._el_2, 'transform', currVal_8) /* REF:package:angulardart_components/material_progress/material_progress.html:723:759 */;
      this._expr_8 = currVal_8;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import3.ComponentStyles.scoped(styles$MaterialProgressComponent, _debugComponentUrl));
      if (import7.isDevMode) {
        import3.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialProgressComponentNgFactory = ComponentFactory<import2.MaterialProgressComponent>('material-progress', viewFactory_MaterialProgressComponentHost0);
ComponentFactory<import2.MaterialProgressComponent> get MaterialProgressComponentNgFactory {
  return _MaterialProgressComponentNgFactory;
}

ComponentFactory<import2.MaterialProgressComponent> createMaterialProgressComponentFactory() {
  return ComponentFactory('material-progress', viewFactory_MaterialProgressComponentHost0);
}

final List<Object> styles$MaterialProgressComponentHost = const [];

class _ViewMaterialProgressComponentHost0 extends import12.HostView<import2.MaterialProgressComponent> {
  @override
  void build() {
    this.componentView = ViewMaterialProgressComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.MaterialProgressComponent(null, this.componentView, import8.unwrapNode(_el_0));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
    this.componentView.detectChangesDeprecated();
    if ((!import9.debugThrowIfChanged)) {
      if (firstCheck) {
        this.component.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this.component.ngOnDestroy();
  }
}

import12.HostView<import2.MaterialProgressComponent> viewFactory_MaterialProgressComponentHost0() {
  return _ViewMaterialProgressComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialProgressComponent, createMaterialProgressComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
}
