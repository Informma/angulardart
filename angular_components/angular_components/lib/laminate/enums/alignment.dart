// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:math';

import 'package:angulardart_components/src/laminate/enums/base.dart';

export 'package:angulardart_components/src/laminate/enums/base.dart';

/// Enum for browser display alignment options.
class Alignment implements ElementStyleEnum {
  static const before = BeforeCustomAlignment();
  static const start = Alignment('Start', 'flex-start');
  static const center = Alignment('Center', 'center');
  static const end = Alignment('End', 'flex-end');
  static const after = AfterCustomAlignment();

  @Deprecated('Use before instead')
  // ignore: constant_identifier_names
  static const Before = before;
  @Deprecated('Use start instead')
  // ignore: constant_identifier_names
  static const Start = start;
  @Deprecated('Use center instead')
  // ignore: constant_identifier_names
  static const Center = center;
  @Deprecated('Use end instead')
  // ignore: constant_identifier_names
  static const End = end;
  @Deprecated('Use after instead')
  // ignore: constant_identifier_names
  static const After = after;

  final String _displayName;
  final String? _cssPropertyValue;

  /// Parses one of the following values into an [Alignment]:
  /// - 'start'
  /// - 'center'
  /// - 'end'
  /// - 'before'
  /// - 'after'
  ///
  /// A null value is treated as 'start'. Else throws [ArgumentError].
  factory Alignment.parse(String displayName) {
    if (displayName == 'start') {
      return Alignment.start;
    } else if (displayName == 'center') {
      return Alignment.center;
    } else if (displayName == 'end') {
      return Alignment.end;
    } else if (displayName == 'before') {
      return Alignment.before;
    } else if (displayName == 'after') {
      return Alignment.after;
    } else {
      throw ArgumentError.value(displayName, 'displayName');
    }
  }

  const Alignment(this._displayName, this._cssPropertyValue);

  @override
  void apply(SetPropertyFn setProperty) {
    setProperty('align-items', _cssPropertyValue);
  }

  /// Whether [calcLeft] and [calcTop] can be used without measuring the size
  /// of the content being aligned.
  ///
  /// This is provided to optimize positioning logic.
  bool get requiresContentSizeToPosition => this != start;

  /// Returns the calculated x position from [sourceRect].
  ///
  /// If [contentRect] is provided, it is considered to be the size of the
  /// content being aligned *if* it were visible.
  num calcLeft(Rectangle sourceRect, [Rectangle? contentRect]) {
    if (requiresContentSizeToPosition && contentRect == null) {
      throw ArgumentError.notNull('contentRect');
    }
    var left = sourceRect.left;
    if (this == center) {
      left += sourceRect.width / 2 - contentRect!.width / 2;
    } else if (this == end) {
      left += sourceRect.width - contentRect!.width;
    }
    return left;
  }

  /// Returns the calculated y position from [sourceRect].
  ///
  /// If [contentRect] is provided, it is considered to be the size of the
  /// content being aligned *if* it were visible.
  num calcTop(Rectangle sourceRect, [Rectangle? contentRect]) {
    if (requiresContentSizeToPosition && contentRect == null) {
      throw ArgumentError.notNull('contentRect');
    }
    var top = sourceRect.top;
    if (this == center) {
      top += sourceRect.height / 2 - contentRect!.height / 2;
    } else if (this == end) {
      top += sourceRect.height - contentRect!.height;
    }
    return top;
  }

  /// Returns a common CSS class in the format of 'align-x-{{name}}'.
  String get cssClassX => 'align-x-${_displayName.toLowerCase()}';

  /// Returns a common CSS class in the format of 'align-y-{{name}}'.
  String get cssClassY => 'align-y-${_displayName.toLowerCase()}';

  @override
  String toString() => 'Alignment {$_displayName}';
}

abstract class _CustomAlignment extends Alignment {
  const _CustomAlignment(String displayName) : super(displayName, null);

  @override
  void apply(SetPropertyFn setProperty) {
    throw UnsupportedError('Cannot be reflected as a CSS style.');
  }

  @override
  final cssClassX = '';

  @override
  final cssClassY = '';
}

class BeforeCustomAlignment extends _CustomAlignment {
  const BeforeCustomAlignment() : super('Before');

  @override
  final requiresContentSizeToPosition = true;

  @override
  num calcLeft(Rectangle sourceRect, [Rectangle? contentRect]) {
    return sourceRect.left + -contentRect!.width;
  }

  @override
  num calcTop(Rectangle sourceRect, [Rectangle? contentRect]) {
    return sourceRect.top - contentRect!.height;
  }
}

