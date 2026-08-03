// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angulardart_components/model/ui/display_name.dart';
import 'package:angulardart_components/model/ui/has_renderer.dart';

/// Add this directive to any [SelectionContainer] or [SelectionItem]
/// component to render [HasUIDisplayName] objects.
void displayNameRendererDirective(HasRenderer hasRenderer) {
  hasRenderer.itemRenderer = _displayNameRenderer;
}

String _displayNameRenderer(dynamic item) => (item as HasUIDisplayName).uiDisplayName;
