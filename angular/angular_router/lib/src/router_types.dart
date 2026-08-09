/// Platform-independent router DOM type stubs for AngularDart Router.
///
/// This file defines ALL DOM/JS types used across the AngularDart Router codebase
/// as abstract classes, providing a consistent interface that works on both:
/// - **Browser platforms**: Real browser DOM objects implement these interfaces
///   at runtime via Dart's structural typing (the `package:web` types satisfy
///   these abstract contracts).
/// - **VM/native platforms**: No-op stub implementations are used for server-side
///   rendering and testing.
///
/// This file has NO imports from `package:web` or `dart:js_interop`. It only
/// uses core Dart libraries. The actual platform-specific types are provided by
/// [router_dom_apis_browser.dart] (which imports `package:web`) and
/// [router_dom_apis_vm.dart] (which provides stubs).
library;

// ============================================================================
// Core DOM Types
// ============================================================================

/// Abstract event target.
class RouterEventTarget {
  void addEventListener(String type, dynamic listener) {}
  void removeEventListener(String type, dynamic listener) {}
}

/// Abstract DOM event — matches the shape of web.Event / package:web Event.
abstract class RouterEvent {
  String get type;
  RouterEventTarget? get target;
  RouterEventTarget? get currentTarget;
  bool get bubbles;
  bool get cancelable;
  bool get defaultPrevented;
  dynamic get detail;
  void preventDefault();
  void stopPropagation();
  void stopImmediatePropagation();
  bool get composed;
}

/// Abstract keyboard event — matches the shape of web.KeyboardEvent.
abstract class RouterKeyboardEvent implements RouterEvent {
  String get code;
  int get keyCode;
  String get key;
  bool get altKey;
  bool get ctrlKey;
  bool get metaKey;
  bool get shiftKey;
}

/// Abstract mouse event — matches the shape of web.MouseEvent.
abstract class RouterMouseEvent implements RouterEvent {
  int get screenX;
  int get screenY;
  int get clientX;
  int get clientY;
  int get button;
  int get buttons;
  bool get ctrlKey;
  bool get metaKey;
  bool get shiftKey;
}

/// Abstract pop state event — matches the shape of web.PopStateEvent.
abstract class RouterPopStateEvent implements RouterEvent {
  Object? get state;
}

// ============================================================================
// Window / Document Types
// ============================================================================

/// Abstract location interface — matches the shape of web.Location.
abstract class RouterLocation {
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
  void reload([bool forceGet]);
}

/// Abstract history interface — matches the shape of web.History.
abstract class RouterHistory {
  int get length;
  Object? get state;
  void back();
  void forward();
  void go(int delta);
  void pushState(Object? state, String title, [String? url]);
  void replaceState(Object? state, String title, [String? url]);
}

/// Abstract window interface — matches the shape of browser window.
abstract class RouterWindow extends RouterEventTarget {
  RouterDocument get document;
  RouterLocation get location;
  RouterHistory get history;
}

/// Abstract document interface — minimal subset needed by router.
abstract class RouterDocument {
  Object? querySelector(String selector);
}

// ============================================================================
// HTML Element Types
// ============================================================================

/// Abstract anchor element — matches the shape of web.HTMLAnchorElement.
abstract class RouterHTMLAnchorElement implements RouterHTMLElement {
  String get href;
  set href(String value);
  String get protocol;
  String get hostname;
  int get port;
  set port(int value);
  String get pathname;
  String get search;
  String get hash;
}

/// Abstract HTML element — matches the shape of web.HTMLElement.
abstract class RouterHTMLElement implements RouterEventTarget {
  String get tagName;
  String? getAttribute(String name);
  void setAttribute(String name, String value);
  void removeAttribute(String name);
  @override void addEventListener(String type, dynamic listener) {}
  @override void removeEventListener(String type, dynamic listener) {}
}

// ============================================================================
// JS Interop Helpers (stubs)
// ============================================================================

/// Abstract JS function — matches the shape of web.JSFunction.
abstract class RouterJSFunction {
  dynamic call(Iterable<dynamic>? args);
}

/// Extension to convert a Dart function to a JS-compatible listener.
extension ToJsExtension on dynamic {
  /// Returns this function as-is for VM builds (no JS interop needed).
  dynamic get toJs => this;
}

