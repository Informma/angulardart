/// Platform-independent DOM type stubs for AngularDart.
///
/// This file defines ALL DOM types used across the AngularDart codebase as
/// abstract classes, providing a consistent interface that works on both:
/// - **Browser platforms**: Real browser DOM objects implement these interfaces
///   at runtime via Dart's structural typing (the `package:web` types satisfy
///   these abstract contracts).
/// - **VM/native platforms**: No-op stub implementations are used for server-side
///   rendering and testing.
///
/// This file has NO imports from `package:web` or `dart:js_interop`. It only
/// uses core Dart libraries. The actual platform-specific types are provided by
/// [browser_dom_apis_browser.dart] (which imports `package:web`) and
/// [native_dom_apis.dart] (which provides stubs).
library;

// ============================================================================
// Core DOM Types
// ============================================================================

/// Abstract base for all DOM nodes.
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

/// Extension to provide [append()] convenience on [DomNode].
extension DomNodeAppend on DomNode {
  void append(DomNode node) => appendChild(node);
}

/// Abstract DOM element.
abstract class DomElement implements DomNode {
  String get tagName;
  @override String get textContent;
  @override set textContent(String value);
  String get id;
  set id(String value);
  String? getAttribute(String name);
  void setAttribute(String name, String value);
  void removeAttribute(String name);
  void replaceWith(DomNode newChild);
  void remove();
  DomDOMTokenList? get classList;
  void addEventListener(String type, dynamic listener);
  void removeEventListener(String type, dynamic listener);
  void removeAttributeNS(String? namespace, String attribute);
  void setAttributeNS(String? namespace, String attribute, String value);
}

/// Abstract HTML element.
abstract class DomHTMLElement implements DomElement {
  @override String get id;
  @override set id(String value);
  String get className;
  set className(String value);
  String get innerHTML;
  set innerHTML(String value);
  @override void addEventListener(String type, dynamic listener);
  @override void removeEventListener(String type, dynamic listener);
  DomDOMTokenList get classList;
  DomCSSStyleDeclaration get style;
  int get tabIndex;
  set tabIndex(int value);
}

/// Abstract text node.
abstract class DomText implements DomNode {
  String get data;
  set data(String value);
  
  /// Creates a new text node with the given content.
  factory DomText(String text) => _DomTextStub(text);
}

/// Abstract comment node.
abstract class DomComment implements DomNode {
  /// Creates a new comment node with optional data.
  factory DomComment([String data = '']) => _DomCommentStub(data);
}

/// Abstract document fragment.
abstract class DomDocumentFragment implements DomNode {}

/// Abstract document.
abstract class DomDocument {
  DomElement? querySelector(String selector);
  DomElement? get documentElement;
  DomElement? get body;
  DomElement? get head;
  DomNode createElement(String tagName, [String? namespace]);
  DomNode createTextNode(String text);
  DomComment createComment([String data = '']);
  DomDocumentFragment createDocumentFragment();
  DomTreeWalker createTreeWalker(DomNode root, [int whatToShow = kDomShowAll]);
  
  /// Creates a stub document for VM/native builds.
  factory DomDocument._stub() => _DomDocumentStub();
}

/// Stub implementation of DomDocument for VM/native builds.
class _DomDocumentStub implements DomDocument {
  @override DomElement? querySelector(String selector) => null;
  @override DomElement? get documentElement => null;
  @override DomElement? get body => null;
  @override DomElement? get head => null;
  @override DomNode createElement(String tagName, [String? namespace]) => _DomElementStub(tagName);
  @override DomNode createTextNode(String text) => _DomTextStub(text);
  @override DomComment createComment([String data = '']) => _DomCommentStub(data);
  @override DomDocumentFragment createDocumentFragment() => _DomDocumentFragmentStub();
  @override DomTreeWalker createTreeWalker(DomNode root, [int whatToShow = kDomShowAll]) => _DomTreeWalkerStub(root);
}

