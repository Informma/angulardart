import 'package:angulardart/angulardart.dart';
// ignore: implementation_imports
import 'package:angulardart/src/runtime/dom_helpers.dart' show setProperty;

import 'control_value_accessor.dart'
    show ChangeHandler, ControlValueAccessor, ngValueAccessor, TouchHandler;

const checkboxValueAccessor = ExistingProvider.forToken(
  ngValueAccessor,
  CheckboxControlValueAccessor,
);

@Deprecated('Use checkboxValueAccessor instead')
// ignore: constant_identifier_names
const CHECKBOX_VALUE_ACCESSOR = checkboxValueAccessor;

/// The accessor for writing a value and listening to changes on a checkbox input element.
///
/// ### Example
///
/// ```html
/// <input type="checkbox" ngControl="rememberLogin">
/// ```
@Directive(
  selector: 'input[type=checkbox][ngControl],'
      'input[type=checkbox][ngFormControl],'
      'input[type=checkbox][ngModel]',
  providers: [checkboxValueAccessor],
)
class CheckboxControlValueAccessor extends Object
    with TouchHandler, ChangeHandler<bool>
    implements ControlValueAccessor<bool> {
  final dynamic _element;

  CheckboxControlValueAccessor(@Optional() ElementRef? elementRef)
      : _element = elementRef?.nativeElement;

  @HostListener('change', ['\$event.target.checked'])
  void handleChange(bool checked) {
    onChange(checked, rawValue: '$checked');
  }

  @override
  void writeValue(bool value) {
    setProperty(_element, 'checked', value);
  }

  @override
  void onDisabledChanged(bool isDisabled) {
    setProperty(_element, 'disabled', isDisabled);
  }
}