class AfterCustomAlignment extends _CustomAlignment {
  const AfterCustomAlignment() : super('After');

  @override
  final requiresContentSizeToPosition = false;

  @override
  num calcLeft(Rectangle sourceRect, [Rectangle? contentRect]) {
    return sourceRect.left + sourceRect.width;
  }

  @override
  num calcTop(Rectangle sourceRect, [Rectangle? contentRect]) {
    return sourceRect.top + sourceRect.height;
  }
}

/// A position relative to another point in a 2-dimensional plane.
///
/// A pair [originX] and [originY] defines how to align relative to the point.
class RelativePosition {
  /// A set of [RelativePosition]s that are covering the point.
  static const overlapAlignments = [
    RelativePosition(originX: Alignment.start, originY: Alignment.start),
    RelativePosition(
        originX: Alignment.end,
        originY: Alignment.start,
        animationOrigin: _AnimationOrigins.downLeft),
    RelativePosition(
        originX: Alignment.start,
        originY: Alignment.end,
        animationOrigin: _AnimationOrigins.upRight),
    RelativePosition(
        originX: Alignment.end,
        originY: Alignment.end,
        animationOrigin: _AnimationOrigins.upLeft),
    RelativePosition(
        originX: Alignment.center,
        originY: Alignment.start,
        animationOrigin: _AnimationOrigins.down),
    RelativePosition(
        originX: Alignment.center,
        originY: Alignment.end,
        animationOrigin: _AnimationOrigins.up),
  ];

  static const inlinePositions = [
    inlineBottom,
    inlineBottomLeft,
    inlineBottomRight,
    inlineTop,
    inlineTopLeft,
    inlineTopRight,
  ];
  @Deprecated('Use inlinePositions instead')
  // ignore: constant_identifier_names
  static const InlinePositions = inlinePositions;

  static const inlineBottom =
      RelativePosition(animationOrigin: _AnimationOrigins.down);
  @Deprecated('Use inlineBottom instead')
  // ignore: constant_identifier_names
  static const InlineBottom = inlineBottom;

  static const inlineTop = RelativePosition(
      originY: Alignment.end, animationOrigin: _AnimationOrigins.up);
  @Deprecated('Use inlineTop instead')
  // ignore: constant_identifier_names
  static const InlineTop = inlineTop;

  static const inlineBottomLeft = RelativePosition(
      originX: Alignment.end, animationOrigin: _AnimationOrigins.downLeft);
  @Deprecated('Use inlineBottomLeft instead')
  // ignore: constant_identifier_names
  static const InlineBottomLeft = inlineBottomLeft;

  static const inlineTopLeft = RelativePosition(
      originX: Alignment.end,
      originY: Alignment.end,
      animationOrigin: _AnimationOrigins.upLeft);
  @Deprecated('Use inlineTopLeft instead')
  // ignore: constant_identifier_names
  static const InlineTopLeft = inlineTopLeft;

  static const inlineBottomRight = RelativePosition(
      originX: Alignment.start, animationOrigin: _AnimationOrigins.downRight);
  @Deprecated('Use inlineBottomRight instead')
  // ignore: constant_identifier_names
  static const InlineBottomRight = inlineBottomRight;

  static const inlineTopRight = RelativePosition(
      originX: Alignment.start,
      originY: Alignment.end,
      animationOrigin: _AnimationOrigins.upRight);
  @Deprecated('Use inlineTopRight instead')
  // ignore: constant_identifier_names
  static const InlineTopRight = inlineTopRight;

  static const offsetPositions = [
    offsetBottomRight,
    offsetBottomLeft,
    offsetTopRight,
    offsetTopLeft
  ];
  @Deprecated('Use offsetPositions instead')
  // ignore: constant_identifier_names
  static const OffsetPositions = offsetPositions;

  static const offsetBottomRight = RelativePosition(
      originX: Alignment.after,
      originY: Alignment.after,
      animationOrigin: _AnimationOrigins.downRight);
  @Deprecated('Use offsetBottomRight instead')
  // ignore: constant_identifier_names
  static const OffsetBottomRight = offsetBottomRight;

  static const offsetBottomLeft = RelativePosition(
      originX: Alignment.before,
      originY: Alignment.after,
      animationOrigin: _AnimationOrigins.downLeft);
  @Deprecated('Use offsetBottomLeft instead')
  // ignore: constant_identifier_names
  static const OffsetBottomLeft = offsetBottomLeft;

  static const offsetTopRight = RelativePosition(
      originX: Alignment.after,
      originY: Alignment.before,
      animationOrigin: _AnimationOrigins.upRight);
  @Deprecated('Use offsetTopRight instead')
  // ignore: constant_identifier_names
  static const OffsetTopRight = offsetTopRight;

