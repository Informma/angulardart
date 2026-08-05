// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';

/// Annotation bound to a boolean which is used to indicate that a complete
/// web page is RTL.
///
/// This is used to only read the DOM once for an app to determine if the app
/// itself is RTL. Only use this for components whose RTL is not independent
/// of the application as a whole.
const rtlToken = OpaqueToken('isRtl');

const rtlProvider =
    FactoryProvider.forToken(rtlToken, determineRtl, deps: [web.Document]);

@Injectable()
bool determineRtl(web.Document document) =>
    document.documentElement?.getAttribute('dir') == 'rtl' ||
    document.body?.getAttribute('dir') == 'rtl';
