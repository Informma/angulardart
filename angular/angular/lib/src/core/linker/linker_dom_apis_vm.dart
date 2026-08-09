/// VM platform stub DOM APIs for linker.
///
/// On native/AOT builds (server-side rendering), these are stub types
/// since DOM operations are handled by the server renderer.
///
/// All types are aliases of the corresponding Dom* types from runtime/web_types.dart
/// to ensure type compatibility with browser builds.
library;

import '../../runtime/web_types.dart' as dom;

export '../../runtime/web_types.dart';

/// Platform-specific element type (alias for DomElement).
typedef LinkerElement = dom.DomElement;

/// Platform-specific HTML element type (alias for DomHTMLElement).
typedef LinkerHTMLElement = dom.DomHTMLElement;

/// Stub implementation of [LinkerHTMLStyleElement].
class _LinkerHTMLStyleElementStub implements dom.DomHTMLElement {
  String _className = '';
  
  @override String get tagName => 'STYLE';
  @override String get nodeName => 'style';
  @override int get nodeType => 1;
  @override String get className => _className;
  @override set className(String value) => _className = value;
  @override String get textContent => '';
  @override set textContent(String value) {}
  @override String get id => '';
  @override set id(String value) {}
  @override String? getAttribute(String name) => null;
  @override void setAttribute(String name, String value) {}
  @override void removeAttribute(String name) {}
  @override void replaceWith(dom.DomNode newChild) {}
  @override void remove() {}
  @override dom.DomDocument? get ownerDocument => null;
  @override dom.DomNode? get parentNode => null;
  @override dom.DomNode? get nextSibling => null;
  @override dom.DomNode? get previousSibling => null;
  @override dom.DomNode? get firstChild => null;
  @override dom.DomNode? get lastChild => null;
  @override dom.DomNode? appendChild(dom.DomNode node) => null;
  @override void removeChild(dom.DomNode node) {}
  @override dom.DomNode? insertBefore(dom.DomNode node, dom.DomNode? ref) => null;
  @override dom.DomNode? replaceChild(dom.DomNode node, dom.DomNode? ref) => null;
  @override bool contains(dom.DomNode node) => false;
  @override String get innerHTML => '';
  @override set innerHTML(String value) {}
  @override void addEventListener(String type, dynamic listener) {}
  @override void removeEventListener(String type, dynamic listener) {}
  static final _classListStub = dom.DomDOMTokenList();
  static final _styleStub = dom.DomCSSStyleDeclaration();
  @override dom.DomDOMTokenList get classList => _classListStub;
  @override dom.DomCSSStyleDeclaration get style => _styleStub;
  @override int get tabIndex => 0;
  @override set tabIndex(int value) {}
  @override void removeAttributeNS(String? namespace, String attribute) {}
  @override void setAttributeNS(String? namespace, String attribute, String value) {}
}

/// Stub implementation of [LinkerHTMLTemplateElement].
class _LinkerHTMLTemplateElementStub implements dom.DomHTMLElement {
  late final dom.DomDocumentFragment _content;
  String _className = '';
  
  _LinkerHTMLTemplateElementStub() {
    _content = _DomDocumentFragmentStub();
  }
  
  @override String get tagName => 'TEMPLATE';
  @override String get nodeName => 'template';
  @override int get nodeType => 1;
  @override String get className => _className;
  @override set className(String value) => _className = value;
  @override String get textContent => '';
  @override set textContent(String value) {}
  @override String get id => '';
  @override set id(String value) {}
  @override String? getAttribute(String name) => null;
  @override void setAttribute(String name, String value) {}
  @override void removeAttribute(String name) {}
  @override void replaceWith(dom.DomNode newChild) {}
  @override void remove() {}
  @override dom.DomDocument? get ownerDocument => null;
  @override dom.DomNode? get parentNode => null;
  @override dom.DomNode? get nextSibling => null;
  @override dom.DomNode? get previousSibling => null;
  @override dom.DomNode? get firstChild => null;
  @override dom.DomNode? get lastChild => null;
  @override dom.DomNode? appendChild(dom.DomNode node) => null;
  @override void removeChild(dom.DomNode node) {}
  @override dom.DomNode? insertBefore(dom.DomNode node, dom.DomNode? ref) => null;
  @override dom.DomNode? replaceChild(dom.DomNode node, dom.DomNode? ref) => null;
  @override bool contains(dom.DomNode node) => false;
  @override String get innerHTML => '';
  @override set innerHTML(String value) {}
  @override void addEventListener(String type, dynamic listener) {}
  @override void removeEventListener(String type, dynamic listener) {}
  static final _classListStub = dom.DomDOMTokenList();
  static final _styleStub = dom.DomCSSStyleDeclaration();
  @override dom.DomDOMTokenList get classList => _classListStub;
  @override dom.DomCSSStyleDeclaration get style => _styleStub;
  @override int get tabIndex => 0;
  @override set tabIndex(int value) {}
  @override void removeAttributeNS(String? namespace, String attribute) {}
  @override void setAttributeNS(String? namespace, String attribute, String value) {}
  
