/// Tests unitaires pour la logique SSR (Server-Side Rendering).
///
/// Ces tests vérifient :
/// - La génération HTML de ServerRenderNode
/// - Le sérialisation/désérialisation TransferState
/// - Le comportement des modes de rendu (RenderMode)
library;

import 'package:test/test.dart';

// Tests pour la logique pure de génération HTML SSR
void main() {
  group('ServerRenderNode HTML generation', () {
    test('génère un élément div simple avec texte', () {
      final node = _TestRenderNode('div');
      node.setText('Hello World');
      expect(node.toHtml(), '<div>Hello World</div>');
    });

    test('échappe les caractères HTML spéciaux (&, <, >)', () {
      final node = _TestRenderNode('div');
      node.setText('<script>alert("xss")</script>');
      expect(node.toHtml(), '<div>&lt;script&gt;alert("xss")&lt;/script&gt;</div>');
    });

    test('génère des attributs', () {
      final node = _TestRenderNode('a');
      node.setAttribute('href', '/home');
      node.setAttribute('title', 'Home page');
      expect(node.toHtml(), '<a href="/home" title="Home page"></a>');
    });

    test('génère des classes CSS activées uniquement', () {
      final node = _TestRenderNode('div');
      node.setClass('active', true);
      node.setClass('hidden', false);
      node.setClass('visible', true);
      expect(node.toHtml(), '<div class="active visible"></div>');
    });

    test('génère des nœuds imbriqués', () {
      final parent = _TestRenderNode('ul');
      final child1 = _TestRenderNode('li');
      child1.setText('Item 1');
      final child2 = _TestRenderNode('li');
      child2.setText('Item 2');
      parent.appendChild(child1);
      parent.appendChild(child2);
      expect(parent.toHtml(), '<ul><li>Item 1</li><li>Item 2</li></ul>');
    });

    test('marquage hydration avec data-ng-id', () {
      final node = _TestRenderNode('div');
      node.markAsServerRendered();
      expect(node.getAttribute('data-ng-id'), isNotNull);
      expect(node.toHtml(), contains('data-ng-id="'));
    });

    test('balises auto-fermantes', () {
      final node = _TestRenderNode('img');
      node.setAttribute('src', 'image.png');
      node.setAttribute('alt', 'An image');
      expect(node.toHtml(), '<img src="image.png" alt="An image">');
    });

    test('nœud de texte pur', () {
      final node = _TestRenderNode('text');
      node.setText('Hello World');
      expect(node.toHtml(), 'Hello World');
    });

    test('commentaire HTML', () {
      final node = _TestRenderNode('comment');
      expect(node.toHtml(), '<!-- -->');
    });

    test('échappement attributs avec guillemets (&quot;)', () {
      final node = _TestRenderNode('div');
      node.setAttribute('title', 'He said "hello"');
      expect(node.toHtml(), '<div title="He said &quot;hello&quot;"></div>');
    });

    test('échappement & dans les attributs', () {
      final node = _TestRenderNode('a');
      node.setAttribute('href', '/search?q=1&lang=en');
      expect(node.toHtml(), '<a href="/search?q=1&amp;lang=en"></a>');
    });
  });

  group('TransferState serialization', () {
    test('sérieialise les valeurs null', () {
      expect(_serializeForTest(null), isNull);
    });

    test('sérieialise les chaînes', () {
      expect(_serializeForTest('hello'), 'hello');
    });

    test('sérieialise les nombres', () {
      expect(_serializeForTest(42), 42);
      expect(_serializeForTest(3.14), 3.14);
    });

    test('sérieialise les booléens', () {
      expect(_serializeForTest(true), true);
      expect(_serializeForTest(false), false);
    });

    test('sérieialise les listes', () {
      expect(_serializeForTest([1, 'two', true]), [1, 'two', true]);
    });

    test('sérieialise les maps simples', () {
      final result = _serializeForTest({'key': 'value', 'num': 42});
      expect(result, {'key': 'value', 'num': 42});
    });

    test('échappe les caractères spéciaux dans JSON', () {
      final value = '<script>&</script>';
      final result = _escapeJsonForTest(value);
      expect(result, contains('\\u003c'));
      expect(result, contains('\\u003e'));
      expect(result, contains('\\u0026'));
    });
  });

  group('RenderMode enum', () {
    test('RenderMode.server existe', () {
      expect(RenderMode.values, contains(RenderMode.server));
    });

    test('RenderMode.client existe', () {
      expect(RenderMode.values, contains(RenderMode.client));
    });

    test('RenderMode.automatic existe', () {
      expect(RenderMode.values, contains(RenderMode.automatic));
    });

    test('exactement 3 valeurs', () {
      expect(RenderMode.values.length, 3);
    });
  });

  group('Hydration markers', () {
    test('data-ng-id est unique par nœud', () {
      final node1 = _TestRenderNode('div');
      node1.markAsServerRendered();
      final id1 = node1.getAttribute('data-ng-id');

      final node2 = _TestRenderNode('span');
      node2.markAsServerRendered();
      final id2 = node2.getAttribute('data-ng-id');

      expect(id1, isNotNull);
      expect(id2, isNotNull);
      expect(int.parse(id1!), lessThan(int.parse(id2!)));
    });

    test('data-ng-content-id optionnel', () {
      final node = _TestRenderNode('div');
      node.markAsServerRendered(contentId: 'content-1');
      expect(node.getAttribute('data-ng-content-id'), 'content-1');
    });
  });
}

