// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/focus/focus_interface.dart';
import 'package:angulardart_components/laminate/enums/alignment.dart';
import 'package:angulardart_components/src/laminate/popup/dom_popup_source.dart';
import 'package:angulardart_components/src/laminate/popup/popup_source.dart';
import 'package:angulardart_components/utils/angular/properties/properties.dart';
import 'package:angulardart_components/utils/angular/reference/reference.dart';

@Directive(
  selector: '[popupSource]',
  exportAs: 'popupSource',
)
class PopupSourceDirective
    implements ElementPopupSource, AfterViewInit, OnDestroy {
  final DomPopupSourceFactory _domPopupSourceFactory;
  final bool _initAriaAttributes;
  web.HTMLElement? _element;
  ReferenceDirective? _referenceDirective;
  Focusable? _focusable;

  Alignment _alignOriginX = Alignment.start;
  Alignment _alignOriginY = Alignment.start;

  PopupSource? _popupSource;
  String? _popupId;

  PopupSourceDirective(
      this._domPopupSourceFactory,
      this._element,
      @Optional() this._referenceDirective,
      @Optional() this._focusable,
      @Attribute('initPopupAriaAttributes') String initAriaAttributes)
      : _initAriaAttributes =
            attributeToBool(initAriaAttributes, defaultValue: true);

  @override
  ngOnDestroy() {
    _element = null;
    _popupSource = null;
    _referenceDirective = null;
    _focusable = null;
  }

  @override
  void ngAfterViewInit() {
    _element = _referenceDirective?.elementRef.nativeElement ?? _element;
    _updateSource();
  }

  @override
  web.HTMLElement get sourceElement => _element!;

  @override
  Alignment? get alignOriginX => _popupSource?.alignOriginX;

  @Input('alignPositionX')
  set alignX(String align) {
    _alignOriginX = Alignment.parse(align);
    _updateSource();
  }

  @override
  Alignment? get alignOriginY => _popupSource?.alignOriginY;

  @Input('alignPositionY')
  set alignY(String align) {
    _alignOriginY = Alignment.parse(align);
    _updateSource();
  }

  @override
  Stream<web.DOMRect> onDimensionsChanged({bool track = false}) {
    return _popupSource!.onDimensionsChanged(track: track).distinct();
  }

  @override
  web.DOMRect get dimensions => _popupSource!.dimensions;

  @override
  bool get isRtl => _popupSource!.isRtl;

  @override
  set popupId(String id) {
    _popupId = id;
    _popupSource?.popupId = id;
  }

  void _updateSource() {
    _popupSource = _domPopupSourceFactory.createPopupSource(_element!,
        alignOriginX: _alignOriginX,
        alignOriginY: _alignOriginY,
        initAriaAttributes: _initAriaAttributes);

    if (_popupId != null) {
      _popupSource!.popupId = _popupId!;
    }
  }

  @override
  void focus() {
    if (_focusable != null) {
      _focusable!.focus();
    } else {
      _element?.focus();
    }
  }

  @override
  void onOpen() {
    _popupSource?.onOpen();
  }

  @override
  void onClose() {
    _popupSource?.onClose();
  }
}
