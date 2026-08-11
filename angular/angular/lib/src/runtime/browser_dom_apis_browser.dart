/// Platform-agnostic DOM APIs for browser platform.
///
/// Provides real browser DOM implementations on dart2js/dart2wasm,
/// and stub no-op implementations on native/AOT (SSR).
library;

// ignore_for_file: unnecessary_null_comparison
// package:web extension types can be null at runtime even though typed as non-nullable

import 'package:web/web.dart' as web;

import 'web_types.dart';

export 'web_types.dart';

// ============================================================================
// Browser Document Wrapper
// ============================================================================

class _BrowserDocument implements DomDocument {
  final web.Document _doc;
  
  _BrowserDocument(this._doc);
  
  @override
  DomElement? querySelector(String selector) {
    final element = _doc.querySelector(selector);
    return element != null ? _wrapElement(element) : null;
  }
  
  @override
  DomElement? get documentElement => _wrapElement(_doc.documentElement);
  
  @override
  DomElement? get body => _wrapElement(_doc.body);
  
  @override
  DomElement? get head => _wrapElement(_doc.head);
  
  @override
  DomNode createElement(String tagName, [String? namespace]) {
    final element = namespace != null 
        ? _doc.createElementNS(namespace, tagName)
        : _doc.createElement(tagName);
    return _BrowserElement(element);
  }
  
  @override
  DomNode createTextNode(String text) => _BrowserText(_doc.createTextNode(text));
  
  @override
  DomComment createComment([String data = '']) => _BrowserComment(_doc.createComment(data));
  
  @override
  DomDocumentFragment createDocumentFragment() => 
      _BrowserDocumentFragment(_doc.createDocumentFragment());
  
  @override
  DomTreeWalker createTreeWalker(DomNode root, [int whatToShow = kDomShowAll]) {
    final walker = _doc.createTreeWalker(
      (root as dynamic)._node ?? root,
    );
    return _BrowserTreeWalker(walker);
  }
  
  DomElement? _wrapElement(web.Element? element) {
    if (element == null) return null;
    if (element is web.HTMLElement) {
      return _BrowserHTMLElement(element);
    }
    return _BrowserElement(element);
  }
}

// ============================================================================
// Browser Node Wrapper
// ============================================================================

class _BrowserNode implements DomNode {
  final web.Node _node;
  
  _BrowserNode(this._node);
  
  @override String get nodeName => _node.nodeName;
  @override int get nodeType => _node.nodeType;
  @override DomDocument? get ownerDocument => 
      _BrowserDocument(_node.ownerDocument as web.Document);
  @override DomNode? get parentNode => _wrapNode(_node.parentNode);
  @override DomNode? get nextSibling => _wrapNode(_node.nextSibling);
  @override DomNode? get previousSibling => _wrapNode(_node.previousSibling);
  @override DomNode? get firstChild => _wrapNode(_node.firstChild);
  @override DomNode? get lastChild => _wrapNode(_node.lastChild);
  @override String get textContent => _node.textContent ?? '';
  @override set textContent(String value) { _node.textContent = value; }
  
  @override
  DomNode? appendChild(DomNode node) {
    final result = _node.appendChild((node as dynamic)._node);
    return result != null ? _wrapNode(result) : null;
  }
  
  @override void removeChild(DomNode node) => _node.removeChild((node as dynamic)._node);
  
  @override
  DomNode? insertBefore(DomNode node, DomNode? ref) {
    final result = _node.insertBefore(
      (node as dynamic)._node, 
      ref != null ? (ref as dynamic)._node : null,
    );
    return result != null ? _wrapNode(result) : null;
  }
  
  @override
  DomNode? replaceChild(DomNode node, DomNode? ref) {
    final result = _node.replaceChild(
      (node as dynamic)._node, 
      ref != null ? (ref as dynamic)._node : null,
    );
    return result != null ? _wrapNode(result) : null;
  }
  
  @override bool contains(DomNode node) => _node.contains((node as dynamic)._node);
  
  DomNode? _wrapNode(web.Node? node) {
    if (node == null) return null;
    if (node is web.Element) {
      if (node is web.HTMLElement) {
        return _BrowserHTMLElement(node);
      }
      return _BrowserElement(node);
    }
    if (node is web.Text) return _BrowserText(node);
    if (node is web.Comment) return _BrowserComment(node);
    if (node is web.DocumentFragment) return _BrowserDocumentFragment(node);
    return _BrowserNode(node);
  }
}

// ============================================================================
// Browser Element Wrapper
// ============================================================================

