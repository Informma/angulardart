// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:js_interop';
import 'dart:math' as math;

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:intl/intl.dart';
import 'package:quiver/check.dart';
import 'package:angulardart_components/interfaces/has_disabled.dart';
import 'package:angulardart_components/utils/browser/dom_service/dom_service.dart';

@Component(
  selector: 'material-slider',
  providers: [ExistingProvider(HasDisabled, MaterialSliderComponent)],
  templateUrl: 'material_slider.html',
  styleUrls: ['material_slider.scss.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
  directives: [
    NgIf,
  ],
  // TODO(google): Change to `Visibility.local` to reduce code size.
  visibility: Visibility.all,
)
class MaterialSliderComponent implements AfterChanges, HasDisabled {
  final ChangeDetectorRef _changeDetector;
  final DomService _domService;

  MaterialSliderComponent(this._changeDetector, this._domService);

  @HostBinding('attr.aria-disabled')
  String get disabledStr => '$disabled';

  @override
  @HostBinding('class.is-disabled')
  @HostBinding('attr.aria-disabled')
  @Input()
  bool disabled = false;

  bool _isTwoSided = false;

  bool get isTwoSided => _isTwoSided;
  @Input()
  set isTwoSided(bool isTwoSided) {
    _isTwoSided = isTwoSided;
  }

  @Input()
  num value = 0;

  final _changeController = StreamController<num>.broadcast(sync: true);

  @Output()
  Stream<num> get valueChange => _changeController.stream;

  num _leftValue = 0;

  num get leftValue => isTwoSided ? _leftValue : min;
  @Input()
  set leftValue(num val) {
    if (isTwoSided) {
      _leftValue = val;
    }
  }

  final _leftChangeController = StreamController<num>.broadcast(sync: true);

  @Output()
  Stream<num> get leftValueChange => _leftChangeController.stream;

  @Input()
  num min = 0;

  @Input()
  num max = 100;

  @Input()
  num step = 1;

  double get progressPercent => (100.0 * (value - min) / (max - min));

  double get leftProgressPercent =>
      isTwoSided ? (100.0 * (leftValue - min) / (max - min)) : 0;

  @override
  void ngAfterChanges() {
    assert(() {
      checkArgument(min < max, message: 'Failed assertion: $min < $max');
      checkArgument(step > 0, message: 'Failed assertion: $step > 0');
      checkArgument(_divisible(max - min, step),
          message: 'Failed assertion: ($max - $min) % $step ~ 0.');
      checkArgument(value >= min,
          message: 'Failed assertion: $value >= $min');
      checkArgument(value <= max,
          message: 'Failed assertion: $value <= $max');
      checkArgument(_divisible(value - min, step),
          message: 'Failed assertion: ($value - $min) % $step ~ 0.');

      if (isTwoSided) {
        checkArgument(leftValue <= value,
            message: 'Failed assertion: $leftValue <= $value');
        checkArgument(leftValue >= min,
            message: 'Failed assertion: $leftValue >= $min');
        checkArgument(leftValue <= max,
            message: 'Failed assertion: $leftValue <= $max');
        checkArgument(_divisible(leftValue - min, step),
            message:
                'Failed assertion: ($leftValue - $min) % $step ~ 0.');
      }
      return true;
    }());
  }

  bool _divisible(num value, num step) {
    if (step is int) {
      return value % step == 0;
    } else {
      final epsilon = 1e-10;
      num remainder = value % step;
      if (remainder < epsilon) return true;
      if (step - remainder < epsilon) return true;
      return false;
    }
  }

  @ViewChild('container')
  late web.Element container;

  bool get isRtl => Bidi.isRtlLanguage(Intl.defaultLocale ?? '');

  bool isLeftKnobSelected = false;

  bool isRightKnobSelected = false;

  web.EventListener? _mouseMoveListener;
  web.EventListener? _mouseUpListener;
  web.EventListener? _touchMoveListener;
  web.EventListener? _touchEndListener;

  void _setValueToMousePosition(num position) {
    _domService.scheduleRead(() {
      final containerWidth = (container as web.HTMLElement).clientWidth;
      if (containerWidth == 0) return;
      final containerLeft =
          container.getBoundingClientRect().left + web.window.scrollX;
      final fractionOfTrackLtr = (position - containerLeft) / containerWidth;
      final fractionOfTrack =
          isRtl ? 1.0 - fractionOfTrackLtr : fractionOfTrackLtr;
      final scaledValue = (fractionOfTrack * (max - min));
      final halfStep = step / 2;
      final unboundedValue = min +
          (scaledValue ~/ step) * step +
          (scaledValue.remainder(step) > halfStep ? step : 0);
      final newValue = math.max(min, math.min(max, unboundedValue));
      if (isLeftKnobSelected ||
          (newValue < leftValue && !isRightKnobSelected)) {
        if (newValue != leftValue) {
          leftValue = _getValidLeftValue(value, newValue);
          _leftChangeController.add(leftValue);
        }
      } else {
        if (newValue != value) {
          value = _getValidRightValue(leftValue, newValue);
          _changeController.add(value);
        }
      }
    });
  }

  bool isDragging = false;

  void mouseDown(web.MouseEvent event) {
    if (disabled) return;
    if (event.button != 0) return;
    event.preventDefault();
    _setValueToMousePosition(event.pageX);
    isDragging = true;
    _changeDetector.markForCheck();
    _mouseMoveListener = (web.Event e) {
      e.preventDefault();
      _setValueToMousePosition((e as web.MouseEvent).pageX);
    }.toJS;
    _mouseUpListener = (web.Event e) {
      e.preventDefault();
      web.document.removeEventListener('mousemove', _mouseMoveListener!);
      web.document.removeEventListener('mouseup', _mouseUpListener!);
      _mouseMoveListener = null;
      _mouseUpListener = null;
      isLeftKnobSelected = false;
      isRightKnobSelected = false;
      isDragging = false;
      _changeDetector.markForCheck();
    }.toJS;
    web.document.addEventListener('mousemove', _mouseMoveListener);
    web.document.addEventListener('mouseup', _mouseUpListener);
  }

  void touchStart(web.TouchEvent event) {
    if (disabled) return;
    event.preventDefault();
    final touch = event.targetTouches.item(0)!;
    _setValueToMousePosition(touch.pageX);
    isDragging = true;
    _changeDetector.markForCheck();
    _touchMoveListener = (web.Event e) {
      e.preventDefault();
      final t = (e as web.TouchEvent).targetTouches.item(0)!;
      _setValueToMousePosition(t.pageX);
    }.toJS;
    _touchEndListener = (web.Event e) {
      e.preventDefault();
      web.document.removeEventListener('touchmove', _touchMoveListener!);
      web.document.removeEventListener('touchend', _touchEndListener!);
      _touchMoveListener = null;
      _touchEndListener = null;
      isLeftKnobSelected = false;
      isRightKnobSelected = false;
      isDragging = false;
      _changeDetector.markForCheck();
    }.toJS;
    web.document.addEventListener('touchmove', _touchMoveListener);
    web.document.addEventListener('touchend', _touchEndListener);
  }

  void knobKeyDown(web.KeyboardEvent event, {bool isLeftKnobPressed = false}) {
    if (disabled) return;
    var currValue = isLeftKnobPressed ? leftValue : value;
    var newValue = currValue;
    final bigStepSize = ((max - min) / 10.0).ceil();
    final sign = isRtl ? -1 : 1;
    switch (event.keyCode) {
      case 40:
      case 37:
        newValue = math.max(min, math.min(max, currValue - step * sign));
        break;
      case 38:
      case 39:
        newValue = math.max(min, math.min(max, currValue + step * sign));
        break;
      case 33:
        newValue = math.max(min, math.min(max, currValue + step * bigStepSize));
        break;
      case 34:
        newValue = math.max(min, math.min(max, currValue - step * bigStepSize));
        break;
    }
    if (isLeftKnobPressed) {
      if (newValue != leftValue) {
        leftValue = _getValidLeftValue(value, newValue);
        _leftChangeController.add(leftValue);
      }
    } else if (newValue != value) {
      value = _getValidRightValue(leftValue, newValue);
      _changeController.add(value);
    }
  }

  num _getValidRightValue(num valA, num valB, {bool isRtl = false}) =>
      isRtl ? math.min(valA, valB) : math.max(valA, valB);

  num _getValidLeftValue(num valA, num valB, {bool isRtl = false}) =>
      isRtl ? math.max(valA, valB) : math.min(valA, valB);
}
