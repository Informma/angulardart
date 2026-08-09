/// Browser platform DOM APIs for linker/views.
///
/// Re-exports the unified DOM types from runtime/dom_apis.dart so that
/// ViewNode, ViewElement, etc. are always aliases of DomNode, DomElement, etc.
library;

import '../../../runtime/web_types.dart';

/// Platform-specific element type (alias for DomElement).
typedef ViewElement = DomElement;

/// Platform-specific node type (alias for DomNode).
typedef ViewNode = DomNode;

/// Platform-specific HTML element type (alias for DomHTMLElement).
typedef ViewHTMLElement = DomHTMLElement;

/// Platform-specific event type (alias for DomEvent).
typedef ViewEvent = DomEvent;