  /// Returns the content DocumentFragment of this template.
  dom.DomDocumentFragment get content => _content;
}

/// Stub for DocumentFragment.
class _DomDocumentFragmentStub implements dom.DomDocumentFragment {
  @override final String nodeName = '#document-fragment';
  @override final int nodeType = 11;
  @override dom.DomDocument? get ownerDocument => null;
  @override dom.DomNode? get parentNode => null;
  @override dom.DomNode? get nextSibling => null;
  @override dom.DomNode? get previousSibling => null;
  @override dom.DomNode? get firstChild => null;
  @override dom.DomNode? get lastChild => null;
  @override String get textContent => '';
  @override set textContent(String value) {}
  @override dom.DomNode? appendChild(dom.DomNode node) => null;
  @override void removeChild(dom.DomNode node) {}
  @override dom.DomNode? insertBefore(dom.DomNode node, dom.DomNode? ref) => null;
  @override dom.DomNode? replaceChild(dom.DomNode node, dom.DomNode? ref) => null;
  @override bool contains(dom.DomNode node) => false;
}

/// Platform-specific style element type (stub on VM).
typedef LinkerHTMLStyleElement = _LinkerHTMLStyleElementStub;

/// Platform-specific template element type (stub on VM).
typedef LinkerHTMLTemplateElement = _LinkerHTMLTemplateElementStub;

/// Platform-specific document fragment type (alias for DomDocumentFragment on VM).
typedef LinkerDocumentFragment = dom.DomDocumentFragment;

/// Stub document that returns null for most operations.
class _NullDocument {
  static final _instance = _NullDocument._();
  _NullDocument._();
  static _NullDocument get instance => _instance;
  
  dom.DomElement? querySelector(String selector) => null;
  dom.DomHTMLElement? get documentElement => null;
  dom.DomHTMLElement? get body => null;
  dom.DomHTMLElement? get head => null;
  
  dom.DomNode createElement(String tagName) {
    if (tagName.toLowerCase() == 'template') {
      return _LinkerHTMLTemplateElementStub();
    }
    if (tagName.toLowerCase() == 'style') {
      return _LinkerHTMLStyleElementStub();
    }
    return _SimpleDomElementStub(tagName);
  }
  
  dom.DomNode createTextNode(String text) => dom.DomText(text);
}

/// Simple stub implementation of DomHTMLElement for generic elements.
class _SimpleDomElementStub implements dom.DomHTMLElement {
  final String tagName;
  String _id = '';
  String _className = '';
  String _textContent = '';
  
  _SimpleDomElementStub(this.tagName);

  @override String get id => _id;
  @override set id(String value) => _id = value;
  @override String get className => _className;
  @override set className(String value) => _className = value;
  @override String get textContent => _textContent;
  @override set textContent(String value) => _textContent = value;
  @override String get nodeName => tagName.toLowerCase();
  @override int get nodeType => 1;
  @override dom.DomDocument? get ownerDocument => null;
  @override dom.DomNode? get parentNode => null;
  @override dom.DomNode? get nextSibling => null;
  @override dom.DomNode? get previousSibling => null;
  @override dom.DomNode? get firstChild => null;
  @override dom.DomNode? get lastChild => null;
  @override String get innerHTML => '';
  @override set innerHTML(String value) {}
  @override String? getAttribute(String name) => null;
  @override void setAttribute(String name, String value) {}
  @override void removeAttribute(String name) {}
  @override void replaceWith(dom.DomNode newChild) {}
  @override void remove() {}
  @override dom.DomNode? appendChild(dom.DomNode node) => null;
  @override void removeChild(dom.DomNode node) {}
  @override dom.DomNode? insertBefore(dom.DomNode node, dom.DomNode? ref) => null;
  @override dom.DomNode? replaceChild(dom.DomNode node, dom.DomNode? ref) => null;
  @override bool contains(dom.DomNode node) => false;
  @override void addEventListener(String type, dynamic listener) {}
  @override void removeEventListener(String type, dynamic listener) {}
  static final _classListStub = dom.DomDOMTokenList();
  static final _styleStub = dom.DomCSSStyleDeclaration();
  @override dom.DomDOMTokenList get classList => _classListStub;
  @override dom.DomCSSStyleDeclaration get style => _styleStub;
  @override int get tabIndex => 0;
  @override set tabIndex(int value) {}
  @override void removeAttributeNS(String? namespace, String attribute) {}
  @override void setAttributeNS(String? namespace, String attribute, String value) {}
}

_NullDocument get linkerDocument => _NullDocument.instance;
