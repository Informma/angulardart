/// VM platform stub DOM APIs for linker/views.
///
/// On native/AOT builds (server-side rendering), these are stub types
/// since DOM operations are handled by the server renderer.
///
/// All types are aliases of the corresponding Dom* types from native_dom_apis.dart
/// to ensure type compatibility with browser builds and EmbeddedViewRef.
library;

import '../../../runtime/native_dom_apis.dart' as dom;

export '../../../runtime/native_dom_apis.dart';

/// Platform-specific element type (alias for DomElement).
typedef ViewElement = dom.DomElement;

/// Platform-specific node type (alias for DomNode).
typedef ViewNode = dom.DomNode;

/// Platform-specific HTML element type (alias for DomHTMLElement).
typedef ViewHTMLElement = dom.DomHTMLElement;

/// Platform-specific event type (alias for DomEvent).
typedef ViewEvent = dom.DomEvent;
