// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/utils/browser/feature_detector/feature_detector.dart';

/// Determines if the space key was pressed in a [KeyboardEvent].
///
/// Use this utility because `keyCode` is deprecated in Firefox (and doesn't
/// work for &lt;space&gt;) and `key` is not yet implemented in Chrome.
bool isSpaceKey(web.KeyboardEvent event) {
  // NB: keyCode does not work on Firefox, returning `0` for the space key.
  return event.keyCode != 0 ? event.keyCode == 32 : event.key == ' ';
}

bool isKeyboardTrigger(web.KeyboardEvent event) =>
    event.keyCode == 13 || isSpaceKey(event);

/// Whether the [MouseEvent] was initiated with the primary mouse button and no
/// modifier keys were used.
bool isStandardMouseEvent(web.MouseEvent event) =>
    event.button == 0 &&
    !event.altKey &&
    !event.ctrlKey &&
    !event.metaKey &&
    !event.shiftKey;

/// Whether the [UIEvent] is a standard trigger event without modifier keys.
bool isStandardTriggerEvent(web.UIEvent event) {
  return event.isA<web.MouseEvent>() && isStandardMouseEvent(event as web.MouseEvent) ||
      event.isA<web.KeyboardEvent>() && isKeyboardTrigger(event as web.KeyboardEvent);
}

typedef Predicate<T> = bool Function(T value);

Predicate<T> not<T>(Predicate<T> predicate) => (value) => !predicate(value);

/// A stream of click, mouseup or focus events outside a given element.
Stream<web.Event> triggersOutside(dynamic /* Element | ElementRef */ element) {
  if (element is ElementRef) element = element.nativeElement;
  return triggersOutsideAny((node) => node == element);
}

/// A stream of click, mouseup or focus events of any node none of whose parents
/// pass the check inside function.
Stream<web.Event> triggersOutsideAny(Predicate<web.Node> checkNodeInside) {
  StreamController<web.Event>? controller;
  web.EventListener? mouseDownListener;
  web.EventListener? mouseUpListener;
  web.EventListener? clickListener;
  web.EventListener? focusTouchListener;
  void Function(web.Event)? listenerDart;

  controller = StreamController.broadcast(
      sync: true,
      onListen: () {
        web.Event? lastEvent;
        web.Event? lastDownEvent;

        listenerDart = (web.Event e) {
          lastEvent = e;
          var node = e.target as web.Node?;
          while (node != null) {
            if (checkNodeInside(node)) {
              return;
            } else {
              node = node.parentNode;
            }
          }
          controller!.add(e);
        };
        focusTouchListener = listenerDart!.toJS;

        mouseDownListener = (web.Event e) {
          lastDownEvent = e;
        }.toJS;

        mouseUpListener = (web.Event e) {
          if (lastDownEvent == null || e.target == lastDownEvent!.target) {
            listenerDart!(e);
          }
          lastEvent = e;
        }.toJS;

        clickListener = (web.Event e) {
          if (lastEvent?.type == 'mouseup' && e.target == lastEvent?.target) {
            return;
          }
          if (lastDownEvent == null || e.target == lastDownEvent!.target) {
            listenerDart!(e);
          }
          lastDownEvent = null;
        }.toJS;

        web.document.addEventListener('mousedown', mouseDownListener);
        web.document.addEventListener('mouseup', mouseUpListener);
        web.document.addEventListener('click', clickListener);
        web.document.addEventListener('focus', focusTouchListener, true.toJS);
        web.document.addEventListener('touchend', focusTouchListener);
      },
      onCancel: () {
        web.document.removeEventListener('mousedown', mouseDownListener!);
        web.document.removeEventListener('mouseup', mouseUpListener!);
        web.document.removeEventListener('click', clickListener!);
        web.document.removeEventListener('focus', focusTouchListener!, true.toJS);
        web.document.removeEventListener('touchend', focusTouchListener!);
        mouseDownListener = null;
        mouseUpListener = null;
        clickListener = null;
        focusTouchListener = null;
        listenerDart = null;
      });
  return controller.stream;
}

