/// Native/AOT platform stub implementations for hello_world_ssr example.
///
/// Provides no-op DOM stubs so the code compiles on native platforms
/// where package:web (and dart:js_interop) are not available.
library;

/// Stub document object.
class _StubDocument {
  static final _StubDocument _instance = _StubDocument._();
  _StubDocument._();
  static _StubDocument get instance => _instance;

  _StubElement? get documentElement => null;
}

/// Stub element for DOM operations.
class _StubElement {
  String? _textContent;
  String _id = '';

  @override
  String? getAttribute(String name) => null;
  
  @override
  String? get textContent => _textContent;
  set textContent(String? value) => _textContent = value;
  
  @override
  String get id => _id;
  set id(String value) => _id = value;
}

/// Stub window object.
class _StubWindow {
  static final _StubWindow _instance = _StubWindow._();
  _StubWindow._();
  static _StubWindow get instance => _instance;

  _StubDocument? get document => null;
}

/// Global window stub - used on native/AOT platforms.
dynamic get window => _StubWindow.instance;
