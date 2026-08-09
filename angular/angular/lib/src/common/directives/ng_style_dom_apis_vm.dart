/// VM platform stub DOM APIs for NgStyle directive.
///
/// On native/AOT builds (server-side rendering), this is a no-op since
/// style management is handled by the server renderer.
library;

/// Platform-specific element type for NgStyle on VM (stub).
abstract class DomElement {
  DomCSSStyleDeclaration? get style;
}

/// Platform-specific CSS style declaration stub.
abstract class DomCSSStyleDeclaration {
  void setProperty(String name, String value);
}

/// Sets a style property on an element - no-op on VM.
void setStyleProperty(DomElement? element, String name, Object? value) {
  // No-op on VM - styles are handled by the server renderer
}
