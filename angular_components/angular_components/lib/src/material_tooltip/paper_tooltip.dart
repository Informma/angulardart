// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/content/deferred_content.dart';
import 'package:angulardart_components/content/deferred_content_aware.dart';
import 'package:angulardart_components/focus/focus.dart';
import 'package:angulardart_components/laminate/enums/alignment.dart';
import 'package:angulardart_components/laminate/popup/popup.dart' show PopupSource;
import 'package:angulardart_components/material_popup/material_popup.dart';
import 'package:angulardart_components/material_tooltip/module.dart';
import 'package:angulardart_components/utils/angular/css/css.dart';

import 'tooltip_controller.dart';
import 'tooltip_target.dart';

@Injectable()
Tooltip getTooltipHandle(MaterialPaperTooltipComponent tooltip) =>
    tooltip.tooltipHandle;

@Component(
  selector: 'material-tooltip-card',
  providers: [
    tooltipControllerBinding,
    FactoryProvider(Tooltip, getTooltipHandle),
    ExistingProvider(DeferredContentAware, MaterialPaperTooltipComponent),
  ],
  directives: [
    AutoFocusDirective,
    DeferredContentDirective,
    MaterialPopupComponent,
    NgIf,
  ],
  template: '''
<material-popup *ngIf="popupSource != null"
                [visible]="showPopup"
                enforceSpaceConstraints
                trackLayoutChanges
                [preferredPositions]="preferredPositions"
                [offsetX]="offsetX"
                [offsetY]="offsetY"
                [autoDismiss]="focusContents"
                [class]="popupClassName"
                [source]="popupSource"
                [attr.role]="focusContents ? 'dialog' : 'tooltip'">
  <div class="paper-container"
       [autoFocus]="focusContents"
       (mouseover)="onMouseOver()"
       (mouseleave)="onMouseLeave()">
    <div class="header"><ng-content select="header"></ng-content></div>
    <div class="body"><ng-content></ng-content></div>
    <div class="footer"><ng-content select="footer"></ng-content></div>
  </div>
</material-popup>''',
  styleUrls: ['paper_tooltip.scss.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
  preserveWhitespace: true,
  visibility: Visibility.all,
)
class MaterialPaperTooltipComponent implements DeferredContentAware, Tooltip {
  final String popupClassName;

  PopupSource? _tooltipSource;
  PopupSource? get popupSource => _tooltipSource;

  @Input()
  List<RelativePosition> preferredPositions = _defaultPositions;

  @Input('offsetX')
  int offsetX = 0;

  @Input('offsetY')
  int offsetY = 0;

  bool get showPopup => _showPopup;

  final StreamController<bool> _visibleCtrl =
      StreamController<bool>.broadcast();
  @override
  Stream<bool> get contentVisible => _visibleCtrl.stream;

  bool _showPopup = false;

  final TooltipController _tooltipController;
  final ChangeDetectorRef _changeDetector;

  MaterialPaperTooltipComponent(this._tooltipController, this._changeDetector,
      web.HTMLElement hostElement, @Attribute('tooltipClass') String tooltipClass)
      : popupClassName =
            constructEncapsulatedCss(tooltipClass, hostElement.classList);

  @ViewChild(MaterialPopupComponent)
  set popupChild(MaterialPopupComponent popup) {
    _visibleCtrl.addStream(popup.contentVisible);
  }

  @override
  void deactivate({bool immediate = false}) {
    _showPopup = false;
    _changeDetector.markForCheck();
  }

  @override
  void activate() {
    _showPopup = true;
    _changeDetector.markForCheck();
  }

  void onMouseOver() {
    _tooltipController.keepOpen(this);
  }

  void onMouseLeave() {
    _tooltipController.deactivate(this);
  }

  Tooltip? _controllerProxy;
  Tooltip get tooltipHandle =>
      _controllerProxy ??= _tooltipController.proxyFor(this);

  @Input('for')
  set tooltipRef(TooltipTarget target) {
    _tooltipSource = target;
    target.setTooltip(tooltipHandle);
  }

  @Input()
  bool focusContents = false;
}

const _defaultPositions = [
  RelativePosition.offsetBottomRight,
  RelativePosition.offsetTopLeft,
  RelativePosition.offsetBottomLeft,
  RelativePosition.offsetTopRight,
];
