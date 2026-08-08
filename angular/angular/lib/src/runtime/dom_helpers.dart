/// This library is considered separate from rest of `runtime.dart`, as it
/// imports `package:web` and `runtime.dart` is currently used on libraries
/// that expect to only run on the command-line VM.
library angular.src.runtime.dom_helpers;

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:web/web.dart' as web;

import 'package:meta/dart2js.dart' as dart2js;

import 'render_factory.dart';
import 'render_node.dart';

/// https://developer.mozilla.org/en-US/docs/Web/API/Document/createTextNode
web.Text _createTextNode(String text) => web.Text(text);

/// https://developer.mozilla.org/en-US/docs/Web/API/Document/createComment
web.Comment _createComment() => web.Comment();

/// Set to `true` when Angular modified the DOM.
///
/// May be used in order to optimize polling techniques that attempt to only
/// process events after a significant change detection cycle (i.e. one that
/// modified the DOM versus a no-op).
///
/// **NOTE**: What sets this to `true` (versus ignores it entirely) is currently
/// not consistent (it skips some methods that knowingly update the DOM). See
/// b/122842549.
var domRootRendererIsDirty = false;

/// Either adds or removes [className] to [element] based on [isAdd].
///
/// For example, the following template binding:
/// ```html
/// <div [class.warning]="isWarning">...</div>
/// ```
///
/// ... would emit:
/// ```dart
/// updateClassBinding(_divElement, 'warning', isWarning);
/// ```
///
/// For [element]s not guaranteed to be HTML, see [updateClassBindingNonHtml].
@dart2js.noInline
void updateClassBinding(web.HTMLElement element, String className, bool isAdd) {
  if (renderFactory.isServerMode) {
    _updateClassBindingOnRenderNode(element, className, isAdd);
    return;
  }
  if (isAdd) {
    element.classList.add(className);
  } else {
    element.classList.remove(className);
  }
}

/// Similar to [updateClassBinding], for an [element] not guaranteed to be HTML.
///
/// For example, using [Element.tag] to create a custom element will not be
/// recognized as a built-in HTML element, or for SVG elements created by the
/// template.
///
/// Dart2JS emits slightly more optimized cost in [updateClassBinding].
@dart2js.noInline
void updateClassBindingNonHtml(web.Element element, String className, bool isAdd) {
  if (renderFactory.isServerMode) {
    _updateClassBindingOnRenderNode(element, className, isAdd);
    return;
  }
  if (isAdd) {
    element.classList.add(className);
  } else {
    element.classList.remove(className);
  }
}

/// Updates class binding on a ServerRenderNode via toggleClass.
void _updateClassBindingOnRenderNode(dynamic element, String className, bool isAdd) {
  (element as RenderNode).toggleClass(className, isAdd);
}

/// Updates [attribute] on [element] to reflect [value].
///
/// If [value] is `null`, this implicitly _removes_ [attribute] from [element].
@dart2js.noInline
void updateAttribute(
  web.Element element,
  String attribute,
  String? value,
) {
  if (value == null) {
    element.removeAttribute(attribute);
  } else {
    setAttribute(element, attribute, value);
  }
  domRootRendererIsDirty = true;
}

/// Similar to [updateAttribute], but supports name-spaced attributes.
@dart2js.noInline
void updateAttributeNS(
  web.Element element,
  String namespace,
  String attribute,
  String? value,
) {
  if (value == null) {
    element.removeAttributeNS(namespace, attribute);
  } else {
    element.setAttributeNS(namespace, attribute, value);
  }
  domRootRendererIsDirty = true;
}

/// Similar to [updateAttribute], but strictly for setting the initial [value].
///
/// This is meant as a slight optimization when initially building elements
/// from the template, as it does not check to see if [value] is `null` (and
/// the attribute should be removed) nor does it set [domRootRendererIsDirty].
@dart2js.noInline
void setAttribute(
  web.Element element,
  String attribute, [
  String value = '',
]) {
  element.setAttribute(attribute, value);
}

/// Helper function for setting an arbitrary [property] on an [element].
///
/// For example `setProperty(e, 'disabled', true)` should compile to:
///
/// ```js
/// e.disabled = true;
/// ```
/// Helper to convert a Dart value to a JS value for dynamic property setting.
JSAny? _toJsValue(Object? value) {
  if (value == null) return null;
  if (value is String) return value.toJS;
  if (value is num) return value.toJS;
  if (value is bool) return value.toJS;
  return value as JSAny?;
}

@dart2js.tryInline
void setProperty(
  web.Element element,
  String property,
  Object? value,
) {
  (element as JSObject).setProperty(property.toJS, _toJsValue(value));
}

/// Creates a [Text] node with the provided [contents].
///
/// This is an optimization to reduce code size for a common operation.
///
/// For example, the naive way of creating text nodes would be:
///
/// ```dart
/// var a = Text('Hello');
/// var b = Text('World');
/// var c = Text('!')
/// ```
///
/// This in turn compiles to the following after Dart2JS:
///
/// ```js
/// var t, a, b, c;
/// t = document;
/// a = t.createTextNode('Hello');
/// b = t.createTextNode('World');
/// c = t.createTextNode('!')
/// ```
///
/// Where-as using [createText] minimizes the amount of code:
///
/// ```dart
/// var d = document;
/// var a = createText(d, 'Hello');
/// var b = createText(d, 'World');
/// var c = createText('!');
/// ```
///
/// ... compiles to (and can be further minified, assume as `z6` below):
///
/// ```js
/// var t, a, b, c;
/// t = z6(d, 'Hello');
/// b = z6(d, 'World');
/// c = z6(d, '!')
/// ```
@dart2js.noInline
web.Text createText(String contents) {
  return _createTextNode(contents);
}

