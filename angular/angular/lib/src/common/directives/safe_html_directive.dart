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

import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/runtime/dom_apis.dart';
import 'package:angulardart/src/runtime/render_node.dart';

/// Directive that renders trusted HTML content without sanitization.
///
/// Use this directive when you need to render HTML that you fully trust
/// (e.g., from a markdown renderer or a CMS) and want to bypass the
/// built-in sanitization.
@Directive(selector: '[safeHtml]')
class SafeHtmlDirective implements OnInit {
  final ElementRef? _elementRef;

  /// The trusted HTML content to render.
  @Input()
  String? safeHtml;

  /// Creates a [SafeHtmlDirective] instance.
  SafeHtmlDirective(@Optional() this._elementRef);

  @override
  void ngOnInit() {
    final value = safeHtml;
    final el = _elementRef?.nativeElement;
    if (el == null) return;
    if (el is RenderNode) {
      // Server-side rendering: trusted HTML is written directly.
      el.innerHtml = value ?? '';
      return;
    }
    if (value == null) {
      el.innerHtml = '';
    } else {
      // Use NodeTreeSanitizer.trusted to bypass sanitization.
      final fragment = createTrustedHtml(value);
      el.innerHtml = '';
      el.append(fragment);
    }
  }
}
