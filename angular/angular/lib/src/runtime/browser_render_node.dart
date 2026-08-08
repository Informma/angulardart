/// RenderNode qui utilise package:web (côté client).
///
/// Wrappe un [web.Element] ou [web.Text] et expose une interface uniforme
/// compatible avec [ServerRenderNode].
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:web/web.dart' as web;

import 'render_node.dart';

class BrowserRenderNode implements RenderNode {
  final web.Node _node;
  final bool _isText;

  BrowserRenderNode(this._node) : _isText = _node is web.Text;

  /// Crée un nœud de type texte.
  factory BrowserRenderNode.text(String content) {
    return BrowserRenderNode(web.Text(content));
  }

  /// Crée un nœud de type commentaire (ancre pour ngIf/ngFor).
  factory BrowserRenderNode.comment() {
    return BrowserRenderNode(web.Comment());
  }

  web.Element get _element => _node as web.Element;
  web.Text get _textNode => _node as web.Text;

  @override
  String get tagName => _isText ? 'text' : _element.tagName.toLowerCase();

  @override
  void appendChild(RenderNode child) {
    if (child is BrowserRenderNode) {
      _node.append(child._node);
    } else {
      throw UnsupportedError('Cannot append a non-BrowserRenderNode to a browser element');
    }
  }

  @override
  void setProperty(String name, Object? value) {
    if (_isText) return;
    final jsElement = _element as JSObject;
    jsElement.setProperty(name.toJS, _toJsValue(value));
  }

  @override
  void setAttribute(String name, String value) {
    if (_isText) return;
    _element.setAttribute(name, value);
  }

  @override
  void setClass(String className, bool enabled) {
    if (_isText) return;
    if (enabled) {
      _element.classList.add(className);
    } else {
      _element.classList.remove(className);
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
  String get innerHtml => _element.innerHTML.toString();

  @override
  set innerHtml(String value) {
    if (!_isText) {
      _element.innerHTML = value.toJS;
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
  bool get isServerRendered => !_isText && _element.hasAttribute('data-ng-id');

  @override
  void applyShimClass(String className) {
    if (_isText) return;
    _element.classList.add(className);
  }

  @override
  void toggleClass(String className, bool enabled) {
    if (_isText) return;
    if (enabled) {
      _element.classList.add(className);
    } else {
      _element.classList.remove(className);
    }
  }

  @override
  Object get nativeNode => _node;

  /// Convertit une valeur Dart en valeur JS pour setProperty.
  static JSAny? _toJsValue(Object? value) {
    if (value == null) return null;
    if (value is String) return value.toJS;
    if (value is num) return value.toJS;
    if (value is bool) return value.toJS;
    return value as JSAny?;
  }

  /// Génère un ID unique pour l'hydration.
  int _nodeIdCounter = 0;
  String _generateNodeId() {
    return '${_nodeIdCounter++}';
  }
}