/// Extension to jsify Dart objects for History.pushState/replaceState.
extension JsifyExtension on Object? {
  /// Converts a Dart object to a JS-compatible representation.
  /// On native/VM, returns the value as-is (serializers handle it).
  dynamic jsify() => this;
}

/// Creates an anchor element stub for VM/native builds.
RouterHTMLAnchorElement createAnchorElement() => _RouterHTMLAnchorElementStub();

/// Stub implementation of RouterHTMLAnchorElement.
class _RouterHTMLAnchorElementStub implements RouterHTMLAnchorElement {
  String _href = '';
  
  @override String get href => _href;
  @override set href(String value) { _href = value; }
  
  @override String get protocol {
    final u = Uri.tryParse(_href);
    return u?.scheme ?? '';
  }
  @override String get hostname {
    final u = Uri.tryParse(_href);
    return u?.host ?? '';
  }
  @override int get port {
    final u = Uri.tryParse(_href);
    return u?.port ?? 0;
  }
  @override set port(int value) {}
  @override String get pathname {
    final u = Uri.tryParse(_href);
    return u?.path ?? '';
  }
  @override String get search {
    final u = Uri.tryParse(_href);
    return u?.query ?? '';
  }
  @override String get hash {
    final u = Uri.tryParse(_href);
    return u?.fragment ?? '';
  }
  
  @override String get tagName => 'A';
  @override String? getAttribute(String name) {
    if (name == 'href') return _href;
    return null;
  }
  @override void setAttribute(String name, String value) {}
  @override void removeAttribute(String name) {}
  @override void addEventListener(String type, dynamic listener) {}
  @override void removeEventListener(String type, dynamic listener) {}
}

/// Creates a pop state event stub for VM/native builds.
RouterPopStateEvent createPopStateEvent() => _RouterPopStateEventStub();

/// Stub implementation of RouterPopStateEvent.
class _RouterPopStateEventStub implements RouterPopStateEvent {
  @override Object? get state => null;
  @override String get type => 'popstate';
  @override RouterEventTarget? get target => null;
  @override RouterEventTarget? get currentTarget => null;
  @override bool get bubbles => false;
  @override bool get cancelable => false;
  @override bool get defaultPrevented => false;
  @override dynamic get detail => null;
  @override void preventDefault() {}
  @override void stopPropagation() {}
  @override void stopImmediatePropagation() {}
  @override bool get composed => false;
}

/// Creates a document stub for VM/native builds.
RouterDocument createDocumentStub() => _RouterDocumentStub();

/// Stub implementation of RouterDocument.
class _RouterDocumentStub implements RouterDocument {
  @override Object? querySelector(String selector) => null;
}

/// Creates a window stub for VM/native builds.
RouterWindow createWindowStub() => _RouterWindowStub();

/// Stub implementation of RouterWindow.
class _RouterWindowStub extends RouterEventTarget implements RouterWindow {
  final _doc = _RouterDocumentStub();
  final _loc = _RouterLocationStub();
  final _hist = _RouterHistoryStub();
  
  @override RouterDocument get document => _doc;
  @override RouterLocation get location => _loc;
  @override RouterHistory get history => _hist;
  
  @override void addEventListener(String type, dynamic listener) {}
  @override void removeEventListener(String type, dynamic listener) {}
}

/// Stub implementation of RouterLocation.
class _RouterLocationStub implements RouterLocation {
  @override String get href => '';
  @override set href(String value) {}
  @override String get protocol => '';
  @override set protocol(String value) {}
  @override String get host => '';
  @override set host(String value) {}
  @override String get hostname => '';
  @override set hostname(String value) {}
  @override int get port => 0;
  @override set port(int value) {}
  @override String get pathname => '';
  @override set pathname(String value) {}
  @override String get search => '';
  @override set search(String value) {}
  @override String get hash => '';
  @override set hash(String value) {}
  @override void assign(String url) {}
  @override void replace(String url) {}
  @override void reload([bool forceGet = false]) {}
}

/// Stub implementation of RouterHistory.
class _RouterHistoryStub implements RouterHistory {
  @override int get length => 0;
  @override Object? get state => null;
  @override void back() {}
  @override void forward() {}
  @override void go(int delta) {}
  @override void pushState(Object? state, String title, [String? url]) {}
  @override void replaceState(Object? state, String title, [String? url]) {}
}
