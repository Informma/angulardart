/// RenderNode qui construit du HTML string (ct serveur).
///
/// Utilise un [StringBuffer] pour accumuler le HTML au lieu de manipuler le DOM.
/// Ce fichier est autonome et ne dpends pas de angulardart_server pour viter
/// des dpendances circulaires.
import 'render_node.dart';

/// Contexte de rendu ct serveur, isol par request (single-threaded event loop).
class ServerRenderContext {
  int counter = 0;
  final Map<String, dynamic> ngIdMap = {};
  final List<String> collectedStyles = <String>[];
}

/// Contexte de rendu courant pour la request en cours.
ServerRenderContext? _currentContext;

class ServerRenderNode implements RenderNode {
  final String tagName;

  /// Retourne le contexte de rendu pour la request courante.
  static ServerRenderContext _getContext() {
    if (_currentContext == null) {
      throw StateError('ServerRenderNode must be used within a server rendering context. Call ServerRenderNode.reset() first.');
    }
    return _currentContext!;
  }

  /// Rinitialise les tats globaux pour une nouvelle request ct serveur.
  static void reset() {
    _currentContext = ServerRenderContext();
  }

  final Map<String, String> _attrs = {};
  final Map<String, String> _styles = {};
  final List<MapEntry<String, bool>> _classes = [];
  final StringBuffer _content = StringBuffer();
  final List<ServerRenderNode> _children = [];
  ServerRenderNode? _parent;
  int? _ngId;

  ServerRenderNode(this.tagName);

  /// Retourne l'ID unique de ce nud pour l'hydration.
  int? get ngId => _ngId;

  /// Nœud parent (miroir de `Node.parentNode`), utilisé par les helpers DOM
  /// génériques comme `insertNodesAsSibling`.
  ServerRenderNode? get parentNode => _parent;

  /// Prochain nœud frère (miroir de `Node.nextNode`), utilisé par
  /// `insertNodesAsSibling`.
  ServerRenderNode? get nextNode {
    final parent = _parent;
    if (parent == null) return null;
    final siblings = parent._children;
    final index = siblings.indexOf(this);
    if (index < 0 || index >= siblings.length - 1) return null;
    return siblings[index + 1];
  }

  /// Ajoute un enfant (miroir de `Node.append`).
  void append(dynamic node) {
    appendChild(node as ServerRenderNode);
  }

  /// Insère [child] avant [sibling] (miroir de `Node.insertBefore`).
  void insertBefore(dynamic child, dynamic sibling) {
    final node = child as ServerRenderNode;
    node._parent = this;
    if (sibling is ServerRenderNode) {
      final index = _children.indexOf(sibling);
      if (index >= 0) {
        _children.insert(index, node);
        return;
      }
    }
    _children.add(node);
  }

  /// Retire ce nœud de son parent (miroir de `Node.remove`).
  void remove() {
    _parent?._children.remove(this);
    _parent = null;
  }

  /// Ajoute un enfant.
  @override
  void appendChild(RenderNode child) {
    if (child is ServerRenderNode) {
      child._parent = this;
      _children.add(child);
    } else {
      throw UnsupportedError('Cannot append a non-ServerRenderNode in server mode');
    }
  }

  /// Propriets ct serveur sont ignores (rendu statique).
  @override
  void setProperty(String name, Object? value) {}

  @override
  void setAttribute(String name, String value) {
    _attrs[name] = value;
  }

  @override
  void setStyle(String name, String? value) {
    if (value == null) {
      _styles.remove(name);
    } else {
      _styles[name] = value;
    }
  }

  @override
  void setClass(String className, bool enabled) {
    _classes.add(MapEntry(className, enabled));
  }

  @override
  void setText(String value) {
    _content.write(value);
  }

  @override
  String get innerHtml => _content.toString();

  @override
  set innerHtml(String value) {
    _content.clear();
    _content.write(value);
  }

  @override
  void markAsServerRendered({String? contentId}) {
    if (_ngId != null) return; // dj marqu
    final ctx = _getContext();
    _ngId = ctx.counter++;
    _attrs['data-ng-id'] = '$_ngId';
    if (contentId != null) {
      _attrs['data-ng-content-id'] = contentId;
    }
  }

  @override
  bool get isServerRendered => true;

  @override
  void applyShimClass(String className) {
    _classes.add(MapEntry(className, true));
  }

  @override
  void toggleClass(String className, bool enabled) {
    final existing = _classes.indexWhere((e) => e.key == className);
    if (enabled) {
      if (existing >= 0) {
        _classes[existing] = MapEntry(className, true);
      } else {
        _classes.add(MapEntry(className, true));
      }
    } else {
      if (existing >= 0) {
        _classes[existing] = MapEntry(className, false);
      }
    }
  }

  @override
  Object get nativeNode => this;

  /// Gnre le HTML string pour ce nud et ses enfants.
  String toHtml() {
    final buffer = StringBuffer();

    if (tagName == 'text') {
      buffer.write(_escapeHtml(_content.toString()));
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

      if (_styles.isNotEmpty) {
        buffer.write(' style="${_styles.entries.map((e) => '${e.key}:${e.value}').join('; ')}"');
      }

      buffer.write('>');

      if (_content.isNotEmpty && _children.isEmpty) {
        buffer.write(_escapeHtml(_content.toString()));
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

  static String _escapeHtml(String value) {
    return value
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;');
  }

  static String _escapeAttr(String? value) {
    if (value == null || value.isEmpty) return '';
    return value
        .replaceAll('&', '&amp;')
        .replaceAll('"', '&quot;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;');
  }
}
