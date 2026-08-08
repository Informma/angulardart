![AngularDart Forms banner](https://github.com/flutterdocteur/angulardart/raw/main/media/banner.png)

<p align="center">
  <a href="https://angulardartreborn.com">
    <img src="https://img.shields.io/badge/website-angulardartreborn.com-blue" alt="Website" />
  </a>
  <a href="https://pub.dev/packages/angulardart_forms">
    <img src="https://img.shields.io/pub/v/angulardart_forms" alt="pub package" />
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

---

## Disclaimer

**AngularDart Reborn** is a community-maintained fork of Google's original [AngularDart](https://pub.dev/packages/angulardart) framework (formerly known as AngularDart by Google). This project is **not affiliated with, endorsed by, or sponsored by Google LLC**.

- **Angular**, **AngularDart**, and all associated packages (`angulardart`, `angulardart_router`, `angulardart_compiler`, `angulardart_forms`, `angulardart_meta`, `angulardart_ast`, `angulardart_cli`, `angulardart_seo`, `angulardart_prerender`, `angulardart_test`, `angulardart_components`) are trademarks and projects of the AngularDart Reborn community.
- The original AngularDart framework was developed by Google LLC and hosted at [github.com/angulardart](https://github.com/angulardart).
- This is an independent, 100% community-driven project that continues the work started by Google's AngularDart team after Google ceased active maintenance.

For the official Angular Framework (TypeScript/JavaScript), visit [angular.io](https://angular.io). For the original Google-maintained AngularDart repository, see [github.com/angulardart](https://github.com/angulardart).
