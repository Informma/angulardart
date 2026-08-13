/// Native/AOT platform stub implementation of DOM APIs for angulardart_seo.
library;

class DomDocument {
  static final DomDocument _instance = DomDocument._();
  DomDocument._();
  static DomDocument get instance => _instance;
  
  DomElement? get head => null;
  DomElement? querySelector(String selector) => null;
}

class DomElement {
  String? getAttribute(String name) => null;
  void setAttribute(String name, String value) {}
  void append(DomElement child) {}
}

DomDocument get document => DomDocument.instance;

/// Additional types needed for SEO services (stubs).
class Document {
  static final Document _instance = Document._();
  Document._();
  static Document get instance => _instance;
  HTMLHeadElement? get head => null;
  DomElement createElement(String tag) => _DomElementStub(tag);
}

class HTMLHeadElement implements DomElement {
  String get tagName => 'head';
  @override String? getAttribute(String name) => null;
  @override void setAttribute(String name, String value) {}
  @override void append(DomElement child) {}
}

class HTMLMetaElement implements DomElement {
  String get tagName => 'meta';
  @override String? getAttribute(String name) => null;
  @override void setAttribute(String name, String value) {}
  @override void append(DomElement child) {}
}

class HTMLLinkElement implements DomElement {
  String get tagName => 'link';
  @override String? getAttribute(String name) => null;
  @override void setAttribute(String name, String value) {}
  @override void append(DomElement child) {}
}

class HTMLScriptElement implements DomElement {
  String get tagName => 'script';
  @override String? getAttribute(String name) => null;
  @override void setAttribute(String name, String value) {}
  @override void append(DomElement child) {}
}

/// Returns the global window object (null on native).
class Window {
  Document get document => Document.instance;
}
Window? get windowOrNull => null;
Window get window => Window();

class _DomElementStub implements DomElement {
  final String tagName;
  _DomElementStub(this.tagName);
  @override String? getAttribute(String name) => null;
  @override void setAttribute(String name, String value) {}
  @override void append(DomElement child) {}
}
