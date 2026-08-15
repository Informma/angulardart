// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'caption_affix.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/material_menu/affix/base_affix.template.dart' as _ref1;
import 'package:angulardart_components/material_menu/affix/caption_affix_model.template.dart' as _ref2;
import 'package:angulardart_components/material_menu/affix/caption_affix.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'caption_affix.dart' as import2;

import 'package:angulardart/src/runtime/text_binding.dart' as import3;
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import4;
import 'package:angulardart/src/core/linker/views/view.dart' as import5;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import7;
import 'package:angulardart/src/utilities.dart' as import8;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import9;
import 'package:angulardart/src/runtime/interpolate.dart' as import10;
import 'package:angulardart/src/runtime/check_binding.dart' as import11;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import13;

final List<Object> styles$CaptionAffixComponent = [import0.styles];

class ViewCaptionAffixComponent0 extends import1.ComponentView<import2.CaptionAffixComponent> {
  final import3.TextBinding _textBinding_0 = import3.TextBinding();
  Object? _expr_0;
  static import4.ComponentStyles? _componentStyles;
  ViewCaptionAffixComponent0(import5.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import7.renderFactory.createElement('caption-affix');
  }
  static String? get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:angulardart_components/lib/material_menu/affix/caption_affix.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    import9.appendRenderChild(parentRenderNode, this._textBinding_0.element);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_0.updateText(import10.interpolateString0(_ctx.text)) /* REF:asset:angulardart_components/lib/material_menu/affix/caption_affix.dart:635:643 */;
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_0 = import2.CaptionAffixComponent.hostClass;
    if (import11.checkBinding(this._expr_0, currVal_0, null, null)) {
      this.updateChildClassNonHtml(this.rootElement, currVal_0);
      this._expr_0 = currVal_0;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import4.ComponentStyles.scoped(styles$CaptionAffixComponent, _debugComponentUrl));
      if (import8.isDevMode) {
        import4.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _CaptionAffixComponentNgFactory = ComponentFactory<import2.CaptionAffixComponent>('caption-affix', viewFactory_CaptionAffixComponentHost0);
ComponentFactory<import2.CaptionAffixComponent> get CaptionAffixComponentNgFactory {
  return _CaptionAffixComponentNgFactory;
}

ComponentFactory<import2.CaptionAffixComponent> createCaptionAffixComponentFactory() {
  return ComponentFactory('caption-affix', viewFactory_CaptionAffixComponentHost0);
}

final List<Object> styles$CaptionAffixComponentHost = const [];

class _ViewCaptionAffixComponentHost0 extends import13.HostView<import2.CaptionAffixComponent> {
  @override
  void build() {
    this.componentView = ViewCaptionAffixComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import2.CaptionAffixComponent(this.componentView);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
  }
}

import13.HostView<import2.CaptionAffixComponent> viewFactory_CaptionAffixComponentHost0() {
  return _ViewCaptionAffixComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(CaptionAffixComponent, createCaptionAffixComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
}
