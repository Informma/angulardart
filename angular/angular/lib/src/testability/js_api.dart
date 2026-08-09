/// JS API helpers for testability module.
///
/// Uses dynamic JS access instead of dart:js_interop to avoid
/// dependencies that aren't available on all platforms.
library;

/// Creates a JS-callable Testability object from Dart callbacks.
dynamic createJsTestability({
  required dynamic Function() isStable,
  required void Function(dynamic) whenStable,
}) {
  return <String, dynamic>{
    'isStable': _wrapFunction(() => isStable()),
    'whenStable': _wrapFunction((args) {
      final callback = args?.isNotEmpty == true ? args![0] : null;
      if (callback != null && callback is Function) {
        whenStable(callback);
      }
    }),
  };
}

/// Wraps a Dart function for JS interop.
dynamic _wrapFunction(dynamic fn) {
  return _JsFunctionWrapper(fn);
}

class _JsFunctionWrapper {
  final dynamic _fn;
  _JsFunctionWrapper(this._fn);
  
  dynamic callAsFunction([List<dynamic>? args = const []]) {
    if (_fn is Function && _fn is! _JsFunctionWrapper) {
      return (_fn as Function)();
    }
    return null;
  }
}
