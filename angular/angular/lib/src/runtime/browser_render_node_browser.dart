/// RenderNode qui utilise les types DOM réels (`dart:html`) côté client.
///
/// Wrappe un [html.Node] (élément, texte ou commentaire) et expose une
/// interface uniforme compatible avec [ServerRenderNode].
import 'dart:html' as html;
import 'package:js/js_util.dart' as js_util;

import 'render_node.dart';

class BrowserRenderNode implements RenderNode {
  final html.Node _node;
  final bool _isText;
  final bool _isComment;

  BrowserRenderNode(this._node)
      : _isText = _node is html.Text,
        _isComment = _node is html.Comment;

  /// Crée un nœud de type texte.
  factory BrowserRenderNode.text(String content) {
    return BrowserRenderNode(html.Text(content));
  }

  /// Crée un nœud de type commentaire (ancre pour ngIf/ngFor).
  factory BrowserRenderNode.comment() {
    return BrowserRenderNode(html.Comment());
  }

  html.Element get _element => _node as html.Element;
  html.Text get _textNode => _node as html.Text;

  @override
  String get tagName => _isText
      ? 'text'
      : _isComment
          ? 'comment'
          : _element.tagName.toLowerCase();

  @override
  void appendChild(RenderNode child) {
    if (child is BrowserRenderNode) {
      _node.append(child._node);
    } else {
      throw UnsupportedError(
        'Cannot append a non-BrowserRenderNode to a browser element',
      );
    }
  }

  @override
  void setProperty(String name, Object? value) {
    if (_isText || _isComment) return;
    js_util.setProperty(_element, name, value);
  }

  @override
  void setAttribute(String name, String value) {
    if (_isText || _isComment) return;
    _element.setAttribute(name, value);
  }

  @override
  void setClass(String className, bool enabled) {
    if (_isText || _isComment) return;
    if (enabled) {
      _element.classes.add(className);
    } else {
      _element.classes.remove(className);
    }
  }

  @override
  void setText(String value) {
    if (_isText) {
      _textNode.data = value;
    } else if (_isComment) {
      (_node as html.Comment).data = value;
    } else {
      _element.text = value;
    }
  }

  @override
  String get innerHtml =>
      _isText || _isComment ? (_node.text ?? '') : (_element.innerHtml ?? '');

  @override
  set innerHtml(String value) {
    if (!_isText && !_isComment) {
      _element.innerHtml = value;
    }
  }

  @override
  void markAsServerRendered({String? contentId}) {
    if (_isText || _isComment) return;
    _element.setAttribute('data-ng-id', _generateNodeId());
    if (contentId != null) {
      _element.setAttribute('data-ng-content-id', contentId);
    }
  }

  @override
  bool get isServerRendered =>
      !_isText &&
      !_isComment &&
      _element.getAttribute('data-ng-id') != null;

  @override
  void applyShimClass(String className) {
    if (_isText || _isComment) return;
    _element.classes.add(className);
  }

  @override
  void toggleClass(String className, bool enabled) {
    if (_isText || _isComment) return;
    if (enabled) {
      _element.classes.add(className);
    } else {
      _element.classes.remove(className);
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
