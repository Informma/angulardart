library angular.src.testability.js_api;

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

/// Creates a JS-callable Testability object from Dart callbacks.
///
/// The returned [JSObject] exposes two methods callable from JavaScript:
/// - `isStable()` — returns whether the application is stable
/// - `whenStable(callback)` — registers a callback invoked when stable
JSObject createJsTestability({
  required JSFunction isStable,
  required JSFunction whenStable,
}) {
  final obj = JSObject();
  obj.setProperty(
    'isStable'.toJS,
    (() {
      final result = isStable.callAsFunction();
      if (result is JSNumber) {
        return result.toDartInt == 1;
      }
      return (result as JSBoolean).toDart;
    }).toJS,
  );
  obj.setProperty(
    'whenStable'.toJS,
    ((JSFunction callback) {
      final stable = isStable.callAsFunction();
      bool stableBool;
      if (stable is JSNumber) {
        stableBool = stable.toDartInt == 1;
      } else {
        stableBool = (stable as JSBoolean).toDart;
      }
      callback.callAsFunction(stableBool.toJS);
    }).toJS,
  );
  return obj;
}
