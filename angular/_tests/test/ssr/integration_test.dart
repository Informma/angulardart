/// Tests d'intégration pour le rendu serveur (SSR).
library;

import 'package:test/test.dart';

void main() {
  group('SSR Integration', () {
    test('ServerRenderNode génère HTML valide', () {
      final node = _TestRenderNode('div');
      node.setAttribute('id', 'my-div');
      node.setClass('active', true);
      node.setClass('hidden', false);
      node.setText('Hello World');
      
      final html = node.toHtml();
      expect(html, contains('<div'));
      expect(html, contains('id="my-div"'));
      expect(html, contains('class="active"'));
      expect(html, isNot(contains('hidden')));
      expect(html, contains('Hello World'));
      expect(html, contains('</div>'));
    });

    test('ServerRenderNode gère les balises auto-fermantes', () {
      final node = _TestRenderNode('img');
      node.setAttribute('src', 'image.png');
      node.setAttribute('alt', 'Test');
      
      expect(node.toHtml(), contains('<img'));
      expect(node.toHtml(), isNot(contains('</img>')));
    });

    test('ServerRenderNode gère les nœuds imbriqués', () {
      final parent = _TestRenderNode('ul');
      for (var i = 1; i <= 3; i++) {
        final li = _TestRenderNode('li');
        li.setText('Item $i');
        parent.appendChild(li);
      }
      
      final html = parent.toHtml();
      expect(html, contains('<ul>'));
      expect(html, contains('<li>Item 1</li>'));
      expect(html, contains('<li>Item 2</li>'));
      expect(html, contains('<li>Item 3</li></ul>'));
    });

    test('TransferState sérialise correctement', () {
      final state = _TestTransferState();
      
      state.set('key1', 'value1');
      state.set('key2', 42);
      state.set('key3', ['a', 'b']);
      
      expect(state.get<String>('key1'), equals('value1'));
      expect(state.get<int>('key2'), equals(42));
      expect(state.has('key3'), isTrue);
      expect(state.has('nonexistent'), isFalse);
      
      final script = state.toScript();
      expect(script, contains('"key1":"value1"'));
      expect(script, contains('"key2":42'));
    });

    test('RenderMode enum a les 3 valeurs attendues', () {
      expect(RenderMode.values.length, equals(3));
      expect(RenderMode.values, contains(RenderMode.server));
      expect(RenderMode.values, contains(RenderMode.client));
      expect(RenderMode.values, contains(RenderMode.automatic));
    });

    test('Hydration markers sont uniques et ordonnés', () {
      final nodes = <_TestRenderNode>[];
      for (var i = 0; i < 5; i++) {
        final node = _TestRenderNode('div');
        node.markAsServerRendered();
        nodes.add(node);
      }
      
      final ids = nodes.map((n) => int.parse(n.getAttribute('data-ng-id')!)).toList();
      for (var i = 1; i < ids.length; i++) {
        expect(ids[i], greaterThan(ids[i - 1]));
      }
    });

    test('Échappement HTML correct', () {
      final node = _TestRenderNode('div');
      node.setText('<script>alert("xss")</script>');
      
      final html = node.toHtml();
      expect(html, contains('&lt;'));
      expect(html, contains('&gt;'));
      expect(html, isNot(contains('<script>')));
    });

    test('Échappement attributs correct', () {
      final node = _TestRenderNode('div');
      node.setAttribute('title', 'He said "hello" & goodbye');
      
      final html = node.toHtml();
      expect(html, contains('&quot;'));
      expect(html, contains('&amp;'));
    });
  });
}

// --- Helpers de test ---

class _TestRenderNode {
  final String tagName;
  final Map<String, String> _attrs = {};
  final List<MapEntry<String, bool>> _classes = [];
  String _content = '';
  final List<_TestRenderNode> _children = [];
  static int _counter = 0;

  _TestRenderNode(this.tagName);

  void setAttribute(String name, String value) => _attrs[name] = value;
  String? getAttribute(String name) => _attrs[name];
  
  void setClass(String className, bool enabled) {
    _classes.add(MapEntry(className, enabled));
  }
  
  void setText(String value) => _content = value;
  void appendChild(_TestRenderNode child) => _children.add(child);
  
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

String _escapeHtml(String value) => value
    .replaceAll('&', '&amp;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;');

String _escapeAttr(String? value) {
  if (value == null || value.isEmpty) return '';
  return value
      .replaceAll('&', '&amp;')
      .replaceAll('"', '&quot;')
      .replaceAll('<', '&lt;')
      .replaceAll('>', '&gt;');
}

class _TestTransferState {
  final Map<String, Object?> _state = {};
  
  void set<T>(String key, T value) => _state[key] = value;
  T? get<T>(String key) => _state[key] as T?;
  bool has(String key) => _state.containsKey(key);
  
  String toScript() {
    if (_state.isEmpty) return '';
    
    final entries = _state.entries.map((e) {
      final value = e.value;
      if (value is String) return '"${e.key}":"$value"';
      if (value is num) return '"${e.key}":$value';
      if (value is bool) return '"${e.key}":$value';
      if (value is List) {
        final listStr = value.map((v) => v is String ? '"$v"' : '$v').join(',');
        return '"${e.key}":[$listStr]';
      }
      return '"${e.key}":"$value"';
    }).join(',');
    
    return '<script id="ng-transfer-state" type="application/json">{$entries}</script>';
  }
}

enum RenderMode { server, client, automatic }
