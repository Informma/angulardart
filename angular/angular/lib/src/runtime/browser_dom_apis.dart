/// Browser platform implementation of DOM APIs using [package:web].
///
/// This is the real implementation used when compiling to dart2js/dart2wasm
/// for web browsers. It provides full access to browser DOM APIs.
library;

import 'dart:js_interop';

import 'package:web/web.dart' as web;

/// Platform-specific DOM node type.
/// On browser, this is [web.Node].
typedef DomNode = web.Node;

/// Platform-specific DOM element type.
/// On browser, this is [web.Element].
typedef DomElement = web.Element;

/// Platform-specific HTML element type.
/// On browser, this is [web.HTMLElement].
typedef DomHTMLElement = web.HTMLElement;

/// Platform-specific document type.
/// On browser, this is [web.Document].
typedef DomDocument = web.Document;

/// Platform-specific window type.
/// On browser, this is [web.Window].
typedef DomWindow = web.Window;

/// Platform-specific event type.
/// On browser, this is [web.Event].
typedef DomEvent = web.Event;

/// Platform-specific TreeWalker type.
/// On browser, this is [web.TreeWalker].
typedef DomTreeWalker = web.TreeWalker;

/// Platform-specific Text node type.
/// On browser, this is [web.Text].
typedef DomText = web.Text;

/// Platform-specific KeyboardEvent type.
/// On browser, this is [web.KeyboardEvent].
typedef DomKeyboardEvent = web.KeyboardEvent;

/// Platform-specific Comment node type.
/// On browser, this is [web.Comment].
typedef DomComment = web.Comment;

/// Platform-specific console type.
/// On browser, this is [web.Console].
typedef DomConsole = dynamic;

/// Returns the global console object.
DomConsole get console => web.console;

/// Constant for SHOW_ALL node filter.
const int kDomShowAll = 0xFFFFFFFF;

/// Constant for SHOW_ELEMENT node filter (1 << 1).
const int kDomShowElement = 0x2;

/// Constant for SHOW_COMMENT node filter (1 << 128).
const int kDomShowComment = 0x8000;

/// Returns the global document object.
DomDocument get document => web.document;

/// Returns the global window object.
DomWindow? get windowOrNull {
  try {
    return web.window as DomWindow?;
  } catch (_) {
    return null;
  }
}

/// Creates a DOM element of the given type cast.
DomElement createElement(DomDocument doc, String tagName, [Type? castType]) {
  final el = doc.createElement(tagName);
  if (castType != null && el is! DomHTMLElement) {
    return el;
  }
  return el;
}

/// Checks if we're running on a browser platform.
bool get isBrowserPlatform => true;

/// Registers an event listener on the given target.
void addEventListener(
  DomElement target,
  String type,
  void Function(DomEvent) fn,
) {
  target.addEventListener(type, fn.toJS);
}

/// Removes an event listener from the given target.
void removeEventListener(
  DomElement target,
  String type,
  JSFunction fn,
) {
  target.removeEventListener(type, fn);
}

/// Converts a Dart function to a JS function for DOM event listeners.
JSFunction toJsListener(void Function(DomEvent) fn) => fn.toJS;