/// Appends and returns a a new [Text] node to a [parent] node.
///
/// This is an optimization to reduce code size for a common operation.
@dart2js.noInline
web.Text appendText(web.Node parent, String text) {
  return parent.append(createText(text)) as web.Text;
}

/// Returns a new [Comment] node with empty contents.
///
/// This is an optimization to reduce code size for a common operation.
@dart2js.noInline
web.Comment createAnchor() => _createComment();

/// Appends and returns a new empty [Comment] to a [parent] node.
///
/// This is an optimization to reduce code size for a common operation.
@dart2js.noInline
web.Comment appendAnchor(web.Node parent) {
  return parent.append(_createComment()) as web.Comment;
}

/// Appends and returns a new empty [DivElement] to a [parent] node.
///
/// This is an optimization to reduce code size for a common operation.
@dart2js.noInline
web.HTMLDivElement appendDiv(web.Document doc, web.Node parent) {
  return parent.append(doc.createElement('div')) as web.HTMLDivElement;
}

/// Appends and returns a new empty [SpanElement] to a [parent] node.
///
/// This is an optimization to reduce code size for a common operation.
@dart2js.noInline
web.HTMLSpanElement appendSpan(web.Document doc, web.Node parent) {
  return parent.append(doc.createElement('span')) as web.HTMLSpanElement;
}

/// Appends and returns a new empty [Element] to a [parent] node.
///
/// For `<div>`, see [appendDiv], and for `<span>`, see [appendSpan].
///
/// This is an optimization to reduce code size for a common operation.
@dart2js.noInline
T appendElement<T extends web.Element>(
  web.Document doc,
  web.Node parent,
  String tagName,
) {
  // <T extends Element> allows the pattern:
  // HtmlElement e = appendElement(doc, parent, 'foo')
  //
  // ... without gratituous use of unsafeCast or casts in general.
  return parent.append(doc.createElement(tagName)) as T;
}

/// Inserts [nodes] into the DOM before [sibling].
///
/// This intentionally does not use [Node.insertAllBefore], which is slower due
/// to extra type and runtime checks that are not necessary for our generated
/// code.
@dart2js.noInline
void insertNodesBefore(List<web.Node> nodes, web.Node parent, web.Node sibling) {
  for (var i = 0, l = nodes.length; i < l; i++) {
    parent.insertBefore(nodes[i], sibling);
  }
}

/// Appends [nodes] into the DOM inside of [parent].
@dart2js.noInline
void appendNodes(List<web.Node> nodes, web.Node parent) {
  for (var i = 0, l = nodes.length; i < l; i++) {
    parent.append(nodes[i]);
  }
}

/// Removes [nodes] from the DOM.
@dart2js.noInline
void removeNodes(List<web.Node> nodes) {
  for (var i = 0, l = nodes.length; i < l; i++) {
    final node = nodes[i];
    node.parentNode?.removeChild(node);
  }
}

/// Appends [nodes] into the DOM as siblings of [sibling] node.
///
/// **NOTE**: This was previously called `_moveNodesAfterSibling`.
@dart2js.noInline
void insertNodesAsSibling(List<web.Node> nodes, web.Node sibling) {
  final parentOfSibling = sibling.parentNode;
  if (nodes.isEmpty || parentOfSibling == null) {
    return;
  }
  final nextSibling = sibling.nextSibling;
  if (nextSibling == null) {
    appendNodes(nodes, parentOfSibling);
  } else {
    insertNodesBefore(nodes, parentOfSibling, nextSibling);
  }
}

// ============================================================================
// RenderNode-based helpers (Phase 2: SSR support)
// Ces fonctions sont utilisées par le template compiler pour générer du code
// compatible à la fois avec le DOM réel et le rendu HTML string.
// ============================================================================

/// Crée un nœud de type élément via [renderFactory].
@dart2js.noInline
dynamic createRenderElement(String tagName) {
  return renderFactory.createElement(tagName);
}

/// Crée un nœud texte via [renderFactory].
@dart2js.noInline
dynamic createRenderText(String content) {
  return renderFactory.createText(content);
}

/// Crée un nœud commentaire (ancre) via [renderFactory].
@dart2js.noInline
dynamic createRenderAnchor() {
  return renderFactory.createComment();
}

/// Ajoute un enfant à un RenderNode.
@dart2js.noInline
void appendRenderChild(dynamic parent, dynamic child) {
  if (parent is RenderNode && child is RenderNode) {
    parent.appendChild(child);
  } else if (parent is web.Node && child is web.Node) {
    parent.append(child);
  }
}

/// Met à jour le texte d'un RenderNode.
@dart2js.noInline
void updateRenderText(dynamic node, String value) {
  if (node is RenderNode) {
    node.setText(value);
  } else if (node is web.Text) {
    node.data = value;
  }
}

/// Met à jour une classe CSS sur un RenderNode.
@dart2js.noInline
void updateRenderClass(dynamic node, String className, bool enabled) {
  if (node is RenderNode) {
    node.setClass(className, enabled);
  } else if (node is web.HTMLElement) {
    if (enabled) {
      node.classList.add(className);
    } else {
      node.classList.remove(className);
    }
  }
}

/// Met à jour un attribut sur un RenderNode.
@dart2js.noInline
void updateRenderAttribute(dynamic node, String name, String? value) {
  if (node is RenderNode) {
    if (value == null) {
      // Pour RenderNode, on ne peut pas supprimer les attributs facilement.
      // Ignorer côté serveur.
    } else {
      node.setAttribute(name, value);
    }
  } else if (node is web.Element) {
    if (value == null) {
      node.removeAttribute(name);
    } else {
      node.setAttribute(name, value);
    }
  }
}

