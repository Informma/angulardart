import 'compile_metadata.dart'
    show CompileIdentifierMetadata, CompileTokenMetadata;

const _angularLib = 'asset:angulardart/lib';

const _appViewUtilsModuleUrl =
    '$_angularLib/src/core/linker/app_view_utils.dart';
const _proxiesModuleUrl = '$_angularLib/src/runtime/proxies.dart';
const _cdModuleUrl =
    '$_angularLib/src/core/change_detection/change_detection.dart';
const _angularRootUrl = 'package:angulardart/angulardart.dart';
const _ngIfUrl = '$_angularLib/src/common/directives/ng_if.dart';
const _ngForUrl = '$_angularLib/src/common/directives/ng_for.dart';
const _profileRuntimeModuleUrl = '$_angularLib/src/debug/profile_runtime.dart';
const _debugInjectorModuleUrl = '$_angularLib/src/di/errors.dart';
const _metaModuleUrl = 'package:angulardart_meta/angulardart_meta.dart';

/// Identifiers for generating code that supports developer tooling.
class DevTools {
  static const _moduleUrl = '$_angularLib/src/devtools.dart';

  static final inspector = CompileIdentifierMetadata(
    name: 'Inspector.instance',
    moduleUrl: _moduleUrl,
  );

  static final isDevToolsEnabled = CompileIdentifierMetadata(
    name: 'isDevToolsEnabled',
    moduleUrl: _moduleUrl,
  );
}

/// A collection of methods for manipulating the DOM from generated code.
class DomHelpers {
  const DomHelpers._();

  static CompileIdentifierMetadata _of(String name) {
    return CompileIdentifierMetadata(
      name: name,
      moduleUrl: '$_angularLib/src/runtime/dom_helpers.dart',
    );
  }

  static final updateClassBinding = _of('updateClassBinding');
  static final updateClassBindingNonHtml = _of('updateClassBindingNonHtml');

  static final updateAttribute = _of('updateAttribute');
  static final updateAttributeNS = _of('updateAttributeNS');
  static final setAttribute = _of('setAttribute');
  static final setProperty = _of('setProperty');

  static final createText = _of('createText');
  static final appendText = _of('appendText');
  static final createAnchor = _of('createAnchor');
  static final appendAnchor = _of('appendAnchor');
  static final appendDiv = _of('appendDiv');
  static final appendSpan = _of('appendSpan');
  static final appendElement = _of('appendElement');
}

/// Identifiers for RenderNode-based helpers (Phase 3: SSR template compiler).
/// These replace direct DOM manipulation with an abstraction that works on
/// both browser (DOM) and server (HTML string) contexts.
class RenderNodeHelpers {
  const RenderNodeHelpers._();

  static CompileIdentifierMetadata _of(String name) {
    return CompileIdentifierMetadata(
      name: name,
      moduleUrl: '$_angularLib/src/runtime/dom_helpers.dart',
    );
  }

  /// createRenderElement('div') -> creates element via renderFactory
  static final createRenderElement = _of('createRenderElement');

  /// createRenderText('content') -> creates text node via renderFactory
  static final createRenderText = _of('createRenderText');

  /// createRenderAnchor() -> creates comment anchor via renderFactory
  static final createRenderAnchor = _of('createRenderAnchor');

  /// appendRenderChild(parent, child) -> appends child to parent (SSR compatible)
  static final appendRenderChild = _of('appendRenderChild');

  /// addRenderEventListener(target, type, fn) -> adds event listener (SSR compatible)
  static final addRenderEventListener = _of('addRenderEventListener');
}

/// Identifiers for the global RenderFactory instance.
class RenderNodeFactory {
  const RenderNodeFactory._();

  static final CompileIdentifierMetadata renderFactory =
      CompileIdentifierMetadata(
    name: 'renderFactory',
    moduleUrl: '$_angularLib/src/runtime/render_factory.dart',
  );
}

/// Identifiers for RenderNode-based update helpers (Phase 3: SSR template compiler).
/// These replace direct DOM manipulation in the UPDATE phase with an abstraction
/// that works on both browser (DOM) and server (HTML string) contexts.
class RenderNodeUpdateHelpers {
  const RenderNodeUpdateHelpers._();

  static CompileIdentifierMetadata _of(String name) {
    return CompileIdentifierMetadata(
      name: name,
      moduleUrl: '$_angularLib/src/runtime/dom_helpers.dart',
    );
  }

  /// updateRenderClass(node, className, enabled) -> updates class on RenderNode or Element
  static final updateRenderClass = _of('updateRenderClass');

  /// updateRenderAttribute(node, name, value) -> updates attribute on RenderNode or Element
  static final updateRenderAttribute = _of('updateRenderAttribute');

  /// updateRenderStyle(node, name, value) -> updates style on RenderNode or Element
  static final updateRenderStyle = _of('updateRenderStyle');

