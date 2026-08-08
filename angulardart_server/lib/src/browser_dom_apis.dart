/// Browser platform implementation of DOM APIs for angulardart_server.
library;

import 'package:web/web.dart' as web;

/// Platform-specific document type.
typedef DomDocument = web.Document;

/// Platform-specific element type.
typedef DomElement = web.Element;

/// Platform-specific HTML style element type.
typedef DomHTMLStyleElement = web.HTMLStyleElement;

/// Platform-specific event type.
typedef DomEvent = web.Event;

/// Returns the global document object.
DomDocument get document => web.document;
