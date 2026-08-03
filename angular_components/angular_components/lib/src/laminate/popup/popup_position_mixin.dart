// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:math';

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/laminate/enums/alignment.dart';
import 'package:angulardart_components/src/laminate/popup/popup_size_provider.dart';

class PopupPosition {
  static const String auto = '';
  static const String above = 'above';
  static const String below = 'below';
  @Deprecated('Use auto instead')
  // ignore: constant_identifier_names
  static const String AUTO = auto;
  @Deprecated('Use above instead')
  // ignore: constant_identifier_names
  static const String ABOVE = above;
  @Deprecated('Use below instead')
  // ignore: constant_identifier_names
  static const String BELOW = below;
}

/// Assistant for supporting custom preferred popup positions.
class PopupPositionMixin implements PopupSizeProvider {
  static const _edgeSpacePx = 4;
  @Deprecated('Use _edgeSpacePx instead')
  // ignore: constant_identifier_names, unused_field
  static const _EDGE_SPACE_PX = _edgeSpacePx;

  static const _minHeightPx = 40;
  @Deprecated('Use _minHeightPx instead')
  // ignore: constant_identifier_names, unused_field
  static const _MIN_HEIGHT_PX = _minHeightPx;

  PopupSizeProvider delegatePopupSizeProvider = PercentagePopupSizeProvider();

  @override
  num? getMinWidth(num positionX, num viewportWidth) =>
      delegatePopupSizeProvider.getMinWidth(positionX, viewportWidth);

  @override
  num? getMinHeight(num positionY, num viewportHeight) =>
      delegatePopupSizeProvider.getMinHeight(positionY, viewportHeight);

  @override
  num? getMaxWidth(num positionX, num viewportWidth) =>
      delegatePopupSizeProvider.getMaxHeight(positionX, viewportWidth);

  @override
  num? getMaxHeight(num positionY, num viewportHeight) {
    var maxHeight =
        delegatePopupSizeProvider.getMaxHeight(positionY, viewportHeight);
    if (_popupPosition == PopupPosition.below) {
      return max(_minHeightPx,
          min(viewportHeight - positionY - _edgeSpacePx, maxHeight!));
    } else {
      return maxHeight;
    }
  }

  String _popupPosition = PopupPosition.auto;

  List<RelativePosition> _popupPositions = const [];

  List<RelativePosition> get popupPositions => _popupPositions;

  /// Position relative to popup source.
  /// Optional, defaults to PopupPosition.auto.
  @Input()
  set popupPosition(String position) {
    _popupPosition = position;
    switch (_popupPosition) {
      case PopupPosition.above:
        _popupPositions = const [
          RelativePosition.AdjacentTopLeft,
          RelativePosition.AdjacentTopRight
        ];
        break;
      case PopupPosition.below:
        _popupPositions = const [
          RelativePosition.AdjacentBottomLeft,
          RelativePosition.AdjacentBottomRight
        ];
        break;
      case PopupPosition.auto:
      default:
        _popupPositions = const [];
    }
  }
}