class _DomElementStub implements DomHTMLElement {
  final String tagName;
  _DomElementStub(this.tagName);
  @override String get nodeName => tagName.toLowerCase();
  @override int get nodeType => 1;
  @override String get id => '';
  @override set id(String value) {}
  @override String get className => '';
  @override set className(String value) {}
  @override String get innerHTML => '';
  @override set innerHTML(String value) {}
  @override String? getAttribute(String name) => null;
  @override void setAttribute(String name, String value) {}
  @override void removeAttribute(String name) {}
  @override void replaceWith(DomNode newChild) {}
  @override void remove() {}
  @override DomDOMTokenList get classList => _DomDOMTokenListStub();
  @override void addEventListener(String type, dynamic listener) {}
  @override void removeEventListener(String type, dynamic listener) {}
  @override void removeAttributeNS(String? namespace, String attribute) {}
  @override void setAttributeNS(String? namespace, String attribute, String value) {}
  @override DomNode? get parentNode => null;
  @override DomNode? get nextSibling => null;
  @override DomNode? get previousSibling => null;
  @override DomNode? get firstChild => null;
  @override DomNode? get lastChild => null;
  @override String get textContent => '';
  @override set textContent(String value) {}
  @override DomDocument? get ownerDocument => null;
  @override DomNode? appendChild(DomNode node) => null;
  @override void removeChild(DomNode node) {}
  @override DomNode? insertBefore(DomNode node, DomNode? ref) => null;
  @override DomNode? replaceChild(DomNode node, DomNode? ref) => null;
  @override bool contains(DomNode node) => false;
  @override DomCSSStyleDeclaration get style => _DomCSSStyleDeclarationStub();
  @override int get tabIndex => 0;
  @override set tabIndex(int value) {}
}

class _DomTextStub implements DomText {
  String _data = '';
  _DomTextStub([String data = '']) : _data = data;
  @override String get nodeName => '#text';
  @override int get nodeType => 3;
  @override String get textContent => _data;
  @override set textContent(String value) { _data = value; }
  @override String get data => _data;
  @override set data(String value) { _data = value; }
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

class _DomCommentStub implements DomComment {
  String _data = '';
  _DomCommentStub([String data = '']) : _data = data;
  @override String get nodeName => '#comment';
  @override int get nodeType => 8;
  @override String get textContent => _data;
  @override set textContent(String value) { _data = value; }
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

class _DomDocumentFragmentStub implements DomDocumentFragment {
  @override String get nodeName => '#document-fragment';
  @override int get nodeType => 11;
  @override String get textContent => '';
  @override set textContent(String value) {}
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

class _DomTreeWalkerStub implements DomTreeWalker {
  DomNode? _currentNode;
  _DomTreeWalkerStub(DomNode root) : _currentNode = root;
  @override DomNode? get currentNode => _currentNode;
  @override set currentNode(DomNode? value) { _currentNode = value; }
  @override DomNode? firstChild() { final n = _currentNode?.firstChild; if (n != null) _currentNode = n; return _currentNode; }
  @override DomNode? lastChild() { final n = _currentNode?.lastChild; if (n != null) _currentNode = n; return _currentNode; }
  @override DomNode? nextSibling() { final n = _currentNode?.nextSibling; if (n != null) _currentNode = n; return _currentNode; }
  @override DomNode? previousSibling() { final n = _currentNode?.previousSibling; if (n != null) _currentNode = n; return _currentNode; }
  @override DomNode? parentNode() { final n = _currentNode?.parentNode; if (n != null) _currentNode = n; return _currentNode; }
}

class _DomCSSStyleDeclarationStub implements DomCSSStyleDeclaration {
  @override String get cssText => '';
  @override set cssText(String value) {}
  @override int get length => 0;
  @override String? item(int index) => null;
  @override String getPropertyValue(String name) => '';
  @override void setProperty(String name, String value, [String? priority]) {}
  @override void removeProperty(String name) {}
}

/// Abstract window.
abstract class DomWindow {
  DomDocument get document;
  void addEventListener(String type, dynamic listener);
  void removeEventListener(String type, dynamic listener);
  DomLocation? get location;
  DomHistory? get history;
}

/// Abstract event target.
abstract class DomEventTarget {
  void addEventListener(String type, dynamic listener);
  void removeEventListener(String type, dynamic listener);
  bool dispatchEvent(DomEvent event);
}

/// Abstract DOM event.
abstract class DomEvent {
  String get type;
  DomEventTarget? get target;
  DomEventTarget? get currentTarget;
  bool get bubbles;
  bool get cancelable;
  bool get defaultPrevented;
  dynamic get detail;
  void preventDefault();
  void stopPropagation();
  void stopImmediatePropagation();
  bool get composed;
}

/// Abstract event listener callback.
typedef DomEventListener = dynamic Function(DomEvent);

/// Abstract tree walker.
abstract class DomTreeWalker {
  DomNode? get currentNode;
  set currentNode(DomNode? value);
  DomNode? firstChild();
  DomNode? lastChild();
  DomNode? nextSibling();
  DomNode? previousSibling();
  DomNode? parentNode();
}

/// Abstract keyboard event.
abstract class DomKeyboardEvent implements DomEvent {
  String get code;
  int get keyCode;
  String get key;
  bool get altKey;
  bool get ctrlKey;
  bool get metaKey;
  bool get shiftKey;
}

/// Abstract DOM token list (classList).
abstract class DomDOMTokenList {
  int get length;
  String? item(int index);
  void add(String token, [String? second, List<String>? rest]);
  void remove(String token, [String? second, List<String>? rest]);
  bool contains(String token);
  void toggle(String token, [bool? force]);
  String? get value;
  set value(String? v);
  
