/// Native/AOT stub for the DOM property setter.
///
/// On server-side rendering there are no native DOM elements (only
/// [RenderNode]s, which are handled directly), so this is never called.
library;

/// Sets an arbitrary [property] on a native [element].
///
/// Never called on native builds; the `setProperty` helper in
/// `dom_helpers.dart` handles [RenderNode] instances directly.
void setNativeProperty(dynamic element, String property, Object? value) {
  throw UnsupportedError('Native DOM property access is not available on '
      'server-side rendering.');
}
