// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/focus/focus.dart';
import 'package:angulardart_components/utils/browser/dom_iterator/dom_iterator.dart';
import 'package:angulardart_components/utils/disposer/disposer.dart';

/// Focus trap designed for usage in popups and modals.
///
/// After focus enters components it ensures that focus will not leave it.
@Component(
  selector: 'focus-trap',
  templateUrl: 'focus_trap.html',
  styleUrls: ['focus_trap.scss.css'],
  directives: [FocusContentWrapper, AutoFocusDirective],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class FocusTrapComponent implements OnDestroy {
  final _disposer = Disposer.oneShot();

  AutoFocusDirective? _autoFocusDirective;
  @ContentChild(AutoFocusDirective)
  set autoFocus(AutoFocusDirective value) {
    _autoFocusDirective = value;
  }

  FocusContentWrapper? _content;
  @ViewChild(FocusContentWrapper)
  set content(FocusContentWrapper value) {
    _content = value;
    if (_content != null && _autoFocusDirective == null) {
      _content!._element.focus();
    }
  }

  @override
  void ngOnDestroy() {
    _disposer.dispose();
  }

  void focusFirst() {
    _focusFirstInOrder(
        DomTreeIterator(_content!.element, scope: _content!.element));
  }

  void focusLast() {
    _focusFirstInOrder(DomTreeIterator(_content!.element,
        scope: _content!.element, reverse: true, wraps: true));
  }

  void _focusFirstInOrder(Iterator<web.Element> iterator) {
    while (iterator.moveNext()) {
      var el = iterator.current;
      if (el.isA<web.HTMLElement>()) {
        var htmlEl = el as web.HTMLElement;
        if (htmlEl.tabIndex == 0 && _visible(htmlEl)) {
          htmlEl.focus();
          return;
        }
      }
    }
    _focusDefault();
  }

  bool _visible(web.HTMLElement element) {
    return (element.offsetWidth != 0 && element.offsetHeight != 0);
  }

  void _focusDefault() {
    if (_autoFocusDirective != null) {
      _autoFocusDirective!.focus();
    } else if (_content != null) {
      (_content!.element as web.HTMLElement).focus();
    }
  }
}

@Directive(
  selector: '[focusContentWrapper]',
)
class FocusContentWrapper extends FocusableDirective {
  final web.HTMLElement _element;
  FocusContentWrapper(super.element)
      : _element = element;

  web.Element get element => _element;
}
