/// Native/AOT platform stub implementation of DOM APIs.
///
/// This is used when compiling to native AOT (server-side rendering) where
/// [package:web] is not available. All methods are no-ops since DOM operations
/// are not needed in server mode.
library;

/// Platform-specific DOM node type for native/AOT builds.
abstract class DomNode {
  String get nodeName;
  int get nodeType;
  DomDocument? get ownerDocument;
  DomNode? get parentNode;
  DomNode? get nextSibling;
  DomNode? get previousSibling;
  DomNode? get firstChild;
  DomNode? get lastChild;
  String get textContent;
  set textContent(String value);
  DomNode? appendChild(DomNode node);
  void removeChild(DomNode node);
  DomNode? insertBefore(DomNode node, DomNode? ref);
  DomNode? replaceChild(DomNode node, DomNode? ref);
  bool contains(DomNode node);
}

/// Extension to provide append() convenience method on DomNode.
extension DomNodeAppend on DomNode {
  /// Appends a child node. Convenience wrapper around [appendChild].
  void append(DomNode node) => appendChild(node);
}

/// Platform-specific DOM element type for native/AOT builds.
abstract class DomElement implements DomNode {
  String get tagName;
  String? getAttribute(String name);
  void setAttribute(String name, String value);
  void removeAttribute(String name);
  void replaceWith(DomNode newChild);
  void remove();
}

/// Platform-specific HTML element type for native/AOT builds.
abstract class DomHTMLElement implements DomElement {
  String get id;
  set id(String value);
  String get innerHTML;
  set innerHTML(String value);
  void addEventListener(String type, dynamic listener);
  void removeEventListener(String type, dynamic listener);
}

/// Platform-specific document stub for native/AOT builds.
class DomDocument {
  static final DomDocument _instance = DomDocument._();
  DomDocument._();
  static DomDocument get instance => _instance;
  
  DomElement? querySelector(String selector) => null;
  DomElement? get documentElement => null;
  DomElement? get body => null;
  DomElement? get head => null;
  
  DomNode createElement(String tagName) => _DomElementStub(tagName);
  DomNode createTextNode(String text) => _DomTextStub(text);
  DomTreeWalker createTreeWalker(DomNode root, [int whatToShow = kDomShowAll]) => _DomTreeWalkerStub(root);
}

/// Platform-specific TreeWalker stub for native/AOT builds.
class DomTreeWalker {
  DomNode? get currentNode => null;
  set currentNode(DomNode? value) {}
  DomNode? firstChild() => null;
  DomNode? lastChild() => null;
  DomNode? nextSibling() => null;
  DomNode? previousSibling() => null;
  DomNode? parentNode() => null;
}

/// Platform-specific Text node stub for native/AOT builds.
class _DomTextStub implements DomNode {
  @override final String nodeName = '#text';
  @override final int nodeType = 3;
  @override String textContent = '';
  
  _DomTextStub([String text = '']) : textContent = text;
  
  @override DomDocument? get ownerDocument => null;
  @override DomNode? get parentNode => null;
  @override DomNode? get nextSibling => null;
  @override DomNode? get previousSibling => null;
  @override DomNode? get firstChild => null;
  @override DomNode? get lastChild => null;
  @override DomNode? appendChild(DomNode node) => null;
  @override void removeChild(DomNode node) {}
  @override DomNode? insertBefore(DomNode node, DomNode? ref) => null;
  @override DomNode? replaceChild(DomNode node, DomNode? ref) => null;
  @override bool contains(DomNode node) => false;
}

/// Platform-specific Comment node stub for native/AOT builds.

/// Internal stub implementation of [DomElement].
class _DomElementStub implements DomHTMLElement {
  @override final String tagName;
  @override String id = '';
  @override String textContent = '';
  @override String innerHTML = '';
  final Map<String, String> _attributes = {};

  _DomElementStub(this.tagName);

  @override String get nodeName => tagName.toLowerCase();

  @override int get nodeType => 1; // ELEMENT_NODE
  @override DomDocument? get ownerDocument => null;
  @override DomNode? get parentNode => null;
  @override DomNode? get nextSibling => null;
  @override DomNode? get previousSibling => null;
  @override DomNode? get firstChild => null;
  @override DomNode? get lastChild => null;

  @override String? getAttribute(String name) => _attributes[name];
  @override void setAttribute(String name, String value) { _attributes[name] = value; }
  @override void removeAttribute(String name) { _attributes.remove(name); }
  @override void replaceWith(DomNode newChild) {}
  @override void remove() {}
  @override DomNode? appendChild(DomNode node) => null;
  @override void removeChild(DomNode node) {}
  @override DomNode? insertBefore(DomNode node, DomNode? ref) => null;
  @override DomNode? replaceChild(DomNode node, DomNode? ref) => null;
  @override bool contains(DomNode node) => false;
  void append(DomNode node) {}
  void addEventListener(String type, dynamic listener) {}
  void removeEventListener(String type, dynamic listener) {}
}

