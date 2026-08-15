/// Browser implementation of JavaScript interop for angular_components.
library;

import 'dart:js' as js;
import 'package:js/js_util.dart' as js_util;

/// Whether the global JS context has a property named [name].
bool jsContextHasProperty(String name) => js.context.hasProperty(name);

/// Whether [object] has a property named [name].
bool jsHasProperty(Object object, String name) =>
    js_util.hasProperty(object, name);

/// Calls a method named [method] on [object] with [args].
dynamic jsCallMethod(Object object, String method, List<Object?> args) =>
    js_util.callMethod(object, method, args);

/// Wraps [fn] so it can be called from JavaScript.
dynamic allowInterop(dynamic fn) => js_util.allowInterop(fn as Function);

/// Reads a global JavaScript variable named [name].
dynamic jsGlobalGet(String name) => js.context[name];

/// Writes a global JavaScript variable named [name].
void jsGlobalSet(String name, dynamic value) {
  js.context[name] = value;
}
