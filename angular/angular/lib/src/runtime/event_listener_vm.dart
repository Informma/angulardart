/// VM platform event listener utilities.
///
/// On native/AOT builds (server-side rendering), event listeners are just
/// functions and don't need special wrapping.
library;

/// Wraps a Dart function for use as an event listener on VM builds - returns as-is.
dynamic wrapForEventListener(dynamic fn) {
  return fn;
}
