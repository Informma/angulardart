// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'icon_affix.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref2;
import 'package:angulardart_components/material_menu/affix/base_affix.template.dart' as _ref3;
import 'package:angulardart_components/material_menu/affix/icon_affix_model.template.dart' as _ref4;
import 'package:angulardart_components/material_menu/common/menu_root.template.dart' as _ref5;
import 'package:angulardart_components/model/ui/icon.template.dart' as _ref6;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref7;
import 'package:angulardart_components/material_menu/affix/icon_affix.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'icon_affix.dart' as import2;
import '../../material_icon/material_icon.template.dart' as import3;
import '../../button_decorator/button_decorator.template.dart' as import4;
import '../../material_icon/material_icon.dart' as import5;

import 'package:angulardart/src/common/directives/ng_class.dart' as import6;
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import7;
import 'package:angulardart/src/core/linker/views/view.dart' as import8;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import10;
import 'package:angulardart/src/utilities.dart' as import11;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import12;

import '../../button_decorator/button_decorator.dart' as import13;

import 'package:angulardart/src/core/linker/element_ref.dart';
import 'package:angulardart/src/devtools.dart' as import15;
import 'package:angulardart/src/runtime/check_binding.dart' as import16;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import18;
import 'package:angulardart/src/di/errors.dart' as import19;

import '../common/menu_root.dart' as import20;

final List<Object> styles$IconAffixComponent = [import0.styles];

