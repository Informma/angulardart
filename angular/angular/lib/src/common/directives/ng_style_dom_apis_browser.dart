/// Browser platform DOM APIs for NgStyle directive.
library;

import '../../runtime/web_types.dart' as dom;

/// Platform-specific element type for NgStyle on browser.
abstract class DomElement implements dom.DomNode {
  dom.DomCSSStyleDeclaration? get style;
}

/// Sets a style property on an element.
void setStyleProperty(DomElement? element, String name, Object? value) {
  final style = element?.style;
  if (style != null && value != null) {
    style.setProperty(name, value.toString());
  }
}
