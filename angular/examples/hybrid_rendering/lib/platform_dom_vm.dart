/// Native/AOT platform stub implementations for hello_world_ssr example.
///
/// Provides no-op DOM stubs so the code compiles on native platforms
/// where package:web (and dart:js_interop) are not available.
library;

/// Stub document object.
class _StubDocument {
  _StubElement? get documentElement => null;
}

/// Stub element for DOM operations.
class _StubElement {
  String textContent = '';
  String id = '';

  String? getAttribute(String name) => null;
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