  /// updateRenderTabIndex(node, value) -> updates tabIndex on RenderNode or Element
  static final updateRenderTabIndex = _of('updateRenderTabIndex');
}

class StyleEncapsulation {
  const StyleEncapsulation._();

  static CompileIdentifierMetadata _of(String name) {
    return CompileIdentifierMetadata(
      name: name,
      moduleUrl: '$_angularLib/src/core/linker/style_encapsulation.dart',
    );
  }

  static final componentStyles = _of('ComponentStyles');
  static final componentStylesScoped = _of('ComponentStyles.scoped');
  static final componentStylesUnscoped = _of('ComponentStyles.unscoped');
}

class Views {
  const Views._();

  static CompileIdentifierMetadata _of(String name, String file) {
    return CompileIdentifierMetadata(
      name: name,
      moduleUrl: '$_angularLib/src/core/linker/views/$file',
    );
  }

  static final componentView = _of('ComponentView', 'component_view.dart');
  static final embeddedView = _of('EmbeddedView', 'embedded_view.dart');
  static final hostView = _of('HostView', 'host_view.dart');
  static final renderView = _of('RenderView', 'render_view.dart');
  static final view = _of('View', 'view.dart');
}

class Interpolation {
  static const _moduleUrl = '$_angularLib/src/runtime/interpolate.dart';

  const Interpolation._();

  static CompileIdentifierMetadata _interpolate(int n) {
    return CompileIdentifierMetadata(
      name: 'interpolate$n',
      moduleUrl: _moduleUrl,
    );
  }

  static CompileIdentifierMetadata _interpolateString(int n) {
    return CompileIdentifierMetadata(
      name: 'interpolateString$n',
      moduleUrl: _moduleUrl,
    );
  }

  static final interpolate = List<CompileIdentifierMetadata>.generate(
    3,
    _interpolate,
  );

  static final interpolateFallback = CompileIdentifierMetadata(
    name: 'interpolateN',
    moduleUrl: _moduleUrl,
  );

  static final interpolateString = List<CompileIdentifierMetadata>.generate(
    3,
    _interpolateString,
  );

  static final textBinding = CompileIdentifierMetadata(
    name: 'TextBinding',
    moduleUrl: '$_angularLib/src/runtime/text_binding.dart',
  );
}

class Runtime {
  static const _runtimeUrl = '$_angularLib/src/utilities.dart';
  static const _checkBindingUrl = '$_angularLib/src/runtime/check_binding.dart';

  const Runtime._();

  static final checkBinding = CompileIdentifierMetadata(
    name: 'checkBinding',
    moduleUrl: _checkBindingUrl,
  );

  static final debugThrowIfChanged = CompileIdentifierMetadata(
    name: 'debugThrowIfChanged',
    moduleUrl: _checkBindingUrl,
  );

  static final isDevMode = CompileIdentifierMetadata(
    name: 'isDevMode',
    moduleUrl: _runtimeUrl,
  );

  static final unsafeCast = CompileIdentifierMetadata(
    name: 'unsafeCast',
    moduleUrl: _runtimeUrl,
  );
}

class Queries {
  static const _moduleUrl = '$_angularLib/src/runtime/queries.dart';

  const Queries._();

  static final firstOrNull = CompileIdentifierMetadata(
    name: 'firstOrNull',
    moduleUrl: _moduleUrl,
  );
}

class SafeHtmlAdapters {
  static const _moduleUrl = '$_angularLib/src/security/safe_html_adapter.dart';
  static final sanitizeHtml = CompileIdentifierMetadata(
    name: 'sanitizeHtml',
    moduleUrl: _moduleUrl,
  );
  static final sanitizeStyle = CompileIdentifierMetadata(
    name: 'sanitizeStyle',
    moduleUrl: _moduleUrl,
  );
  static final sanitizeUrl = CompileIdentifierMetadata(
    name: 'sanitizeUrl',
    moduleUrl: _moduleUrl,
  );
  static final sanitizeResourceUrl = CompileIdentifierMetadata(
    name: 'sanitizeResourceUrl',
    moduleUrl: _moduleUrl,
  );
}

