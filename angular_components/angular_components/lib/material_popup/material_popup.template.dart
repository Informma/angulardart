// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_popup.dart';

import 'package:angulardart_components/material_popup/material_popup.dart' as _i1;
import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/content/deferred_content_aware.template.dart' as _ref1;
import 'package:angulardart_components/focus/focus_interface.template.dart' as _ref2;
import 'package:angulardart_components/laminate/enums/alignment.template.dart' as _ref3;
import 'package:angulardart_components/laminate/enums/visibility.template.dart' as _ref4;
import 'package:angulardart_components/laminate/overlay/module.template.dart' as _ref5;
import 'package:angulardart_components/laminate/overlay/overlay.template.dart' as _ref6;
import 'package:angulardart_components/laminate/overlay/zindexer.template.dart' as _ref7;
import 'package:angulardart_components/laminate/popup/module.template.dart' as _ref8;
import 'package:angulardart_components/laminate/popup/popup.template.dart' as _ref9;
import 'package:angulardart_components/laminate/popup/popup.template.dart' as _ref10;
import 'package:angulardart_components/mixins/material_dropdown_base.template.dart' as _ref11;
import 'package:angulardart_components/model/math/box.template.dart' as _ref12;
import 'package:angulardart_components/model/ui/toggle.template.dart' as _ref13;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref14;
import 'package:angulardart_components/utils/async/async.template.dart' as _ref15;
import 'package:angulardart_components/utils/browser/dom_service/angular_2.template.dart' as _ref16;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref17;
import 'package:angulardart_components/utils/id_generator/id_generator.template.dart' as _ref18;
import 'package:angulardart_components/material_popup/material_popup.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_popup.dart' as import2;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import5;
import 'package:angulardart/src/core/linker/views/view.dart' as import6;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import8;
import 'package:angulardart/src/utilities.dart' as import9;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import10;
import 'package:angulardart/src/runtime/check_binding.dart' as import11;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import13;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import14;
import 'package:angulardart/src/runtime/interpolate.dart' as import15;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import16;
import 'package:angulardart/src/di/errors.dart' as import17;

import '../src/laminate/popup/popup_hierarchy.dart' as import18;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import19;

import '../src/laminate/overlay/overlay_service.dart' as import20;
import '../utils/browser/dom_service/dom_service.dart' as import21;
import '../laminate/overlay/zindexer.dart' as import22;

import 'package:angulardart_meta/src/di_tokens.dart' as import23;

import 'dart:core';

import 'package:angulardart_components/laminate/enums/alignment.dart' as import25;

import '../src/laminate/popup/popup_size_provider.dart' as import26;

import 'package:angulardart/src/core/linker/element_ref.dart';

import '../content/deferred_content_aware.dart' as import28;
import '../mixins/material_dropdown_base.dart' as import29;
import '../src/laminate/popup/popup_ref.dart' as import30;

final List<Object> styles$MaterialPopupComponent = [import0.styles];

