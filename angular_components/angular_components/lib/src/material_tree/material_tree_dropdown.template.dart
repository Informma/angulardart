// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'material_tree_dropdown.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'material_tree_impl.template.dart' as _ref0;

import 'package:angulardart/angulardart.template.dart' as _ref1;
import 'package:angulardart_components/content/deferred_content.template.dart' as _ref2;
import 'package:angulardart_components/focus/focus.template.dart' as _ref3;
import 'package:angulardart_components/focus/keyboard_only_focus_indicator.template.dart' as _ref4;
import 'package:angulardart_components/laminate/enums/alignment.template.dart' as _ref5;
import 'package:angulardart_components/material_icon/material_icon.template.dart' as _ref6;
import 'package:angulardart_components/material_popup/material_popup.template.dart' as _ref7;
import 'package:angulardart_components/mixins/material_dropdown_base.template.dart' as _ref8;
import 'package:angulardart_components/model/selection/select.template.dart' as _ref9;
import 'package:angulardart_components/model/selection/selection_container.template.dart' as _ref10;
import 'package:angulardart_components/model/selection/selection_model.template.dart' as _ref11;
import 'package:angulardart_components/model/selection/selection_options.template.dart' as _ref12;
import 'package:angulardart_components/model/ui/has_factory.template.dart' as _ref13;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref14;
import 'package:angulardart_components/src/material_tree/material_tree_filter.template.dart' as _ref15;
import 'package:angulardart_components/src/material_tree/material_tree_root.template.dart' as _ref16;
import 'package:angulardart_components/utils/angular/css/css.template.dart' as _ref17;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.template.dart' as _ref18;
import 'package:angulardart_components/src/material_tree/material_tree_dropdown.scss.css.shim.dart' as import0;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import1;

import 'material_tree_dropdown.dart' as import2;
import '../../material_popup/material_popup.dart' as import3;
import '../../focus/keyboard_only_focus_indicator.dart' as import4;
import '../laminate/popup/popup_source_directive.dart' as import5;

import 'package:angulardart/src/core/linker/view_container.dart';
import 'package:angulardart/src/common/directives/ng_if.dart';

import '../../material_popup/material_popup.template.dart' as import8;
import '../../content/deferred_content.dart' as import9;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import10;
import 'package:angulardart/src/core/linker/views/view.dart' as import11;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import13;
import 'package:angulardart/src/utilities.dart' as import14;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import15;
import 'package:angulardart/src/di/errors.dart' as import16;

import '../../utils/browser/dom_service/dom_service.dart' as import17;
import '../laminate/popup/dom_popup_source.dart' as import18;
import '../../utils/angular/reference/reference.dart' as import19;
import '../../focus/focus_interface.dart' as import20;

import 'package:angulardart/src/devtools.dart' as import21;
import 'package:angulardart/src/core/linker/template_ref.dart';

import '../laminate/popup/popup_hierarchy.dart' as import23;

import 'package:angulardart/src/core/zone/ng_zone.dart' as import24;

import '../laminate/overlay/overlay_service.dart' as import25;
import '../../laminate/overlay/zindexer.dart' as import26;

import 'package:angulardart_meta/src/di_tokens.dart' as import27;

import 'dart:core';

import 'package:angulardart_components/laminate/enums/alignment.dart' as import29;

import '../laminate/popup/popup_size_provider.dart' as import30;

import 'package:angulardart/src/core/linker/element_ref.dart';

import '../../content/deferred_content_aware.dart' as import32;
import '../../mixins/material_dropdown_base.dart' as import33;
import '../laminate/popup/popup_ref.dart' as import34;

import 'package:angulardart/src/runtime/check_binding.dart' as import35;
import 'package:angulardart/src/runtime/queries.dart' as import36;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import38;
import 'package:angulardart/src/runtime/text_binding.dart' as import39;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import40;
import 'package:angulardart/src/runtime/interpolate.dart' as import41;

import '../../material_icon/material_icon.template.dart' as import42;
import '../../material_icon/material_icon.dart' as import43;
import 'material_tree_filter.template.dart' as import44;
import 'material_tree_filter.dart' as import45;
import 'material_tree_root.dart' as import46;
import 'material_tree_impl.template.dart' as import47;
import 'material_tree_impl.dart' as import48;

import 'package:angulardart/src/core/linker/views/host_view.dart' as import49;

