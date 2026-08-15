// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'modal.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/content/deferred_content_aware.template.dart' as _ref1;
import 'package:angulardart_components/laminate/overlay/overlay.template.dart' as _ref2;
import 'package:angulardart_components/model/action/async_action.template.dart' as _ref3;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref4;
import 'package:angulardart_components/src/laminate/components/modal/modal_controller_directive.template.dart' as _ref5;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.template.dart' as _ref6;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref7;
import 'package:angulardart/src/core/linker/views/component_view.dart' as import0;

import 'modal.dart' as import1;

import 'package:angulardart/src/core/linker/view_container.dart';

import '../../../src/laminate/components/modal/modal_controller_directive.dart' as import3;

import 'package:angulardart/src/core/linker/style_encapsulation.dart' as import4;
import 'package:angulardart/src/core/linker/views/view.dart' as import5;
import 'package:angulardart/src/core/change_detection/change_detection.dart';
import 'package:angulardart/src/runtime/render_factory.dart' as import7;
import 'package:angulardart/src/utilities.dart' as import8;
import 'package:angulardart/src/runtime/dom_helpers.dart' as import9;
import 'package:angulardart/src/core/linker/template_ref.dart';
import 'package:angulardart/src/devtools.dart' as import11;
import 'package:angulardart/src/runtime/check_binding.dart' as import12;
import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/linker/views/embedded_view.dart' as import14;
import 'package:angulardart/src/core/linker/views/render_view.dart' as import15;
import 'package:angulardart/src/core/linker/views/host_view.dart' as import16;
import 'package:angulardart/src/di/errors.dart' as import17;

import '../../../src/laminate/overlay/overlay_service.dart' as import18;
import '../../../utils/browser/dom_service/dom_service.dart' as import19;
import '../../../content/deferred_content_aware.dart' as import20;

final List<Object> styles$ModalComponent = const [];

class ViewModalComponent0 extends import0.ComponentView<import1.ModalComponent> {
  late final ViewContainer _appEl_1;
  late final import3.ModalControllerDirective _ModalControllerDirective_1_9;
  Object? _expr_0;
  Object? _expr_1;
  static import4.ComponentStyles? _componentStyles;
  ViewModalComponent0(import5.View parentView, int parentIndex) : super(parentView, parentIndex, ChangeDetectionStrategy.CheckOnce) {
    this.initComponentStyles();
    this.rootElement = import7.renderFactory.createElement('modal');
  }
  static String? get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:angulardart_components/lib/laminate/components/modal/modal.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final _text_0 = import9.createRenderText('    ');
    import9.appendRenderChild(parentRenderNode, _text_0);
    final _anchor_1 = import9.createRenderAnchor();
    import9.appendRenderChild(parentRenderNode, _anchor_1);
    this._appEl_1 = ViewContainer(1, null, this, _anchor_1);
    var _TemplateRef_1_8 = TemplateRef(this._appEl_1, viewFactory_ModalComponent1);
    this._ModalControllerDirective_1_9 = import3.ModalControllerDirective(_TemplateRef_1_8, this._appEl_1);
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.registerDirective(_anchor_1, this._ModalControllerDirective_1_9);
    }
    final _text_2 = import9.createRenderText('\n  ');
    import9.appendRenderChild(parentRenderNode, _text_2);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    final currVal_0 = _ctx.resolvedOverlayRef;
    if (import12.checkBinding(this._expr_0, currVal_0, 'resolvedOverlayRef', 'asset:angulardart_components/lib/laminate/components/modal/modal.dart')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._ModalControllerDirective_1_9, 'modalController', currVal_0);
      }
      this._ModalControllerDirective_1_9.overlay = currVal_0 /* REF:asset:angulardart_components/lib/laminate/components/modal/modal.dart:5155:5193 */;
      this._expr_0 = currVal_0;
    }
    this._appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    this._appEl_1.destroyNestedViews();
    this._ModalControllerDirective_1_9.ngOnDestroy();
  }

  void detectHostChanges(bool firstCheck) {
    final _ctx = this.ctx;
    final currVal_1 = _ctx.uniquePaneId;
    if (import12.checkBinding(this._expr_1, currVal_1, null, null)) {
      import9.updateRenderAttribute(this.rootElement, 'pane-id', currVal_1);
      this._expr_1 = currVal_1;
    }
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import4.ComponentStyles.unscoped(styles$ModalComponent, _debugComponentUrl));
      if (import8.isDevMode) {
        import4.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _ModalComponentNgFactory = ComponentFactory<import1.ModalComponent>('modal', viewFactory_ModalComponentHost0);
ComponentFactory<import1.ModalComponent> get ModalComponentNgFactory {
  return _ModalComponentNgFactory;
}

ComponentFactory<import1.ModalComponent> createModalComponentFactory() {
  return ComponentFactory('modal', viewFactory_ModalComponentHost0);
}

class _ViewModalComponent1 extends import14.EmbeddedView<import1.ModalComponent> {
  _ViewModalComponent1(import15.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final _text_0 = import9.createRenderText('\n      ');
    final _text_1 = import9.createRenderText('\n    ');
    this.initRootNodesAndSubscriptions(
      import8.unsafeCast(
        <Object>[_text_0]
          ..addAll(import8.unsafeCast(this.projectedNodes[0]))
          ..addAll(<Object>[_text_1]),
      ),
      null,
    );
  }
}

import14.EmbeddedView<void> viewFactory_ModalComponent1(import15.RenderView parentView, int parentIndex) {
  return _ViewModalComponent1(parentView, parentIndex);
}

final List<Object> styles$ModalComponentHost = const [];

class _ViewModalComponentHost0 extends import16.HostView<import1.ModalComponent> {
  @override
  void build() {
    this.componentView = ViewModalComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import8.isDevMode
        ? import17.debugInjectorWrap(import1.ModalComponent, () {
            return import1.ModalComponent(this.injectorGet(import18.OverlayService, this.parentIndex), import9.unwrapNode(_el_0), this.injectorGet(import19.DomService, this.parentIndex), this.injectorGetOptional(import1.Modal, this.parentIndex), this.injectorGetOptional(import1.GlobalModalStack, this.parentIndex));
          })
        : import1.ModalComponent(this.injectorGet(import18.OverlayService, this.parentIndex), import9.unwrapNode(_el_0), this.injectorGet(import19.DomService, this.parentIndex), this.injectorGetOptional(import1.Modal, this.parentIndex), this.injectorGetOptional(import1.GlobalModalStack, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import1.ModalComponent) || identical(token, import20.DeferredContentAware)) || identical(token, import1.Modal)) && (0 == nodeIndex))) {
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
    this.componentView.detectHostChanges(firstCheck);
    this.componentView.detectChangesDeprecated();
    if ((!import12.debugThrowIfChanged)) {
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

import16.HostView<import1.ModalComponent> viewFactory_ModalComponentHost0() {
  return _ViewModalComponentHost0();
}

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerFactory(GlobalModalStack, () => GlobalModalStack.new());
  _ngRef.registerComponent(ModalComponent, createModalComponentFactory());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
  _ref7.initReflector();
}
