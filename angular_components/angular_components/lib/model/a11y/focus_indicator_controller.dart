// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'package:angulardart/di.dart';

const focusIndicatorProviders = [
  FactoryProvider(
      FocusIndicatorController, createFocusIndicatorControllerIfNotAvailable)
];

@Injectable()
FocusIndicatorController createFocusIndicatorControllerIfNotAvailable(
        @Optional() @SkipSelf() FocusIndicatorController? controller) =>
    controller ?? FocusIndicatorController();

/// Utility that attaches an a focus indicator to the page when enabled.
///
/// Only used to improve a11y debugging experience. DO NOT USE IN PRODUCTION!
class FocusIndicatorController {
  web.Element? _focusIndicator;
  int? _repositionLoopId;

  web.Element? _activeElement;
  web.Element? get activeElement => _activeElement;

  bool _enabled = false;
  bool get enabled => _enabled;

  void Function(web.Event)? _onFocusDart;
  web.EventListener? _onFocusJs;
  void Function(web.Event)? _onBlurDart;
  web.EventListener? _onBlurJs;

  set enabled(bool value) {
    if (_enabled == value) return;
    _enabled = value;
    if (_enabled) {
      _turnOnKeyNavMode();
    } else {
      _turnOffKeyNavMode();
    }
  }

  void _turnOnKeyNavMode() {
    _onFocusDart = _onFocus;
    _onFocusJs = _onFocusDart!.toJS;
    web.window.addEventListener('focus', _onFocusJs, true.toJS);

    _onBlurDart = _onBlur;
    _onBlurJs = _onBlurDart!.toJS;
    web.window.addEventListener('blur', _onBlurJs, true.toJS);

    _activeElement = web.document.activeElement;

    _focusIndicator = web.document.createElement('div');
    _focusIndicator!.setAttribute('id', 'acx-focus-indicator');
    (_focusIndicator as web.HTMLElement).style.position = 'fixed';
    (_focusIndicator as web.HTMLElement).style.zIndex = '9999';
    (_focusIndicator as web.HTMLElement).style.outline = '2px solid #ff9800';
    (_focusIndicator as web.HTMLElement).style.pointerEvents = 'none';
    web.document.body!.append(_focusIndicator!);

    _startRepositionLoop();
  }

  void _turnOffKeyNavMode() {
    web.window.removeEventListener('focus', _onFocusJs!, true.toJS);
    web.window.removeEventListener('blur', _onBlurJs!, true.toJS);

    _activeElement = null;

    if (_focusIndicator != null) {
      _focusIndicator!.remove();
      _focusIndicator = null;
    }

    _cancelRepositionLoop();
  }

  void _onFocus(web.Event event) {
    _updateActiveElement(event);
  }

  void _onBlur(web.Event event) {
    Timer.run(() {
      _updateActiveElement(event);
    });
  }

  void _updateActiveElement(web.Event event) {
    if (!_enabled || _activeElement == web.document.activeElement) return;

    if (_activeElement != null) {
      (_activeElement as web.HTMLElement).style.outline = '';
      if (_activeElement!.getAttribute('style')?.isEmpty == true) {
        _activeElement!.removeAttribute('style');
      }
    }

    _activeElement = web.document.activeElement;

    web.console.groupCollapsed(('Active element '
        '[${_activeElement!.tagName.toLowerCase()}] '
        'after "${event.type}"').toJS);
    web.console.log(_activeElement as JSAny?);
    web.console.log(event as JSAny?);
    web.console.groupEnd();

    (_activeElement as web.HTMLElement).style.outline = 'none';
  }

  void _startRepositionLoop() {
    _repositionLoopId = web.window.requestAnimationFrame(((double timestamp) {
      _reposition(timestamp);
    }).toJS);
  }

  void _cancelRepositionLoop() {
    if (_repositionLoopId != null) {
      web.window.cancelAnimationFrame(_repositionLoopId!);
      _repositionLoopId = null;
    }
  }

  void _reposition(dynamic _) {
    var rect = _activeElement!.getBoundingClientRect();
    (_focusIndicator as web.HTMLElement).style.top = '${rect.top}px';
    (_focusIndicator as web.HTMLElement).style.left = '${rect.left}px';
    (_focusIndicator as web.HTMLElement).style.width = '${rect.width}px';
    (_focusIndicator as web.HTMLElement).style.height = '${rect.height}px';

    _startRepositionLoop();
  }
}