final List<Object> styles$MaterialTreeDropdownComponent = [import0.styles];

class ViewMaterialTreeDropdownComponent0<T> extends import1.ComponentView<import2.MaterialTreeDropdownComponent<T>> {
  bool _viewQuery_MaterialTreeFilterComponent_0_isDirty = true;
  late dynamic _PopupHierarchy_4_11 = import3.getHierarchy(this._MaterialPopupComponent_4_8);
  late dynamic _PopupRef_4_12 = import3.getResolvedPopupRef(this._MaterialPopupComponent_4_8);
  late final import4.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_5;
  late final import5.PopupSourceDirective _PopupSourceDirective_0_6;
  late final ViewContainer _appEl_1;
  late final NgIf _NgIf_1_9;
  late final ViewContainer _appEl_2;
  late final NgIf _NgIf_2_9;
  late final ViewContainer _appEl_3;
  late final NgIf _NgIf_3_9;
  late final import8.ViewMaterialPopupComponent0 _compView_4;
  late final ViewContainer _appEl_4;
  late final import3.MaterialPopupComponent _MaterialPopupComponent_4_8;
  late final ViewContainer _appEl_6;
  late final NgIf _NgIf_6_9;
  late final ViewContainer _appEl_7;
  late final import9.DeferredContentDirective _DeferredContentDirective_7_9;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_6;
  late final _el_0;
  late final _el_4;
  static import10.ComponentStyles? _componentStyles;
  ViewMaterialTreeDropdownComponent0(import11.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    this.initComponentStyles();
    this.rootElement = import13.renderFactory.createElement('material-tree-dropdown');
  }
  static String? get _debugComponentUrl {
    return (import14.isDevMode ? 'asset:angulardart_components/lib/src/material_tree/material_tree_dropdown.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    this._el_0 = import15.createRenderElement('div');
    import15.appendRenderChild(parentRenderNode, this._el_0);
    this.updateChildClass(this._el_0, 'button');
    import15.updateRenderAttribute(this._el_0, 'keyboardOnlyFocusIndicator', '');
    import15.updateRenderAttribute(this._el_0, 'popupSource', '');
    this.addShimC(this._el_0);
    this._KeyboardOnlyFocusIndicatorDirective_0_5 = (import14.isDevMode
        ? import16.debugInjectorWrap(import4.KeyboardOnlyFocusIndicatorDirective, () {
            return import4.KeyboardOnlyFocusIndicatorDirective(import15.unwrapNode(this._el_0), (this.parentView!).injectorGet(import17.DomService, this.parentIndex));
          })
        : import4.KeyboardOnlyFocusIndicatorDirective(import15.unwrapNode(this._el_0), (this.parentView!).injectorGet(import17.DomService, this.parentIndex)));
    this._PopupSourceDirective_0_6 = (import14.isDevMode
        ? import16.debugInjectorWrap(import5.PopupSourceDirective, () {
            return import5.PopupSourceDirective((this.parentView!).injectorGet(import18.DomPopupSourceFactory, this.parentIndex), import15.unwrapNode(this._el_0), (this.parentView!).injectorGetOptional(import19.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import20.Focusable, this.parentIndex), null);
          })
        : import5.PopupSourceDirective((this.parentView!).injectorGet(import18.DomPopupSourceFactory, this.parentIndex), import15.unwrapNode(this._el_0), (this.parentView!).injectorGetOptional(import19.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import20.Focusable, this.parentIndex), null));
    if (import21.isDevToolsEnabled) {
      import21.Inspector.instance.registerDirective(this._el_0, this._KeyboardOnlyFocusIndicatorDirective_0_5);
      import21.Inspector.instance.registerDirective(this._el_0, this._PopupSourceDirective_0_6);
    }
    final _anchor_1 = import15.createRenderAnchor();
    import15.appendRenderChild(this._el_0, _anchor_1);
    this._appEl_1 = ViewContainer(1, 0, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, (parentView, parentIndex) {
      return viewFactory_MaterialTreeDropdownComponent1<T>(parentView, parentIndex);
    });
    this._NgIf_1_9 = NgIf(this._appEl_1, _TemplateRef_1_8);
    if (import21.isDevToolsEnabled) {
      import21.Inspector.instance.registerDirective(_anchor_1, this._NgIf_1_9);
    }
    final _anchor_2 = import15.createRenderAnchor();
    import15.appendRenderChild(this._el_0, _anchor_2);
    this._appEl_2 = ViewContainer(2, 0, this, _anchor_2);
    var _TemplateRef_2_8 = TemplateRef(this._appEl_2, (parentView, parentIndex) {
      return viewFactory_MaterialTreeDropdownComponent2<T>(parentView, parentIndex);
    });
    this._NgIf_2_9 = NgIf(this._appEl_2, _TemplateRef_2_8);
    if (import21.isDevToolsEnabled) {
      import21.Inspector.instance.registerDirective(_anchor_2, this._NgIf_2_9);
    }
    final _anchor_3 = import15.createRenderAnchor();
    import15.appendRenderChild(this._el_0, _anchor_3);
    this._appEl_3 = ViewContainer(3, 0, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, (parentView, parentIndex) {
      return viewFactory_MaterialTreeDropdownComponent3<T>(parentView, parentIndex);
    });
    this._NgIf_3_9 = NgIf(this._appEl_3, _TemplateRef_3_8);
    if (import21.isDevToolsEnabled) {
      import21.Inspector.instance.registerDirective(_anchor_3, this._NgIf_3_9);
    }
    this._compView_4 = import8.ViewMaterialPopupComponent0(this, 4);
    this._el_4 = this._compView_4.rootElement;
    import15.appendRenderChild(parentRenderNode, this._el_4);
    import15.updateRenderAttribute(this._el_4, 'enforceSpaceConstraints', '');
    import15.updateRenderAttribute(this._el_4, 'trackLayoutChanges', '');
    this.addShimC(this._el_4);
    this._appEl_4 = ViewContainer(4, null, this, this._el_4);
    this._MaterialPopupComponent_4_8 = (import14.isDevMode
        ? import16.debugInjectorWrap(import3.MaterialPopupComponent, () {
            return import3.MaterialPopupComponent((this.parentView!).injectorGetOptional(import23.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import3.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import24.NgZone, this.parentIndex), (this.parentView!).injectorGet(import25.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import17.DomService, this.parentIndex), (this.parentView!).injectorGet(import26.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import27.OpaqueToken<List<import29.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import27.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import27.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import30.PopupSizeProvider, this.parentIndex), this._compView_4, this._appEl_4, ElementRef(import15.unwrapNode(this._el_4)));
          })
        : import3.MaterialPopupComponent((this.parentView!).injectorGetOptional(import23.PopupHierarchy, this.parentIndex), (this.parentView!).injectorGetOptional(import3.MaterialPopupComponent, this.parentIndex), null, (this.parentView!).injectorGet(import24.NgZone, this.parentIndex), (this.parentView!).injectorGet(import25.OverlayService, this.parentIndex), (this.parentView!).injectorGet(import17.DomService, this.parentIndex), (this.parentView!).injectorGet(import26.ZIndexer, this.parentIndex), (this.parentView!).injectorGet(const import27.OpaqueToken<List<import29.RelativePosition>>('defaultPopupPositions'), this.parentIndex), (this.parentView!).injectorGet(const import27.OpaqueToken<Object>('overlayRepositionLoop'), this.parentIndex), (this.parentView!).injectorGet(const import27.OpaqueToken<Object>('overlayViewportBoundaries'), this.parentIndex), (this.parentView!).injectorGetOptional(import30.PopupSizeProvider, this.parentIndex), this._compView_4, this._appEl_4, ElementRef(import15.unwrapNode(this._el_4))));
    final _el_5 = import15.createRenderElement('div');
    import15.updateRenderAttribute(_el_5, 'header', '');
    this.addShimC(_el_5);
    this.project(_el_5, 0);
    final _anchor_6 = import15.createRenderAnchor();
    import15.appendRenderChild(_el_5, _anchor_6);
    this._appEl_6 = ViewContainer(6, 5, this, _anchor_6);
    var _TemplateRef_6_8 = TemplateRef(this._appEl_6, (parentView, parentIndex) {
      return viewFactory_MaterialTreeDropdownComponent4<T>(parentView, parentIndex);
    });
    this._NgIf_6_9 = NgIf(this._appEl_6, _TemplateRef_6_8);
    if (import21.isDevToolsEnabled) {
      import21.Inspector.instance.registerDirective(_anchor_6, this._NgIf_6_9);
    }
    final _anchor_7 = import15.createRenderAnchor();
    this._appEl_7 = ViewContainer(7, 4, this, _anchor_7);
    var _TemplateRef_7_8 = TemplateRef(this._appEl_7, (parentView, parentIndex) {
      return viewFactory_MaterialTreeDropdownComponent5<T>(parentView, parentIndex);
    });
    this._DeferredContentDirective_7_9 = import9.DeferredContentDirective(this._appEl_7, _TemplateRef_7_8, this._MaterialPopupComponent_4_8, this);
    if (import21.isDevToolsEnabled) {
      import21.Inspector.instance.registerDirective(_anchor_7, this._DeferredContentDirective_7_9);
    }
    this._compView_4.createAndProject(this._MaterialPopupComponent_4_8, [
      <Object>[_el_5],
      <Object>[this.projectedNodes[1]]..addAll(<Object>[this._appEl_7]),
      const <Object>[],
    ]);
    import15.addRenderEventListener(this._el_0, 'focus', this.eventHandler1(this._handleEvent_0));
    import15.addRenderEventListener(this._el_0, 'click', this.eventHandler1(this._handleEvent_1));
    import15.addRenderEventListener(this._el_0, 'keydown', this.eventHandler1(this._KeyboardOnlyFocusIndicatorDirective_0_5.keydown));
    import15.addRenderEventListener(this._el_0, 'blur', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_5.resetOutline));
    import15.addRenderEventListener(this._el_0, 'mousedown', this.eventHandler0(this._KeyboardOnlyFocusIndicatorDirective_0_5.onMouseInteraction));
    final subscription_0 = this._MaterialPopupComponent_4_8.onOpened.listen(this.eventHandler0(_ctx.focus));
    final subscription_1 = this._MaterialPopupComponent_4_8.onVisible.listen(this.eventHandler1(this._handleEvent_2));
    this.initSubscriptions([subscription_0, subscription_1]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((4 <= nodeIndex) && (nodeIndex <= 7))) {
      if (((identical(token, import3.MaterialPopupComponent) || identical(token, import32.DeferredContentAware)) || identical(token, import33.DropdownHandle))) {
        return this._MaterialPopupComponent_4_8;
      }
      if (identical(token, import23.PopupHierarchy)) {
        return this._PopupHierarchy_4_11;
      }
      if (identical(token, import34.PopupRef)) {
        return this._PopupRef_4_12;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_button = this._PopupSourceDirective_0_6;
    if (import21.isDevToolsEnabled) {
      import21.Inspector.instance.recordInput(this._NgIf_1_9, 'ngIf', (!(_ctx.showFilterInsideButton ?? false)));
    }
    this._NgIf_1_9.ngIf = ((!(_ctx.showFilterInsideButton ?? false)) ?? false) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:438:469 */;
    if (import21.isDevToolsEnabled) {
      import21.Inspector.instance.recordInput(this._NgIf_2_9, 'ngIf', (!(_ctx.showFilterInsideButton ?? false)));
    }
    this._NgIf_2_9.ngIf = ((!(_ctx.showFilterInsideButton ?? false)) ?? false) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:548:579 */;
    if (import21.isDevToolsEnabled) {
      import21.Inspector.instance.recordInput(this._NgIf_3_9, 'ngIf', _ctx.showFilterInsideButton);
    }
    this._NgIf_3_9.ngIf = (_ctx.showFilterInsideButton ?? false) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:672:702 */;
    changed = false;
    if (firstCheck) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialPopupComponent_4_8, 'enforceSpaceConstraints', true);
      }
      this._MaterialPopupComponent_4_8.enforceSpaceConstraints = true /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:854:877 */;
      changed = true;
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialPopupComponent_4_8, 'trackLayoutChanges', true);
      }
      this._MaterialPopupComponent_4_8.trackLayoutChanges = true /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:880:898 */;
      changed = true;
    }
    final currVal_3 = _ctx.popupPositions;
    if (import35.checkBinding(this._expr_3, currVal_3, 'popupPositions', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialPopupComponent_4_8, 'preferredPositions', currVal_3);
      }
      this._MaterialPopupComponent_4_8.preferredPositions = (currVal_3!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:901:938 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = local_button;
    if (import35.checkBinding(this._expr_4, currVal_4, 'button', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialPopupComponent_4_8, 'source', currVal_4);
      }
      this._MaterialPopupComponent_4_8.source = (currVal_4!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:941:958 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    final currVal_6 = _ctx.visible;
    if (import35.checkBinding(this._expr_6, currVal_6, 'visible', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialPopupComponent_4_8, 'visible', currVal_6);
      }
      this._MaterialPopupComponent_4_8.visible = (currVal_6!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:961:982 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    if (changed) {
      this._compView_4.markAsCheckOnce();
    }
    if (import21.isDevToolsEnabled) {
      import21.Inspector.instance.recordInput(this._NgIf_6_9, 'ngIf', ((_ctx.supportsFiltering ?? false) && (_ctx.showFilterInsidePopup ?? false)));
    }
    this._NgIf_6_9.ngIf = (((_ctx.supportsFiltering ?? false) && (_ctx.showFilterInsidePopup ?? false)) ?? false) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1129:1179 */;
    if (firstCheck) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._DeferredContentDirective_7_9, 'deferredContent', true);
      }
      this._DeferredContentDirective_7_9.preserveDimensions = true /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1424:1440 */;
    }
    final currVal_0 = (!(_ctx.showFilterInsideButton ?? false));
    if (import35.checkBinding(this._expr_0, currVal_0, '!showFilterInsideButton', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      import15.updateRenderClass(this._el_0, 'border', (currVal_0 ?? false)) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:244:284 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.popupClassName;
    if (import35.checkBinding(this._expr_1, currVal_1, 'popupClassName', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      this._compView_4.updateChildClassNonHtml(this._el_4, currVal_1) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1006:1030 */;
      this._expr_1 = currVal_1;
    }
    this._compView_4.detectHostChanges(firstCheck);
    this._appEl_1.detectChangesInNestedViews();
    this._appEl_2.detectChangesInNestedViews();
    this._appEl_3.detectChangesInNestedViews();
    this._appEl_4.detectChangesInNestedViews();
    this._appEl_6.detectChangesInNestedViews();
    this._appEl_7.detectChangesInNestedViews();
    if ((!import35.debugThrowIfChanged)) {
      if (this._viewQuery_MaterialTreeFilterComponent_0_isDirty) {
        _ctx.materialTreeFilterComponent = import36.firstOrNull([
          ...this._appEl_3.mapNestedViewsWithSingleResult((_ViewMaterialTreeDropdownComponent3 nestedView) {
            return nestedView._MaterialTreeFilterComponent_0_5;
          }),
          ...this._appEl_6.mapNestedViewsWithSingleResult((_ViewMaterialTreeDropdownComponent4 nestedView) {
            return nestedView._MaterialTreeFilterComponent_0_5;
          }),
        ]);
        this._viewQuery_MaterialTreeFilterComponent_0_isDirty = false;
      }
    }
    this._compView_4.detectChangesDeprecated();
    if ((!import35.debugThrowIfChanged)) {
      if (firstCheck) {
        this._PopupSourceDirective_0_6.ngAfterViewInit();
        this._MaterialPopupComponent_4_8.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._appEl_2.destroyNestedViews();
    this._appEl_3.destroyNestedViews();
    this._appEl_4.destroyNestedViews();
    this._appEl_6.destroyNestedViews();
    this._appEl_7.destroyNestedViews();
    this._compView_4.destroyInternalState();
    this._PopupSourceDirective_0_6.ngOnDestroy();
    this._DeferredContentDirective_7_9.ngOnDestroy();
    this._MaterialPopupComponent_4_8.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.visible = true;
    this._KeyboardOnlyFocusIndicatorDirective_0_5.onFocus($event);
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.visible = (!(_ctx.visible ?? false));
    this._KeyboardOnlyFocusIndicatorDirective_0_5.onMouseInteraction();
  }

  void _handleEvent_2($event) {
    final _ctx = this.ctx;
    _ctx.visible = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import10.ComponentStyles.scoped(styles$MaterialTreeDropdownComponent, _debugComponentUrl));
      if (import14.isDevMode) {
        import10.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MaterialTreeDropdownComponentNgFactory = ComponentFactory<import2.MaterialTreeDropdownComponent>('material-tree-dropdown', viewFactory_MaterialTreeDropdownComponentHost0);
ComponentFactory<import2.MaterialTreeDropdownComponent> get MaterialTreeDropdownComponentNgFactory {
  return _MaterialTreeDropdownComponentNgFactory;
}

ComponentFactory<import2.MaterialTreeDropdownComponent<T>> createMaterialTreeDropdownComponentFactory<T>() {
  return ComponentFactory('material-tree-dropdown', viewFactory_MaterialTreeDropdownComponentHost0);
}

class _ViewMaterialTreeDropdownComponent1<T> extends import38.EmbeddedView<import2.MaterialTreeDropdownComponent<T>> {
  final import39.TextBinding _textBinding_1 = import39.TextBinding();
  _ViewMaterialTreeDropdownComponent1(import40.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _el_0 = import15.createRenderElement('span');
    this.updateChildClass(_el_0, 'button-text');
    this.addShimC(_el_0);
    import15.appendRenderChild(_el_0, this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_1.updateText(import41.interpolateString0(_ctx.placeholder)) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:501:516 */;
  }
}

import38.EmbeddedView<void> viewFactory_MaterialTreeDropdownComponent1<T>(import40.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeDropdownComponent1<T>(parentView, parentIndex);
}

class _ViewMaterialTreeDropdownComponent2<T> extends import38.EmbeddedView<import2.MaterialTreeDropdownComponent<T>> {
  late final import42.ViewMaterialIconComponent0 _compView_0;
  late final import43.MaterialIconComponent _MaterialIconComponent_0_5;
  _ViewMaterialTreeDropdownComponent2(import40.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import42.ViewMaterialIconComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'icon');
    import15.updateRenderAttribute(_el_0, 'icon', 'arrow_drop_down');
    this.addShimC(_el_0);
    this._MaterialIconComponent_0_5 = import43.MaterialIconComponent(import15.unwrapNode(_el_0));
    this._compView_0.create(this._MaterialIconComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    if (firstCheck) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialIconComponent_0_5, 'icon', 'arrow_drop_down');
      }
      this._MaterialIconComponent_0_5.icon = 'arrow_drop_down' /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:601:623 */;
      changed = true;
    }
    if (changed) {
      this._compView_0.markAsCheckOnce();
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }
}

import38.EmbeddedView<void> viewFactory_MaterialTreeDropdownComponent2<T>(import40.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeDropdownComponent2<T>(parentView, parentIndex);
}

class _ViewMaterialTreeDropdownComponent3<T> extends import38.EmbeddedView<import2.MaterialTreeDropdownComponent<T>> {
  late final import44.ViewMaterialTreeFilterComponent0 _compView_0;
  late final import45.MaterialTreeFilterComponent _MaterialTreeFilterComponent_0_5;
  Object? _expr_0;
  Object? _expr_1;
  _ViewMaterialTreeDropdownComponent3(import40.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import44.ViewMaterialTreeFilterComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.addShimC(_el_0);
    this._MaterialTreeFilterComponent_0_5 = (import14.isDevMode
        ? import16.debugInjectorWrap(import45.MaterialTreeFilterComponent, () {
            return import45.MaterialTreeFilterComponent(((this.parentView!).parentView!).injectorGetOptional(import46.MaterialTreeRoot, (this.parentView!).parentIndex));
          })
        : import45.MaterialTreeFilterComponent(((this.parentView!).parentView!).injectorGetOptional(import46.MaterialTreeRoot, (this.parentView!).parentIndex)));
    this._compView_0.create(this._MaterialTreeFilterComponent_0_5);
    final subscription_0 = this._MaterialTreeFilterComponent_0_5.onFiltered.listen(this.eventHandler1(this._handleEvent_0));
    this.initRootNodesAndSubscriptions(import14.unsafeCast(<Object>[_el_0]), [subscription_0]);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.placeholder;
    if (import35.checkBinding(this._expr_0, currVal_0, 'placeholder', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialTreeFilterComponent_0_5, 'placeholder', currVal_0);
      }
      this._MaterialTreeFilterComponent_0_5.placeholder = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:774:801 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.filterableOptions;
    if (import35.checkBinding(this._expr_1, currVal_1, 'filterableOptions', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialTreeFilterComponent_0_5, 'filterable', currVal_1);
      }
      this._MaterialTreeFilterComponent_0_5.filterable = (currVal_1!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:737:769 */;
      this._expr_1 = currVal_1;
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void dirtyParentQueriesInternal() {
    import14.unsafeCast<ViewMaterialTreeDropdownComponent0>((this.parentView!))._viewQuery_MaterialTreeFilterComponent_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.visible = true;
  }
}

import38.EmbeddedView<void> viewFactory_MaterialTreeDropdownComponent3<T>(import40.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeDropdownComponent3<T>(parentView, parentIndex);
}

class _ViewMaterialTreeDropdownComponent4<T> extends import38.EmbeddedView<import2.MaterialTreeDropdownComponent<T>> {
  late final import44.ViewMaterialTreeFilterComponent0 _compView_0;
  late final import45.MaterialTreeFilterComponent _MaterialTreeFilterComponent_0_5;
  Object? _expr_1;
  Object? _expr_2;
  _ViewMaterialTreeDropdownComponent4(import40.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import44.ViewMaterialTreeFilterComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.updateChildClassNonHtml(_el_0, 'search-box');
    import15.updateRenderAttribute(_el_0, 'leadingGlyph', 'search');
    this.addShimC(_el_0);
    this._MaterialTreeFilterComponent_0_5 = (import14.isDevMode
        ? import16.debugInjectorWrap(import45.MaterialTreeFilterComponent, () {
            return import45.MaterialTreeFilterComponent(((this.parentView!).parentView!).injectorGetOptional(import46.MaterialTreeRoot, (this.parentView!).parentIndex));
          })
        : import45.MaterialTreeFilterComponent(((this.parentView!).parentView!).injectorGetOptional(import46.MaterialTreeRoot, (this.parentView!).parentIndex)));
    this._compView_0.create(this._MaterialTreeFilterComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    if (firstCheck) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialTreeFilterComponent_0_5, 'leadingGlyph', 'search');
      }
      this._MaterialTreeFilterComponent_0_5.leadingGlyph = 'search' /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1256:1277 */;
    }
    final currVal_1 = _ctx.placeholder;
    if (import35.checkBinding(this._expr_1, currVal_1, 'placeholder', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialTreeFilterComponent_0_5, 'placeholder', currVal_1);
      }
      this._MaterialTreeFilterComponent_0_5.placeholder = (currVal_1!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1286:1313 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.filterableOptions;
    if (import35.checkBinding(this._expr_2, currVal_2, 'filterableOptions', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialTreeFilterComponent_0_5, 'filterable', currVal_2);
      }
      this._MaterialTreeFilterComponent_0_5.filterable = (currVal_2!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1215:1247 */;
      this._expr_2 = currVal_2;
    }
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void dirtyParentQueriesInternal() {
    import14.unsafeCast<ViewMaterialTreeDropdownComponent0>((this.parentView!))._viewQuery_MaterialTreeFilterComponent_0_isDirty = true;
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }
}

import38.EmbeddedView<void> viewFactory_MaterialTreeDropdownComponent4<T>(import40.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeDropdownComponent4<T>(parentView, parentIndex);
}

class _ViewMaterialTreeDropdownComponent5<T> extends import38.EmbeddedView<import2.MaterialTreeDropdownComponent<T>> {
  late final import47.ViewMaterialTreeComponent0<T> _compView_0;
  late final import48.MaterialTreeComponent<T> _MaterialTreeComponent_0_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  _ViewMaterialTreeDropdownComponent5(import40.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    this._compView_0 = import47.ViewMaterialTreeComponent0(this, 0);
    final _el_0 = this._compView_0.rootElement;
    this.addShimC(_el_0);
    this._MaterialTreeComponent_0_5 = (import14.isDevMode
        ? import16.debugInjectorWrap(import48.MaterialTreeComponent, () {
            return import48.MaterialTreeComponent(((this.parentView!).parentView!).injectorGetOptional(import46.MaterialTreeRoot, (this.parentView!).parentIndex), null);
          })
        : import48.MaterialTreeComponent(((this.parentView!).parentView!).injectorGetOptional(import46.MaterialTreeRoot, (this.parentView!).parentIndex), null));
    this._compView_0.create(this._MaterialTreeComponent_0_5);
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import46.MaterialTreeRoot) && (0 == nodeIndex))) {
      return this._MaterialTreeComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    final currVal_0 = _ctx.expandAll;
    if (import35.checkBinding(this._expr_0, currVal_0, 'expandAll', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialTreeComponent_0_5, 'expandAll', currVal_0);
      }
      this._MaterialTreeComponent_0_5.expandAll = (currVal_0!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1489:1512 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.allowParentSingleSelection;
    if (import35.checkBinding(this._expr_1, currVal_1, 'allowParentSingleSelection', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialTreeComponent_0_5, 'allowParentSingleSelection', currVal_1);
      }
      this._MaterialTreeComponent_0_5.allowParentSingleSelection = (currVal_1!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1517:1574 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.allowParentMultiSelection;
    if (import35.checkBinding(this._expr_2, currVal_2, 'allowParentMultiSelection', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialTreeComponent_0_5, 'allowParentMultiSelection', currVal_2);
      }
      this._MaterialTreeComponent_0_5.allowParentMultiSelection = (currVal_2!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1579:1634 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.allowDeselectInHierarchy;
    if (import35.checkBinding(this._expr_3, currVal_3, 'allowDeselectInHierarchy', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialTreeComponent_0_5, 'allowDeselectInHierarchy', currVal_3);
      }
      this._MaterialTreeComponent_0_5.allowDeselectInHierarchy = (currVal_3!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1639:1692 */;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.componentRenderer;
    if (import35.checkBinding(this._expr_4, currVal_4, 'componentRenderer', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialTreeComponent_0_5, 'componentRenderer', currVal_4);
      }
      this._MaterialTreeComponent_0_5.componentRenderer = (currVal_4!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1445:1484 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.itemRenderer;
    if (import35.checkBinding(this._expr_5, currVal_5, 'itemRenderer', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialTreeComponent_0_5, 'itemRenderer', currVal_5);
      }
      this._MaterialTreeComponent_0_5.itemRenderer = (currVal_5!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1697:1726 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.options;
    if (import35.checkBinding(this._expr_6, currVal_6, 'options', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialTreeComponent_0_5, 'options', currVal_6);
      }
      this._MaterialTreeComponent_0_5.options = (currVal_6!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1731:1750 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.selection;
    if (import35.checkBinding(this._expr_7, currVal_7, 'selection', 'package:angulardart_components/src/material_tree/material_tree_dropdown.html')) {
      if (import21.isDevToolsEnabled) {
        import21.Inspector.instance.recordInput(this._MaterialTreeComponent_0_5, 'selection', currVal_7);
      }
      this._MaterialTreeComponent_0_5.selection = (currVal_7!) /* REF:package:angulardart_components/src/material_tree/material_tree_dropdown.html:1755:1778 */;
      this._expr_7 = currVal_7;
    }
    this._compView_0.detectHostChanges(firstCheck);
    this._compView_0.detectChangesDeprecated();
  }

  @override
  void destroyInternal() {
    this._compView_0.destroyInternalState();
  }
}

import38.EmbeddedView<void> viewFactory_MaterialTreeDropdownComponent5<T>(import40.RenderView parentView, int parentIndex) {
  return _ViewMaterialTreeDropdownComponent5<T>(parentView, parentIndex);
}

final List<Object> styles$MaterialTreeDropdownComponentHost = const [];

class _ViewMaterialTreeDropdownComponentHost0<T> extends import49.HostView<import2.MaterialTreeDropdownComponent<T>> {
  @override
  void build() {
    this.componentView = ViewMaterialTreeDropdownComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import14.isDevMode
        ? import16.debugInjectorWrap(import2.MaterialTreeDropdownComponent, () {
            return import2.MaterialTreeDropdownComponent(this.injectorGet(import17.DomService, this.parentIndex), null, import15.unwrapNode(_el_0));
          })
        : import2.MaterialTreeDropdownComponent(this.injectorGet(import17.DomService, this.parentIndex), null, import15.unwrapNode(_el_0)));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import2.MaterialTreeDropdownComponent) || identical(token, import20.Focusable)) || identical(token, import46.MaterialTreeRoot)) && (0 == nodeIndex))) {
      return this.component;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    if (((!import35.debugThrowIfChanged) && firstCheck)) {
      this.component.ngOnInit();
    }
    this.componentView.detectChangesDeprecated();
  }
}

import49.HostView<import2.MaterialTreeDropdownComponent<T>> viewFactory_MaterialTreeDropdownComponentHost0<T>() {
  return _ViewMaterialTreeDropdownComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MaterialTreeDropdownComponent, createMaterialTreeDropdownComponentFactory());
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
