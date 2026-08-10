// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:web/web.dart' as web;

/// Provides information of current browser feature.

/// Detects if the current device and platform supports hovering.
///
/// Nexus 9 is a special case here because it does not match the
/// "(hover: none)" media query.
bool supportsHover(web.Window window) =>
    !(window.matchMedia("(hover: none)").matches ||
        window.navigator.userAgent.contains("Nexus 9"));

/// Whether the primary input mechanism on this system is touch.
///
/// Note: this check doesn't confirm the presence of a touchscreen, or that
/// [web.TouchEvent] is supported at all. Any device which doesn't have a mouse
/// or other fine-grained pointing device will pass this check, e.g. a TV, or
/// a PC with alternative input devices.
///
/// Checking if touch events are supported? You probably want
/// [web.TouchEvent.supported] instead.
final bool isTouchInterface =
    web.window.matchMedia('(pointer: coarse)').matches ||
        _hasGlobalProperty('__acxForceTouchEnabled');

/// Returns true if Hammer.js is loaded in the current browser.
///
/// Hammer provides support for detection of additional touch gestures.
/// Apps that want to use Hammer's recognizers need to load
/// https://www.gstatic.com/external_hosted/hammerjs/v2_0_2/hammer.min.js
/// into the browser before bootstrapping.
bool isHammerLoaded() => _hasGlobalProperty('Hammer');

/// Whether the browser supports the Web Animations API.
final bool supportsAnimationApi =
    _hasElementProperty(web.document.createElement('div'), 'animate') &&
        !_hasGlobalProperty('__acxDisableWebAnimationsApi');

/// Whether the browser supports IntersectionObserver.
final bool supportsIntersectionObserver =
    _hasGlobalProperty('IntersectionObserver');

/// Whether the browser supports ResizeObserver.
final bool supportsResizeObserver = _hasGlobalProperty('ResizeObserver');

/// Whether the browser supports position: sticky.
final bool supportsPositionSticky = () {
  var el = web.document.createElement('div') as web.HTMLElement;
  el.style.cssText = 'position: sticky';
  return el.style.position == 'sticky';
}();

/// Whether the current web browser is Firefox.
final bool isFirefox = web.window.navigator.userAgent.contains('Firefox/');

/// Whether the current web browser is MS Edge.
final bool isEdge = web.window.navigator.userAgent.contains('Edge/');

bool _hasGlobalProperty(String property) {
  final val = globalContext.getProperty(property.toJS);
  return val != null;
}

bool _hasElementProperty(web.Element element, String property) {
  final val = (element as JSObject).getProperty(property.toJS);
  return val != null;
}
