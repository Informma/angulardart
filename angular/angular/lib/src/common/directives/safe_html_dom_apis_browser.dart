/// Browser platform DOM APIs for SafeHtmlDirective.
library;

import '../../runtime/browser_dom_apis_browser.dart' as browser show document;
import '../../runtime/js_interop_web_browser.dart';
import '../../runtime/web_types.dart' as dom;

/// Platform-specific element type for SafeHtmlDirective on browser.
abstract class DomElement implements dom.DomNode {
  String get innerHTML;
  set innerHTML(String value);
}

/// Sets the innerHTML of an element.
void setElementInnerHtml(DomElement? element, String value) {
  element?.innerHTML = value;
}

/// Renders trusted HTML content into an element using a template.
void renderTrustedHtml(DomElement? element, String value) {
  if (element == null) return;
  final template = browser.document.createElement('template') as dom.DomHTMLTemplateElement;
  template.innerHTML = value;
  element.innerHTML = ''.js;
  element.append(template.content);
}
