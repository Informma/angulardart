/// Native/AOT platform stub implementation of DOM APIs for angulardart_server.
library;

/// Internal stub element implementation.
class _DomElementStub implements DomElement {
  final String tagName;
  String? _textContent;
  String _id = '';
  
  _DomElementStub(this.tagName);
  
  @override String? get textContent => _textContent;
  @override set textContent(String? value) => _textContent = value;
  @override String get id => _id;
  @override set id(String value) => _id = value;
  @override String? getAttribute(String name) => null;
  @override void setAttribute(String name, String value) {}
  @override void append(DomElement child) {}
}

/// Platform-specific document stub.
class DomDocument {
  static final DomDocument _instance = DomDocument._();
  DomDocument._();
  static DomDocument get instance => _instance;

  DomElement? get documentElement => null;
  DomElement? get head => null;
  DomElement? get body => null;
  DomElement? querySelector(String selector) => null;
  DomElement? getElementById(String id) => null;
  DomElement createElement(String tagName) => _DomElementStub(tagName);
}

/// Platform-specific element stub.
abstract class DomElement {
  String get tagName;
  String? get textContent;
  set textContent(String? value);
  String get id;
  set id(String value);
  String? getAttribute(String name);
  void setAttribute(String name, String value);
  void append(DomElement child);
}

/// Platform-specific HTML style element stub.
class DomHTMLStyleElement implements DomElement {
  final String tagName = 'style';
  String? _textContent;
  String _id = '';
  
  DomHTMLStyleElement();
  
  @override String? getAttribute(String name) => null;
  @override void setAttribute(String name, String value) {}
  @override void append(DomElement child) {}

  @override String get textContent => _textContent ?? '';
  @override set textContent(String? value) => _textContent = value;
  @override String get id => _id;
  @override set id(String value) => _id = value;
}

/// Platform-specific event stub.
class DomEvent {
  String get type => '';
}

/// Returns the global document object.
DomDocument get document => DomDocument.instance;
