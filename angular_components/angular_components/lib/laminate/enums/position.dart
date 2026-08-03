// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angulardart_components/src/laminate/enums/base.dart';

export 'package:angulardart_components/src/laminate/enums/base.dart';

class Position implements ElementStyleEnum {
  static const relative = Position._('relative');
  static const fixed = Position._('fixed');
  static const absolute = Position._('absolute');
  // ignore: constant_identifier_names
  @Deprecated('Use relative instead')
  // ignore: constant_identifier_names
  static const Relative = relative;
  @Deprecated('Use fixed instead')
  // ignore: constant_identifier_names
  static const Fixed = fixed;
  @Deprecated('Use absolute instead')
  // ignore: constant_identifier_names
  static const Absolute = absolute;
  // ignore: constant_identifier_names
  @Deprecated('Use Position.relative instead')
  // ignore: constant_identifier_names
  static const Static = Position._('static');

  final String _cssPropertyValue;

  const Position._(this._cssPropertyValue);

  @override
  void apply(SetPropertyFn setProperty) {
    setProperty('position', _cssPropertyValue);
  }
}
