<p align="center">
  <img src="https://github.com/flutterdocteur/angulardart/raw/main/media/banner.png" alt="AngularDart" />
</p>

<p align="center">
  <a href="https://angulardartreborn.com">
    <img src="https://img.shields.io/badge/website-angulardartreborn.com-blue" alt="Website" />
  </a>
  <a href="https://pub.dev/packages/angulardart">
    <img src="https://badgen.net/pub/v/angulardart?v=8.2.0" alt="pub package" />
  </a>
  <a href="https://github.com/flutterdocteur/angulardart">
    <img src="https://img.shields.io/github/stars/flutterdocteur/angulardart.svg?style=social&label=Star" alt="GitHub stars" />
  </a>
</p>

# AngularDart

**Fast and productive web framework by Google, revived for Dart 3.**

AngularDart is a web framework that separates cleanly into a template language and a component model, making it easy to build complex, maintainable web applications.

## Why AngularDart?

- **Dart 3 native** - Fully compatible with Dart 3 and null safety, ready for the future
- **Component-based** - Build reusable UI components with clear separation of concerns
- **Productive** - Powerful templates, dependency injection, and two-way data binding
- **Fast** - Build-time compilation for optimal performance
- **Type-safe** - Full Dart type checking catches errors at compile time
- **Battle-tested** - Originally developed by Google, used in production at scale

## Quick Start

The fastest way to get started is with the [AngularDart CLI](https://pub.dev/packages/angulardart_cli):

```bash
# Install the CLI
dart pub global activate angulardart_cli

# Create a new project
ngdart new my_app
cd my_app

# Install dependencies and run
dart pub get
dart run build_runner serve
```

Open your browser at `http://localhost:8080` and you're done!

## Ecosystem

This monorepo contains the following packages, all published on [pub.dev](https://pub.dev):

| Package | Version | Description |
|---------|---------|-------------|
| [angulardart](https://pub.dev/packages/angulardart) | [![pub package](https://badgen.net/pub/v/angulardart?v=8.2.0)](https://pub.dev/packages/angulardart) | Core framework |
| [angulardart_cli](https://pub.dev/packages/angulardart_cli) | [![pub package](https://badgen.net/pub/v/angulardart_cli?v=1.0.11)](https://pub.dev/packages/angulardart_cli) | CLI tools for scaffolding |
| [angulardart_forms](https://pub.dev/packages/angulardart_forms) | [![pub package](https://badgen.net/pub/v/angulardart_forms?v=5.2.0)](https://pub.dev/packages/angulardart_forms) | Forms framework |
| [angulardart_router](https://pub.dev/packages/angulardart_router) | [![pub package](https://badgen.net/pub/v/angulardart_router?v=4.2.0)](https://pub.dev/packages/angulardart_router) | Routing library |
| [angulardart_components](https://pub.dev/packages/angulardart_components) | [![pub package](https://badgen.net/pub/v/angulardart_components?v=2.1.0)](https://pub.dev/packages/angulardart_components) | Material Design components |
| [angulardart_test](https://pub.dev/packages/angulardart_test) | [![pub package](https://badgen.net/pub/v/angulardart_test?v=5.2.0)](https://pub.dev/packages/angulardart_test) | Testing utilities |
| [angulardart_ast](https://pub.dev/packages/angulardart_ast) | [![pub package](https://badgen.net/pub/v/angulardart_ast?v=3.1.0)](https://pub.dev/packages/angulardart_ast) | Template parser |
| [angulardart_compiler](https://pub.dev/packages/angulardart_compiler) | [![pub package](https://badgen.net/pub/v/angulardart_compiler?v=4.1.0)](https://pub.dev/packages/angulardart_compiler) | Template compiler |

## Key Features

- **Component-based architecture** - Build reusable, encapsulated UI components
- **Two-way data binding** - Automatically sync data between model and view
- **Dependency injection** - Manage services and dependencies efficiently
- **Template syntax** - Powerful templating with directives, pipes, and interpolation
- **Change detection** - Efficient rendering with OnPush strategy support
- **Build-time compilation** - Code generation for optimal performance
- **Null safety** - Full Dart 3 null safety support

## Example

```dart
import 'package:angulardart/angular.dart';

@Component(
  selector: 'my-app',
  template: '''
    <h1>Hello {{name}}!</h1>
    <button (click)="changeName()">Change name</button>
  ''',
)
class AppComponent {
  String name = 'World';
  
  void changeName() {
    name = 'AngularDart';
  }
}

void main() {
  runApp(AppComponent, 'my-app');
}
```

## Requirements

- Dart SDK >= 3.0.0
- Web platform support

## Documentation

- [API Reference](https://pub.dev/documentation/angulardart/latest/)
- [Examples](https://github.com/flutterdocteur/angulardart/tree/main/angular/angular/example)
- [AngularDart CLI](https://pub.dev/packages/angulardart_cli) - Create projects in seconds

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request or open an issue on [GitHub](https://github.com/flutterdocteur/angulardart).

## Credits

AngularDart was originally developed by Google. This is a community-maintained revival for Dart 3, ensuring the framework continues to evolve and stay compatible with modern Dart.

---

<p align="center">
  Made with ❤️ for the Dart community
</p>
