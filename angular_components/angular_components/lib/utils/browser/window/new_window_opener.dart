// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';

/// Utility class to allow opening a URL in a new window.
@Injectable()
class NewWindowOpener {
  void open(String url) => openInNewWindow(url);
}

/// Opens the given url in a new window.
///
/// Gives a hint to Chrome that it should open the given link in a separate
/// process.
void openInNewWindow(String url) {
  var anchorElement = web.HTMLAnchorElement()
    ..href = url
    ..rel = 'noopener noreferrer'
    ..target = '_blank';
  web.document.body!.append(anchorElement);
  anchorElement.click();
  anchorElement.remove();
}