class _BrowserElement implements DomElement {
  final web.Element _element;
  
  _BrowserElement(this._element);
  
  @override String get tagName => _element.tagName;
  @override String get nodeName => _element.nodeName;
  @override int get nodeType => 1; // ELEMENT_NODE
  @override DomDocument? get ownerDocument => 
      _BrowserDocument(_element.ownerDocument as web.Document);
  @override DomNode? get parentNode => _wrapNode(_element.parentNode);
  @override DomNode? get nextSibling => _wrapNode(_element.nextSibling);
  @override DomNode? get previousSibling => _wrapNode(_element.previousSibling);
  @override DomNode? get firstChild => _wrapNode(_element.firstChild);
  @override DomNode? get lastChild => _wrapNode(_element.lastChild);
  @override String get textContent => _element.textContent ?? '';
  @override set textContent(String value) { _element.textContent = value; }
  @override String get id => _element.id;
  @override set id(String value) { _element.id = value; }
  @override String? getAttribute(String name) => _element.getAttribute(name);
  @override void setAttribute(String name, String value) => 
      _element.setAttribute(name, value);
  @override void removeAttribute(String name) => _element.removeAttribute(name);
  @override void replaceWith(DomNode newChild) => 
      _element.replaceWith((newChild as dynamic)._node);
  @override void remove() => _element.remove();
  
  @override
  DomDOMTokenList get classList {
    final list = _element.classList;
    return _BrowserDOMTokenList(list);
  }
  
  @override void addEventListener(String type, dynamic listener) => 
      _element.addEventListener(type, listener);
  @override void removeEventListener(String type, dynamic listener) => 
      _element.removeEventListener(type, listener);
  @override void removeAttributeNS(String? namespace, String attribute) => 
      _element.removeAttributeNS(namespace, attribute);
  @override void setAttributeNS(String? namespace, String attribute, String value) => 
      _element.setAttributeNS(namespace, attribute, value);
  
  // DomNode methods from DomElement
  @override
  DomNode? appendChild(DomNode node) {
    final result = _element.appendChild((node as dynamic)._node);
    return result != null ? _wrapNode(result) : null;
  }
  
  @override void removeChild(DomNode node) => 
      _element.removeChild((node as dynamic)._node);
  
  @override
  DomNode? insertBefore(DomNode node, DomNode? ref) {
    final result = _element.insertBefore(
      (node as dynamic)._node, 
      ref != null ? (ref as dynamic)._node : null,
    );
    return result != null ? _wrapNode(result) : null;
  }
  
  @override
  DomNode? replaceChild(DomNode node, DomNode? ref) {
    final result = _element.replaceChild(
      (node as dynamic)._node, 
      ref != null ? (ref as dynamic)._node : null,
    );
    return result != null ? _wrapNode(result) : null;
  }
  
  @override bool contains(DomNode node) => 
      _element.contains((node as dynamic)._node);
  
  DomNode? _wrapNode(web.Node? node) {
    if (node == null) return null;
    if (node is web.Element) {
      if (node is web.HTMLElement) {
        return _BrowserHTMLElement(node);
      }
      return _BrowserElement(node);
    }
    if (node is web.Text) return _BrowserText(node);
    if (node is web.Comment) return _BrowserComment(node);
    if (node is web.DocumentFragment) return _BrowserDocumentFragment(node);
    return _BrowserNode(node);
  }
}

// ============================================================================
// Browser HTMLElement Wrapper
// ============================================================================

class _BrowserHTMLElement implements DomHTMLElement {
  final web.HTMLElement _element;
  
  _BrowserHTMLElement(this._element);
  
  @override String get nodeName => _element.nodeName;
  @override String get tagName => _element.tagName;
  @override int get nodeType => 1;
  @override DomDocument? get ownerDocument => 
      _BrowserDocument(_element.ownerDocument as web.Document);
  @override DomNode? get parentNode => _wrapNode(_element.parentNode);
  @override DomNode? get nextSibling => _wrapNode(_element.nextSibling);
  @override DomNode? get previousSibling => _wrapNode(_element.previousSibling);
  @override DomNode? get firstChild => _wrapNode(_element.firstChild);
  @override DomNode? get lastChild => _wrapNode(_element.lastChild);
  @override String get textContent => _element.textContent ?? '';
  @override set textContent(String value) { _element.textContent = value; }
  @override String get id => _element.id;
  @override set id(String value) { _element.id = value; }
  @override String? getAttribute(String name) => _element.getAttribute(name);
  @override void setAttribute(String name, String value) => 
      _element.setAttribute(name, value);
  @override void removeAttribute(String name) => _element.removeAttribute(name);
  @override void replaceWith(DomNode newChild) => 
      _element.replaceWith((newChild as dynamic)._node);
  @override void remove() => _element.remove();
  
