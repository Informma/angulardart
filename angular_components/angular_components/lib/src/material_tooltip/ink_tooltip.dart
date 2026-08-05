// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/content/deferred_content.dart';
import 'package:angulardart_components/laminate/enums/alignment.dart';
import 'package:angulardart_components/laminate/popup/popup.dart' show PopupSource;
import 'package:angulardart_components/material_popup/material_popup.dart';
import 'package:angulardart_components/material_tooltip/module.dart';
import 'package:angulardart_components/utils/angular/css/css.dart';

import 'tooltip_controller.dart';
import 'tooltip_target.dart';

@Component(
  selector: 'material-tooltip-text',
  providers: [tooltipControllerBinding],
  template: r'''
        <material-popup *ngIf="popupSource != null"
                        ink
                        role="tooltip"
                        [autoDismiss]="false"
                        enforceSpaceConstraints
                        [matchMinSourceWidth]="false"
                        class="aacmtit-ink-tooltip-shadow {{popupClassName}}"
                        trackLayoutChanges
                        [preferredPositions]="positions"
                        [source]="popupSource"
                        [visible]="showPopup">
          <div *deferredContent class="ink-container"
               (mouseover)="onMouseOver()"
               (mouseleave)="onMouseLeave()">
            {{text}}<ng-content></ng-content>
          </div>
        </material-popup>''',
  styleUrls: ['ink_tooltip.scss.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
  directives: [DeferredContentDirective, NgIf, MaterialPopupComponent],
  preserveWhitespace: true,
)
class MaterialInkTooltipComponent implements Tooltip {
  final TooltipController _tooltipController;
  final ChangeDetectorRef _changeDetector;

  PopupSource? _tooltipSource;
  PopupSource? get popupSource => _tooltipSource;

  @Input()
  List<RelativePosition> positions = RelativePosition.adjacentBottomEdge;

  Tooltip? _controllerProxy;

  bool _showPopup = false;
  bool get showPopup => _showPopup;

  @Input()
  String? text;

  String popupClassName;

  MaterialInkTooltipComponent(this._tooltipController, this._changeDetector,
      web.HTMLElement hostElement, @Attribute('tooltipClass') String tooltipClass)
      : popupClassName =
            constructEncapsulatedCss(tooltipClass, hostElement.classList);

  @override
  void activate() {
    _showPopup = true;
    _changeDetector.markForCheck();
  }

  @override
  void deactivate({bool immediate = false}) {
    _showPopup = false;
    _changeDetector.markForCheck();
  }

  void onMouseOver() {
    _tooltipController.keepOpen(this);
  }

  void onMouseLeave() {
    _tooltipController.deactivate(this);
  }

  @Input('for')
  set tooltipRef(TooltipTarget target) {
    _tooltipSource = target;
    target.setTooltip(tooltipHandle);
  }

  Tooltip get tooltipHandle =>
      _controllerProxy ??= _tooltipController.proxyFor(this);
}