  static const offsetTopLeft = RelativePosition(
      originX: Alignment.before,
      originY: Alignment.before,
      animationOrigin: _AnimationOrigins.upLeft);
  @Deprecated('Use offsetTopLeft instead')
  // ignore: constant_identifier_names
  static const OffsetTopLeft = offsetTopLeft;

  static const comprehensiveOffsetPositions = [
    adjacentCardinal,
    adjacentTopEdge,
    adjacentRightEdge,
    adjacentBottomEdge,
    adjacentLeftEdge,
    offsetPositions,
  ];
  @Deprecated('Use comprehensiveOffsetPositions instead')
  // ignore: constant_identifier_names
  static const ComprehensiveOffsetPositions = comprehensiveOffsetPositions;

  static const adjacentCardinal = [
    adjacentTop,
    adjacentRight,
    adjacentBottom,
    adjacentLeft
  ];
  @Deprecated('Use adjacentCardinal instead')
  // ignore: constant_identifier_names
  static const AdjacentCardinal = adjacentCardinal;

  static const adjacentTopEdge = [
    adjacentTop,
    adjacentTopLeft,
    adjacentTopRight
  ];
  @Deprecated('Use adjacentTopEdge instead')
  // ignore: constant_identifier_names
  static const AdjacentTopEdge = adjacentTopEdge;
  static const adjacentTopLeft = RelativePosition(
      originX: Alignment.start,
      originY: Alignment.before,
      animationOrigin: _AnimationOrigins.upRight);
  @Deprecated('Use adjacentTopLeft instead')
  // ignore: constant_identifier_names
  static const AdjacentTopLeft = adjacentTopLeft;
  static const adjacentTop = RelativePosition(
      originX: Alignment.center,
      originY: Alignment.before,
      animationOrigin: _AnimationOrigins.up);
  @Deprecated('Use adjacentTop instead')
  // ignore: constant_identifier_names
  static const AdjacentTop = adjacentTop;
  static const adjacentTopRight = RelativePosition(
      originX: Alignment.end,
      originY: Alignment.before,
      animationOrigin: _AnimationOrigins.upLeft);
  @Deprecated('Use adjacentTopRight instead')
  // ignore: constant_identifier_names
  static const AdjacentTopRight = adjacentTopRight;

  static const adjacentRightEdge = [
    adjacentRight,
    adjacentRightTop,
    adjacentRightBottom
  ];
  @Deprecated('Use adjacentRightEdge instead')
  // ignore: constant_identifier_names
  static const AdjacentRightEdge = adjacentRightEdge;
  static const adjacentRightTop = RelativePosition(
      originX: Alignment.after,
      originY: Alignment.start,
      animationOrigin: _AnimationOrigins.downRight);
  @Deprecated('Use adjacentRightTop instead')
  // ignore: constant_identifier_names
  static const AdjacentRightTop = adjacentRightTop;
  static const adjacentRight = RelativePosition(
      originX: Alignment.after,
      originY: Alignment.center,
      animationOrigin: _AnimationOrigins.right);
  @Deprecated('Use adjacentRight instead')
  // ignore: constant_identifier_names
  static const AdjacentRight = adjacentRight;
  static const adjacentRightBottom = RelativePosition(
      originX: Alignment.after,
      originY: Alignment.end,
      animationOrigin: _AnimationOrigins.upRight);
  @Deprecated('Use adjacentRightBottom instead')
  // ignore: constant_identifier_names
  static const AdjacentRightBottom = adjacentRightBottom;

  static const adjacentBottomEdge = [
    adjacentBottom,
    adjacentBottomLeft,
    adjacentBottomRight
  ];
  @Deprecated('Use adjacentBottomEdge instead')
  // ignore: constant_identifier_names
  static const AdjacentBottomEdge = adjacentBottomEdge;
  static const adjacentBottomRight = RelativePosition(
      originX: Alignment.end,
      originY: Alignment.after,
      animationOrigin: _AnimationOrigins.downLeft);
  @Deprecated('Use adjacentBottomRight instead')
  // ignore: constant_identifier_names
  static const AdjacentBottomRight = adjacentBottomRight;
  static const adjacentBottom = RelativePosition(
      originX: Alignment.center,
      originY: Alignment.after,
      animationOrigin: _AnimationOrigins.down);
  @Deprecated('Use adjacentBottom instead')
  // ignore: constant_identifier_names
  static const AdjacentBottom = adjacentBottom;
  static const adjacentBottomLeft = RelativePosition(
      originX: Alignment.start,
      originY: Alignment.after,
      animationOrigin: _AnimationOrigins.downRight);
  @Deprecated('Use adjacentBottomLeft instead')
  // ignore: constant_identifier_names
  static const AdjacentBottomLeft = adjacentBottomLeft;

