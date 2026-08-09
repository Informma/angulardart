/// VM platform stub DOM APIs for NgClass directive.
///
/// On native/AOT builds (server-side rendering), this is a no-op since
/// CSS class management is handled by the server renderer.
library;

/// Platform-specific element type for NgClass on VM (stub).
abstract class DomElement {
  DomDOMTokenList? get classList;
}

/// Platform-specific DOM token list stub.
abstract class DomDOMTokenList {
  void add(String token);
  void remove(String token);
}

/// Updates the class list of an element - no-op on VM.
void updateClassList(DomElement element, String className, bool enabled) {
  // No-op on VM - CSS classes are handled by the server renderer
}