  @override String get className => _element.className;
  @override set className(String value) { _element.className = value; }
  @override String get innerHTML => _element.innerHTML.toString();
  @override set innerHTML(String value) { _element.innerHTML = value as dynamic; }
  
  @override
  DomDOMTokenList get classList {
    final list = _element.classList;
    return _BrowserDOMTokenList(list);
  }
  
  @override DomCSSStyleDeclaration get style => 
      _BrowserCSSStyleDeclaration(_element.style);
  
  @override int get tabIndex => _element.tabIndex;
  @override set tabIndex(int value) { _element.tabIndex = value; }
  
  @override void addEventListener(String type, dynamic listener) => 
      _element.addEventListener(type, listener);
  @override void removeEventListener(String type, dynamic listener) => 
      _element.removeEventListener(type, listener);
  @override void removeAttributeNS(String? namespace, String attribute) => 
      _element.removeAttributeNS(namespace, attribute);
  @override void setAttributeNS(String? namespace, String attribute, String value) => 
      _element.setAttributeNS(namespace, attribute, value);
  
  // DomNode methods from DomHTMLElement
  @override
  DomNode? appendChild(DomNode node) {
    final result = _element.appendChild((node as dynamic)._node);
    return result != null ? _wrapNode(result) : null;
  }
  
  @override void removeChild(DomNode node) => 
      _element.removeChild((node as dynamic)._node);
  
  @override
  DomNode? insertBefore(DomNode node, DomNode? ref) {
    final result = _element.insertBefore(
      (node as dynamic)._node, 
      ref != null ? (ref as dynamic)._node : null,
    );
    return result != null ? _wrapNode(result) : null;
  }
  
  @override
  DomNode? replaceChild(DomNode node, DomNode? ref) {
    final result = _element.replaceChild(
      (node as dynamic)._node, 
      ref != null ? (ref as dynamic)._node : null,
    );
    return result != null ? _wrapNode(result) : null;
  }
  
  @override bool contains(DomNode node) => 
      _element.contains((node as dynamic)._node);
  
  DomNode? _wrapNode(web.Node? node) {
    if (node == null) return null;
    if (node is web.Element) {
      if (node is web.HTMLElement) {
        return _BrowserHTMLElement(node);
      }
      return _BrowserElement(node);
    }
    if (node is web.Text) return _BrowserText(node);
    if (node is web.Comment) return _BrowserComment(node);
    if (node is web.DocumentFragment) return _BrowserDocumentFragment(node);
    return _BrowserNode(node);
  }
}

// ============================================================================
// Browser Text Wrapper
// ============================================================================

class _BrowserText implements DomText {
  final web.Text _text;
  
  _BrowserText(this._text);
  
  @override String get nodeName => '#text';
  @override int get nodeType => 3;
  @override String get textContent => _text.textContent ?? '';
  @override set textContent(String value) { _text.textContent = value; }
  @override String get data => _text.data;
  @override set data(String value) { _text.data = value; }
  @override DomDocument? get ownerDocument => 
      _BrowserDocument(_text.ownerDocument as web.Document);
  @override DomNode? get parentNode => _wrapNode(_text.parentNode);
  @override DomNode? get nextSibling => _wrapNode(_text.nextSibling);
  @override DomNode? get previousSibling => _wrapNode(_text.previousSibling);
  @override DomNode? get firstChild => null;
  @override DomNode? get lastChild => null;
  
  @override
  DomNode? appendChild(DomNode node) {
    final result = _text.appendChild((node as dynamic)._node);
    return result != null ? _wrapNode(result) : null;
  }
  
  @override void removeChild(DomNode node) => 
      _text.removeChild((node as dynamic)._node);
  
  @override
  DomNode? insertBefore(DomNode node, DomNode? ref) {
    final result = _text.insertBefore(
      (node as dynamic)._node, 
      ref != null ? (ref as dynamic)._node : null,
    );
    return result != null ? _wrapNode(result) : null;
  }
  
  @override
  DomNode? replaceChild(DomNode node, DomNode? ref) {
    final result = _text.replaceChild(
      (node as dynamic)._node, 
      ref != null ? (ref as dynamic)._node : null,
    );
    return result != null ? _wrapNode(result) : null;
  }
  
