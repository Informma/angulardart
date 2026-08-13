/// Browser implementation of the DOM APIs for AngularDart.
///
/// Uses `dart:html` directly. This file is only compiled on web platforms.
library;

import 'dart:html' as html;

/// The platform-specific document type (browser).
typedef DomDocument = html.HtmlDocument;

/// The platform-specific node type (browser).
typedef DomNode = html.Node;

/// The platform-specific element type (browser).
typedef DomElement = html.Element;

/// The platform-specific text node type (browser).
typedef DomText = html.Text;

/// The platform-specific comment node type (browser).
typedef DomComment = html.Comment;

/// The platform-specific event type (browser).
typedef DomEvent = html.Event;

/// The platform-specific keyboard event type (browser).
typedef DomKeyboardEvent = html.KeyboardEvent;

/// Returns the global browser document.
DomDocument get document => html.document;

/// Creates a browser text node.
DomText createTextNode(String text) => html.Text(text);

/// Creates a browser comment node.
DomComment createComment([String? data]) => html.Comment(data);

/// The platform-specific document fragment type (browser).
typedef DomDocumentFragment = html.DocumentFragment;

/// Creates a document fragment from [trustedHtml] (browser).
DomDocumentFragment createTrustedHtml(String trustedHtml) {
  return html.DocumentFragment.html(
    trustedHtml,
    treeSanitizer: html.NodeTreeSanitizer.trusted,
  );
}
