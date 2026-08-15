// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'glyph.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/model/ui/icon.template.dart' as _ref1;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref2;
import 'package:angulardart_components/glyph/glyph.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'glyph.dart' as import2;

import 'package:angulardart/src/runtime/text_binding.dart' as import3;
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import4;
import 'package:angulardart/src/core/linker/views/view.dart' as import5;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import7;
import 'package:angulardart/src/utilities.dart' as import8;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import9;
import 'package:angulardart/src/runtime/check_binding.dart' as import10;
import 'package:angulardart/src/runtime/interpolate.dart' as import11;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import13;

final List<Object> styles$GlyphComponent = [import0.styles];

class ViewGlyphComponent0 extends import1.ComponentView<import2.GlyphComponent> {
  final import3.TextBinding _textBinding_2 = import3.TextBinding();
  Object? _expr_0;
  late final _el_1;
  static import4.ComponentStyles? _componentStyles;
  ViewGlyphComponent0(import5.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import7.renderFactory.createElement('glyph');
  }
  static String? get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:angulardart_components/lib/glyph/glyph.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _text_0 = import9.createRenderText('\n');
    import9.appendRenderChild(parentRenderNode, _text_0);
    this._el_1 = import9.createRenderElement('i');
    import9.appendRenderChild(parentRenderNode, this._el_1);
    import9.updateRenderAttribute(this._el_1, 'aria-hidden', 'true');
    this.updateChildClass(this._el_1, 'glyph-i');
    this.addShimC(this._el_1);
    import9.appendRenderChild(this._el_1, this._textBinding_2.element);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.useMaterialIconsExtended;
    if (import10.checkBinding(this._expr_0, currVal_0, 'useMaterialIconsExtended', 'package:angulardart_components/glyph/glyph.html')) {
      import9.updateRenderClass(this._el_1, 'material-icons', (currVal_0 ?? false)) /* REF:package:angulardart_components/glyph/glyph.html:241:290 */;
      this._expr_0 = currVal_0;
    }
    this._textBinding_2.updateText(import11.interpolateString0(_ctx.iconName)) /* REF:package:angulardart_components/glyph/glyph.html:316:328 */;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import4.ComponentStyles.scoped(styles$GlyphComponent, _debugComponentUrl));
      if (import8.isDevMode) {
        import4.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _GlyphComponentNgFactory = ComponentFactory<import2.GlyphComponent>('glyph', viewFactory_GlyphComponentHost0);
ComponentFactory<import2.GlyphComponent> get GlyphComponentNgFactory {
  return _GlyphComponentNgFactory;
}

ComponentFactory<import2.GlyphComponent> createGlyphComponentFactory() {
  return ComponentFactory('glyph', viewFactory_GlyphComponentHost0);
}

final List<Object> styles$GlyphComponentHost = const [];

class _ViewGlyphComponentHost0 extends import13.HostView<import2.GlyphComponent> {
  @override
  void build() {
    this.componentView = ViewGlyphComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.GlyphComponent(import9.unwrapNode(_el_0));
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

import13.HostView<import2.GlyphComponent> viewFactory_GlyphComponentHost0() {
  return _ViewGlyphComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(GlyphComponent, createGlyphComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
}