  @override bool contains(DomNode node) => false;
  
  DomNode? _wrapNode(web.Node? node) {
    if (node == null) return null;
    if (node is web.Element) {
      if (node is web.HTMLElement) {
        return _BrowserHTMLElement(node);
      }
      return _BrowserElement(node);
    }
    if (node is web.Text) return _BrowserText(node);
    if (node is web.Comment) return _BrowserComment(node);
    if (node is web.DocumentFragment) return _BrowserDocumentFragment(node);
    return _BrowserNode(node);
  }
}

// ============================================================================
// Browser Comment Wrapper
// ============================================================================

class _BrowserComment implements DomComment {
  final web.Comment _comment;
  
  _BrowserComment(this._comment);
  
  @override String get nodeName => '#comment';
  @override int get nodeType => 8;
  @override String get textContent => _comment.data;
  @override set textContent(String value) { _comment.data = value; }
  @override DomDocument? get ownerDocument => 
      _BrowserDocument(_comment.ownerDocument as web.Document);
  @override DomNode? get parentNode => _wrapNode(_comment.parentNode);
  @override DomNode? get nextSibling => _wrapNode(_comment.nextSibling);
  @override DomNode? get previousSibling => _wrapNode(_comment.previousSibling);
  @override DomNode? get firstChild => null;
  @override DomNode? get lastChild => null;
  
  @override
  DomNode? appendChild(DomNode node) {
    final result = _comment.appendChild((node as dynamic)._node);
    return result != null ? _wrapNode(result) : null;
  }
  
  @override void removeChild(DomNode node) => 
      _comment.removeChild((node as dynamic)._node);
  
  @override
  DomNode? insertBefore(DomNode node, DomNode? ref) {
    final result = _comment.insertBefore(
      (node as dynamic)._node, 
      ref != null ? (ref as dynamic)._node : null,
    );
    return result != null ? _wrapNode(result) : null;
  }
  
  @override
  DomNode? replaceChild(DomNode node, DomNode? ref) {
    final result = _comment.replaceChild(
      (node as dynamic)._node, 
      ref != null ? (ref as dynamic)._node : null,
    );
    return result != null ? _wrapNode(result) : null;
  }
  
  @override bool contains(DomNode node) => false;
  
  DomNode? _wrapNode(web.Node? node) {
    if (node == null) return null;
    if (node is web.Element) {
      if (node is web.HTMLElement) {
        return _BrowserHTMLElement(node);
      }
      return _BrowserElement(node);
    }
    if (node is web.Text) return _BrowserText(node);
    if (node is web.Comment) return _BrowserComment(node);
    if (node is web.DocumentFragment) return _BrowserDocumentFragment(node);
    return _BrowserNode(node);
  }
}

// ============================================================================
// Browser DocumentFragment Wrapper
// ============================================================================

class _BrowserDocumentFragment implements DomDocumentFragment {
  final web.DocumentFragment _fragment;
  
  _BrowserDocumentFragment(this._fragment);
  
  @override String get nodeName => '#document-fragment';
  @override int get nodeType => 11;
  @override String get textContent => _fragment.textContent ?? '';
  @override set textContent(String value) { _fragment.textContent = value; }
  @override DomDocument? get ownerDocument => 
      _BrowserDocument(_fragment.ownerDocument as web.Document);
  @override DomNode? get parentNode => _wrapNode(_fragment.parentNode);
  @override DomNode? get nextSibling => _wrapNode(_fragment.nextSibling);
  @override DomNode? get previousSibling => _wrapNode(_fragment.previousSibling);
  @override DomNode? get firstChild => _wrapNode(_fragment.firstChild);
  @override DomNode? get lastChild => _wrapNode(_fragment.lastChild);
  
  @override
  DomNode? appendChild(DomNode node) {
    final result = _fragment.appendChild((node as dynamic)._node);
    return result != null ? _wrapNode(result) : null;
  }
  
  @override void removeChild(DomNode node) => 
      _fragment.removeChild((node as dynamic)._node);
  
  @override
  DomNode? insertBefore(DomNode node, DomNode? ref) {
    final result = _fragment.insertBefore(
      (node as dynamic)._node, 
      ref != null ? (ref as dynamic)._node : null,
    );
    return result != null ? _wrapNode(result) : null;
  }
  
  @override
  DomNode? replaceChild(DomNode node, DomNode? ref) {
    final result = _fragment.replaceChild(
      (node as dynamic)._node, 
      ref != null ? (ref as dynamic)._node : null,
    );
    return result != null ? _wrapNode(result) : null;
  }
  
