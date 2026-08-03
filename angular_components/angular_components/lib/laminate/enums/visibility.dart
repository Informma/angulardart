// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angulardart_components/src/laminate/enums/base.dart';

export 'package:angulardart_components/src/laminate/enums/base.dart';

/// Enum for browser visibility options.
class Visibility implements ElementStyleEnum {
  static const none = Visibility._('None', 'display', 'none');
  static const hidden = Visibility._('Hidden', 'visibility', 'hidden');
  static const visible = Visibility._('Visible');

  @Deprecated('Use none instead')
  // ignore: constant_identifier_names
  static const None = none;
  @Deprecated('Use hidden instead')
  // ignore: constant_identifier_names
  static const Hidden = hidden;
  @Deprecated('Use visible instead')
  // ignore: constant_identifier_names
  static const Visible = visible;

  /// The enum name of the instance.
  final String displayName;

  final String? _propertyName;
  final String? _propertyValue;

  factory Visibility.fromBoolean(bool visible) {
    return visible ? Visible : None;
  }

  const Visibility._(this.displayName,
      [this._propertyName, this._propertyValue]);

  @override
  void apply(SetPropertyFn setProperty) {
    if (_propertyName != null) {
      setProperty(_propertyName!, _propertyValue);
    }
  }

  @override
  String toString() => 'Visibility {$displayName}';
}
