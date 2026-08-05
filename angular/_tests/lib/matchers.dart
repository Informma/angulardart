import 'package:web/web.dart' as web;

import 'package:test/test.dart';
import 'package:angulardart/angulardart.dart';

/// Matches textual content of an element including children.
Matcher hasTextContent(String expected) => _HasTextContent(expected);

final throwsNoProviderError = throwsA(_isNoProviderError);
final _isNoProviderError = const TypeMatcher<NoProviderError>();

class _HasTextContent extends Matcher {
  final String expectedText;

  const _HasTextContent(this.expectedText);

  @override
  bool matches(Object? item, void _) => _elementText(item) == expectedText;

  @override
  Description describe(Description description) =>
      description.add(expectedText);

  @override
  Description describeMismatch(
    item,
    Description mismatchDescription,
    void _,
    void __,
  ) {
    mismatchDescription.add('Text content of element: '
        '\'${_elementText(item)}\'');
    return mismatchDescription;
  }
}

String? _elementText(Object? n) {
  if (n is Iterable) {
    return n.map(_elementText).join('');
  } else if (n is web.Node) {
    final node = n as web.Node;
    if (node is web.Comment) {
      return '';
    }

    if (node is web.HTMLSlotElement) {
      return _elementText((node as web.HTMLSlotElement).assignedNodes());
    }

    if (node is web.Element) {
      final element = node as web.Element;
      if (element.shadowRoot != null) {
        final nodes = <web.Node>[];
        final childNodes = element.shadowRoot!.childNodes;
        for (var i = 0; i < childNodes.length; i++) {
          nodes.add(childNodes.item(i)!);
        }
        return _elementText(nodes);
      }
    }

    final childNodes = node.childNodes;
    if (childNodes.length > 0) {
      final nodes = <web.Node>[];
      for (var i = 0; i < childNodes.length; i++) {
        nodes.add(childNodes.item(i)!);
      }
      return _elementText(nodes);
    }

    return node.textContent;
  } else {
    return '$n';
  }
}
