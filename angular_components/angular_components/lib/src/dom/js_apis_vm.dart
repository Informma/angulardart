/// Native/AOT stub implementation of JavaScript interop for angular_components.
///
/// There is no JS context on the server; these stubs return `false`/`null`.
library;

/// Whether the global JS context has a property named [name].
bool jsContextHasProperty(String name) => false;

/// Whether [object] has a property named [name].
bool jsHasProperty(Object object, String name) => false;

/// Calls a method named [method] on [object] with [args].
dynamic jsCallMethod(Object object, String method, List<Object?> args) => null;

/// Wraps [fn] so it can be called from JavaScript (no-op passthrough on
/// native/AOT builds).
dynamic allowInterop(dynamic fn) => fn;

/// Reads a global JavaScript variable named [name] (native/AOT stub).
dynamic jsGlobalGet(String name) => _globals[name];

/// Writes a global JavaScript variable named [name] (native/AOT stub).
void jsGlobalSet(String name, dynamic value) {
  _globals[name] = value;
}

final Map<String, dynamic> _globals = <String, dynamic>{};
