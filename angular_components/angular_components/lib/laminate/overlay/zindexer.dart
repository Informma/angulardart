// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/src/dom/js_apis.dart';

/// The layout tools will monotonically increment the zIndex for hoverable
/// elements.
const int hoverableAutoIncrement = 1000;

/// This allows a monotonically increasing z-index for hoverable elements. This
/// works around the problem where setting a static z-index for newly shown
/// elements will sometimes show up underneath existing elements.
@Injectable()
class ZIndexer {
  static ZIndexer? _currentInstance;

  static void _initZIndex() {
    jsGlobalSet('acxZIndex', hoverableAutoIncrement);
  }

  factory ZIndexer() {
    return _currentInstance ??= ZIndexer._();
  }

  ZIndexer._() {
    _initZIndex();
  }

  /// Increment and get the current z-index.
  int pop() {
    final next = (jsGlobalGet('acxZIndex') as int) + 1;
    jsGlobalSet('acxZIndex', next);
    return next;
  }

  /// Peek at the current z-index without changing it.
  int peek() => jsGlobalGet('acxZIndex') as int;
}
