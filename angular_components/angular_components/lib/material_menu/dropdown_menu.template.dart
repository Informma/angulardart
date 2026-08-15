// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'dropdown_menu.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/focus/focus.template.dart' as _ref1;
import 'package:angulardart_components/interfaces/has_disabled.template.dart' as _ref2;
import 'package:angulardart_components/material_menu/menu_popup.template.dart' as _ref3;
import 'package:angulardart_components/material_menu/menu_popup_wrapper.template.dart' as _ref4;
import 'package:angulardart_components/material_popup/material_popup.template.dart' as _ref5;
import 'package:angulardart_components/material_select/dropdown_button.template.dart' as _ref6;
import 'package:angulardart_components/mixins/focusable_mixin.template.dart' as _ref7;
import 'package:angulardart_components/model/a11y/keyboard_handler_mixin.template.dart' as _ref8;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref9;
import 'package:angulardart_components/utils/angular/css/css.template.dart' as _ref10;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref11;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import0;

import 'dropdown_menu.dart' as import1;
import '../material_select/dropdown_button.template.dart' as import2;
import '../material_select/dropdown_button.dart' as import3;
import '../src/laminate/popup/popup_source_directive.dart' as import4;
import 'menu_popup.template.dart' as import5;
import 'menu_popup.dart' as import6;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import7;
import 'package:angulardart/src/core/linker/views/view.dart' as import8;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import10;
import 'package:angulardart/src/utilities.dart' as import11;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import12;
import 'package:angulardart/src/di/errors.dart' as import13;

import '../src/laminate/popup/dom_popup_source.dart' as import14;
import '../utils/angular/reference/reference.dart' as import15;

import 'package:angulardart/src/devtools.dart' as import16;

import '../focus/focus_interface.dart' as import17;
import '../interfaces/has_disabled.dart' as import18;

import 'package:angulardart/src/runtime/check_binding.dart' as import19;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/host_view.dart' as import21;

final List<Object> styles$DropdownMenuComponent = const [];

