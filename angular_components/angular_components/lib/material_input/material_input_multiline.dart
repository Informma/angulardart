// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/focus/focus.dart';
import 'package:angulardart_components/interfaces/has_disabled.dart';
import 'package:angulardart_components/utils/angular/properties/properties.dart';
import 'package:angulardart_components/utils/angular/reference/reference.dart';
import 'package:angulardart_components/utils/browser/dom_service/angular_2.dart';
import 'package:angulardart_forms/angulardart_forms.dart';

import 'base_material_input.dart';
import 'deferred_validator.dart';

export 'base_material_input.dart' show ValidityCheck, CharacterCounter;

@Component(
  selector: 'material-input[multiline]',
  changeDetection: ChangeDetectionStrategy.OnPush,
  providers: [
    DeferredValidator,
    ExistingProvider(HasDisabled, MaterialMultilineInputComponent),
    ExistingProvider.forToken(NG_VALIDATORS, DeferredValidator),
    ExistingProvider(ReferenceDirective, MaterialMultilineInputComponent),
    ExistingProvider(Focusable, MaterialMultilineInputComponent),
    ExistingProvider(BaseMaterialInput, MaterialMultilineInputComponent),
  ],
  templateUrl: 'material_input_multiline.html',
  styleUrls: ['material_input.scss.css', 'material_input_multiline.scss.css'],
  directives: [
    DefaultValueAccessor,
    FocusableDirective,
    NgFor,
    NgIf,
    NgModel,
    NgSwitch,
    NgSwitchWhen,
  ],
  // TODO(google): Change to `Visibility.local` to reduce code size.
  visibility: Visibility.all,
)
class MaterialMultilineInputComponent extends BaseMaterialInput
    implements ReferenceDirective, AfterViewInit, OnDestroy {
  @HostBinding('class')
  static const hostClass = 'themeable';

  @HostBinding('tabIndex')
  static const hostTabIndex = -1;

  final ChangeDetectorRef _changeDetector;
  final DomService _domService;

  StreamSubscription? _subscription;

  @ViewChild('textareaEl')
  ElementRef? textareaEl;

  @override
  ElementRef get inputRef => textareaEl!;

  int _rows = 1;

  int _maxRows = 0;

  int _inputLineHeight = 16;

  MaterialMultilineInputComponent(
      @Self() @Optional() NgControl super.cd,
      super.changeDetector,
      super.validator,
      this._domService)
      : _changeDetector = changeDetector;

  @HostListener('focus')
  @override
  void focus() => super.focus();

  @ViewChild('popupSourceEl')
  ElementRef? popupSourceEl;

  @override
  ElementRef get elementRef => popupSourceEl!;

  String get mirrorText => '$inputText\n';

  @ViewChild('lineHeightMeasure')
  set lineHeightMeasure(ElementRef value) {
    _domService.scheduleRead(() {
      var isDestroyed = textareaEl == null;
      if (isDestroyed) return;

      var height = (value.nativeElement as web.Element).clientHeight;
      if (height != 0) {
        _inputLineHeight = height;
        _subscription?.cancel();
        _subscription = null;
        _changeDetector
          ..markForCheck()
          // TODO(google): remove after the bug is fixed.
          ..detectChanges();
      } else {
        _subscription ??= _domService.onLayoutChanged.listen((_) {
          lineHeightMeasure = value;
        });
      }
    });
  }

  int get minInputHeight => rows * _inputLineHeight;
  int? get maxInputHeight => _maxRows > 0 ? _maxRows * _inputLineHeight : null;

  int? get textAreaHeight => rows == maxRows ? maxInputHeight : null;

  int get rows => _rows;

  @Input()
  set rows(dynamic value) {
    _rows = getInt(value);
    _changeDetector.markForCheck();
  }

  int get maxRows => _maxRows;

  @Input()
  set maxRows(dynamic value) {
    _maxRows = getInt(value);
    _changeDetector.markForCheck();
  }

  @Input()
  String? inputAriaDescribedBy;

  int get inputTabIndex => disabled ? -1 : 0;

  @visibleForTemplate
  void handleChange(web.Event event, web.HTMLTextAreaElement element) {
    inputChange(
      element.value,
      element.validity.valid,
      element.validationMessage,
    );
    event.stopPropagation();
  }

  @override
  void ngOnDestroy() {
    super.ngOnDestroy();
    _subscription?.cancel();
    _subscription = null;
    textareaEl = null;
    popupSourceEl = null;
  }
}
