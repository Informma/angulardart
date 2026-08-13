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

/// The platform-specific style element type (browser).
typedef DomStyleElement = html.StyleElement;

/// Creates a browser `<style>` element with [styles] as its text content.
DomStyleElement createStyleElement(String styles) =>
    html.StyleElement()..text = styles;

/// Appends a `<style>` element to the document `<head>` (browser).
void appendStyleElement(DomStyleElement element) {
  html.document.head!.append(element);
}

/// Logs an error to the browser developer console.
void consoleError(Object? message) => html.window.console.error(message);
