// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/laminate/enums/alignment.dart';
import 'package:angulardart_components/laminate/popup/popup.dart'
    show DomPopupSourceFactory;
import 'package:angulardart_components/material_tooltip/module.dart';
import 'package:angulardart_components/model/action/delayed_action.dart';
import 'package:angulardart_components/utils/angular/css/css.dart';
import 'package:angulardart_components/utils/browser/feature_detector/feature_detector.dart';
import 'package:angulardart_components/utils/disposer/disposer.dart';

import 'ink_tooltip.dart';
import 'ink_tooltip.template.dart' as ng;
import 'tooltip_controller.dart';
import 'tooltip_source.dart' show tooltipShowDelay;
import 'tooltip_target.dart';

@Directive(
  selector: '[materialTooltip]',
  providers: [tooltipControllerBinding],
)
class MaterialTooltipDirective extends TooltipTarget
    implements OnDestroy, OnInit, AfterViewInit {
  final _disposer = Disposer.multi();
  final ComponentLoader _viewLoader;
  final ChangeDetectorRef _changeDetector;
  final String _popupClassName;
  final web.Window _window;

  String? _lastText;
  bool _isInitialized = false;
  Tooltip? _tooltip;
  bool _canShow = true;
  bool _isShown = false;
  MaterialInkTooltipComponent? _inkTooltip;
  late DelayedAction _delayedActivate;
  web.HTMLElement element;
  late bool inLongPress;
  bool _hostListenersAttached = false;

  ComponentRef? _componentRef;

  web.EventListener? _clickListener;
  web.EventListener? _blurListener;
  web.EventListener? _focusListener;
  web.EventListener? _mouseOverListener;
  web.EventListener? _mouseLeaveListener;
  web.EventListener? _pressListener;
  web.EventListener? _touchEndListener;

  MaterialTooltipDirective(
      DomPopupSourceFactory domPopupSourceFactory,
      ViewContainerRef viewContainerRef,
      this.element,
      this._viewLoader,
      this._changeDetector,
      this._window,
      @Attribute('initPopupAriaAttributes') String initAriaAttributes,
      @Attribute('tooltipClass') String tooltipClass)
      : _popupClassName =
            constructEncapsulatedCss(tooltipClass, element.classList),
        super(domPopupSourceFactory, viewContainerRef, element,
            initAriaAttributes) {
    inLongPress = false;
    _delayedActivate = DelayedAction(tooltipShowDelay, _activate);
  }

  void _attachHostListeners() {
    if (_hostListenersAttached) return;
    _hostListenersAttached = true;

    _clickListener = ((web.Event _) {
      hide(true);
    }).toJS;
    element.addEventListener('click', _clickListener);
    _disposer.addFunction(() {
      element.removeEventListener('click', _clickListener!);
    });

    _blurListener = ((web.Event _) {
      hide(true);
    }).toJS;
    element.addEventListener('blur', _blurListener);
    _disposer.addFunction(() {
      element.removeEventListener('blur', _blurListener!);
    });

    _focusListener = ((web.Event _) {
      show();
    }).toJS;
    element.addEventListener('focus', _focusListener);
    _disposer.addFunction(() {
      element.removeEventListener('focus', _focusListener!);
    });

    if (supportsHover(_window)) {
      _mouseOverListener = ((web.Event _) {
        show();
      }).toJS;
      element.addEventListener('mouseover', _mouseOverListener);
      _disposer.addFunction(() {
        element.removeEventListener('mouseover', _mouseOverListener!);
      });

      _mouseLeaveListener = ((web.Event _) {
        hide();
      }).toJS;
      element.addEventListener('mouseleave', _mouseLeaveListener);
      _disposer.addFunction(() {
        element.removeEventListener('mouseleave', _mouseLeaveListener!);
      });
    }

    if (isHammerLoaded()) {
      _pressListener = ((web.Event e) {
        handleLongPress(e);
      }).toJS;
      element.addEventListener('press', _pressListener);
      _disposer.addFunction(() {
        element.removeEventListener('press', _pressListener!);
      });

      _touchEndListener = ((web.Event e) {
        endLongPress(e as web.TouchEvent);
      }).toJS;
      element.addEventListener('touchend', _touchEndListener);
      _disposer.addFunction(() {
        element.removeEventListener('touchend', _touchEndListener!);
      });
    }
  }

  void handleLongPress(web.Event _) {
    inLongPress = true;
    show();
  }

  void endLongPress(web.TouchEvent event) {
    if (inLongPress) {
      event.preventDefault();

      inLongPress = false;
      hide(true);
    }
  }

  void show() {
    if (_isShown || !_canShow) return;
    _isShown = true;
    _maybeLoadTooltip();
    _delayedActivate.start();
  }

  void hide([bool immediate = false]) {
    if (!_isShown) return;
    _isShown = false;
    _delayedActivate.cancel();
    _tooltip?.deactivate(immediate: immediate);
  }

  void _maybeLoadTooltip() {
    if (_isInitialized) return;
    _isInitialized = true;
    _componentRef = _viewLoader.loadNextToLocation(
        ng.MaterialInkTooltipComponentNgFactory, viewContainerRef);

    _inkTooltip = _componentRef!.instance;
    _disposer.addDisposable(_componentRef!.destroy);

    _inkTooltip!
      ..popupClassName = _popupClassName
      ..text = _lastText
      ..tooltipRef = this;
    if (positions != null) {
      _inkTooltip!.positions = positions!;
    }
  }

  @override
  void setTooltip(Tooltip component) {
    if (_tooltip == null) _delayedActivate.start();
    _tooltip = component;
  }

  void _activate() {
    _changeDetector.markForCheck();
    _tooltip!.activate();
  }

  @Input('materialTooltip')
  set text(String text) {
    _lastText = text;
    _inkTooltip?.text = text;
  }

  @Input('showTooltipIf')
  set canShow(bool value) {
    if (value == _canShow) return;
    if (value) {
      _attachHostListeners();
    } else {
      _tooltip?.deactivate(immediate: true);
      _delayedActivate.cancel();
    }
    _canShow = value;
  }

  @Input('tooltipPositions')
  List<RelativePosition>? positions;

  @override
  void ngOnInit() {
    if (_canShow) _attachHostListeners();
  }

  @override
  void ngOnDestroy() {
    _tooltip?.deactivate(immediate: true);
    _delayedActivate.cancel();
    _disposer.dispose();
  }
}
