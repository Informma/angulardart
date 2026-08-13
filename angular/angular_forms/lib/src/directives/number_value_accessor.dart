import 'package:angulardart/angulardart.dart';
// ignore: implementation_imports
import 'package:angulardart/src/runtime/dom_helpers.dart' show setProperty;

import 'control_value_accessor.dart'
    show ChangeHandler, ControlValueAccessor, ngValueAccessor, TouchHandler;

const numberValueAccessor = ExistingProvider.forToken(
  ngValueAccessor,
  NumberValueAccessor,
);

@Deprecated('Use numberValueAccessor instead')
// ignore: constant_identifier_names
const NUMBER_VALUE_ACCESSOR = numberValueAccessor;

/// The accessor for writing a number value and listening to changes that is used by the
/// [NgModel], [NgFormControl], and [NgControlName] directives.
///
///  ### Example
///
///  <input type="number" [(ngModel)]="age">
@Directive(
  selector: 'input[type=number][ngControl],'
      'input[type=number][ngFormControl],'
      'input[type=number][ngModel]',
  providers: [numberValueAccessor],
)
class NumberValueAccessor extends Object
    with TouchHandler, ChangeHandler<double?>
    implements ControlValueAccessor<Object?> {
  final dynamic _element;

  NumberValueAccessor(@Optional() ElementRef? elementRef)
      : _element = elementRef?.nativeElement;

  @HostListener('change', ['\$event.target.value'])
  @HostListener('input', ['\$event.target.value'])
  void handleChange(String value) {
    onChange(value == '' ? null : double.parse(value), rawValue: value);
  }

  @override
  void writeValue(value) {
    setProperty(_element, 'value', '$value');
  }

  @override
  void onDisabledChanged(bool isDisabled) {
    setProperty(_element, 'disabled', isDisabled);
  }
}
