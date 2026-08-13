/// Browser platform implementation of DOM APIs for angulardart_server.
library;

import 'dart:html' as html;

/// Platform-specific document type.
typedef DomDocument = html.HtmlDocument;

/// Platform-specific element type.
typedef DomElement = html.Element;

/// Platform-specific HTML style element type.
typedef DomHTMLStyleElement = html.StyleElement;

/// Platform-specific event type.
typedef DomEvent = html.Event;

/// Returns the global document object.
DomDocument get document => html.document;