  @override bool contains(DomNode node) => 
      _fragment.contains((node as dynamic)._node);
  
  DomNode? _wrapNode(web.Node? node) {
    if (node == null) return null;
    if (node is web.Element) {
      if (node is web.HTMLElement) {
        return _BrowserHTMLElement(node);
      }
      return _BrowserElement(node);
    }
    if (node is web.Text) return _BrowserText(node);
    if (node is web.Comment) return _BrowserComment(node);
    if (node is web.DocumentFragment) return _BrowserDocumentFragment(node);
    return _BrowserNode(node);
  }
}

// ============================================================================
// Browser TreeWalker Wrapper
// ============================================================================

class _BrowserTreeWalker implements DomTreeWalker {
  final web.TreeWalker _walker;
  
  _BrowserTreeWalker(this._walker);
  
  @override DomNode? get currentNode => 
      _wrapNode(_walker.currentNode);
  
  @override set currentNode(DomNode? value) {
    if (value != null) {
      _walker.currentNode = (value as dynamic)._node;
    }
  }
  
  @override DomNode? firstChild() {
    final node = _walker.firstChild();
    return node != null ? _wrapNode(node) : null;
  }
  
  @override DomNode? lastChild() {
    final node = _walker.lastChild();
    return node != null ? _wrapNode(node) : null;
  }
  
  @override DomNode? nextSibling() {
    final node = _walker.nextSibling();
    return node != null ? _wrapNode(node) : null;
  }
  
  @override DomNode? previousSibling() {
    final node = _walker.previousSibling();
    return node != null ? _wrapNode(node) : null;
  }
  
  @override DomNode? parentNode() {
    final node = _walker.parentNode();
    return node != null ? _wrapNode(node) : null;
  }
  
  DomNode? _wrapNode(web.Node? node) {
    if (node == null) return null;
    if (node is web.Element) {
      if (node is web.HTMLElement) {
        return _BrowserHTMLElement(node);
      }
      return _BrowserElement(node);
    }
    if (node is web.Text) return _BrowserText(node);
    if (node is web.Comment) return _BrowserComment(node);
    if (node is web.DocumentFragment) return _BrowserDocumentFragment(node);
    return _BrowserNode(node);
  }
}

// ============================================================================
// Browser DOMTokenList Wrapper
// ============================================================================

class _BrowserDOMTokenList implements DomDOMTokenList {
  final web.DOMTokenList _list;
  
  _BrowserDOMTokenList(this._list);
  
  @override int get length => _list.length;
  @override String? item(int index) => _list.item(index);
  @override void add(String token, [String? second, List<String>? rest]) {
    final tokens = [token];
    if (second != null) tokens.add(second);
    if (rest != null) tokens.addAll(rest);
    _list.add(tokens.join(' '));
  }
  @override void remove(String token, [String? second, List<String>? rest]) {
    final tokens = [token];
    if (second != null) tokens.add(second);
    if (rest != null) tokens.addAll(rest);
    _list.remove(tokens.join(' '));
  }
  @override bool contains(String token) => _list.contains(token);
  @override void toggle(String token, [bool? force]) {
    if (force != null) {
      _list.toggle(token, force);
    } else {
      _list.toggle(token);
    }
  }
  @override String? get value => _list.value;
  @override set value(String? v) { _list.value = v ?? ''; }
}

// ============================================================================
// Browser CSSStyleDeclaration Wrapper
// ============================================================================

class _BrowserCSSStyleDeclaration implements DomCSSStyleDeclaration {
  final web.CSSStyleDeclaration _style;
  
  _BrowserCSSStyleDeclaration(this._style);
  
  @override String get cssText => _style.cssText;
  @override set cssText(String value) { _style.cssText = value; }
  @override int get length => _style.length;
  @override String? item(int index) => _style.item(index);
  @override String getPropertyValue(String name) => 
      _style.getPropertyValue(name);
  @override void setProperty(String name, String value, [String? priority]) {
    if (priority != null) {
      _style.setProperty(name, value, priority);
    } else {
      _style.setProperty(name, value);
    }
  }
  @override void removeProperty(String name) => _style.removeProperty(name);
}

// ============================================================================
// Global Document Accessor (returns wrapper that implements DomDocument)
// ============================================================================

/// Returns the global document object from the browser.
/// The returned value implements the DomDocument interface by wrapping web.Document.
DomDocument get document => _BrowserDocument(web.document);

/// Returns the global window object from the browser.
DomWindow? get windowOrNull => null; // Not implemented yet
