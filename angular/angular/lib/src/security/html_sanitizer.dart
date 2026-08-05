import 'package:web/web.dart' as web;

import '../runtime/js_interop.dart';

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
///
/// This function uses a `<template>` element to parse the HTML and then
/// removes dangerous elements and attributes.
String? sanitizeHtmlInternal(String value) {
  final template =
      web.document.createElement('template') as web.HTMLTemplateElement;
  template.innerHTML = value.js;
  _sanitizeNode(template.content);
  return template.innerHTML.toString();
}

void _sanitizeNode(web.Node node) {
  final childNodes = <web.Node>[];
  web.Node? child = node.firstChild;
  while (child != null) {
    childNodes.add(child);
    child = child.nextSibling;
  }
  for (final child in childNodes) {
    if (child is web.HTMLElement) {
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

void _removeDangerousAttrs(web.HTMLElement element) {
  final attrs = element.attributes;
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
