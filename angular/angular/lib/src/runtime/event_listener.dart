/// Browser platform event listener utilities.
library;

/// Wraps a Dart function as an EventListener for browser builds.
dynamic wrapForEventListener(dynamic fn) {
  if (fn == null) return null;
  // In package:web 0.5.x, we need to use JS interop to create an EventListener
  // from a Dart function. This uses the external keyword to bridge the gap.
  return _JsEventListenerWrapper(fn);
}

// Internal wrapper that bridges Dart functions to JS event listeners
class _JsEventListenerWrapper {
  final dynamic _fn;
  _JsEventListenerWrapper(this._fn);
  
  // This method will be called by JS with the event as argument
  void call(dynamic event) => (_fn as void Function(dynamic))(event);
}
