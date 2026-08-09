/// VM platform stub DOM APIs for SafeHtmlDirective.
///
/// On native/AOT builds (server-side rendering), this is a no-op since
/// HTML rendering is handled by the server renderer.
library;

/// Platform-specific element type for SafeHtmlDirective on VM (stub).
abstract class DomElement {
  String? get innerHTML;
  set innerHTML(String? value);
}

/// Sets the innerHTML of an element - no-op on VM.
void setElementInnerHtml(DomElement? element, String value) {
  // No-op on VM - HTML rendering is handled by the server renderer
}

/// Renders trusted HTML content into an element - no-op on VM.
void renderTrustedHtml(DomElement? element, String value) {
  // No-op on VM - HTML rendering is handled by the server renderer
}
