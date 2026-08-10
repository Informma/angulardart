/// JS API helpers for testability module.
library;

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

/// Creates a JS-callable Testability object from Dart callbacks.
JSObject createJsTestability({
  required JSBoolean Function() isStable,
  required void Function(JSFunction) whenStable,
}) {
  final obj = JSObject();
  obj.setProperty(
    'isStable'.toJS,
    (() => isStable()).toJS,
  );
  obj.setProperty(
    'whenStable'.toJS,
    ((JSFunction callback) {
      whenStable(callback);
    }).toJS,
  );
  return obj;
}
