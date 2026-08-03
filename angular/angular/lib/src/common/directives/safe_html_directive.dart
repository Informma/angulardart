/// Directive for rendering trusted HTML content without sanitization.
///
/// This directive allows you to render HTML content that you fully trust
/// without going through AngularDart's built-in sanitization.
///
/// **Warning:** Only use this directive for content you fully trust.
/// Bypassing sanitization for untrusted content can expose your users to
/// XSS attacks.
///
/// Example usage:
///
/// ```dart
/// import 'package:angulardart/angulardart.dart';
///
/// @Component(
///   selector: 'my-component',
///   template: '<div [safeHtml]="trustedHtml"></div>',
///   directives: [SafeHtmlDirective],
/// )
/// class MyComponent {
///   String trustedHtml = '<p>This HTML is trusted.</p>';
/// }
/// ```
library safe_html_directive;

import 'dart:html';

import 'package:angulardart/angulardart.dart';

/// Directive that renders trusted HTML content without sanitization.
///
/// Use this directive when you need to render HTML that you fully trust
/// (e.g., from a markdown renderer or a CMS) and want to bypass the
/// built-in sanitization.
@Directive(selector: '[safeHtml]')
class SafeHtmlDirective implements OnInit {
  final HtmlElement? _element;

  /// The trusted HTML content to render.
  @Input()
  String? safeHtml;

  /// Creates a [SafeHtmlDirective] instance.
  SafeHtmlDirective(@Optional() this._element);

  @override
  void ngOnInit() {
    final value = safeHtml;
    if (value == null) {
      _element?.innerHtml = '';
    } else {
      // Use NodeTreeSanitizer.trusted to bypass sanitization
      final fragment = DocumentFragment.html(
        value,
        treeSanitizer: NodeTreeSanitizer.trusted,
      );
      _element?.innerHtml = '';
      _element?.append(fragment);
    }
  }
}