class Identifiers {
  static final appViewUtils = CompileIdentifierMetadata(
    name: 'appViewUtils',
    moduleUrl: _appViewUtilsModuleUrl,
  );
  static final viewContainer = CompileIdentifierMetadata(
      name: 'ViewContainer',
      moduleUrl: 'asset:angulardart/lib/src/core/linker/view_container.dart');
  static final viewContainerToken = identifierToken(viewContainer);
  static final elementRef = CompileIdentifierMetadata(
      name: 'ElementRef',
      moduleUrl: 'asset:angulardart/lib/src/core/linker/element_ref.dart');
  static final elementRefToken = identifierToken(elementRef);
  static final viewContainerRef = CompileIdentifierMetadata(
      name: 'ViewContainerRef',
      moduleUrl: 'asset:angulardart/lib/src/core/linker/view_container_ref.dart');
  static final viewContainerRefToken =
      identifierToken(Identifiers.viewContainerRef);
  static final componentLoader = CompileIdentifierMetadata(
      name: 'ComponentLoader',
      moduleUrl: 'asset:angulardart/lib/src/core/linker/component_loader.dart');
  static final componentLoaderToken = identifierToken(componentLoader);
  static final changeDetectorRef = CompileIdentifierMetadata(
      name: 'ChangeDetectorRef',
      moduleUrl: 'asset:angulardart/lib/src/core/change_detection/'
          'change_detector_ref.dart');
  static final changeDetectorRefToken =
      identifierToken(Identifiers.changeDetectorRef);
  static final componentFactory = CompileIdentifierMetadata(
      name: 'ComponentFactory', moduleUrl: _angularRootUrl);
  static final directiveChangeDetector = CompileIdentifierMetadata(
      name: 'DirectiveChangeDetector',
      moduleUrl: 'asset:angulardart/lib/src/core/'
          'change_detection/directive_change_detector.dart');
  static final componentRef = CompileIdentifierMetadata(
      name: 'ComponentRef', moduleUrl: _angularRootUrl);
  static final templateRef = CompileIdentifierMetadata(
      name: 'TemplateRef',
      moduleUrl: 'asset:angulardart/lib/src/core/linker/template_ref.dart');
  static final templateRefToken = identifierToken(Identifiers.templateRef);
  static final injector = CompileIdentifierMetadata(
      name: 'Injector', moduleUrl: 'asset:angulardart/lib/src/di/injector.dart');
  static final injectorToken = identifierToken(Identifiers.injector);
  static final viewType = CompileIdentifierMetadata(
      name: 'ViewType',
      moduleUrl: 'asset:angulardart/lib/src/core/linker/view_type.dart');
  static final changeDetectionStrategy = CompileIdentifierMetadata(
      name: 'ChangeDetectionStrategy', moduleUrl: _cdModuleUrl);
  static final renderMode =
      CompileIdentifierMetadata(name: 'RenderMode', moduleUrl: _metaModuleUrl);
  static final identical = CompileIdentifierMetadata(name: 'identical');
  static final profileSetup = CompileIdentifierMetadata(
      name: 'profileSetup', moduleUrl: _profileRuntimeModuleUrl);
  static final profileMarkStart = CompileIdentifierMetadata(
      name: 'profileMarkStart', moduleUrl: _profileRuntimeModuleUrl);
  static final profileMarkEnd = CompileIdentifierMetadata(
      name: 'profileMarkEnd', moduleUrl: _profileRuntimeModuleUrl);
  static final debugInjectorEnter = CompileIdentifierMetadata(
      name: 'debugInjectorEnter', moduleUrl: _debugInjectorModuleUrl);
  static final debugInjectorLeave = CompileIdentifierMetadata(
      name: 'debugInjectorLeave', moduleUrl: _debugInjectorModuleUrl);
  static final debugInjectorWrap = CompileIdentifierMetadata(
      name: 'debugInjectorWrap', moduleUrl: _debugInjectorModuleUrl);

  static final createTrustedHtml = CompileIdentifierMetadata(
      name: 'createTrustedHtml', moduleUrl: _appViewUtilsModuleUrl);
  static final pureProxies = [
    null,
    CompileIdentifierMetadata(name: 'pureProxy1', moduleUrl: _proxiesModuleUrl),
    CompileIdentifierMetadata(name: 'pureProxy2', moduleUrl: _proxiesModuleUrl),
    CompileIdentifierMetadata(name: 'pureProxy3', moduleUrl: _proxiesModuleUrl),
    CompileIdentifierMetadata(name: 'pureProxy4', moduleUrl: _proxiesModuleUrl),
    CompileIdentifierMetadata(name: 'pureProxy5', moduleUrl: _proxiesModuleUrl),
    CompileIdentifierMetadata(name: 'pureProxy6', moduleUrl: _proxiesModuleUrl),
    CompileIdentifierMetadata(name: 'pureProxy7', moduleUrl: _proxiesModuleUrl),
    CompileIdentifierMetadata(name: 'pureProxy8', moduleUrl: _proxiesModuleUrl),
    CompileIdentifierMetadata(name: 'pureProxy9', moduleUrl: _proxiesModuleUrl),
    CompileIdentifierMetadata(name: 'pureProxy10', moduleUrl: _proxiesModuleUrl)
  ];

  static final ngIfDirective =
      CompileIdentifierMetadata(name: 'NgIf', moduleUrl: _ngIfUrl);
  static final ngForDirective =
      CompileIdentifierMetadata(name: 'NgFor', moduleUrl: _ngForUrl);

