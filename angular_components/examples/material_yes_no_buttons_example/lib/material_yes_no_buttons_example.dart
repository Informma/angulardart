// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/material_yes_no_buttons/material_yes_no_buttons.dart';
import 'package:angulardart_gallery_section/annotation/gallery_section_config.dart';

@GallerySectionConfig(
  displayName: 'Material Yes No Buttons',
  docs: [
    MaterialYesNoButtonsComponent,
    MaterialSaveCancelButtonsDirective,
    MaterialSubmitCancelButtonsDirective,
    KeyUpBoundaryDirective,
    EscapeCancelsDirective,
  ],
  demos: [MaterialYesNoButtonsExample],
)
class MaterialYesNoButtonsGalleryConfig {}

@Component(
  selector: 'material-yes-no-buttons-example',
  directives: [
    KeyUpBoundaryDirective,
    EscapeCancelsDirective,
    MaterialSaveCancelButtonsDirective,
    MaterialYesNoButtonsComponent,
  ],
  templateUrl: 'material_yes_no_buttons_example.html',
  styleUrls: ['material_yes_no_buttons_example.scss.css'],
)
class MaterialYesNoButtonsExample {
  void alert(String msg) {
    web.window.alert(msg);
  }

  bool pending = false;

  void startPendingTimer() {
    pending = true;
    Future.delayed(const Duration(seconds: 2), () => pending = false);
  }
}
