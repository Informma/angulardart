// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'highlighted_value.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/highlighted_text/highlighted_text.template.dart' as _ref1;
import 'package:angulardart_components/model/ui/has_renderer.template.dart' as _ref2;
import 'package:angulardart_components/model/ui/highlight_provider.template.dart' as _ref3;
import 'package:angulardart_components/model/ui/highlighted_text_model.template.dart' as _ref4;
import 'package:angulardart_components/highlighted_text/highlighted_text.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'highlighted_value.dart' as import2;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_for.dart' as import4;
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import5;
import 'package:angulardart/src/core/linker/views/view.dart' as import6;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import8;
import 'package:angulardart/src/utilities.dart' as import9;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import10;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import12;
import 'package:angulardart/src/runtime/check_binding.dart' as import13;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import15;
import 'package:angulardart/src/runtime/text_binding.dart' as import16;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import17;
import 'package:angulardart/src/runtime/interpolate.dart' as import18;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import19;
import 'package:angulardart/src/di/errors.dart' as import20;

import '../model/ui/highlight_provider.dart' as import21;

final List<Object> styles$HighlightedValueComponent = [import0.styles];

class ViewHighlightedValueComponent0 extends import1.ComponentView<import2.HighlightedValueComponent> {
  late final ViewContainer _appEl_1;
  late final import4.NgFor _NgFor_1_9;
  Object? _expr_0;
  static import5.ComponentStyles? _componentStyles;
  ViewHighlightedValueComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('highlight-value');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/highlighted_text/highlighted_value.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _text_0 = import10.createRenderText('\n');
    import10.appendRenderChild(parentRenderNode, _text_0);
    final _anchor_1 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_1);
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_HighlightedValueComponent1);
    this._NgFor_1_9 = import4.NgFor(this._appEl_1, _TemplateRef_1_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_1, this._NgFor_1_9);
    }
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.segments;
    if (import13.checkBinding(this._expr_0, currVal_0, 'segments', 'package:angulardart_components/highlighted_text/highlighted_text.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgFor_1_9, 'ngForOf', currVal_0);
      }
      this._NgFor_1_9.ngForOf = (currVal_0!) /* REF:package:angulardart_components/highlighted_text/highlighted_text.html:252:284 */;
      this._expr_0 = currVal_0;
    }
    if ((!import13.debugThrowIfChanged)) {
      this._NgFor_1_9.ngDoCheck();
    }
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$HighlightedValueComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _HighlightedValueComponentNgFactory = ComponentFactory<import2.HighlightedValueComponent>('highlight-value', viewFactory_HighlightedValueComponentHost0);
ComponentFactory<import2.HighlightedValueComponent> get HighlightedValueComponentNgFactory {
  return _HighlightedValueComponentNgFactory;
}

ComponentFactory<import2.HighlightedValueComponent> createHighlightedValueComponentFactory() {
  return ComponentFactory('highlight-value', viewFactory_HighlightedValueComponentHost0);
}

class _ViewHighlightedValueComponent1 extends import15.EmbeddedView<import2.HighlightedValueComponent> {
  final import16.TextBinding _textBinding_1 = import16.TextBinding();
  Object? _expr_0;
  late final _el_0;
  _ViewHighlightedValueComponent1(import17.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._el_0 = import10.createRenderElement('span');
    this.updateChildClass(this._el_0, 'text-segment');
    this.addShimC(this._el_0);
    import10.appendRenderChild(this._el_0, this._textBinding_1.element);
    this.initRootNode(this._el_0);
  }

  @override
  void detectChangesInternal() {
    final local_segment = this.locals['\$implicit'];
    final currVal_0 = local_segment.isHighlighted;
    if (import13.checkBinding(this._expr_0, currVal_0, 'segment.isHighlighted', 'package:angulardart_components/highlighted_text/highlighted_text.html')) {
      import10.updateRenderClass(this._el_0, 'segment-highlight', (currVal_0 ?? false)) /* REF:package:angulardart_components/highlighted_text/highlighted_text.html:291:340 */;
      this._expr_0 = currVal_0;
    }
    this._textBinding_1.updateText(import18.interpolate0(local_segment.text)) /* REF:package:angulardart_components/highlighted_text/highlighted_text.html:341:357 */;
  }
}

import15.EmbeddedView<void> viewFactory_HighlightedValueComponent1(import17.RenderView parentView, int parentIndex) {
  return _ViewHighlightedValueComponent1(parentView, parentIndex);
}

final List<Object> styles$HighlightedValueComponentHost = const [];

class _ViewHighlightedValueComponentHost0 extends import19.HostView<import2.HighlightedValueComponent> {
  @override
  void build() {
    this.componentView = ViewHighlightedValueComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import9.isDevMode
        ? import20.debugInjectorWrap(import2.HighlightedValueComponent, () {
            return import2.HighlightedValueComponent(this.injectorGet(import21.HighlightProvider, this.parentIndex));
          })
        : import2.HighlightedValueComponent(this.injectorGet(import21.HighlightProvider, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import19.HostView<import2.HighlightedValueComponent> viewFactory_HighlightedValueComponentHost0() {
  return _ViewHighlightedValueComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(HighlightedValueComponent, createHighlightedValueComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
}
