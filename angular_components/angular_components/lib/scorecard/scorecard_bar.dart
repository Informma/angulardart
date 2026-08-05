// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/annotations/rtl_annotation.dart';
import 'package:angulardart_components/utils/browser/dom_service/angular_2.dart';
import 'package:angulardart_components/utils/disposer/disposer.dart';

/// Private directive that catches the scorecard bar element of the scoreboard.
///
/// The directive's role is to handle scrolling within the scoreboard. It
/// provides convenience methods, such as for scrolling left and right, along
/// with computations for determining how far to scroll.
///
/// The rule for scrolling is that the scoreboard will try to scroll such
/// that for any card currently partially covered by a scroll button, it will
/// then finish the scroll with that card's border flush to the client edge.
/// For example, assume that a user clicks on the scroll right button. The
/// scoreboard will then scroll such that the card currently visible (and
/// furthest to the right) will then be the leftmost card after scrolling is
/// done. The reason for this is to make sure that as a user scrolls through the
/// cards, each cards will at one point be fully visible to the user. If we did
/// not take this precaution, then in some situations, some cards will always be
/// partially covered by the scroll buttons, regardless of how the user
/// scrolled.
// TODO(google): move this file to a shared common directory.
@Directive(
  selector: '[scorecardBar]',
)
class ScorecardBarDirective implements OnInit, OnDestroy, AfterViewChecked {
  final _refreshController = StreamController<bool>.broadcast();
  final _disposer = Disposer.oneShot();
  final web.HTMLElement _element;
  final DomService _domService;

  bool _isRtl = false;
  bool _isVertical = false;
  int? _clientSize;
  int? _scrollSize;
  int? _scrollingMove;
  int _transform = 0;
  int _buttonSize = 0;

  ScorecardBarDirective(
    this._domService,
    this._element,
    @Optional() @Inject(rtlToken) bool? isRtl,
  ) {
    _isRtl = isRtl ?? false;
  }

  @override
  void ngOnInit() {
    _disposer.addDisposable(_domService.scheduleRead(_readElement));
    _disposer.addDisposable(_domService.trackLayoutChange(
        () => '$currentClientSize $currentScrollSize',
        (_) {
      _readElement(windowResize: true);
      _refreshController.add(true);
    }, runInAngularZone: true));
  }

  @override
  void ngOnDestroy() => _disposer.dispose();

  @override
  void ngAfterViewChecked() {
    _getButtonSize();
  }

  Stream<bool> get refreshStream => _refreshController.stream;

  @Input()
  set isVertical(bool value) {
    _isVertical = value;
  }

  bool get isScrollable =>
      _clientSize != null && _scrollSize != null && _clientSize! < _scrollSize!;

  bool get atStart => _transform == 0;

  bool get atEnd => _clientSize != null && _scrollSize != null
      ? _transform.abs() + _clientSize! >= _scrollSize!
      : false;

  bool get nearStart => _scrollingMove != null && _transform.abs() - _scrollingMove! <= 0;

  bool get nearEnd => _clientSize != null && _scrollSize != null && _scrollingMove != null
      ? _transform.abs() + _clientSize! + _scrollingMove! >= _scrollSize!
      : false;

  int get currentClientSize {
    final parent = _element.parentNode as web.HTMLElement;
    return _isVertical ? parent.clientHeight : parent.clientWidth;
  }

  int get currentScrollSize =>
      _isVertical ? _element.scrollHeight : _element.scrollWidth;

  String get transformAxis => _isVertical ? 'Y' : 'X';

  int get currentTransformSize => _transform.abs();

  int get currentButtonSize => _buttonSize;

  void scrollBack() {
    _disposer.addDisposable(_domService.scheduleRead(() {
      _readElement();
      var newValue = _scrollingMove!;
      assert(_buttonSize > 0);
      if (atEnd) newValue -= _buttonSize;
      if (_transform.abs() - newValue < 0) {
        newValue = _transform.abs();
      }
      if (_isVertical || !_isRtl) {
        _transform += newValue;
      } else {
        _transform -= newValue;
      }
      _updateTransform();
    }));
  }

  void scrollForward() {
    _disposer.addDisposable(_domService.scheduleRead(() {
      _readElement();
      var newValue = _scrollingMove!;
      assert(_buttonSize > 0);
      if (atStart) newValue -= _buttonSize;
      if (_scrollSize! + _transform < newValue + _clientSize!) {
        newValue = _scrollSize! + _transform - _clientSize!;
      }
      if (_isVertical || !_isRtl) {
        _transform -= newValue;
      } else {
        _transform += newValue;
      }
      _updateTransform();
    }));
  }

  void reset() {
    if (_transform != 0) {
      _transform = 0;
      _updateTransform();
    }
    _disposer.addDisposable(_domService.scheduleRead(() {
      _readElement();
      _refreshController.add(true);
    }));
  }

  void _updateTransform() {
    _disposer.addDisposable(_domService.scheduleWrite(() {
      _element.style.transform = 'translate$transformAxis(${_transform}px)';
      _refreshController.add(true);
    }));
  }

  void _readElement({bool windowResize = false}) {
    assert(_domService.isReadingDom);
    _clientSize = currentClientSize;
    _scrollSize = currentScrollSize;

    if (windowResize && !isScrollable && _transform != 0) {
      reset();
      return;
    }

    _getButtonSize();

    if (_element.children.length > 0 && _scrollSize! > 0) {
      var avg = _scrollSize! / _element.children.length;
      if (_clientSize! < avg) {
        _scrollingMove = _clientSize!;
      } else {
        var temp = ((_clientSize! - _buttonSize * 2) / avg).floor();
        _scrollingMove = (temp * avg).floor();
      }
    } else {
      _scrollingMove = _clientSize!;
    }
  }

  void _getButtonSize() {
    if (_buttonSize == 0) {
      final parent = _element.parentNode as web.HTMLElement;
      final buttons = parent.querySelectorAll('.scroll-button');
      for (var i = 0; i < buttons.length; i++) {
        var button = buttons.item(i)! as web.HTMLElement;
        var dimension = _isVertical ? 'height' : 'width';
        var size = web.window.getComputedStyle(button).getPropertyValue(dimension);
        if (size != 'auto') {
          final parsed =
              double.tryParse(size.replaceAll(RegExp('[^0-9.]'), '')) ?? 0.0;
          _buttonSize = parsed.floor();
          break;
        }
      }
    }
  }
}
