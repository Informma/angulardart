/// This library is considered separate from rest of `runtime.dart`, as it
/// imports `dart:html`-backed DOM operations on the browser and `runtime.dart`
/// is currently used on libraries that expect to only run on the command-line
/// VM.
///
/// The functions here operate on `dynamic` node references so that the same
/// code compiles on both browser (real `dart:html` elements) and native/SSR
/// ([RenderNode] instances) targets.
library angular.src.runtime.dom_helpers;

import 'package:meta/dart2js.dart' as dart2js;
import 'package:js/js_util.dart' as js_util;

import 'dom_apis.dart';
import 'render_factory.dart';
import 'render_node.dart';

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

/// Returns the underlying native DOM node for [node].
///
/// On the browser this unwraps a [RenderNode] to its `dart:html` node; on
/// server-side rendering (where [RenderNode.nativeNode] returns itself) the
/// value is returned unchanged. Values that are not [RenderNode]s are returned
/// as-is, making this safe to apply at DOM operation boundaries.
dynamic unwrapNode(dynamic node) => node is RenderNode ? node.nativeNode : node;

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
void updateClassBinding(dynamic element, String className, bool isAdd) {
  if (element is RenderNode) {
    element.setClass(className, isAdd);
    return;
  }
  final classes = element.classes;
  if (isAdd) {
    classes.add(className);
  } else {
    classes.remove(className);
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
void updateClassBindingNonHtml(
  dynamic element,
  String className,
  bool isAdd,
) {
  if (element is RenderNode) {
    element.setClass(className, isAdd);
    return;
  }
  final classList = element.classList;
  if (classList != null) {
    if (isAdd) {
      classList.add(className);
    } else {
      classList.remove(className);
    }
  }
}

/// Updates [attribute] on [element] to reflect [value].
///
/// If [value] is `null`, this implicitly _removes_ [attribute] from [element].
@dart2js.noInline
void updateAttribute(
  dynamic element,
  String attribute,
  String? value,
) {
  if (element is RenderNode) {
    if (value != null) {
      element.setAttribute(attribute, value);
    }
    return;
  }
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
  dynamic element,
  String namespace,
  String attribute,
  String? value,
) {
  if (element is RenderNode) {
    if (value != null) {
      element.setAttribute('$namespace:$attribute', value);
    }
    return;
  }
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
  dynamic element,
  String attribute, [
  String value = '',
]) {
  if (element is RenderNode) {
    element.setAttribute(attribute, value);
    return;
  }
  element.setAttribute(attribute, value);
}

/// Helper function for setting an arbitrary [property] on an [element].
///
/// For example `setProperty(e, 'disabled', true)` should compile to:
///
/// ```js
/// e.disabled = true;
/// ```
@dart2js.tryInline
void setProperty(
  dynamic element,
  String property,
  Object? value,
) {
  if (element is RenderNode) {
    element.setProperty(property, value);
    return;
  }
  js_util.setProperty(element, property, value);
}

/// Creates a [Text] node with the provided [contents].
///
/// This is an optimization to reduce code size for a common operation.
@dart2js.noInline
dynamic createText(String contents) {
  if (renderFactory.isServerMode) {
    return renderFactory.createText(contents);
  }
  return createTextNode(contents);
}

/// Appends and returns a a new [Text] node to a [parent] node.
///
/// This is an optimization to reduce code size for a common operation.
@dart2js.noInline
dynamic appendText(dynamic parent, String text) {
  if (parent is RenderNode) {
    final child = renderFactory.createText(text);
    parent.appendChild(child);
    return child;
  }
  return parent.append(createText(text));
}

/// Returns a new [Comment] node with empty contents.
///
/// This is an optimization to reduce code size for a common operation.
@dart2js.noInline
dynamic createAnchor() {
  if (renderFactory.isServerMode) {
    return renderFactory.createComment();
  }
  return createComment();
}

/// Appends and returns a new empty [Comment] to a [parent] node.
///
/// This is an optimization to reduce code size for a common operation.
@dart2js.noInline
dynamic appendAnchor(dynamic parent) {
  if (parent is RenderNode) {
    final child = renderFactory.createComment();
    parent.appendChild(child);
    return child;
  }
  return parent.append(createAnchor());
}

/// Appends and returns a new empty [DivElement] to a [parent] node.
///
/// This is an optimization to reduce code size for a common operation.
@dart2js.noInline
dynamic appendDiv(dynamic doc, dynamic parent) {
  if (parent is RenderNode) {
    final child = renderFactory.createElement('div');
    parent.appendChild(child);
    return child;
  }
  return parent.append(doc.createElement('div'));
}

/// Appends and returns a new empty [SpanElement] to a [parent] node.
///
/// This is an optimization to reduce code size for a common operation.
@dart2js.noInline
dynamic appendSpan(dynamic doc, dynamic parent) {
  if (parent is RenderNode) {
    final child = renderFactory.createElement('span');
    parent.appendChild(child);
    return child;
  }
  return parent.append(doc.createElement('span'));
}

/// Appends and returns a new empty [Element] to a [parent] node.
///
/// For `<div>`, see [appendDiv], and for `<span>`, see [appendSpan].
///
/// This is an optimization to reduce code size for a common operation.
@dart2js.noInline
dynamic appendElement<T>(
  dynamic doc,
  dynamic parent,
  String tagName,
) {
  if (parent is RenderNode) {
    final child = renderFactory.createElement(tagName);
    parent.appendChild(child);
    return child;
  }
  return parent.append(doc.createElement(tagName));
}

/// Inserts [nodes] into the DOM before [sibling].
///
/// This intentionally does not use [Node.insertAllBefore], which is slower due
/// to extra type and runtime checks that are not necessary for our generated
/// code.
@dart2js.noInline
void insertNodesBefore(List<dynamic> nodes, dynamic parent, dynamic sibling) {
  for (var i = 0, l = nodes.length; i < l; i++) {
    parent.insertBefore(unwrapNode(nodes[i]), sibling);
  }
}

/// Appends [nodes] into the DOM inside of [parent].
@dart2js.noInline
void appendNodes(List<dynamic> nodes, dynamic parent) {
  for (var i = 0, l = nodes.length; i < l; i++) {
    parent.append(unwrapNode(nodes[i]));
  }
}

/// Removes [nodes] from the DOM.
@dart2js.noInline
void removeNodes(List<dynamic> nodes) {
  for (var i = 0, l = nodes.length; i < l; i++) {
    unwrapNode(nodes[i]).remove();
  }
}

/// Appends [nodes] into the DOM as siblings of [sibling] node.
///
/// **NOTE**: This was previously called `_moveNodesAfterSibling`.
@dart2js.noInline
void insertNodesAsSibling(List<dynamic> nodes, dynamic sibling) {
  final siblingNode = unwrapNode(sibling);
  final parentOfSibling = siblingNode.parentNode;
  if (nodes.isEmpty || parentOfSibling == null) {
    return;
  }
  final nextSibling = siblingNode.nextNode;
  if (nextSibling == null) {
    appendNodes(nodes, parentOfSibling);
  } else {
    insertNodesBefore(nodes, parentOfSibling, nextSibling);
  }
}

// ============================================================================
// RenderNode-based helpers (SSR support)
// These functions are used by the template compiler to generate code that is
// compatible with both the real DOM and server-side HTML string rendering.
// ============================================================================

/// Creates an element node via [renderFactory].
@dart2js.noInline
dynamic createRenderElement(String tagName) {
  return renderFactory.createElement(tagName);
}

/// Creates a text node via [renderFactory].
@dart2js.noInline
dynamic createRenderText(String content) {
  return renderFactory.createText(content);
}

/// Creates a comment node (anchor) via [renderFactory].
@dart2js.noInline
dynamic createRenderAnchor() {
  return renderFactory.createComment();
}

/// Appends a child to a RenderNode or DOM node.
@dart2js.noInline
void appendRenderChild(dynamic parent, dynamic child) {
  if (parent is RenderNode) {
    parent.appendChild(child as RenderNode);
  } else {
    parent.append(child);
  }
}

/// Updates the text of a RenderNode or DOM node.
@dart2js.noInline
void updateRenderText(dynamic node, String value) {
  if (node is RenderNode) {
    node.setText(value);
  } else {
    node.text = value;
  }
}

/// Updates a CSS class on a RenderNode or DOM element.
@dart2js.noInline
void updateRenderClass(dynamic node, String className, bool enabled) {
  if (node is RenderNode) {
    node.setClass(className, enabled);
    return;
  }
  final classes = node.classes;
  if (enabled) {
    classes.add(className);
  } else {
    classes.remove(className);
  }
}

/// Updates an attribute on a RenderNode or DOM element.
@dart2js.noInline
void updateRenderAttribute(dynamic node, String name, String? value) {
  if (node is RenderNode) {
    if (value != null) {
      node.setAttribute(name, value);
    }
    return;
  }
  if (value == null) {
    node.removeAttribute(name);
  } else {
    node.setAttribute(name, value);
  }
}

/// Updates a style on a RenderNode or DOM element.
@dart2js.noInline
void updateRenderStyle(dynamic node, String name, String value) {
  final native = unwrapNode(node);
  if (native is RenderNode) {
    // Server mode: styles are not yet supported for SSR output.
    return;
  }
  native.style.setProperty(name, value);
}

/// Updates tabIndex on a RenderNode or DOM element.
@dart2js.noInline
void updateRenderTabIndex(dynamic node, int? value) {
  if (node is RenderNode) {
    node.setProperty('tabIndex', value);
    return;
  }
  node.tabIndex = value ?? -1;
}

/// Adds an event listener on a RenderNode or DOM element.
@dart2js.noInline
void addRenderEventListener(
  dynamic target,
  String type,
  dynamic fn,
) {
  if (target is RenderNode) {
    final native = target.nativeNode;
    if (native is RenderNode) return; // Server mode: no DOM events.
    (native as dynamic).addEventListener(type, fn);
    return;
  }
  target.addEventListener(type, fn);
}
