![AngularDart Forms banner](https://github.com/flutterdocteur/angulardart/raw/main/media/banner.png)

<p align="center">
  <a href="https://angulardartreborn.com">
    <img src="https://img.shields.io/badge/website-angulardartreborn.com-blue" alt="Website" />
  </a>
  <a href="https://pub.dev/packages/angulardart_forms">
    <img src="https://badgen.net/pub/v/angulardart_forms?v=5.2.0" alt="pub package" />
  </a>
</p>

# AngularDart Forms

**Forms framework for AngularDart with validation and reactive forms support.**

Part of the [AngularDart](https://pub.dev/packages/angulardart) ecosystem.

## Features

- **Template-driven forms** - Simple forms with directives
- **Reactive forms** - Programmatic form control with FormBuilder
- **Validation** - Built-in and custom validators
- **Form controls** - Input, checkbox, radio, select, and more
- **Two-way binding** - Automatic sync between form and model

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  angulardart: ^8.0.0
  angulardart_forms: ^5.0.0
```

## Quick Start

### Template-driven form

```dart
import 'package:angulardart/angular.dart';
import 'package:angulardart_forms/forms.dart';

@Component(
  selector: 'my-form',
  template: '''
    <form #form="ngForm" (ngSubmit)="onSubmit(form)">
      <input ngModel name="name" required placeholder="Name">
      <input ngModel name="email" type="email" required placeholder="Email">
      <button type="submit" [disabled]="!form.valid">Submit</button>
    </form>
  ''',
  directives: [formDirectives],
)
class MyForm {
  void onSubmit(NgForm form) {
    print('Form data: ${form.value}');
  }
}
```

### Reactive form with FormBuilder

```dart
import 'package:angulardart/angular.dart';
import 'package:angulardart_forms/forms.dart';

@Component(
  selector: 'reactive-form',
  template: '''
    <form [formGroup]="form" (ngSubmit)="onSubmit()">
      <input formControlName="name" placeholder="Name">
      <input formControlName="email" placeholder="Email">
      <button type="submit" [disabled]="form.invalid">Submit</button>
    </form>
  ''',
  directives: [formDirectives],
)
class ReactiveForm {
  late FormGroup form;
  
  ReactiveForm(FormBuilder fb) {
    form = fb.group({
      'name': fb.control('', Validators.required),
      'email': fb.control('', [Validators.required, Validators.email]),
    });
  }
  
  void onSubmit() {
    if (form.valid) {
      print('Form data: ${form.value}');
    }
  }
}
```

## Validation

Built-in validators:

- `Validators.required` - Field must not be empty
- `Validators.email` - Must be a valid email
- `Validators.minLength(n)` - Minimum length
- `Validators.maxLength(n)` - Maximum length
- `Validators.pattern(regex)` - Match a pattern

Custom validator example:

```dart
ValidatorFn myCustomValidator = (AbstractControl control) {
  if (control.value != 'expected') {
    return {'myError': 'Value must be "expected"'};
  }
  return null;
};
```

## Form Controls

- `NgModel` - Two-way binding for form inputs
- `NgForm` - Form container with validation state
- `NgControl` - Base class for form controls
- `NgControlGroup` - Group of related controls

## Documentation

- [API Reference](https://pub.dev/documentation/angulardart_forms/latest/)
- [AngularDart main package](https://pub.dev/packages/angulardart)

## Requirements

- Dart SDK >= 3.0.0
- AngularDart >= 8.0.0

## License

MIT License
