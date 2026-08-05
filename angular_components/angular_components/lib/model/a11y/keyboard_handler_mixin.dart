// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:web/web.dart' as web;

import 'package:angulardart_components/utils/browser/events/events.dart';

typedef KeyboardEventHandler = void Function(web.KeyboardEvent event);

mixin class KeyboardHandlerMixin {
  bool isRtl = false;

  void onKeyPress(web.KeyboardEvent event) {
    if (event.keyCode == 13) {
      handleEnterKey(event);
    } else if (isSpaceKey(event)) {
      handleSpaceKey(event);
    } else if (event.charCode != 0) {
      handleCharCodeKey(event);
    }
  }

  void onKeyDown(web.KeyboardEvent event) {
    switch (event.keyCode) {
      case 38:
        handleUpKey(event);
        break;
      case 40:
        handleDownKey(event);
        break;
      case 37:
        if (isRtl == true) {
          handleRightKey(event);
        } else {
          handleLeftKey(event);
        }
        break;
      case 39:
        if (isRtl == true) {
          handleLeftKey(event);
        } else {
          handleRightKey(event);
        }
        break;
      case 33:
        handlePageUp(event);
        break;
      case 34:
        handlePageDown(event);
        break;
      case 36:
        handleHomeKey(event);
        break;
      case 35:
        handleEndKey(event);
        break;
      case 8:
        handleBackspaceKey(event);
        break;
      case 46:
        handleDeleteKey(event);
        break;
    }
  }

  void onKeyUp(web.KeyboardEvent event) {
    if (event.keyCode == 27) {
      handleEscapeKey(event);
    }
  }

  void handleEnterKey(web.KeyboardEvent event) {}

  void handleSpaceKey(web.KeyboardEvent event) {}

  void handleEscapeKey(web.KeyboardEvent event) {}

  void handleUpKey(web.KeyboardEvent event) {}

  void handleDownKey(web.KeyboardEvent event) {}

  void handleLeftKey(web.KeyboardEvent event) {}

  void handleRightKey(web.KeyboardEvent event) {}

  void handlePageUp(web.KeyboardEvent event) {}

  void handlePageDown(web.KeyboardEvent event) {}

  void handleHomeKey(web.KeyboardEvent event) {}

  void handleEndKey(web.KeyboardEvent event) {}

  void handleBackspaceKey(web.KeyboardEvent event) {}

  void handleDeleteKey(web.KeyboardEvent event) {}

  void handleCharCodeKey(web.KeyboardEvent event) {}
}