class ViewMaterialPopupComponent0 extends import1.ComponentView<import2.MaterialPopupComponent> {
  late final ViewContainer _appEl_1;
  late final TemplateRef _TemplateRef_1_7;
  Object? _expr_0;
  static import5.ComponentStyles? _componentStyles;
  ViewMaterialPopupComponent0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import8.renderFactory.createElement('material-popup');
  }
  static String? get _debugComponentUrl {
    return (import9.isDevMode ? 'asset:angulardart_components/lib/material_popup/material_popup.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _text_0 = import10.createRenderText('\n');
    import10.appendRenderChild(parentRenderNode, _text_0);
    final _anchor_1 = import10.createRenderAnchor();
    import10.appendRenderChild(parentRenderNode, _anchor_1);
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    this._TemplateRef_1_7 = TemplateRef(this._appEl_1, viewFactory_MaterialPopupComponent1);
    final _text_2 = import10.createRenderText('\n');
    import10.appendRenderChild(parentRenderNode, _text_2);
    _ctx.templateRef = this._TemplateRef_1_7;
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.paneId;
    if (import11.checkBinding(this._expr_0, currVal_0, null, null)) {
      import10.updateRenderAttribute(this.rootElement, 'pane-id', currVal_0);
      this._expr_0 = currVal_0;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.scoped(styles$MaterialPopupComponent, _debugComponentUrl));
      if (import9.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialPopupComponentNgFactory = ComponentFactory<import2.MaterialPopupComponent>('material-popup', viewFactory_MaterialPopupComponentHost0);
ComponentFactory<import2.MaterialPopupComponent> get MaterialPopupComponentNgFactory {
  return _MaterialPopupComponentNgFactory;
}

ComponentFactory<import2.MaterialPopupComponent> createMaterialPopupComponentFactory() {
  return ComponentFactory('material-popup', viewFactory_MaterialPopupComponentHost0);
}

class _ViewMaterialPopupComponent1 extends import13.EmbeddedView<import2.MaterialPopupComponent> {
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  Object? _expr_9;
  Object? _expr_10;
  Object? _expr_11;
  Object? _expr_12;
  Object? _expr_13;
  Object? _expr_14;
  late final _el_1;
  late final _el_3;
  _ViewMaterialPopupComponent1(import14.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _text_0 = import10.createRenderText('\n  ');
    this._el_1 = import10.createRenderElement('div');
    this.updateChildClass(this._el_1, 'popup-wrapper mixin');
    this.addShimC(this._el_1);
    final _text_2 = import10.createRenderText('\n      ');
    import10.appendRenderChild(this._el_1, _text_2);
    this._el_3 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_1, this._el_3);
    this.updateChildClass(this._el_3, 'popup');
    this.addShimC(this._el_3);
    final _text_4 = import10.createRenderText('\n          ');
    import10.appendRenderChild(this._el_3, _text_4);
    final _text_5 = import10.createRenderText('\n          ');
    import10.appendRenderChild(this._el_3, _text_5);
    final _el_6 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_3, _el_6);
    this.updateChildClass(_el_6, 'focusable-placeholder');
    import10.updateRenderTabIndex(_el_6, 0);
    this.addShimC(_el_6);
    final _text_7 = import10.createRenderText('\n          ');
    import10.appendRenderChild(this._el_3, _text_7);
    final _el_8 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_3, _el_8);
    this.updateChildClass(_el_8, 'material-popup-content content');
    this.addShimC(_el_8);
    final _text_9 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_8, _text_9);
    final _el_10 = import10.createRenderElement('header');
    import10.appendRenderChild(_el_8, _el_10);
    this.addShimC(_el_10);
    final _text_11 = import10.createRenderText('\n                  ');
    import10.appendRenderChild(_el_10, _text_11);
    this.project(_el_10, 0);
    final _text_12 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_10, _text_12);
    final _text_13 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_8, _text_13);
    final _el_14 = import10.createRenderElement('div');
    import10.appendRenderChild(_el_8, _el_14);
    this.updateChildClass(_el_14, 'main');
    this.addShimC(_el_14);
    final _text_15 = import10.createRenderText('\n                  ');
    import10.appendRenderChild(_el_14, _text_15);
    this.project(_el_14, 1);
    final _text_16 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_14, _text_16);
    final _text_17 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_8, _text_17);
    final _el_18 = import10.createRenderElement('footer');
    import10.appendRenderChild(_el_8, _el_18);
    this.addShimC(_el_18);
    final _text_19 = import10.createRenderText('\n                  ');
    import10.appendRenderChild(_el_18, _text_19);
    this.project(_el_18, 2);
    final _text_20 = import10.createRenderText('\n              ');
    import10.appendRenderChild(_el_18, _text_20);
    final _text_21 = import10.createRenderText('\n          ');
    import10.appendRenderChild(_el_8, _text_21);
    final _text_22 = import10.createRenderText('\n          ');
    import10.appendRenderChild(this._el_3, _text_22);
    final _text_23 = import10.createRenderText('\n          ');
    import10.appendRenderChild(this._el_3, _text_23);
    final _el_24 = import10.createRenderElement('div');
    import10.appendRenderChild(this._el_3, _el_24);
    this.updateChildClass(_el_24, 'focusable-placeholder');
    import10.updateRenderTabIndex(_el_24, 0);
    this.addShimC(_el_24);
    final _text_25 = import10.createRenderText('\n      ');
    import10.appendRenderChild(this._el_3, _text_25);
    final _text_26 = import10.createRenderText('\n  ');
    import10.appendRenderChild(this._el_1, _text_26);
    final _text_27 = import10.createRenderText('\n');
    import10.addRenderEventListener(_el_6, 'focus', this.eventHandler1(this._handleEvent_0));
    import10.addRenderEventListener(_el_24, 'focus', this.eventHandler1(this._handleEvent_1));
    this.initRootNodesAndSubscriptions(import9.unsafeCast(<Object>[_text_0, this._el_1, _text_27]), null);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.ariaLabel;
    if (import11.checkBinding(this._expr_0, currVal_0, 'ariaLabel', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderAttribute(this._el_1, 'aria-label', currVal_0) /* REF:package:angulardart_components/material_popup/material_popup.html:247:276 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.z;
    if (import11.checkBinding(this._expr_1, currVal_1, 'z', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderAttribute(this._el_1, 'elevation', currVal_1?.toString()) /* REF:package:angulardart_components/material_popup/material_popup.html:284:304 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.hasBox;
    if (import11.checkBinding(this._expr_2, currVal_2, 'hasBox', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderClass(this._el_1, 'shadow', (currVal_2 ?? false)) /* REF:package:angulardart_components/material_popup/material_popup.html:400:423 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.matchMinSourceWidth;
    if (import11.checkBinding(this._expr_3, currVal_3, 'matchMinSourceWidth', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderClass(this._el_1, 'full-width', (currVal_3 ?? false)) /* REF:package:angulardart_components/material_popup/material_popup.html:431:471 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.inkBackground;
    if (import11.checkBinding(this._expr_4, currVal_4, 'inkBackground', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderClass(this._el_1, 'ink', (currVal_4 ?? false)) /* REF:package:angulardart_components/material_popup/material_popup.html:479:506 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.slide;
    if (import11.checkBinding(this._expr_5, currVal_5, 'slide', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderAttribute(this._el_1, 'slide', currVal_5) /* REF:package:angulardart_components/material_popup/material_popup.html:514:534 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.zIndex;
    if (import11.checkBinding(this._expr_6, currVal_6, 'zIndex', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderAttribute(this._el_1, 'z-index', currVal_6?.toString()) /* REF:package:angulardart_components/material_popup/material_popup.html:542:565 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.transformOrigin;
    if (import11.checkBinding(this._expr_7, currVal_7, 'transformOrigin', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderStyle(this._el_1, 'transform-origin', currVal_7) /* REF:package:angulardart_components/material_popup/material_popup.html:573:615 */;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.showPopup;
    if (import11.checkBinding(this._expr_8, currVal_8, 'showPopup', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderClass(this._el_1, 'visible', (currVal_8 ?? false)) /* REF:package:angulardart_components/material_popup/material_popup.html:623:650 */;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = import15.interpolateString0(_ctx.uniqueId);
    if (import11.checkBinding(this._expr_9, currVal_9, '{{uniqueId}}', 'package:angulardart_components/material_popup/material_popup.html')) {
      this._el_1.setProperty('id', currVal_9) /* REF:package:angulardart_components/material_popup/material_popup.html:312:329 */;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = import15.interpolateString0(_ctx.role);
    if (import11.checkBinding(this._expr_10, currVal_10, '{{role}}', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderAttribute(this._el_1, 'role', currVal_10) /* REF:package:angulardart_components/material_popup/material_popup.html:337:357 */;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.minHeight;
    if (import11.checkBinding(this._expr_11, currVal_11, 'minHeight', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderStyle(this._el_3, 'min-height', ((currVal_11 == null) ? null : (currVal_11.toString() + 'px'))) /* REF:package:angulardart_components/material_popup/material_popup.html:688:721 */;
      this._expr_11 = currVal_11;
    }
    final currVal_12 = _ctx.minWidth;
    if (import11.checkBinding(this._expr_12, currVal_12, 'minWidth', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderStyle(this._el_3, 'min-width', ((currVal_12 == null) ? null : (currVal_12.toString() + 'px'))) /* REF:package:angulardart_components/material_popup/material_popup.html:733:764 */;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = _ctx.maxHeight;
    if (import11.checkBinding(this._expr_13, currVal_13, 'maxHeight', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderStyle(this._el_3, 'max-height', ((currVal_13 == null) ? null : (currVal_13.toString() + 'px'))) /* REF:package:angulardart_components/material_popup/material_popup.html:776:809 */;
      this._expr_13 = currVal_13;
    }
    final currVal_14 = _ctx.maxWidth;
    if (import11.checkBinding(this._expr_14, currVal_14, 'maxWidth', 'package:angulardart_components/material_popup/material_popup.html')) {
      import10.updateRenderStyle(this._el_3, 'max-width', ((currVal_14 == null) ? null : (currVal_14.toString() + 'px'))) /* REF:package:angulardart_components/material_popup/material_popup.html:821:852 */;
      this._expr_14 = currVal_14;
    }
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.visible = false;
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.visible = false;
  }
}

import13.EmbeddedView<void> viewFactory_MaterialPopupComponent1(import14.RenderView parentView, int parentIndex) {
  return _ViewMaterialPopupComponent1(parentView, parentIndex);
}

final List<Object> styles$MaterialPopupComponentHost = const [];

class _ViewMaterialPopupComponentHost0 extends import16.HostView<import2.MaterialPopupComponent> {
  late dynamic _PopupHierarchy_0_11 = import2.getHierarchy(this.component);
  late dynamic _PopupRef_0_12 = import2.getResolvedPopupRef(this.component);
  late final ViewContainer _appEl_0;
  @override
  void build() {
    this.componentView = ViewMaterialPopupComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this._appEl_0 = ViewContainer(0, null, this, _el_0);
    this.component = (import9.isDevMode
        ? import17.debugInjectorWrap(import2.MaterialPopupComponent, () {
            return import2.MaterialPopupComponent(this.injectorGetOptional(import18.PopupHierarchy, this.parentIndex), this.injectorGetOptional(import2.MaterialPopupComponent, this.parentIndex), null, this.injectorGet(import19.NgZone, this.parentIndex), this.injectorGet(import20.OverlayService, this.parentIndex), this.injectorGet(import21.DomService, this.parentIndex), this.injectorGet(import22.ZIndexer, this.parentIndex), this.injectorGet(const import23.OpaqueToken<List<import25.RelativePosition>>('defaultPopupPositions'), this.parentIndex), this.injectorGet(const import23.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), this.injectorGet(const import23.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), this.injectorGetOptional(import26.PopupSizeProvider, this.parentIndex), this.componentView, this._appEl_0, ElementRef(import10.unwrapNode(_el_0)));
          })
        : import2.MaterialPopupComponent(this.injectorGetOptional(import18.PopupHierarchy, this.parentIndex), this.injectorGetOptional(import2.MaterialPopupComponent, this.parentIndex), null, this.injectorGet(import19.NgZone, this.parentIndex), this.injectorGet(import20.OverlayService, this.parentIndex), this.injectorGet(import21.DomService, this.parentIndex), this.injectorGet(import22.ZIndexer, this.parentIndex), this.injectorGet(const import23.OpaqueToken<List<import25.RelativePosition>>('defaultPopupPositions'), this.parentIndex), this.injectorGet(const import23.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), this.injectorGet(const import23.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), this.injectorGetOptional(import26.PopupSizeProvider, this.parentIndex), this.componentView, this._appEl_0, ElementRef(import10.unwrapNode(_el_0))));
    this.initRootNode(this._appEl_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (((identical(token, import2.MaterialPopupComponent) || identical(token, import28.DeferredContentAware)) || identical(token, import29.DropdownHandle))) {
        return this.component;
      }
      if (identical(token, import18.PopupHierarchy)) {
        return this._PopupHierarchy_0_11;
      }
      if (identical(token, import30.PopupRef)) {
        return this._PopupRef_0_12;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    if (changed) {
      this.componentView.markAsCheckOnce();
    }
    this.componentView.detectHostChanges(firstCheck);
    this._appEl_0.detectChangesInNestedViews();
    this.componentView.detectChangesDeprecated();
    if ((!import11.debugThrowIfChanged)) {
      if (firstCheck) {
        this.component.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_0.destroyNestedViews();
    this.component.ngOnDestroy();
  }
}

import16.HostView<import2.MaterialPopupComponent> viewFactory_MaterialPopupComponentHost0() {
  return _ViewMaterialPopupComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialPopupComponent, createMaterialPopupComponentFactory());
  _ngRef.registerDependencies(getHierarchy, const [
    [_i1.MaterialPopupComponent],
  ]);
  _ngRef.registerDependencies(getResolvedPopupRef, const [
    [_i1.MaterialPopupComponent],
  ]);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
  _ref7.initReflector();
  _ref8.initReflector();
  _ref9.initReflector();
  _ref10.initReflector();
  _ref11.initReflector();
  _ref12.initReflector();
  _ref13.initReflector();
  _ref14.initReflector();
  _ref15.initReflector();
  _ref16.initReflector();
  _ref17.initReflector();
  _ref18.initReflector();
}
