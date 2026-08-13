/// Native/AOT platform stub implementation of the DOM APIs for AngularDart.
///
/// On server-side rendering there is no DOM; these stubs only exist to satisfy
/// the compiler. Accessing them at runtime throws or returns `null`.
library;

/// The platform-specific document type (native stub).
class DomDocument {
  const DomDocument._();

  /// Returns `null`; there is no document on native builds.
  dynamic get documentElement => null;

  /// Returns `null`; there is no document on native builds.
  dynamic get head => null;

  /// Returns `null`; there is no document on native builds.
  dynamic get body => null;

  /// Returns `null`; there is no document on native builds.
  dynamic querySelector(String selector) => null;

  /// Returns `null`; there is no document on native builds.
  dynamic getElementById(String id) => null;

  /// Never called on native builds.
  dynamic createElement(String tagName) =>
      throw UnsupportedError('DOM is not available on native platforms.');

  /// Never called on native builds.
  dynamic createElementNS(String? namespace, String tagName) =>
      throw UnsupportedError('DOM is not available on native platforms.');

  /// Never called on native builds.
  dynamic createTextNode(String text) =>
      throw UnsupportedError('DOM is not available on native platforms.');

  /// Never called on native builds.
  dynamic createComment([String data = '']) =>
      throw UnsupportedError('DOM is not available on native platforms.');
}

/// Returns a stub document for native/AOT builds.
final DomDocument document = const DomDocument._();

/// Never called on native builds.
dynamic createTextNode(String text) =>
    throw UnsupportedError('DOM is not available on native platforms.');

/// Never called on native builds.
dynamic createComment([String? data]) =>
    throw UnsupportedError('DOM is not available on native platforms.');

/// Never called on native builds.
dynamic createTrustedHtml(String trustedHtml) =>
    throw UnsupportedError('DOM is not available on native platforms.');

/// The platform-specific style element type (native stub).
class DomStyleElement {
  const DomStyleElement._();

  /// No-op on native builds.
  void remove() {}
}

/// Returns a stub style element for native/AOT builds.
DomStyleElement createStyleElement(String styles) => const DomStyleElement._();

/// No-op on native builds; styles are handled by the SSR server.
void appendStyleElement(DomStyleElement element) {}

/// Logs an error to the console on native/AOT builds.
void consoleError(Object? message) => print(message);
