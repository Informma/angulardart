/// Safe HTML types for bypassing sanitization.
///
/// These types allow you to mark HTML content as trusted, bypassing the
/// built-in sanitization when using `[innerHtml]` bindings.
///
/// **Warning:** Only use these for content you fully trust. Bypassing
/// sanitization for untrusted content can expose your users to XSS attacks.
///
/// Example usage:
///
/// ```dart
/// import 'package:angulardart/angulardart.dart';
///
/// @Component(
///   selector: 'my-component',
///   template: '<div [innerHtml]="trustedHtml"></div>',
/// )
/// class MyComponent {
///   late final SafeHtml trustedHtml;
///
///   MyComponent() {
///     trustedHtml = SafeHtml.trusted(
///       '<p>This HTML is trusted and will not be sanitized.</p>'
///     );
///   }
/// }
/// ```
library safe_html;

/// Represents HTML content that has been marked as trusted and should bypass
/// sanitization when used with `[innerHtml]` bindings.
///
/// Use [SafeHtml.trusted] to create an instance from a trusted HTML string.
class SafeHtml {
  final String _html;

  const SafeHtml._(this._html);

  /// Creates a [SafeHtml] instance from [html] that will bypass sanitization.
  ///
  /// **Warning:** Only use this for content you fully trust. Passing untrusted
  /// content can expose your users to XSS attacks.
  factory SafeHtml.trusted(String html) = SafeHtml._;

  /// Returns the HTML string.
  @override
  String toString() => _html;
}

/// Represents a URL that has been marked as trusted and should bypass
/// URL sanitization.
///
/// Use [SafeUrl.trusted] to create an instance from a trusted URL string.
class SafeUrl {
  final String _url;

  const SafeUrl._(this._url);

  /// Creates a [SafeUrl] instance from [url] that will bypass sanitization.
  ///
  /// **Warning:** Only use this for URLs you fully trust.
  factory SafeUrl.trusted(String url) = SafeUrl._;

  /// Returns the URL string.
  @override
  String toString() => _url;
}

/// Represents a style value that has been marked as trusted and should bypass
/// style sanitization.
///
/// Use [SafeStyle.trusted] to create an instance from a trusted style string.
class SafeStyle {
  final String _style;

  const SafeStyle._(this._style);

  /// Creates a [SafeStyle] instance from [style] that will bypass sanitization.
  ///
  /// **Warning:** Only use this for style values you fully trust.
  factory SafeStyle.trusted(String style) = SafeStyle._;

  /// Returns the style string.
  @override
  String toString() => _style;
}

/// Represents a resource URL that has been marked as trusted and should bypass
/// resource URL sanitization (e.g., for `<iframe src>`).
///
/// Use [SafeResourceUrl.trusted] to create an instance from a trusted URL.
class SafeResourceUrl {
  final String _url;

  const SafeResourceUrl._(this._url);

  /// Creates a [SafeResourceUrl] instance from [url] that will bypass sanitization.
  ///
  /// **Warning:** Only use this for resource URLs you fully trust.
  factory SafeResourceUrl.trusted(String url) = SafeResourceUrl._;

  /// Returns the URL string.
  @override
  String toString() => _url;
}
