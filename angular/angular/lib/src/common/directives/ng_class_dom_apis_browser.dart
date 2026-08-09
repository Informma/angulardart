/// Browser platform DOM APIs for NgClass directive.
library;

import '../../runtime/web_types.dart' as dom;

/// Platform-specific element type for NgClass on browser.
abstract class DomElement implements dom.DomNode {
  dom.DomDOMTokenList? get classList;
}

/// Updates the class list of an element.
void updateClassList(DomElement element, String className, bool enabled) {
  final classList = element.classList;
  if (classList == null) return;
  if (className.contains(' ')) {
    var classes = className.split(RegExp(r'\s+'));
    for (var i = 0, len = classes.length; i < len; i++) {
      if (enabled) {
        classList.add(classes[i]);
      } else {
        classList.remove(classes[i]);
      }
    }
  } else {
    if (enabled) {
      classList.add(className);
    } else {
      classList.remove(className);
    }
  }
}
