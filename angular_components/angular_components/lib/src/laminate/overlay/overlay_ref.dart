// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'package:angulardart_components/laminate/enums/visibility.dart';
import 'package:angulardart_components/laminate/portal/portal.dart';
import 'package:angulardart_components/src/laminate/overlay/overlay_state.dart';

typedef AsyncApplyState<E> = Future<Object> Function(
    OverlayState state, E element);

typedef AsyncMeasureSize<E> = Stream<web.DOMRect> Function(E element,
    {bool track});

class OverlayRef implements PortalHost {
  bool get isVisible => state.visibility != Visibility.none;

  Stream<web.MouseEvent> get onPanePressed {
    _onPanePressedController ??= StreamController<web.MouseEvent>.broadcast(
      onListen: () {
        _panePressedListener = ((web.Event e) {
          _onPanePressedController!.add(e as web.MouseEvent);
        }).toJS;
        overlayElement.addEventListener('mousedown', _panePressedListener);
      },
      onCancel: () {
        if (_panePressedListener != null) {
          overlayElement.removeEventListener('mousedown', _panePressedListener);
        }
      },
    );
    return _onPanePressedController!.stream;
  }

  Stream<web.DOMRect> measureSizeChanges() async* {
    if (state.visibility == Visibility.none) {
      state.visibility = Visibility.hidden;
    }
    await _applyChanges();
    yield* _runOutsideAngular(() {
      return _asyncMeasureSize(overlayElement, track: true)
          .distinct(_isEqualSize);
    }) as Stream<web.DOMRect>;
  }

  Stream<bool> get onVisibleChanged {
    _onVisibleController ??= StreamController.broadcast(sync: true);
    return _onVisibleController!.stream;
  }

  final MutableOverlayState state;

  final web.HTMLElement containerElement;

  final web.HTMLElement overlayElement;

  void setPreventInteraction([bool? preventInteraction]) {
    state.captureEvents = preventInteraction ?? true;
  }

  void setVisible([bool? visible]) {
    state.visibility = Visibility.fromBoolean(visible ?? true);
  }

  String? get uniqueId => overlayElement.getAttribute('pane-id');

  @override
  Future<Object> attach(Portal<Object> portal) =>
      _delegatePortalHost.attach(portal) as Future<Object>;

  @override
  Future<void> detach() => _delegatePortalHost.detach();

  @override
  bool get hasAttached => _delegatePortalHost.hasAttached;

  @override
  void dispose() {
    overlayElement.parentNode?.removeChild(overlayElement);
    if (_onVisibleController != null) {
      _onVisibleController!.close();
    }
    if (_onPanePressedController != null) {
      _onPanePressedController!.close();
    }
    if (_delegatePortalHost.hasAttached == true) {
      _delegatePortalHost.dispose();
    }
    _stateUpdateListener.cancel();
  }

  static bool _isEqualSize(web.DOMRect a, web.DOMRect b) {
    return a.width == b.width && a.height == b.height;
  }

  final AsyncApplyState<web.HTMLElement> _asyncApplyState;
  final AsyncMeasureSize<web.HTMLElement> _asyncMeasureSize;
  final PortalHost _delegatePortalHost;
  final Function _runOutsideAngular;

  bool _lastVisible = false;

  StreamController<bool>? _onVisibleController;
  StreamController<web.MouseEvent>? _onPanePressedController;
  web.EventListener? _panePressedListener;

  late StreamSubscription<Null> _stateUpdateListener;

  Future<Object> _applyChanges() {
    if (_lastVisible != isVisible) {
      _lastVisible = isVisible;
      if (_onVisibleController != null) {
        _onVisibleController!.add(isVisible);
      }
    }
    return _asyncApplyState(state, overlayElement);
  }

  OverlayRef(
      this._asyncApplyState,
      this._asyncMeasureSize,
      this._delegatePortalHost,
      this.containerElement,
      this.overlayElement,
      this._runOutsideAngular,
      {OverlayState? state})
      : state = state != null ? MutableOverlayState.from(state) : MutableOverlayState() {
    _stateUpdateListener = this.state.onUpdate.listen((_) => _applyChanges());
  }
}
