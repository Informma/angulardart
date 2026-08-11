/// Browser platform DOM APIs for linker.
///
/// Re-exports the unified DOM types from runtime/dom_apis.dart so that
/// LinkerElement, LinkerHTMLElement, etc. are always aliases of DomElement, DomHTMLElement, etc.
library;

import '../../runtime/web_types.dart';
import '../../runtime/browser_dom_apis_browser.dart' as browser;

export '../../runtime/web_types.dart';

/// Platform-specific element type (alias for DomElement).
typedef LinkerElement = DomElement;

/// Platform-specific HTML element type (alias for DomHTMLElement).
typedef LinkerHTMLElement = DomHTMLElement;

/// Platform-specific style element type.
typedef LinkerHTMLStyleElement = DomHTMLStyleElement;

/// Platform-specific template element type.
typedef LinkerHTMLTemplateElement = DomHTMLTemplateElement;

/// Platform-specific document fragment type.
typedef LinkerDocumentFragment = DomDocumentFragment;

/// Returns the global browser document object for linker operations.
DomDocument get linkerDocument => browser.document;
