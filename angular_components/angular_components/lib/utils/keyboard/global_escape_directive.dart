// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';

/// Directive to listen to the escape key globally.
///
/// Useful for things like having a dialog close when the escape key is pressed
/// even when the dialog is not focused.
///
/// WARNING: If listeners to the onEscape stream are on the page but hidden,
/// they will still be registered to the stream. To avoid that situation, use
/// this directive only within a deferredContent directive.
@Directive(selector: '[globalEscape]')
class GlobalEscapeDirective implements OnDestroy {
  final web.Window _window;
  final _escapeController = StreamController<web.KeyboardEvent>.broadcast(sync: true);
  StreamSubscription? _subscription;

  @Output()
  Stream<web.KeyboardEvent> get globalEscape =>
      _escapeController.stream.where((event) => event.keyCode == 27);

  GlobalEscapeDirective(this._window) {
    _subscription = _escapeController.stream.listen(null);
    _window.addEventListener('keyup', ((web.KeyboardEvent event) {
      _escapeController.add(event);
    }).toJS);
  }

  @override
  void ngOnDestroy() {
    _subscription?.cancel();
    _escapeController.close();
  }
}
