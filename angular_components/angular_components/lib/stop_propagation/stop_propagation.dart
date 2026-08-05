// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/utils/browser/events/events.dart';

@Directive(
  selector: '[stopPropagation]',
)
class StopPropagationDirective implements OnDestroy {
  late final web.EventListener _clickHandler;
  late final web.EventListener _keyPressHandler;
  final web.Element _element;

  StopPropagationDirective(this._element) {
    _clickHandler = _handleClick.toJS;
    _keyPressHandler = _handleKeyPress.toJS;
    _element.addEventListener('click', _clickHandler);
    _element.addEventListener('keypress', _keyPressHandler);
  }

  @override
  void ngOnDestroy() {
    _element.removeEventListener('click', _clickHandler);
    _element.removeEventListener('keypress', _keyPressHandler);
  }

  void _handleClick(web.MouseEvent e) {
    e.stopPropagation();
  }

  void _handleKeyPress(web.KeyboardEvent e) {
    if (e.keyCode == 13 || isSpaceKey(e)) {
      e.stopPropagation();
    }
  }
}