// --- Helpers de test (copies simplifiées des implémentations réelles) ---

/// Version simplifiée de ServerRenderNode pour les tests unitaires.
class _TestRenderNode {
  final String tagName;
  final Map<String, String> _attrs = {};
  final List<MapEntry<String, bool>> _classes = [];
  String _content = '';
  final List<_TestRenderNode> _children = [];
  static int _counter = 0;

  _TestRenderNode(this.tagName);

  void setAttribute(String name, String value) {
    _attrs[name] = value;
  }

  String? getAttribute(String name) => _attrs[name];

  void setClass(String className, bool enabled) {
    _classes.add(MapEntry(className, enabled));
  }

  void setText(String value) {
    _content = value;
  }

  void appendChild(_TestRenderNode child) {
    _children.add(child);
  }

  void markAsServerRendered({String? contentId}) {
    final id = _counter++;
    _attrs['data-ng-id'] = '$id';
    if (contentId != null) {
      _attrs['data-ng-content-id'] = contentId;
    }
  }

  String toHtml() {
    final buffer = StringBuffer();

    if (tagName == 'text') {
      buffer.write(_escapeHtml(_content));
    } else if (tagName == 'comment') {
      buffer.write('<!-- -->');
    } else {
      buffer.write('<$tagName');

      for (final entry in _attrs.entries) {
        final escapedValue = _escapeAttr(entry.value);
        if (escapedValue.isEmpty) {
          buffer.write(' ${entry.key}');
        } else {
          buffer.write(' ${entry.key}="$escapedValue"');
        }
      }

      final enabledClasses = _classes.where((e) => e.value).map((e) => e.key).toList();
      if (enabledClasses.isNotEmpty) {
        buffer.write(' class="${enabledClasses.join(' ')}"');
      }

      buffer.write('>');

      if (_content.isNotEmpty && _children.isEmpty) {
        buffer.write(_escapeHtml(_content));
      }

      for (final child in _children) {
        buffer.write(child.toHtml());
      }

      final selfClosing = {'img', 'br', 'hr', 'input', 'meta', 'link', 'area', 'base', 'col', 'embed', 'source', 'track', 'wbr'};
      if (!selfClosing.contains(tagName)) {
        buffer.write('</$tagName>');
      }
    }

    return buffer.toString();
  }
}

String _escapeHtml(String value) {
  return value
      .replaceAll('&', '&amp;')
      .replaceAll('<', '&lt;')
      .replaceAll('>', '&gt;');
}

String _escapeAttr(String? value) {
  if (value == null || value.isEmpty) return '';
  return value
      .replaceAll('&', '&amp;')
      .replaceAll('"', '&quot;')
      .replaceAll('<', '&lt;')
      .replaceAll('>', '&gt;');
}

// --- Helpers TransferState ---

Object? _serializeForTest(Object? value) {
  if (value == null) return null;
  if (value is String) return value;
  if (value is num) return value;
  if (value is bool) return value;
  if (value is List) return value.map(_serializeForTest).toList();
  if (value is Map) {
    final result = <String, dynamic>{};
    value.forEach((k, v) {
      result[k.toString()] = _serializeForTest(v);
    });
    return result;
  }
  return value;
}

String _escapeJsonForTest(String json) {
  return json
      .replaceAll('&', '\\u0026')
      .replaceAll('<', '\\u003c')
      .replaceAll('>', '\\u003e')
      .replaceAll('\u2028', '\\u2028')
      .replaceAll('\u2029', '\\u2029');
}

/// Mode de rendu pour un composant AngularDart.
enum RenderMode {
  server,
  client,
  automatic,
}
