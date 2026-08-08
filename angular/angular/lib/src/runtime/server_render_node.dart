/// RenderNode qui construit du HTML string (ct serveur).
///
/// Utilise un [StringBuffer] pour accumuler le HTML au lieu de manipuler le DOM.
/// Ce fichier est autonome et ne dpends pas de angulardart_server pour viter
/// des dpendances circulaires.
import 'package:web/web.dart' as web;

import 'render_node.dart';

class ServerRenderNode implements RenderNode {
  final String tagName;

  /// Compteur global unique pour les IDs de nuds (hydration).
  static int _globalCounter = 0;

  /// Map des IDs de nuds vers les lments DOM ct client.
  /// Rempli par [HydrateRenderFactory] pendant l'hydration.
  static final Map<String, web.Element> ngIdMap = {};

  /// Styles encapsuls collects pendant le rendu serveur.
  /// Format: `selector { ...rules }`
  static final List<String> collectedStyles = <String>[];

  /// Rinitialise les tats globaux (appeler entre chaque request ct serveur).
  static void reset() {
    _globalCounter = 0;
    ngIdMap.clear();
    collectedStyles.clear();
  }

  final Map<String, String> _attrs = {};
  final List<MapEntry<String, bool>> _classes = [];
  final StringBuffer _content = StringBuffer();
  final List<ServerRenderNode> _children = [];
  int? _ngId;

  ServerRenderNode(this.tagName);

  /// Retourne l'ID unique de ce nud pour l'hydration.
  int? get ngId => _ngId;

  /// Ajoute un enfant.
  @override
  void appendChild(RenderNode child) {
    if (child is ServerRenderNode) {
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
    _ngId = _globalCounter++;
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