  static const adjacentLeftEdge = [
    adjacentLeft,
    adjacentLeftTop,
    adjacentLeftBottom
  ];
  @Deprecated('Use adjacentLeftEdge instead')
  // ignore: constant_identifier_names
  static const AdjacentLeftEdge = adjacentLeftEdge;
  static const adjacentLeftBottom = RelativePosition(
      originX: Alignment.before,
      originY: Alignment.end,
      animationOrigin: _AnimationOrigins.upLeft);
  @Deprecated('Use adjacentLeftBottom instead')
  // ignore: constant_identifier_names
  static const AdjacentLeftBottom = adjacentLeftBottom;
  static const adjacentLeft = RelativePosition(
      originX: Alignment.before,
      originY: Alignment.center,
      animationOrigin: _AnimationOrigins.left);
  @Deprecated('Use adjacentLeft instead')
  // ignore: constant_identifier_names
  static const AdjacentLeft = adjacentLeft;
  static const adjacentLeftTop = RelativePosition(
      originX: Alignment.before,
      originY: Alignment.start,
      animationOrigin: _AnimationOrigins.downLeft);
  @Deprecated('Use adjacentLeftTop instead')
  // ignore: constant_identifier_names
  static const AdjacentLeftTop = adjacentLeftTop;

  final Alignment originX;
  final Alignment originY;
  final String? animationOrigin;

  const RelativePosition(
      {this.originX = Alignment.start,
      this.originY = Alignment.start,
      this.animationOrigin = _AnimationOrigins.downRight});

  RelativePosition flipRelativePosition() {
    return RelativePosition(
        originX: _flipAlignment(originX),
        originY: originY,
        animationOrigin: _flipAnimation(animationOrigin));
  }

  Alignment _flipAlignment(Alignment alignment) {
    // Start/End
    if (alignment == Alignment.start) return Alignment.end;
    if (alignment == Alignment.end) return Alignment.start;
    // Before/After
    if (alignment == Alignment.before) return Alignment.after;
    if (alignment == Alignment.after) return Alignment.before;

    return alignment;
  }

  String? _flipAnimation(String? animationOrigin) =>
      _AnimationOrigins.flippedAnimationOrigins.containsKey(animationOrigin)
          ? _AnimationOrigins.flippedAnimationOrigins[animationOrigin]
          : animationOrigin;

  @override
  String toString() =>
      'RelativePosition ${{'originX': originX, 'originY': originY}}';
}

/// Origins for Material animation directions.
class _AnimationOrigins {
  static const upLeft = 'bottom right';
  static const up = 'bottom center';
  static const upRight = 'bottom left';

  static const left = 'center right';
  static const right = 'center left';

  static const downLeft = 'top right';
  static const down = 'top center';
  static const downRight = 'top left';

  @Deprecated('Use upLeft instead')
  // ignore: constant_identifier_names, unused_field
  static const UP_LEFT = upLeft;
  @Deprecated('Use up instead')
  // ignore: constant_identifier_names, unused_field
  static const UP = up;
  @Deprecated('Use upRight instead')
  // ignore: constant_identifier_names, unused_field
  static const UP_RIGHT = upRight;
  @Deprecated('Use left instead')
  // ignore: constant_identifier_names, unused_field
  static const LEFT = left;
  @Deprecated('Use right instead')
  // ignore: constant_identifier_names, unused_field
  static const RIGHT = right;
  @Deprecated('Use downLeft instead')
  // ignore: constant_identifier_names, unused_field
  static const DOWN_LEFT = downLeft;
  @Deprecated('Use down instead')
  // ignore: constant_identifier_names, unused_field
  static const DOWN = down;
  @Deprecated('Use downRight instead')
  // ignore: constant_identifier_names, unused_field
  static const DOWN_RIGHT = downRight;

  static const Map<String, String> flippedAnimationOrigins = {
    _AnimationOrigins.upLeft: _AnimationOrigins.upRight,
    _AnimationOrigins.upRight: _AnimationOrigins.upLeft,
    _AnimationOrigins.left: _AnimationOrigins.right,
    _AnimationOrigins.right: _AnimationOrigins.left,
    _AnimationOrigins.downLeft: _AnimationOrigins.downRight,
    _AnimationOrigins.downRight: _AnimationOrigins.downLeft,
  };
}
