/// RenderNode qui utilise les types DOM locaux (côté client).
///
/// Wrappe un [DomNode] ou [DomText] et expose une interface uniforme
/// compatible avec [ServerRenderNode].
import 'web_types.dart';

import 'render_node.dart';

class BrowserRenderNode implements RenderNode {
  final DomNode _node;
  final bool _isText;

  BrowserRenderNode(this._node) : _isText = _node is DomText;

  /// Crée un nœud de type texte.
  factory BrowserRenderNode.text(String content) {
    return BrowserRenderNode(_BrowserText(content));
  }

  /// Crée un nœud de type commentaire (ancre pour ngIf/ngFor).
  factory BrowserRenderNode.comment() {
    return BrowserRenderNode(_BrowserComment());
  }

  DomElement get _element => _node as DomElement;
  DomText get _textNode => _node as DomText;

  @override
  String get tagName => _isText ? 'text' : _element.tagName.toLowerCase();

  @override
  void appendChild(RenderNode child) {
    if (child is BrowserRenderNode) {
      _node.appendChild(child._node);
    } else {
      throw UnsupportedError('Cannot append a non-BrowserRenderNode to a browser element');
    }
  }

  @override
  void setProperty(String name, Object? value) {
    if (_isText) return;
    (this._node as dynamic)[name] = value;
  }

  @override
  void setAttribute(String name, String value) {
    if (_isText) return;
    _element.setAttribute(name, value);
  }

  @override
  void setClass(String className, bool enabled) {
    if (_isText) return;
    final el = this._node as dynamic;
    if (enabled) {
      el.classes.add(className);
    } else {
      el.classes.remove(className);
    }
  }

  @override
  void setText(String value) {
    if (_isText) {
      _textNode.data = value;
    } else {
      _element.textContent = value;
    }
  }

  @override
  String get innerHtml => (this._node as dynamic).innerHtml;

  @override
  set innerHtml(String value) {
    if (!_isText) {
      (this._node as dynamic).innerHtml = value;
    }
  }

  @override
  void markAsServerRendered({String? contentId}) {
    if (_isText) return;
    _element.setAttribute('data-ng-id', _generateNodeId());
    if (contentId != null) {
      _element.setAttribute('data-ng-content-id', contentId);
    }
  }

  @override
  bool get isServerRendered => !_isText && _element.getAttribute('data-ng-id') != null;

  @override
  void applyShimClass(String className) {
    if (_isText) return;
    (this._node as dynamic).classes.add(className);
  }

  @override
  void toggleClass(String className, bool enabled) {
    if (_isText) return;
    final el = this._node as dynamic;
    if (enabled) {
      el.classes.add(className);
    } else {
      el.classes.remove(className);
    }
  }

  @override
  Object get nativeNode => _node;

  /// Génère un ID unique pour l'hydration.
  int _nodeIdCounter = 0;
  String _generateNodeId() {
    return '${_nodeIdCounter++}';
  }
}

// ============================================================================
// Browser-specific DOM implementations using dynamic access to browser APIs
// ============================================================================

class _BrowserText implements DomText {
  String _data = '';
  _BrowserText([String data = '']) : _data = data;

  @override String get nodeName => '#text';
  @override int get nodeType => 3; // TEXT_NODE
  @override String get textContent => _data;
  @override set textContent(String value) { _data = value; }
  @override String get data => _data;
  @override set data(String value) { _data = value; }
  @override DomDocument? get ownerDocument => null;
  @override DomNode? get parentNode => null;
  @override DomNode? get nextSibling => null;
  @override DomNode? get previousSibling => null;
  @override DomNode? get firstChild => null;
  @override DomNode? get lastChild => null;
  @override DomNode? appendChild(DomNode node) => null;
  @override void removeChild(DomNode node) {}
  @override DomNode? insertBefore(DomNode node, DomNode? ref) => null;
  @override DomNode? replaceChild(DomNode node, DomNode? ref) => null;
  @override bool contains(DomNode node) => false;
}

class _BrowserComment implements DomComment {
  String _data = '';
  _BrowserComment([String data = '']) : _data = data;

  @override String get nodeName => '#comment';
  @override int get nodeType => 8; // COMMENT_NODE
  @override String get textContent => _data;
  @override set textContent(String value) { _data = value; }
  @override DomDocument? get ownerDocument => null;
  @override DomNode? get parentNode => null;
  @override DomNode? get nextSibling => null;
  @override DomNode? get previousSibling => null;
  @override DomNode? get firstChild => null;
  @override DomNode? get lastChild => null;
  @override DomNode? appendChild(DomNode node) => null;
  @override void removeChild(DomNode node) {}
  @override DomNode? insertBefore(DomNode node, DomNode? ref) => null;
  @override DomNode? replaceChild(DomNode node, DomNode? ref) => null;
  @override bool contains(DomNode node) => false;
}
