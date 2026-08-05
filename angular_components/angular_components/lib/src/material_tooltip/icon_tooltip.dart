// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:intl/intl.dart';
import 'package:angulardart_components/content/deferred_content_aware.dart';
import 'package:angulardart_components/focus/keyboard_only_focus_indicator.dart';
import 'package:angulardart_components/laminate/enums/alignment.dart';
import 'package:angulardart_components/material_icon/material_icon.dart';
import 'package:angulardart_components/theme/dark_theme.dart';

import 'paper_tooltip.dart';
import 'tooltip_target.dart';

@Component(
  selector: 'material-icon-tooltip',
  providers: [
    AcxDarkTheme,
    ExistingProvider(DeferredContentAware, MaterialIconTooltipComponent),
  ],
  template: r'''
    <material-icon
        [attr.aria-label]="helpTooltipLabel"
        [attr.size]="iconSize"
        [icon]="icon"
        keyboardOnlyFocusIndicator
        tabindex="0"
        clickableTooltipTarget #tooltipRef="tooltipTarget">
    </material-icon>
    <material-tooltip-card
        [for]="tooltipRef"
        [preferredPositions]="preferredPositions"
        [offsetX]="offsetX"
        [offsetY]="offsetY">
      <ng-content></ng-content>
    </material-tooltip-card>''',
  styleUrls: ['icon_tooltip.scss.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
  directives: [
    ClickableTooltipTargetDirective,
    MaterialIconComponent,
    KeyboardOnlyFocusIndicatorDirective,
    MaterialPaperTooltipComponent
  ],
  preserveWhitespace: true,
)
class MaterialIconTooltipComponent implements DeferredContentAware {
  final _contentVisible = StreamController<bool>.broadcast(sync: true);

  web.HTMLElement element;

  final String icon;

  final String iconSize;

  @Input()
  List<RelativePosition> preferredPositions = _defaultPositions;

  @Input('offsetX')
  int offsetX = 0;

  @Input('offsetY')
  int offsetY = 0;

  MaterialIconTooltipComponent(
      AcxDarkTheme darkTheme,
      this.element,
      @Attribute('icon') String icon,
      @Attribute('type') String type,
      @Attribute('size') String size)
      : icon = '${type}_outline',
        iconSize = size {
    assert(type == 'help' || type == 'info' || type == 'error');
    assert(iconSize == 'x-small' ||
        iconSize == 'small' ||
        iconSize == 'medium' ||
        iconSize == 'large' ||
        iconSize == 'x-large' ||
        iconSize == '');

    darkTheme.themeElement(element);
  }

  @ViewChild('tooltipRef')
  late TooltipBehavior tooltipBehavior;

  @ViewChild(MaterialPaperTooltipComponent)
  set deferredContentAware(DeferredContentAware deferredContentAware) {
    _contentVisible.addStream(deferredContentAware.contentVisible);
  }

  @override
  Stream<bool> get contentVisible => _contentVisible.stream;

  static final helpTooltipLabel = Intl.message(
      'Mouseover, click, press Enter key or Space key on this icon for more '
      'information.',
      name: 'MaterialIconTooltipComponent_helpTooltipLabel',
      desc: 'Label for help icon which shows help content.');
}

const _defaultPositions = [
  RelativePosition.offsetBottomRight,
  RelativePosition.offsetTopLeft,
  RelativePosition.offsetBottomLeft,
  RelativePosition.offsetTopRight,
];
