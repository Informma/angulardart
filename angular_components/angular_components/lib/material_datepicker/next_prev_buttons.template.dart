// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'next_prev_buttons.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref1;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref2;
import 'package:angulardart_components/src/material_datepicker/sequential.template.dart' as _ref3;
import 'package:angulardart_components/src/material_datepicker/sequential.template.dart' as _ref4;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref5;
import 'package:angulardart_components/material_datepicker/next_prev_buttons.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'next_prev_buttons.dart' as import2;
import '../material_icon/material_icon.template.dart' as import3;
import '../material_icon/material_icon.dart' as import4;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import5;
import 'package:angulardart/src/core/linker/views/view.dart' as import6;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import8;
import 'package:angulardart/src/utilities.dart' as import9;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import10;
import 'package:angulardart/src/devtools.dart' as import11;
import 'package:angulardart/src/runtime/check_binding.dart' as import12;
import 'package:angulardart/src/runtime/interpolate.dart' as import13;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import15;

final List<Object> styles$NextPrevComponent = [import0.styles];

class ViewNextPrevComponent0 extends import1.ComponentView<import2.NextPrevComponent> {
  late final import3.ViewMaterialIconComponent0 _compView_1;
  late final import4.MaterialIconComponent _MaterialIconComponent_1_5;
  late final import3.ViewMaterialIconComponent0 _compView_4;
  late final import4.MaterialIconComponent _MaterialIconComponent_4_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  late final _el_0;
  late final _el_1;
  late final _el_3;
  late final _el_4;
  static import5.ComponentStyles? _componentStyles;
  ViewNextPrevComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('next-prev-buttons');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._el_0 = import10.createRenderElement('button');
    import10.appendRenderChild(parentRenderNode, this._el_0);
    this.updateChildClass(this._el_0, 'prev');
    this.addShimC(this._el_0);
    this._compView_1 = import3.ViewMaterialIconComponent0(this, 1);
    this._el_1 = this._compView_1.rootElement;
    import10.appendRenderChild(this._el_0, this._el_1);
    import10.updateRenderAttribute(this._el_1, 'icon', 'navigate_before');
    this.addShimC(this._el_1);
    this._MaterialIconComponent_1_5 = import4.MaterialIconComponent(import10.unwrapNode(this._el_1));
    this._compView_1.create(this._MaterialIconComponent_1_5);
    final _text_2 = import10.createRenderText('\n');
    import10.appendRenderChild(parentRenderNode, _text_2);
    this._el_3 = import10.createRenderElement('button');
    import10.appendRenderChild(parentRenderNode, this._el_3);
    this.updateChildClass(this._el_3, 'next');
    this.addShimC(this._el_3);
    this._compView_4 = import3.ViewMaterialIconComponent0(this, 4);
    this._el_4 = this._compView_4.rootElement;
    import10.appendRenderChild(this._el_3, this._el_4);
    import10.updateRenderAttribute(this._el_4, 'icon', 'navigate_next');
    this.addShimC(this._el_4);
    this._MaterialIconComponent_4_5 = import4.MaterialIconComponent(import10.unwrapNode(this._el_4));
    this._compView_4.create(this._MaterialIconComponent_4_5);
    import10.addRenderEventListener(this._el_0, 'click', this.eventHandler0(_ctx.prev));
    import10.addRenderEventListener(this._el_3, 'click', this.eventHandler0(_ctx.next));
    import10.addRenderEventListener(parentRenderNode, 'click', this.eventHandler1(_ctx.stopPropagation));
    import10.addRenderEventListener(parentRenderNode, 'keypress', this.eventHandler1(_ctx.stopPropagation));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialIconComponent_1_5, 'icon', 'navigate_before');
      }
      this._MaterialIconComponent_1_5.icon = 'navigate_before' /* REF:asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart:1350:1372 */;
      changed = true;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    changed = false;
    if (firstCheck) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MaterialIconComponent_4_5, 'icon', 'navigate_next');
      }
      this._MaterialIconComponent_4_5.icon = 'navigate_next' /* REF:asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart:1656:1676 */;
      changed = true;
    }
    if (changed) {
      this._compView_4.markAsCheckOnce();
    }
    final currVal_0 = _ctx.isPrevDisabled;
    if (import12.checkBinding(this._expr_0, currVal_0, 'isPrevDisabled', 'asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart')) {
      import10.updateRenderClass(this._el_0, 'disabled', (currVal_0 ?? false)) /* REF:asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart:1173:1206 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.isPrevDisabled;
    if (import12.checkBinding(this._expr_1, currVal_1, '{{isPrevDisabled}}', 'asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart')) {
      import10.updateRenderAttribute(this._el_0, 'aria-disabled', import13.interpolate0(currVal_1)) /* REF:asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart:1215:1254 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = import13.interpolate0((_ctx.isPrevDisabled ? (0 - 1) : 0));
    if (import12.checkBinding(this._expr_2, currVal_2, '{{isPrevDisabled ? -1 : 0}}', 'asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart')) {
      import10.updateRenderAttribute(this._el_0, 'tabindex', currVal_2) /* REF:asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart:1263:1306 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.prevLabel;
    if (import12.checkBinding(this._expr_3, currVal_3, 'prevLabel', 'asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart')) {
      import10.updateRenderAttribute(this._el_1, 'aria-label', currVal_3) /* REF:asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart:1390:1419 */;
      this._expr_3 = currVal_3;
    }
    final currVal_5 = _ctx.isNextDisabled;
    if (import12.checkBinding(this._expr_5, currVal_5, 'isNextDisabled', 'asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart')) {
      import10.updateRenderClass(this._el_3, 'disabled', (currVal_5 ?? false)) /* REF:asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart:1479:1512 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.isNextDisabled;
    if (import12.checkBinding(this._expr_6, currVal_6, '{{isNextDisabled}}', 'asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart')) {
      import10.updateRenderAttribute(this._el_3, 'aria-disabled', import13.interpolate0(currVal_6)) /* REF:asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart:1521:1560 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = import13.interpolate0((_ctx.isNextDisabled ? (0 - 1) : 0));
    if (import12.checkBinding(this._expr_7, currVal_7, '{{isNextDisabled ? -1 : 0}}', 'asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart')) {
      import10.updateRenderAttribute(this._el_3, 'tabindex', currVal_7) /* REF:asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart:1569:1612 */;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.nextLabel;
    if (import12.checkBinding(this._expr_8, currVal_8, 'nextLabel', 'asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart')) {
      import10.updateRenderAttribute(this._el_4, 'aria-label', currVal_8) /* REF:asset:angulardart_components/lib/material_datepicker/next_prev_buttons.dart:1694:1723 */;
      this._expr_8 = currVal_8;
    }
    this._compView_1.detectChangesDeprecated();
    this._compView_4.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_1.destroyInternalState();
    this._compView_4.destroyInternalState();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$NextPrevComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _NextPrevComponentNgFactory = ComponentFactory<import2.NextPrevComponent>('next-prev-buttons', viewFactory_NextPrevComponentHost0);
ComponentFactory<import2.NextPrevComponent> get NextPrevComponentNgFactory {
  return _NextPrevComponentNgFactory;
}

ComponentFactory<import2.NextPrevComponent> createNextPrevComponentFactory() {
  return ComponentFactory('next-prev-buttons', viewFactory_NextPrevComponentHost0);
}

final List<Object> styles$NextPrevComponentHost = const [];

class _ViewNextPrevComponentHost0 extends import15.HostView<import2.NextPrevComponent> {
  @override
  void build() {
    this.componentView = ViewNextPrevComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.NextPrevComponent(this.componentView);
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

import15.HostView<import2.NextPrevComponent> viewFactory_NextPrevComponentHost0() {
  return _ViewNextPrevComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(NextPrevComponent, createNextPrevComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
}
