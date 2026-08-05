// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:math';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/annotations/rtl_annotation.dart';
import 'package:angulardart_components/laminate/enums/alignment.dart';
import 'package:angulardart_components/laminate/ruler/dom_ruler.dart';
import 'package:angulardart_components/src/laminate/popup/popup_source.dart';

typedef AsyncMeasureSize<E> = Stream<web.DOMRect> Function(E element,
    {bool track});

@Injectable()
class DomPopupSourceFactory {
  final DomRuler _domRuler;

  DomPopupSourceFactory(this._domRuler);

  DomPopupSource createPopupSource(web.HTMLElement sourceElement,
      {Alignment alignOriginX = Alignment.start,
      Alignment alignOriginY = Alignment.start,
      bool initAriaAttributes = true}) {
    return DomPopupSource(_asyncMeasureSize, sourceElement,
        alignOriginX: alignOriginX,
        alignOriginY: alignOriginY,
        initAriaAttributes: initAriaAttributes);
  }

  Stream<web.DOMRect> _asyncMeasureSize(web.HTMLElement element,
      {bool track = false}) {
    if (track) {
      return _domRuler.track(element).map((rect) =>
          web.DOMRect(rect.left, rect.top, rect.width, rect.height));
    } else {
      return _domRuler.measure(element).then((rect) =>
          web.DOMRect(rect.left, rect.top, rect.width, rect.height)).asStream();
    }
  }
}

class DomPopupSource implements ElementPopupSource {
  static final bool _isRtl = determineRtl(web.document);

  final AsyncMeasureSize<web.HTMLElement> _asyncMeasureSize;
  @override
  final web.HTMLElement sourceElement;
  final bool _initAriaAttributes;

  DomPopupSource(this._asyncMeasureSize, this.sourceElement,
      {Alignment alignOriginX = Alignment.start,
      Alignment alignOriginY = Alignment.start,
      Point transform = const Point(0, 0),
      bool initAriaAttributes = true})
      : _initAriaAttributes = initAriaAttributes {
    _alignOriginX = alignOriginX;
    _alignOriginY = alignOriginY;
  }

  late Alignment _alignOriginX;
  late Alignment _alignOriginY;
  late String _id;

  @override
  Alignment get alignOriginX => _alignOriginX;

  @override
  Alignment get alignOriginY => _alignOriginY;

  @override
  Stream<web.DOMRect> onDimensionsChanged({bool track = false}) {
    return _asyncMeasureSize(sourceElement, track: track);
  }

  @override
  web.DOMRect get dimensions => sourceElement.getBoundingClientRect();

  @override
  bool get isRtl => _isRtl;

  @override
  set popupId(String id) {
    _id = id;
    if (!_initAriaAttributes) return;
    sourceElement.setAttribute('aria-haspopup', 'true');
  }

  @override
  void focus() {
    sourceElement.focus();
  }

  @override
  String toString() =>
      'DomPopupSource ${{'alignOriginX': alignOriginX, 'alignOriginY': alignOriginY}}';

  @override
  void onOpen() {
    if (!_initAriaAttributes) return;
    sourceElement.setAttribute('aria-owns', _id);
  }

  @override
  void onClose() {
    if (!_initAriaAttributes) return;
    sourceElement.removeAttribute('aria-owns');
  }
}
