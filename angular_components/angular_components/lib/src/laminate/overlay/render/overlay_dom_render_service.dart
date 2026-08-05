// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart' hide Visibility;
import 'package:angulardart_components/laminate/enums/visibility.dart';
import 'package:angulardart_components/src/laminate/overlay/overlay_state.dart';
import 'package:angulardart_components/src/laminate/overlay/render/overlay_style_config.dart';
import 'package:angulardart_components/laminate/overlay/zindexer.dart';
import 'package:angulardart_components/laminate/portal/portal.dart';
import 'package:angulardart_components/laminate/ruler/dom_ruler.dart';
import 'package:angulardart_components/utils/angular/imperative_view/imperative_view.dart';
import 'package:angulardart_components/utils/browser/dom_service/dom_service.dart';

const overlayContainerName = OpaqueToken('overlayContainerName');

const overlayContainerToken = OpaqueToken('overlayContainer');

const overlayContainerParent = OpaqueToken('overlayContainerParent');

const overlaySyncDom = OpaqueToken('overlaySyncDom');

const overlayRepositionLoop = OpaqueToken('overlayRepositionLoop');

const overlayViewportBoundaries = OpaqueToken('overlayViewportBoundaries');

@Injectable()
class OverlayDomRenderService {
  static const _defaultConfig = OverlayState();
  static const _paneClassName = 'pane';

  final web.HTMLElement containerElement;
  final String _containerName;
  final DomRuler _domRuler;
  final DomService _domService;
  final AcxImperativeViewUtils _imperativeViewUtils;
  final bool _useDomSynchronously;
  final bool _useRepositionLoop;
  final ZIndexer _zIndexer;

  late int _lastZIndex;

  int _uniqueId = 0;

  OverlayDomRenderService(
      OverlayStyleConfig styleConfig,
      @Inject(overlayContainerToken) this.containerElement,
      @Inject(overlayContainerName) this._containerName,
      this._domRuler,
      this._domService,
      this._imperativeViewUtils,
      @Inject(overlaySyncDom) this._useDomSynchronously,
      @Inject(overlayRepositionLoop) this._useRepositionLoop,
      this._zIndexer) {
    containerElement.setAttribute('name', _containerName);
    styleConfig.registerStyles();
    _lastZIndex = _zIndexer.peek();
  }

  String _createUniqueId() => '$_containerName-${++_uniqueId}';

  Future<void> applyState(OverlayState state, web.HTMLElement pane) async {
    if (!_useDomSynchronously) {
      return _domService.onWrite().then((_) {
        applyStateSync(state, pane);
      });
    } else {
      applyStateSync(state, pane);
    }
  }

  void applyStateSync(OverlayState state, web.HTMLElement pane) {
    var cssClasses = <String>[];

    if (state.captureEvents) {
      cssClasses.add('modal');
    }

    if (state.visibility == Visibility.visible) cssClasses.add('visible');

    _domRuler.updateSync(pane,
        cssClasses: cssClasses,
        width: state.width,
        height: state.height,
        top: state.top,
        left: state.left,
        bottom: state.bottom,
        right: state.right,
        visibility: state.visibility,
        position: state.position,
        useCssTransform: !_useRepositionLoop);

    if (state.minWidth != null) {
      pane.style.setProperty('min-width', '${state.minWidth}px');
    }
    if (state.zIndex != null) {
      pane.style.setProperty('z-index', '${state.zIndex}');
    }

    if (pane.parentNode != null) {
      if (_lastZIndex != _zIndexer.peek()) {
        _lastZIndex = _zIndexer.pop();
      }
      _domRuler.updateSync(pane.parentNode as web.Element, zIndex: _lastZIndex);
    }
  }

  Stream<web.DOMRect> measureSize(web.HTMLElement pane,
      {bool track = false, bool sync = false}) {
    if (track) {
      return _domRuler.track(pane).map((rect) =>
          web.DOMRect(rect.left, rect.top, rect.width, rect.height));
    } else {
      if (!sync) {
        return _domRuler.measure(pane).then((rect) =>
            web.DOMRect(rect.left, rect.top, rect.width, rect.height)).asStream();
      }
      final rect = _domRuler.measureSync(pane);
      return Stream<web.DOMRect>.value(
          web.DOMRect(rect.left, rect.top, rect.width, rect.height));
    }
  }

  Future<web.DOMRect> measureContainer() {
    if (!_useDomSynchronously) {
      return _domService
          .onWrite()
          .then((_) => containerElement.getBoundingClientRect());
    } else {
      return Future<web.DOMRect>.value(containerElement.getBoundingClientRect());
    }
  }

  Future<web.HTMLElement> createOverlayPane([OverlayState state = _defaultConfig]) {
    var pane = web.document.createElement('div') as web.HTMLDivElement
      ..setAttribute('pane-id', _createUniqueId())
      ..classList.add(_paneClassName);

    applyStateSync(state, pane);

    if (!_useDomSynchronously) {
      return _domService.onWrite().then((_) {
        containerElement.append(pane);
        return pane;
      });
    } else {
      containerElement.append(pane);
      return Future.value(pane);
    }
  }

  web.HTMLElement createOverlayPaneSync([OverlayState state = _defaultConfig]) {
    var pane = web.document.createElement('div') as web.HTMLDivElement
      ..setAttribute('pane-id', _createUniqueId())
      ..classList.add(_paneClassName);

    applyStateSync(state, pane);
    containerElement.append(pane);
    return pane;
  }

  PortalHost createPortalHost(web.HTMLElement hostContainer) {
    return DomPortalHost(hostContainer, _imperativeViewUtils);
  }
}