  factory DomDOMTokenList() => _DomDOMTokenListStub();
}

/// Abstract CSS style declaration.
abstract class DomCSSStyleDeclaration {
  String get cssText;
  set cssText(String value);
  int get length;
  String? item(int index);
  String getPropertyValue(String name);
  void setProperty(String name, String value, [String? priority]);
  void removeProperty(String name);
  
  factory DomCSSStyleDeclaration() => _DomCSSStyleDeclarationStub();
}

class _DomDOMTokenListStub implements DomDOMTokenList {
  final List<String> _tokens = [];
  @override int get length => _tokens.length;
  @override String? item(int index) => index < _tokens.length ? _tokens[index] : null;
  @override void add(String token, [String? second, List<String>? rest]) { _tokens.add(token); if (second != null) _tokens.add(second); if (rest != null) _tokens.addAll(rest); }
  @override void remove(String token, [String? second, List<String>? rest]) {
    _tokens.remove(token);
    if (second != null) _tokens.remove(second);
    if (rest != null) for (final r in rest) _tokens.remove(r);
  }
  @override bool contains(String token) => _tokens.contains(token);
  @override void toggle(String token, [bool? force]) { if (force == true || (force == null && !contains(token))) add(token); else remove(token); }
  @override String? get value => _tokens.isEmpty ? null : _tokens.join(' ');
  @override set value(String? v) { _tokens.clear(); if (v != null && v.isNotEmpty) _tokens.addAll(v.split(' ')); }
}


/// Abstract DOM rectangle.
abstract class DomRect {
  double get x;
  double get y;
  double get width;
  double get height;
  double get top;
  double get right;
  double get bottom;
  double get left;
}

// ============================================================================
// HTML Element Types
// ============================================================================

/// Abstract input element.
abstract class DomHTMLInputElement implements DomHTMLElement {
  String? get type;
  String? get value;
  set value(String? v);
  bool get checked;
  set checked(bool value);
  bool get disabled;
  set disabled(bool value);
  bool get required;
  set required(bool value);
  bool get readonly;
  set readonly(bool value);
  String? get placeholder;
  String? get name;
  int? get maxLength;
  int? get size;
  bool get multiple;
  set multiple(bool value);
  String? get accept;
  String? get alt;
  String? get pattern;
  String? get min;
  String? get max;
  num? get step;
  String? get defaultValue;
  bool get indeterminate;
  set indeterminate(bool value);
}

/// Abstract textarea element.
abstract class DomHTMLTextAreaElement implements DomHTMLElement {
  String? get value;
  set value(String? v);
  String get defaultValue;
  int get length;
  bool get disabled;
  set disabled(bool value);
  bool get required;
  set required(bool value);
  bool get readonly;
  set readonly(bool value);
  String? get placeholder;
  String? get name;
  int? get maxLength;
  int? get cols;
  int? get rows;
}

/// Abstract select element.
abstract class DomHTMLSelectElement implements DomHTMLElement {
  int get length;
  set length(int value);
  String? get value;
  set value(String? v);
  bool get disabled;
  set disabled(bool value);
  bool get required;
  set required(bool value);
  bool get multiple;
  set multiple(bool value);
  String? get name;
  DomHTMLCollection get selectedOptions;
  int get selectedIndex;
  set selectedIndex(int value);
  DomHTMLCollection get options;
  void add(DomHTMLOptionElement option, [DomNode? before]);
  void remove([int index = 0]);
}

/// Abstract collection of elements.
abstract class DomHTMLCollection {
  int get length;
  DomNode? item(int index);
  DomNode? namedItem(String name);
}

/// Abstract option element.
abstract class DomHTMLOptionElement implements DomHTMLElement {
  String? get value;
  set value(String? v);
  bool get selected;
  set selected(bool value);
  String get text;
  set text(String value);
  int get index;
}

/// Abstract anchor element.
abstract class DomHTMLAnchorElement implements DomHTMLElement {
  String? get href;
  String? get protocol;
  String? get hostname;
  int get port;
  set port(int value);
  String? get pathname;
  String? get search;
  String? get hash;
  String? get text;
}

/// Abstract div element.
abstract class DomHTMLDivElement implements DomHTMLElement {}

/// Abstract heading element.
abstract class DomHTMLHeadingElement implements DomHTMLElement {}

/// Abstract head element.
abstract class DomHTMLHeadElement implements DomHTMLElement {}

/// Abstract image element.
abstract class DomHTMLImageElement implements DomHTMLElement {
  String? get src;
  set src(String? v);
  String? get alt;
  int? get width;
  int? get height;
}

/// Abstract template element.
abstract class DomHTMLTemplateElement implements DomHTMLElement {
  DomDocumentFragment get content;
}

/// Abstract style element.
abstract class DomHTMLStyleElement implements DomHTMLElement {}

/// Abstract slot element.
abstract class DomHTMLSlotElement implements DomHTMLElement {
  List<DomNode> assignedNodes({bool flatten = false});
}

// ============================================================================
// Event Types
// ============================================================================

/// Abstract mouse event.
abstract class DomMouseEvent implements DomEvent {
  int get screenX;
  int get screenY;
  int get clientX;
  int get clientY;
  int get button;
  int get buttons;
  DomElement? get relatedTarget;
  bool get ctrlKey;
  bool get shiftKey;
  bool get altKey;
  bool get metaKey;
}

/// Abstract focus event.
abstract class DomFocusEvent implements DomEvent {
  DomEventTarget? get relatedTarget;
}

/// Abstract UI event.
abstract class DomUIEvent implements DomEvent {
  @override int get detail;
  DomEventTarget? get view;
}

/// Abstract touch event.
abstract class DomTouchEvent implements DomEvent {
  int get touchesLength;
  int get changedTouchesLength;
  bool get altKey;
  bool get metaKey;
  bool get ctrlKey;
  bool get shiftKey;
}

/// Abstract wheel event.
abstract class DomWheelEvent implements DomEvent {
  double get deltaX;
  double get deltaY;
  double get deltaZ;
  String get deltaMode;
}

/// Abstract drag event.
abstract class DomDragEvent implements DomMouseEvent {
  DomDataTransfer? get dataTransfer;
}

/// Abstract transition event.
abstract class DomTransitionEvent implements DomEvent {
  String get propertyName;
  double get elapsedTime;
  bool get pseudoElement;
}

/// Abstract custom event.
abstract class DomCustomEvent implements DomEvent {
  @override dynamic get detail;
}

/// Abstract pop state event.
abstract class DomPopStateEvent implements DomEvent {
  Object? get state;
}

// ============================================================================
// Observer Types
// ============================================================================

/// Abstract intersection observer entry.
abstract class DomIntersectionObserverEntry {
  DomRect get boundingClientRect;
  DomRect? get rootBounds;
  double get intersectionRatio;
  DomRect? get intersectionRect;
  DomNode get target;
}

/// Abstract intersection observer init options.
abstract class DomIntersectionObserverInit {
  DomElement? get root;
  String? get rootMargin;
  double get threshold;
}

/// Abstract intersection observer.
abstract class DomIntersectionObserver implements DomEventTarget {
  void observe(DomNode target);
  void unobserve(DomNode target);
  void disconnect();
  List<DomIntersectionObserverEntry> takeRecords();
}

/// Abstract resize observer entry.
abstract class DomResizeObserverEntry {
  DomRect get contentRect;
  DomNode get target;
}

/// Abstract resize observer init options.
abstract class DomResizeObserverInit {
  String? get box;
  DomEventTarget? get root;
}

/// Abstract resize observer.
abstract class DomResizeObserver implements DomEventTarget {
  void observe(DomNode target, [DomResizeObserverInit? options]);
  void unobserve(DomNode target);
  void disconnect();
}

/// Scroll into view options.
abstract class DomScrollIntoViewOptions {
  String get behavior;
  String get block;
  String get inline;
}

// ============================================================================
// Other Types
// ============================================================================

/// Abstract location interface.
abstract class DomLocation {
  String get href;
  set href(String value);
  String get protocol;
  set protocol(String value);
  String get host;
  set host(String value);
  String get hostname;
  set hostname(String value);
  int get port;
  set port(int value);
  String get pathname;
  set pathname(String value);
  String get search;
  set search(String value);
  String get hash;
  set hash(String value);
  void assign(String url);
  void replace(String url);
  void reload([bool forceGet = false]);
  void pushState(Object? state, String title, [String? url]);
  void replaceState(Object? state, String title, [String? url]);
}

/// Abstract history interface.
abstract class DomHistory {
  int get length;
  Object? get state;
  void back();
  void forward();
  void go(int delta);
  void pushState(Object? state, String title, [String? url]);
  void replaceState(Object? state, String title, [String? url]);
}

/// Abstract animation interface (for getComputedStyle).
abstract class DomAnimation {
  String get id;
  double get currentTime;
  double get timeline;
  String get playState;
  void play();
  void pause();
  void finish();
  void cancel();
  void reverse();
}

/// Abstract data transfer for drag events.
abstract class DomDataTransfer {
  String get dropEffect;
  set dropEffect(String value);
  String get effectAllowed;
  set effectAllowed(String value);
  List<String> get types;
  String? getData(String format);
  void setData(String format, String data);
  void clearData([String format]);
}

// ============================================================================
// Constants
// ============================================================================

/// Constant for SHOW_ALL node filter (all nodes).
const int kDomShowAll = 0xFFFFFFFF;

/// Constant for SHOW_ELEMENT node filter (1 << 1).
const int kDomShowElement = 0x2;

/// Constant for SHOW_COMMENT node filter (1 << 128).
const int kDomShowComment = 0x8000;

// ============================================================================
// Global DOM Accessors (stub implementations - overridden by platform files)
// ============================================================================

/// No-op addEventListener for VM/native builds.
void addEventListener(DomElement target, String type, dynamic listener) {}

/// No-op removeEventListener for VM/native builds.
void removeEventListener(DomElement target, dynamic listener) {}

/// Returns the global document object.
DomDocument get document => _documentImpl;
late final DomDocument _documentImpl = DomDocument._stub();

/// Returns the global window object.
DomWindow? get windowOrNull => null;

/// Returns the global console object.
dynamic get console => _consoleImpl ??= _ConsoleStub();
_ConsoleStub? _consoleImpl;

class _ConsoleStub {
  void error(dynamic message) => print('ERROR: $message');
  void warn(dynamic message) => print('WARN: $message');
  void log(dynamic message) => print(message);
}