class ViewDropdownMenuComponent0 extends import0.ComponentView<import1.DropdownMenuComponent> {
  late final import2.ViewDropdownButtonComponent0 _compView_1;
  late final import3.DropdownButtonComponent _DropdownButtonComponent_1_5;
  late final import4.PopupSourceDirective _PopupSourceDirective_1_7;
  late final import5.ViewMenuPopupComponent0 _compView_5;
  late final import6.MenuPopupComponent _MenuPopupComponent_5_5;
  late final import4.PopupSourceDirective _PopupSourceDirective_5_6;
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
  static import7.ComponentStyles? _componentStyles;
  ViewDropdownMenuComponent0(import8.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import10.renderFactory.createElement('dropdown-menu');
  }
  static String? get _debugComponentUrl {
    return (import11.isDevMode ? 'asset:angulardart_components/lib/material_menu/dropdown_menu.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final _text_0 = import12.createRenderText('\n');
    import12.appendRenderChild(parentRenderNode, _text_0);
    this._compView_1 = import2.ViewDropdownButtonComponent0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    import12.appendRenderChild(parentRenderNode, _el_1);
    import12.updateRenderAttribute(_el_1, 'popupSource', '');
    this._DropdownButtonComponent_1_5 = import3.DropdownButtonComponent();
    this._PopupSourceDirective_1_7 = (import11.isDevMode
        ? import13.debugInjectorWrap(import4.PopupSourceDirective, () {
            return import4.PopupSourceDirective((this.parentView!).injectorGet(import14.DomPopupSourceFactory, this.parentIndex), import12.unwrapNode(_el_1), (this.parentView!).injectorGetOptional(import15.ReferenceDirective, this.parentIndex), this._DropdownButtonComponent_1_5, null);
          })
        : import4.PopupSourceDirective((this.parentView!).injectorGet(import14.DomPopupSourceFactory, this.parentIndex), import12.unwrapNode(_el_1), (this.parentView!).injectorGetOptional(import15.ReferenceDirective, this.parentIndex), this._DropdownButtonComponent_1_5, null));
    if (import16.isDevToolsEnabled) {
      import16.Inspector.instance.registerDirective(_el_1, this._PopupSourceDirective_1_7);
    }
    final _text_2 = import12.createRenderText('\n  ');
    final _text_3 = import12.createRenderText('\n');
    this._compView_1.createAndProject(this._DropdownButtonComponent_1_5, [
      <Object>[_text_2]
        ..addAll(import11.unsafeCast(this.projectedNodes[0]))
        ..addAll(<Object>[_text_3]),
    ]);
    final _text_4 = import12.createRenderText('\n');
    import12.appendRenderChild(parentRenderNode, _text_4);
    this._compView_5 = import5.ViewMenuPopupComponent0(this, 5);
    final _el_5 = this._compView_5.rootElement;
    import12.appendRenderChild(parentRenderNode, _el_5);
    this._MenuPopupComponent_5_5 = import6.MenuPopupComponent(import12.unwrapNode(_el_5));
    this._PopupSourceDirective_5_6 = (import11.isDevMode
        ? import13.debugInjectorWrap(import4.PopupSourceDirective, () {
            return import4.PopupSourceDirective((this.parentView!).injectorGet(import14.DomPopupSourceFactory, this.parentIndex), import12.unwrapNode(_el_5), (this.parentView!).injectorGetOptional(import15.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import17.Focusable, this.parentIndex), null);
          })
        : import4.PopupSourceDirective((this.parentView!).injectorGet(import14.DomPopupSourceFactory, this.parentIndex), import12.unwrapNode(_el_5), (this.parentView!).injectorGetOptional(import15.ReferenceDirective, this.parentIndex), (this.parentView!).injectorGetOptional(import17.Focusable, this.parentIndex), null));
    if (import16.isDevToolsEnabled) {
      import16.Inspector.instance.registerDirective(_el_5, this._PopupSourceDirective_5_6);
    }
    final _text_6 = import12.createRenderText('\n  ');
    final _text_7 = import12.createRenderText('\n');
    this._compView_5.createAndProject(this._MenuPopupComponent_5_5, [
      <Object>[_text_6]
        ..addAll(import11.unsafeCast(this.projectedNodes[1]))
        ..addAll(<Object>[_text_7]),
    ]);
    final _text_8 = import12.createRenderText('\n');
    import12.appendRenderChild(parentRenderNode, _text_8);
    import12.addRenderEventListener(_el_1, 'keydown', this.eventHandler1(_ctx.onKeyDown));
    final subscription_0 = this._DropdownButtonComponent_1_5.trigger.listen(this.eventHandler1(_ctx.handlePopupTriggerAction));
    final subscription_1 = this._MenuPopupComponent_5_5.expandActionChange.listen(this.eventHandler1(this._handleEvent_0));
    import8.View.queryChangeDetectorRefs[this._DropdownButtonComponent_1_5] = this._compView_1;
    _ctx.dropdownButton = this._DropdownButtonComponent_1_5;
    import8.View.queryChangeDetectorRefs[this._MenuPopupComponent_5_5] = this._compView_5;
    _ctx.menuPopup = this._MenuPopupComponent_5_5;
    this.initSubscriptions([subscription_0, subscription_1]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import17.Focusable) || identical(token, import18.HasDisabled)) && ((1 <= nodeIndex) && (nodeIndex <= 3)))) {
      return this._DropdownButtonComponent_1_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final local_toggle = this._PopupSourceDirective_1_7;
    changed = false;
    final currVal_0 = _ctx.buttonText;
    if (import19.checkBinding(this._expr_0, currVal_0, 'buttonText', 'package:angulardart_components/material_menu/dropdown_menu.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._DropdownButtonComponent_1_5, 'buttonText', currVal_0);
      }
      this._DropdownButtonComponent_1_5.buttonText = (currVal_0!) /* REF:package:angulardart_components/material_menu/dropdown_menu.html:405:430 */;
      changed = true;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.disabled;
    if (import19.checkBinding(this._expr_1, currVal_1, 'disabled', 'package:angulardart_components/material_menu/dropdown_menu.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._DropdownButtonComponent_1_5, 'disabled', currVal_1);
      }
      this._DropdownButtonComponent_1_5.disabled = (currVal_1!) /* REF:package:angulardart_components/material_menu/dropdown_menu.html:435:456 */;
      changed = true;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.buttonAriaDescribedBy;
    if (import19.checkBinding(this._expr_2, currVal_2, 'buttonAriaDescribedBy', 'package:angulardart_components/material_menu/dropdown_menu.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._DropdownButtonComponent_1_5, 'ariaDescribedBy', currVal_2);
      }
      this._DropdownButtonComponent_1_5.ariaDescribedBy = (currVal_2!) /* REF:package:angulardart_components/material_menu/dropdown_menu.html:284:325 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.tabbable;
    if (import19.checkBinding(this._expr_3, currVal_3, 'tabbable', 'package:angulardart_components/material_menu/dropdown_menu.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._DropdownButtonComponent_1_5, 'tabbable', currVal_3);
      }
      this._DropdownButtonComponent_1_5.tabbable = (currVal_3!) /* REF:package:angulardart_components/material_menu/dropdown_menu.html:461:482 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.buttonAriaLabelledBy;
    if (import19.checkBinding(this._expr_4, currVal_4, 'buttonAriaLabelledBy', 'package:angulardart_components/material_menu/dropdown_menu.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._DropdownButtonComponent_1_5, 'ariaLabelledBy', currVal_4);
      }
      this._DropdownButtonComponent_1_5.ariaLabelledBy = (currVal_4!) /* REF:package:angulardart_components/material_menu/dropdown_menu.html:240:279 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    if (changed) {
      this._compView_1.markAsCheckOnce();
    }
    if (((!import19.debugThrowIfChanged) && firstCheck)) {
      this._DropdownButtonComponent_1_5.ngOnInit();
    }
    changed = false;
    final currVal_5 = _ctx.menu;
    if (import19.checkBinding(this._expr_5, currVal_5, 'menu', 'package:angulardart_components/material_menu/dropdown_menu.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._MenuPopupComponent_5_5, 'menu', currVal_5);
      }
      this._MenuPopupComponent_5_5.menu = (currVal_5!) /* REF:package:angulardart_components/material_menu/dropdown_menu.html:651:664 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.preferredPositions;
    if (import19.checkBinding(this._expr_6, currVal_6, 'preferredPositions', 'package:angulardart_components/material_menu/dropdown_menu.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._MenuPopupComponent_5_5, 'preferredPositions', currVal_6);
      }
      this._MenuPopupComponent_5_5.preferredPositions = (currVal_6!) /* REF:package:angulardart_components/material_menu/dropdown_menu.html:726:767 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.expandAction;
    if (import19.checkBinding(this._expr_7, currVal_7, 'expandAction', 'package:angulardart_components/material_menu/dropdown_menu.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._MenuPopupComponent_5_5, 'expandAction', currVal_7);
      }
      this._MenuPopupComponent_5_5.expandAction = (currVal_7!) /* REF:package:angulardart_components/material_menu/dropdown_menu.html:615:646 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.width;
    if (import19.checkBinding(this._expr_8, currVal_8, 'width', 'package:angulardart_components/material_menu/dropdown_menu.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._MenuPopupComponent_5_5, 'width', currVal_8);
      }
      this._MenuPopupComponent_5_5.width = (currVal_8!) /* REF:package:angulardart_components/material_menu/dropdown_menu.html:772:787 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = local_toggle;
    if (import19.checkBinding(this._expr_9, currVal_9, 'toggle', 'package:angulardart_components/material_menu/dropdown_menu.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._MenuPopupComponent_5_5, 'popupSource', currVal_9);
      }
      this._MenuPopupComponent_5_5.popupSource = (currVal_9!) /* REF:package:angulardart_components/material_menu/dropdown_menu.html:699:721 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.popupClass;
    if (import19.checkBinding(this._expr_10, currVal_10, 'popupClass', 'package:angulardart_components/material_menu/dropdown_menu.html')) {
      if (import16.isDevToolsEnabled) {
        import16.Inspector.instance.recordInput(this._MenuPopupComponent_5_5, 'popupClass', currVal_10);
      }
      this._MenuPopupComponent_5_5.popupClass = (currVal_10!) /* REF:package:angulardart_components/material_menu/dropdown_menu.html:669:694 */;
      changed = true;
      this._expr_10 = currVal_10;
    }
    if (changed) {
      this._compView_5.markAsCheckOnce();
    }
    this._compView_1.detectChangesDeprecated();
    this._compView_5.detectChangesDeprecated();
    if ((!import19.debugThrowIfChanged)) {
      if (firstCheck) {
        this._PopupSourceDirective_1_7.ngAfterViewInit();
        this._PopupSourceDirective_5_6.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    this._compView_1.destroyInternalState();
    this._compView_5.destroyInternalState();
    this._PopupSourceDirective_1_7.ngOnDestroy();
    this._PopupSourceDirective_5_6.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.expandAction = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import7.ComponentStyles.unscoped(styles$DropdownMenuComponent, _debugComponentUrl));
      if (import11.isDevMode) {
        import7.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _DropdownMenuComponentNgFactory = ComponentFactory<import1.DropdownMenuComponent>('dropdown-menu', viewFactory_DropdownMenuComponentHost0);
ComponentFactory<import1.DropdownMenuComponent> get DropdownMenuComponentNgFactory {
  return _DropdownMenuComponentNgFactory;
}

ComponentFactory<import1.DropdownMenuComponent> createDropdownMenuComponentFactory() {
  return ComponentFactory('dropdown-menu', viewFactory_DropdownMenuComponentHost0);
}

final List<Object> styles$DropdownMenuComponentHost = const [];

class _ViewDropdownMenuComponentHost0 extends import21.HostView<import1.DropdownMenuComponent> {
  @override
  void build() {
    this.componentView = ViewDropdownMenuComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = import1.DropdownMenuComponent(this.componentView, import12.unwrapNode(_el_0));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import18.HasDisabled) && (0 == nodeIndex))) {
      return this.component;
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
    this.componentView.detectChangesDeprecated();
    if ((!import19.debugThrowIfChanged)) {
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

import21.HostView<import1.DropdownMenuComponent> viewFactory_DropdownMenuComponentHost0() {
  return _ViewDropdownMenuComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(DropdownMenuComponent, createDropdownMenuComponentFactory());
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
}
