// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/laminate/overlay/constants.dart';
import 'package:angulardart_components/laminate/popup/popup.dart';
import 'package:angulardart_components/model/action/delayed_action.dart';
import 'package:angulardart_components/src/material_tooltip/tooltip_controller.dart';
import 'package:angulardart_components/utils/browser/events/events.dart';
import 'package:meta/meta.dart';

import 'tooltip_source.dart' show tooltipShowDelay;

@Directive(
  selector: '[tooltipTarget]',
  exportAs: 'tooltipTarget',
)
class MaterialTooltipTargetDirective extends TooltipBehavior
    implements AfterViewInit, OnDestroy {
  web.HTMLElement? element;

  MaterialTooltipTargetDirective(
      DomPopupSourceFactory domPopupSourceFactory,
      ViewContainerRef viewContainerRef,
      this.element,
      ChangeDetectorRef changeDetector,
      @Attribute('initPopupAriaAttributes') String initAriaAttributes)
      : super(domPopupSourceFactory, viewContainerRef, element!, changeDetector,
            initAriaAttributes);

  @visibleForTemplate
  @HostListener('focus')
  void onFocus() {
    showTooltipWithDelay();
  }

  @override
  void ngOnDestroy() {
    element = null;
  }
}

abstract class TooltipBehavior extends TooltipTarget {
  final _tooltipActivate = StreamController<bool>.broadcast(sync: true);
  final ChangeDetectorRef _changeDetector;
  late DelayedAction _show;

  bool _isMouseInside = false;

  @Output()
  Stream<bool> get tooltipActivate => _tooltipActivate.stream.distinct();

  TooltipBehavior(
      DomPopupSourceFactory domPopupSourceFactory,
      ViewContainerRef viewContainerRef,
      web.HTMLElement element,
      this._changeDetector,
      String initAriaAttributes)
      : super(domPopupSourceFactory, viewContainerRef, element,
            initAriaAttributes) {
    _show = DelayedAction(tooltipShowDelay, showTooltip);
  }

  @protected
  @visibleForTesting
  void showTooltipWithDelay() {
    _show.start();
  }

  void showTooltip() {
    _show.cancel();
    _changeDetector.markForCheck();
    _tooltipActivate.add(true);
    _tooltip?.activate();
  }

  @HostListener('click')
  void onBlurOrClick() => hideTooltip();

  void hideTooltip({bool immediate = false}) {
    _show.cancel();
    _tooltipActivate.add(false);
    _tooltip?.deactivate(immediate: immediate);
  }

  @HostListener('mouseover')
  void onMouseOver() {
    if (_isMouseInside) return;
    _isMouseInside = true;
    showTooltipWithDelay();
  }

  @HostListener('mouseleave')
  void onMouseLeave() {
    _isMouseInside = false;
    hideTooltip();
  }

  @override
  void onClose() {
    super.onClose();
    hideTooltip(immediate: true);
  }

  @HostListener('blur')
  void onBlur(web.FocusEvent event) {
    if (event.relatedTarget == null) return;

    for (var el = event.relatedTarget as web.Element?;
        el != null && el.parentNode != null;
        el = el.parentNode as web.Element?) {
      if (el.getAttribute('class') == overlayContainerClassName) return;
    }

    hideTooltip(immediate: true);
  }
}

@Directive(
  selector: '[clickableTooltipTarget]',
  exportAs: 'tooltipTarget',
)
class ClickableTooltipTargetDirective extends TooltipBehavior
    implements AfterViewInit, OnDestroy {
  late StreamSubscription _tooltipSubscription;
  web.HTMLElement? element;
  bool _tooltipVisible = false;

  ClickableTooltipTargetDirective(
      DomPopupSourceFactory domPopupSourceFactory,
      ViewContainerRef viewContainerRef,
      this.element,
      ChangeDetectorRef changeDetector,
      @Attribute('initPopupAriaAttributes') String initAriaAttributes)
      : super(domPopupSourceFactory, viewContainerRef, element!, changeDetector,
            initAriaAttributes) {
    _tooltipSubscription = tooltipActivate.listen((visible) {
      _tooltipVisible = visible;
    });
  }

  @HostListener('click')
  void onClick() {
    _toggleVisibility();
  }

  void _toggleVisibility() {
    if (_tooltipVisible) {
      hideTooltip(immediate: true);
    } else {
      showTooltip();
    }
  }

  @HostListener('keypress')
  void kbTrigger(web.KeyboardEvent event) {
    if (event.keyCode == 13 || isSpaceKey(event)) {
      _toggleVisibility();
      event.preventDefault();
    }
  }

  @override
  void ngOnDestroy() {
    element = null;
    _tooltipSubscription.cancel();
  }
}

abstract class TooltipTarget extends PopupSourceDirective {
  Tooltip? _tooltip;
  final ViewContainerRef viewContainerRef;
  final web.HTMLElement _element;
  String? _previousDescribedbyId;

  TooltipTarget(DomPopupSourceFactory domPopupSourceFactory,
      this.viewContainerRef, this._element, String initAriaAttributes)
      : super(domPopupSourceFactory, _element, /* referenceDirective */ null,
            /* focusable */ null, initAriaAttributes);

  void setTooltip(Tooltip component) {
    _tooltip = component;
  }

  String? _id;
  @override
  set popupId(String id) {
    super.popupId = id;
    _id = id;
  }

  @override
  void onOpen() {
    if (_id == null) return;
    _previousDescribedbyId = _element.getAttribute('aria-describedby');
    _element.setAttribute('aria-describedby', _id!);
  }

  @override
  void onClose() {
    if (_id == null) return;
    if (_previousDescribedbyId != null) {
      _element.setAttribute('aria-describedby', _previousDescribedbyId!);
    } else {
      _element.removeAttribute('aria-describedby');
    }
  }
}