/// Platform-specific console stub for native/AOT builds.
class DomConsole {
  void error(dynamic message) => print('ERROR: $message');
  void warn(dynamic message) => print('WARN: $message');
  void log(dynamic message) => print(message);
}

/// Returns the global console object.
DomConsole get console => DomConsole();

/// Platform-specific event stub for native/AOT builds.
class DomEvent {
  String get type => '';
  DomEventTarget? get target => null;
  bool get bubbles => false;
  bool get cancelable => false;
  void preventDefault() {}
  void stopPropagation() {}
}

/// Stub for [DomEventTarget].
abstract class DomEventTarget {}

/// Platform-specific KeyboardEvent stub for native/AOT builds.
class DomKeyboardEvent implements DomEvent {
  @override String get type => '';
  @override DomEventTarget? get target => null;
  @override bool get bubbles => false;
  @override bool get cancelable => false;
  @override void preventDefault() {}
  @override void stopPropagation() {}
  String get code => '';
  int get keyCode => 0;
  String get key => '';
  bool get altKey => false;
  bool get ctrlKey => false;
  bool get metaKey => false;
  bool get shiftKey => false;
}

/// Platform-specific Text node stub for native/AOT builds.
class DomText implements DomNode {
  @override final String nodeName = '#text';
  @override final int nodeType = 3;
  @override String textContent = '';
  
  DomText([String text = '']) : textContent = text;
  
  @override DomDocument? get ownerDocument => null;
  @override DomNode? get parentNode => null;
  @override DomNode? get nextSibling => null;
  @override DomNode? get previousSibling => null;
  @override DomNode? get firstChild => null;
  @override DomNode? get lastChild => null;
  @override DomNode? appendChild(DomNode node) => null;
  @override void removeChild(DomNode node) {}
  @override DomNode? insertBefore(DomNode node, DomNode? ref) => null;
  @override DomNode? replaceChild(DomNode node, DomNode? ref) => null;
  @override bool contains(DomNode node) => false;
}

/// Platform-specific Comment node stub for native/AOT builds.
class DomComment implements DomNode {
  @override final String nodeName = '#comment';
  @override final int nodeType = 8;
  @override String textContent = '';
  
  DomComment([String text = '']) : textContent = text;
  
  @override DomDocument? get ownerDocument => null;
  @override DomNode? get parentNode => null;
  @override DomNode? get nextSibling => null;
  @override DomNode? get previousSibling => null;
  @override DomNode? get firstChild => null;
  @override DomNode? get lastChild => null;
  @override DomNode? appendChild(DomNode node) => null;
  @override void removeChild(DomNode node) {}
  @override DomNode? insertBefore(DomNode node, DomNode? ref) => null;
  @override DomNode? replaceChild(DomNode node, DomNode? ref) => null;
  @override bool contains(DomNode node) => false;
}

/// Internal stub implementation of [DomTreeWalker].
class _DomTreeWalkerStub implements DomTreeWalker {
  DomNode? _currentNode;
  
  _DomTreeWalkerStub(DomNode root) { _currentNode = root; }
  
  @override DomNode? get currentNode => _currentNode;
  @override set currentNode(DomNode? value) { _currentNode = value; }
  @override DomNode? firstChild() { final n = _currentNode?.firstChild; if (n != null) _currentNode = n; return _currentNode; }
  @override DomNode? lastChild() { final n = _currentNode?.lastChild; if (n != null) _currentNode = n; return _currentNode; }
  @override DomNode? nextSibling() { final n = _currentNode?.nextSibling; if (n != null) _currentNode = n; return _currentNode; }
  @override DomNode? previousSibling() { final n = _currentNode?.previousSibling; if (n != null) _currentNode = n; return _currentNode; }
  @override DomNode? parentNode() { final n = _currentNode?.parentNode; if (n != null) _currentNode = n; return _currentNode; }
}

/// Returns the global document object.
DomDocument get document => DomDocument.instance;

/// Returns the global window object (null on native).
DomWindow? get windowOrNull => null;

/// Creates a DOM element of the given type cast.
DomElement createElement(DomDocument doc, String tagName, [Type? castType]) {
  return doc.createElement(tagName) as DomElement;
}

/// Checks if we're running on a browser platform.
bool get isBrowserPlatform => false;

/// No-op for native platforms.
void addEventListener(DomElement target, String type, void Function(DomEvent) fn) {}

/// No-op for native platforms.
void removeEventListener(DomElement target, dynamic fn) {}

/// Returns the function as-is since no JS conversion needed on native.
dynamic toJsListener(void Function(DomEvent) fn) => fn;

/// Extension for string - returns as-is on native.

/// Extension for functions - returns as-is on native.

/// Constant for SHOW_ALL node filter.
const int kDomShowAll = 0xFFFFFFFF;

/// Constant for SHOW_ELEMENT node filter (1 << 1).
const int kDomShowElement = 0x2;

/// Constant for SHOW_COMMENT node filter (1 << 128).
const int kDomShowComment = 0x8000;

/// Platform-specific window stub for native/AOT builds.
class DomWindow {
  DomDocument get document => DomDocument.instance;
}