/// A stream of contect rects fired when [element] changes size.
///
/// A content rect is a [web.DOMRect] where [top] = padding-top, [left] =
/// padding-left, [width] = innerWidth, and [height] = innerHeight.
///
/// NOTE: This only works in browsers that support [web.ResizeObserver]. Check
/// [supportsResizeObserver] from feature_detector.dart before using this.
Stream<web.DOMRect> onResize(web.Element element) {
  assert(supportsResizeObserver, 'ResizeObserver support is required');
  StreamController<web.DOMRect>? controller;
  web.ResizeObserver? observer;
  controller = StreamController<web.DOMRect>.broadcast(
      sync: true,
      onListen: () {
        observer = web.ResizeObserver(((JSArray<web.ResizeObserverEntry> entries, _) {
          for (var entry in entries.toDart) {
            var rect = entry.contentRect;
            controller!.add(web.DOMRect(rect.left, rect.top, rect.width, rect.height));
          }
        }).toJS);
        observer!.observe(element);
      },
      onCancel: () {
        observer?.disconnect();
      });
  return controller.stream;
}

/// Return true if the element or any of its ancestors have an attribute.
///
/// It's used to handle lose focus (or blur) event for composite components.
/// For example, MaterialAutoSuggestInput need close suggest popup when
/// lose focus from the input, but not for the case when clicking the popup
/// itself.
bool anyParentHasAttribute(web.Element? target, String attribute) {
  while (target != null) {
    if (target.hasAttribute(attribute)) {
      return true;
    }
    target = target.parentNode as web.Element?;
  }
  return false;
}

/// Return true if the element or any of its ancestors have the given tag.
///
/// It's used to handle lose focus (or blur) event for composite components.
/// For example, FilterBarComponent needs to enter summary mode when it loses
/// focus, unless the focus is moving to one of the components it spawned.
bool anyParentHasTag(web.Element? target, String componentTag) {
  componentTag = componentTag.toLowerCase();
  while (target != null) {
    if (target.tagName.toLowerCase() == componentTag) {
      return true;
    }
    target = target.parentNode as web.Element?;
  }
  return false;
}

/// Return true if the element or any of its ancestors have the given class.
///
/// Among other use cases, this can be helpful for handling nested popup
/// scenarios.  For example, BaseLensEdit needs to ignore clicks on targets
/// that have ancestors of class material-popup-content when deciding whether
/// a click counts as a click out (for exiting the popup).
bool anyParentHasClass(web.Element target, String className) =>
    closestWithClass(target, className) != null;

/// This element or the closest of its ancestor with the given class.
web.Element? closestWithClass(web.Element? target, String className) {
  while (target != null) {
    if (target.hasAttribute("class") &&
        target.classList.contains(className)) {
      return target;
    }
    target = target.parentNode as web.Element?;
  }
  return null;
}

/// Whether [element] is a parent of [node] in the dom tree.
bool isParentOf(web.Element element, web.Node? node) {
  while (node != null) {
    if (node == element) {
      return true;
    } else {
      node = node.parentNode;
    }
  }
  return false;
}

/// A [Comparator] for sorting [Node]s based on document order.
///
/// Example:
///
///     // [elements] is a List<Element>.
///     elements.sort(compareDocumentPosition);
///     // Now they're according to their position in the document.
int compareDocumentPosition(web.Node a, web.Node b) {
  int bitmask = a.compareDocumentPosition(b);
  if ((bitmask & 4) != 0 || (bitmask & 16) != 0) {
    // DOCUMENT_POSITION_FOLLOWING or DOCUMENT_POSITION_CONTAINED_BY
    return -1;
  } else if ((bitmask & 2) != 0 || (bitmask & 8) != 0) {
    // DOCUMENT_POSITION_PRECEDING or DOCUMENT_POSITION_CONTAINS
    return 1;
  } else {
    return 0;
  }
}
