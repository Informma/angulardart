/// Browser platform HTML sanitizer using local DOM types.
library;

import '../runtime/js_interop_web_browser.dart';
import '../runtime/web_types.dart';

const _dangerousTags = <String>{
  'script',
  'style',
  'iframe',
  'object',
  'embed',
  'link',
  'meta',
  'base',
};

const _dangerousAttrPrefixes = <String>{'on'};

/// Sanitizes the given unsafe, untrusted HTML fragment, and returns HTML text
/// that is safe to add to the DOM in a browser environment.
String? sanitizeHtmlInternal(String value) {
  final template = document.createElement('template') as DomHTMLTemplateElement;
  template.innerHTML = value.js;
  _sanitizeNode(template.content);
  return template.innerHTML.toString();
}

void _sanitizeNode(DomNode node) {
  final childNodes = <DomNode>[];
  DomNode? child = node.firstChild;
  while (child != null) {
    childNodes.add(child);
    child = child.nextSibling;
  }
  for (final child in childNodes) {
    if (child is DomHTMLElement) {
      final tag = child.tagName.toLowerCase();
      if (_dangerousTags.contains(tag)) {
        child.parentNode?.removeChild(child);
      } else {
        _removeDangerousAttrs(child);
        _sanitizeNode(child);
      }
    }
  }
}

void _removeDangerousAttrs(DomHTMLElement element) {
  // Access attributes dynamically since DomHTMLElement doesn't have an attributes getter
  final attrs = (element as dynamic).attributes;
  if (attrs == null) return;
  final toRemove = <String>[];
  for (var i = 0; i < attrs.length; i++) {
    final attr = attrs.item(i);
    if (attr != null) {
      final name = attr.name.toLowerCase();
      for (final prefix in _dangerousAttrPrefixes) {
        if (name.startsWith(prefix)) {
          toRemove.add(attr.name);
          break;
        }
      }
    }
  }
  for (final name in toRemove) {
    element.removeAttribute(name);
  }
}
