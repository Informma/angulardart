// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:web/web.dart' as web;

import 'package:angulardart_components/focus/focus_interface.dart';
import 'package:angulardart_components/laminate/enums/alignment.dart';

abstract class PopupSource {
  factory PopupSource.fromRectangle(web.DOMRect rectangle,
      {Alignment alignX = Alignment.start,
      Alignment alignY = Alignment.start}) {
    return _RectanglePopupSource(rectangle,
        alignOriginX: alignX, alignOriginY: alignY);
  }

  Alignment? get alignOriginX;

  Alignment? get alignOriginY;

  Stream<web.DOMRect> onDimensionsChanged({bool track = false});

  web.DOMRect get dimensions;

  bool get isRtl;

  set popupId(String id);

  void onOpen();

  void onClose();
}

abstract class ElementPopupSource implements PopupSource, Focusable {
  web.HTMLElement get sourceElement;

  @override
  web.DOMRect get dimensions => sourceElement.getBoundingClientRect();
}

class _RectanglePopupSource implements PopupSource {
  @override
  final Alignment? alignOriginX;

  @override
  final Alignment? alignOriginY;

  final web.DOMRect _predefinedRectangle;

  _RectanglePopupSource(this._predefinedRectangle,
      {this.alignOriginX, this.alignOriginY});

  @override
  Stream<web.DOMRect> onDimensionsChanged({bool track = false}) {
    return Stream<web.DOMRect>.fromIterable([_predefinedRectangle]);
  }

  @override
  web.DOMRect get dimensions => _predefinedRectangle;

  @override
  final bool isRtl = false;

  @override
  set popupId(String id) {
  }

  @override
  void onOpen() {}

  @override
  void onClose() {}
}
