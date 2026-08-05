// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/laminate/overlay/constants.dart';
import 'package:angulardart_components/utils/browser/events/events.dart' as events;

@Injectable()
class PopupHierarchy {
  final _visiblePopupStack = <PopupHierarchyElement>[];

  web.Element? _rootPane;

  StreamSubscription<web.Event>? _triggerListener;
  StreamSubscription<web.KeyboardEvent>? _keyUpListener;

  web.Event? _lastTriggerEvent;

  bool get islastTriggerWithKeyboard =>
      _lastTriggerEvent != null &&
      (_lastTriggerEvent!.isA<web.KeyboardEvent>() ||
          _lastTriggerEvent!.isA<web.FocusEvent>());

  void closeHierarchy() {
    for (var popup in _visiblePopupStack) {
      popup.onDismiss();
    }

    _visiblePopupStack.clear();
    _disposeListeners();
  }

  void _attach(PopupHierarchyElement child) {
    if (_visiblePopupStack.isEmpty) {
      _rootPane =
           events.closestWithClass(child.elementRef!, 'pane');
    }
    _visiblePopupStack.add(child);

    _triggerListener ??= events.triggersOutside(null).listen(_onTrigger);
    _keyUpListener ??= _documentKeyUpStream.listen(_onKeyUp);
  }

  void _disposeListeners() {
    _triggerListener?.cancel();
    _keyUpListener?.cancel();
    _triggerListener = null;
    _keyUpListener = null;
  }

  void _detach(PopupHierarchyElement child) {
    if (_visiblePopupStack.remove(child) && _visiblePopupStack.isEmpty) {
      _rootPane = null;
      _disposeListeners();
    }
  }

  bool _isInHiddenModal() {
    var modalPanes = <web.Element>[];
    var nodeList = web.document
        .querySelectorAll('.$overlayContainerClassName .pane.modal.visible');
    for (var i = 0; i < nodeList.length; i++) {
      modalPanes.add(nodeList.item(i) as web.Element);
    }
    if (modalPanes.isNotEmpty) {
      if (_rootPane == null ||
          (_rootPane != modalPanes.last && modalPanes.contains(_rootPane))) {
        return true;
      }
    }
    return false;
  }

  void _onTrigger(web.Event event) {
    if (event.target == null) return;

    _lastTriggerEvent = event;

    if (_isInHiddenModal()) return;

    for (int i = _visiblePopupStack.length - 1; i >= 0; i--) {
      final current = _visiblePopupStack[i];

      if (events.isParentOf(current.container, event.target! as web.Node)) return;

      for (var blockerElement in current.autoDismissBlockers) {
        if (events.isParentOf(blockerElement, event.target! as web.Node)) return;
      }

      if (current.autoDismiss) current.onAutoDismiss(event);
    }
  }

  void _onKeyUp(web.KeyboardEvent event) {
    if (event.target == null) return;

    _lastTriggerEvent = event;

    if (_isInHiddenModal()) return;

    if (event.keyCode == 27) {
      for (int i = _visiblePopupStack.length - 1; i >= 0; i--) {
        final current = _visiblePopupStack[i];

        if (events.isParentOf(current.container, event.target! as web.Node)) {
          event.stopPropagation();
          current.onDismiss();
          return;
        }

        for (var blockerElement in current.autoDismissBlockers) {
          if (events.isParentOf(blockerElement, event.target! as web.Node)) {
            event.stopPropagation();
            current.onDismiss();
            return;
          }
        }
      }
    }
  }
}

Stream<web.KeyboardEvent>? _documentKeyUpStreamInstance;

Stream<web.KeyboardEvent> get _documentKeyUpStream {
  _documentKeyUpStreamInstance ??= _createDocumentKeyUpStream();
  return _documentKeyUpStreamInstance!;
}

Stream<web.KeyboardEvent> _createDocumentKeyUpStream() {
  final controller = StreamController<web.KeyboardEvent>.broadcast();
  web.EventListener? listener;
  controller.onListen = () {
    listener = (web.Event e) {
      controller.add(e as web.KeyboardEvent);
    }.toJS;
    web.document.addEventListener('keyup', listener!);
  };
  controller.onCancel = () {
    if (listener != null) {
      web.document.removeEventListener('keyup', listener!);
      listener = null;
    }
  };
  return controller.stream;
}

abstract mixin class PopupHierarchyElement {
  PopupHierarchy get hierarchy;
  bool get autoDismiss;

  web.Element get container;

  web.Element? get elementRef => null;

  List<web.Element> get autoDismissBlockers;

  void attachToVisibleHierarchy() {
    hierarchy._attach(this);
  }

  void detachFromVisibleHierarchy() {
    hierarchy._detach(this);
  }

  void onAutoDismiss(web.Event event) {
    onDismiss();
  }

  void onDismiss();
}
