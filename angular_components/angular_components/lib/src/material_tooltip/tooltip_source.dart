// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:intl/intl.dart';
import 'package:angulardart_components/laminate/popup/popup.dart'
    show DomPopupSourceFactory, PopupSourceDirective;
import 'package:angulardart_components/model/action/delayed_action.dart';
import 'package:angulardart_components/model/ui/toggle.dart';

const tooltipShowDelay = Duration(milliseconds: 600);

@Directive(
  selector: '[tooltipSource]',
  exportAs: 'tooltipSource',
)
class MaterialTooltipSourceDirective extends PopupSourceDirective
    implements Toggler, AfterViewInit, OnDestroy {
  @HostBinding('style.cursor')
  static const hostStyleCursor = 'pointer';

  @HostBinding('tabIndex')
  static const hostTabIndex = 0;

  @HostBinding('attr.aria-label')
  static final tooltipLabel = Intl.message(
      'Mouseover or press enter on this icon for more information.',
      name: 'MaterialTooltipSourceDirective_tooltipLabel',
      desc: 'Label for help icon which opens a help center tooltip.');

  final web.HTMLElement element;
  late DelayedAction _show;

  bool _isMouseInside = false;

  MaterialTooltipSourceDirective(
      DomPopupSourceFactory domPopupSourceFactory,
      this.element,
      @Attribute('initPopupAriaAttributes') String initAriaAttributes)
      : super(domPopupSourceFactory, element, /* referenceDirective */ null,
            /* focusable */ null, initAriaAttributes) {
    _show = DelayedAction(tooltipShowDelay, activate);
  }

  void activate() {
    _popupRef?.isOn = true;
  }

  void deactivate() {
    _show.cancel();
    if (_popupRef?.isOn ?? false) _popupRef!.isOn = false;
  }

  bool _focusLatch = false;

  @HostListener('focus')
  void onFocus() {
    _focusLatch = true;
  }

  @HostListener('blur')
  void onBlur() {
    _focusLatch = false;
    deactivate();
  }

  @HostListener('keyup')
  void onKeyUp() {
    if (_focusLatch) {
      activate();
      _focusLatch = false;
    }
  }

  @HostListener('mouseover')
  void onMouseOver() {
    if (_isMouseInside) return;
    _isMouseInside = true;
    _show.start();
  }

  @HostListener('mouseleave')
  void onMouseLeave() {
    _isMouseInside = false;
    deactivate();
  }

  @override
  set toggleable(Toggleable popupRef) {
    _popupRef = popupRef;
  }

  Toggleable? _popupRef;
}
