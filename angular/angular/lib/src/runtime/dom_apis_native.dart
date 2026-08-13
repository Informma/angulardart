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