class ViewIconAffixComponent0 extends import1.ComponentView<import2.IconAffixComponent> {
  late final import3.ViewMaterialIconComponent0 _compView_0;
  late final import4.ButtonDirectiveNgCd _ButtonDirective_0_5;
  late final import5.MaterialIconComponent _MaterialIconComponent_0_6;
  late final import6.NgClass _NgClass_0_7;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_7;
  late final _el_0;
  static import7.ComponentStyles? _componentStyles;
  ViewIconAffixComponent0(import8.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import10.renderFactory.createElement('icon-affix');
  }
  static String? get _debugComponentUrl {
    return (import11.isDevMode ? 'asset:angulardart_components/lib/material_menu/affix/icon_affix.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._compView_0 = import3.ViewMaterialIconComponent0(this, 0);
    this._el_0 = this._compView_0.rootElement;
    import12.appendRenderChild(parentRenderNode, this._el_0);
    import12.updateRenderAttribute(this._el_0, 'baseline', '');
    import12.updateRenderAttribute(this._el_0, 'buttonDecorator', '');
    this.updateChildClassNonHtml(this._el_0, 'secondary-icon');
    this.addShimC(this._el_0);
    this._ButtonDirective_0_5 = import4.ButtonDirectiveNgCd(import13.ButtonDirective(import12.unwrapNode(this._el_0), null));
    this._MaterialIconComponent_0_6 = import5.MaterialIconComponent(import12.unwrapNode(this._el_0));
    this._NgClass_0_7 = import6.NgClass(ElementRef(import12.unwrapNode(this._el_0)));
    if (import15.isDevToolsEnabled) {
      import15.Inspector.instance.registerDirective(this._el_0, this._ButtonDirective_0_5.instance);
      import15.Inspector.instance.registerDirective(this._el_0, this._NgClass_0_7);
    }
    this._compView_0.create(this._MaterialIconComponent_0_6);
    import12.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._ButtonDirective_0_5.instance.handleClick));
    import12.addRenderEventListener(this._el_0, 'keypress', this.eventHandler1(this._ButtonDirective_0_5.instance.handleKeyPress));
    final subscription_0 = this._ButtonDirective_0_5.instance.trigger.listen(this.eventHandler1(_ctx.handleActionIconTrigger));
    this.initSubscriptions([subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import13.ButtonDirective) && (0 == nodeIndex))) {
      return this._ButtonDirective_0_5.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final currVal_4 = (!(_ctx.isActionIconAffix ?? false));
    if (import16.checkBinding(this._expr_4, currVal_4, '!isActionIconAffix', 'asset:angulardart_components/lib/material_menu/affix/icon_affix.dart')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._ButtonDirective_0_5.instance, 'disabled', currVal_4);
      }
      this._ButtonDirective_0_5.instance.disabled = (currVal_4!) /* REF:asset:angulardart_components/lib/material_menu/affix/icon_affix.dart:1493:1524 */;
      this._expr_4 = currVal_4;
    }
    changed = false;
    final currVal_5 = _ctx.icon;
    if (import16.checkBinding(this._expr_5, currVal_5, 'icon', 'asset:angulardart_components/lib/material_menu/affix/icon_affix.dart')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._MaterialIconComponent_0_6, 'icon', currVal_5);
      }
      this._MaterialIconComponent_0_6.icon = (currVal_5!) /* REF:asset:angulardart_components/lib/material_menu/affix/icon_affix.dart:1535:1548 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    if (firstCheck) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._NgClass_0_7, 'class', 'secondary-icon');
      }
      this._NgClass_0_7.initialClasses = 'secondary-icon' /* REF:asset:angulardart_components/lib/material_menu/affix/icon_affix.dart:1233:1255 */;
    }
    final currVal_7 = _ctx.affix.cssClass;
    if (import16.checkBinding(this._expr_7, currVal_7, 'affix.cssClass', 'asset:angulardart_components/lib/material_menu/affix/icon_affix.dart')) {
      if (import15.isDevToolsEnabled) {
        import15.Inspector.instance.recordInput(this._NgClass_0_7, 'ngClass', currVal_7);
      }
      this._NgClass_0_7.rawClass = (currVal_7!) /* REF:asset:angulardart_components/lib/material_menu/affix/icon_affix.dart:1316:1342 */;
      this._expr_7 = currVal_7;
    }
    if ((!import16.debugThrowIfChanged)) {
      this._NgClass_0_7.ngDoCheck();
    }
    if (firstCheck) {
      import12.updateRenderClass(this._el_0, 'action-icon', false) /* REF:asset:angulardart_components/lib/material_menu/affix/icon_affix.dart:1353:1380 */;
    }
    final currVal_0 = _ctx.actionIconAriaLabel;
    if (import16.checkBinding(this._expr_0, currVal_0, 'actionIconAriaLabel', 'asset:angulardart_components/lib/material_menu/affix/icon_affix.dart')) {
      import12.updateRenderAttribute(this._el_0, 'aria-label', currVal_0) /* REF:asset:angulardart_components/lib/material_menu/affix/icon_affix.dart:1266:1305 */;
      this._expr_0 = currVal_0;
    }
    final currVal_2 = (!(_ctx.isActionIconAffix ?? false));
    if (import16.checkBinding(this._expr_2, currVal_2, '!isActionIconAffix', 'asset:angulardart_components/lib/material_menu/affix/icon_affix.dart')) {
      import12.updateRenderClass(this._el_0, 'disabled', (currVal_2 ?? false)) /* REF:asset:angulardart_components/lib/material_menu/affix/icon_affix.dart:1391:1428 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.affix.isVisibleOnHover;
    if (import16.checkBinding(this._expr_3, currVal_3, 'affix.isVisibleOnHover', 'asset:angulardart_components/lib/material_menu/affix/icon_affix.dart')) {
      import12.updateRenderClass(this._el_0, 'hover-icon', (currVal_3 ?? false)) /* REF:asset:angulardart_components/lib/material_menu/affix/icon_affix.dart:1439:1482 */;
      this._expr_3 = currVal_3;
    }
    this._ButtonDirective_0_5.detectHostChanges(this._compView_0, this._el_0);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
    this._NgClass_0_7.ngOnDestroy();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import7.ComponentStyles.scoped(styles$IconAffixComponent, _debugComponentUrl));
      if (import11.isDevMode) {
        import7.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _IconAffixComponentNgFactory = ComponentFactory<import2.IconAffixComponent>('icon-affix', viewFactory_IconAffixComponentHost0);
ComponentFactory<import2.IconAffixComponent> get IconAffixComponentNgFactory {
  return _IconAffixComponentNgFactory;
}

ComponentFactory<import2.IconAffixComponent> createIconAffixComponentFactory() {
  return ComponentFactory('icon-affix', viewFactory_IconAffixComponentHost0);
}

final List<Object> styles$IconAffixComponentHost = const [];

class _ViewIconAffixComponentHost0 extends import18.HostView<import2.IconAffixComponent> {
  @override
  void build() {
    this.componentView = ViewIconAffixComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import11.isDevMode
        ? import19.debugInjectorWrap(import2.IconAffixComponent, () {
            return import2.IconAffixComponent(this.componentView, this.injectorGetOptional(import20.MenuRoot, this.parentIndex));
          })
        : import2.IconAffixComponent(this.componentView, this.injectorGetOptional(import20.MenuRoot, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import18.HostView<import2.IconAffixComponent> viewFactory_IconAffixComponentHost0() {
  return _ViewIconAffixComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(IconAffixComponent, createIconAffixComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
  _ref7.initReflector();
}