  // Runtime is initialized by output interpreter. Compiler executes in VM and
  // can't import package:web to initialize here.
  static var htmlCommentNode =
      CompileIdentifierMetadata(name: 'Comment', moduleUrl: 'package:web/src/dom/dom.dart');
  static var htmlTextNode =
      CompileIdentifierMetadata(name: 'Text', moduleUrl: 'package:web/src/dom/dom.dart');
  static var htmlDocument =
      CompileIdentifierMetadata(name: 'document', moduleUrl: 'package:web/src/dom/dom.dart');
  static final htmlDocumentFragment = CompileIdentifierMetadata(
      name: 'DocumentFragment', moduleUrl: 'package:web/src/dom/dom.dart');
  static final htmlElement =
      CompileIdentifierMetadata(name: 'Element', moduleUrl: 'package:web/src/dom/dom.dart');
  static final elementToken = identifierToken(htmlElement);
  static final htmlHtmlElement =
      CompileIdentifierMetadata(name: 'HTMLElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlElementToken = identifierToken(htmlHtmlElement);

  // Fallback token for extension types from package:web that are erased to
  // JSObject at runtime by dart2js. See compile_element.dart for usage.
  static final jsObject =
      CompileIdentifierMetadata(name: 'JSObject', moduleUrl: 'dart:js_interop');
  static final jsObjectToken = identifierToken(jsObject);

  static final svgSvgElement =
      CompileIdentifierMetadata(name: 'SVGSVGElement', moduleUrl: 'package:web/src/dom/svg.dart');
  static final svgElement =
      CompileIdentifierMetadata(name: 'SVGElement', moduleUrl: 'package:web/src/dom/svg.dart');
  static final htmlAnchorElement =
      CompileIdentifierMetadata(name: 'HTMLAnchorElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlDivElement =
      CompileIdentifierMetadata(name: 'HTMLDivElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlAreaElement =
      CompileIdentifierMetadata(name: 'HTMLAreaElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlAudioElement =
      CompileIdentifierMetadata(name: 'HTMLAudioElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlButtonElement =
      CompileIdentifierMetadata(name: 'HTMLButtonElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlCanvasElement =
      CompileIdentifierMetadata(name: 'HTMLCanvasElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlFormElement =
      CompileIdentifierMetadata(name: 'HTMLFormElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlIframeElement =
      CompileIdentifierMetadata(name: 'HTMLIFrameElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlImageElement =
      CompileIdentifierMetadata(name: 'HTMLImageElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlInputElement =
      CompileIdentifierMetadata(name: 'HTMLInputElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlTextareaElement = CompileIdentifierMetadata(
      name: 'HTMLTextAreaElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlMediaElement =
      CompileIdentifierMetadata(name: 'HTMLMediaElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlMenuElement =
      CompileIdentifierMetadata(name: 'HTMLMenuElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlOptionElement =
      CompileIdentifierMetadata(name: 'HTMLOptionElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlOlistElement =
      CompileIdentifierMetadata(name: 'HTMLOListElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlSelectElement =
      CompileIdentifierMetadata(name: 'HTMLSelectElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlTableElement =
      CompileIdentifierMetadata(name: 'HTMLTableElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlTableRowElement = CompileIdentifierMetadata(
      name: 'HTMLTableRowElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlTableColElement = CompileIdentifierMetadata(
      name: 'HTMLTableColElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlUlistElement =
      CompileIdentifierMetadata(name: 'HTMLUListElement', moduleUrl: 'package:web/src/dom/html.dart');
  static final htmlNode =
      CompileIdentifierMetadata(name: 'Node', moduleUrl: 'package:web/src/dom/dom.dart');

  /// A class used for message internationalization.
  static final intl = CompileIdentifierMetadata(
    name: 'Intl',
    moduleUrl: 'package:intl/intl.dart',
  );

  static final dart2JsNoInline = CompileIdentifierMetadata(
    name: 'noInline',
    moduleUrl: 'package:meta/dart2js.dart',
  );

  static final dartCoreOverride = CompileIdentifierMetadata(
    name: 'override',
  );

  static final dartCoreDeprecated = CompileIdentifierMetadata(
    name: 'Deprecated',
  );

  static final ngContentRef = CompileIdentifierMetadata(
    name: 'NgContentRef',
    moduleUrl: 'asset:angulardart/lib/src/core/linker/ng_content_ref.dart',
  );
  static final ngContentRefToken = identifierToken(Identifiers.ngContentRef);
}

CompileTokenMetadata identifierToken(CompileIdentifierMetadata? identifier) {
  return CompileTokenMetadata(identifier: identifier);
}
