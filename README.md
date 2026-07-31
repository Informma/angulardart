<p align="center">
  <img src="media/banner.png" alt="AngularDart" width="100%" />
</p>

<p align="center">
  <a href="https://pub.dev/packages/angulardart">
    <img src="https://img.shields.io/pub/v/angulardart.svg" alt="pub package" />
  </a>
  <a href="https://github.com/flutterdocteur/angulardart">
    <img src="https://img.shields.io/github/stars/flutterdocteur/angulardart.svg?style=social&label=Star" alt="GitHub stars" />
  </a>
</p>

# AngularDart

**Fast and productive web framework by Google, revived for Dart 3.**

AngularDart is a web framework that separates cleanly into a template language and a component model, making it easy to build complex, maintainable web applications.

---

## Packages

This monorepo contains the following packages, all published on [pub.dev](https://pub.dev):

| Package | Version | Description |
|---------|---------|-------------|
| [angulardart](https://pub.dev/packages/angulardart) | [![pub package](https://img.shields.io/pub/v/angulardart.svg)](https://pub.dev/packages/angulardart) | Core framework |
| [angulardart_ast](https://pub.dev/packages/angulardart_ast) | [![pub package](https://img.shields.io/pub/v/angulardart_ast.svg)](https://pub.dev/packages/angulardart_ast) | Template parser and AST |
| [angulardart_compiler](https://pub.dev/packages/angulardart_compiler) | [![pub package](https://img.shields.io/pub/v/angulardart_compiler.svg)](https://pub.dev/packages/angulardart_compiler) | Template compiler |
| [angulardart_forms](https://pub.dev/packages/angulardart_forms) | [![pub package](https://img.shields.io/pub/v/angulardart_forms.svg)](https://pub.dev/packages/angulardart_forms) | Forms framework |
| [angulardart_router](https://pub.dev/packages/angulardart_router) | [![pub package](https://img.shields.io/pub/v/angulardart_router.svg)](https://pub.dev/packages/angulardart_router) | Routing library |
| [angulardart_test](https://pub.dev/packages/angulardart_test) | [![pub package](https://img.shields.io/pub/v/angulardart_test.svg)](https://pub.dev/packages/angulardart_test) | Testing utilities |
| [angulardart_components](https://pub.dev/packages/angulardart_components) | [![pub package](https://img.shields.io/pub/v/angulardart_components.svg)](https://pub.dev/packages/angulardart_components) | Material Design components |
| [angulardart_cli](https://pub.dev/packages/angulardart_cli) | [![pub package](https://img.shields.io/pub/v/angulardart_cli.svg)](https://pub.dev/packages/angulardart_cli) | CLI scaffolding tool |

## Features

- **Component-based architecture** - Build reusable UI components
- **Two-way data binding** - Automatically sync data between model and view
- **Dependency injection** - Manage services and dependencies efficiently
- **Template syntax** - Powerful templating with directives and pipes
- **Change detection** - Efficient rendering with OnPush strategy support
- **Type safety** - Full Dart type checking and null safety
- **Build-time compilation** - Code generation for optimal performance
- **Dart 3 compatible** - Fully migrated to Dart 3 with null safety

## Quick Start

### 1. Create a new project

```bash
dart pub global activate angulardart_cli
ngdart new my_app
cd my_app
```

### 2. Install dependencies

```bash
dart pub get
```

### 3. Build and serve

```bash
dart run build_runner build
dart run build_runner serve web
```

### 4. Open your browser

Navigate to `http://localhost:8080`

## Example

```dart
import 'package:angulardart/angular.dart';

@Component(
  selector: 'my-app',
  template: '<h1>Hello {{name}}!</h1>',
)
class AppComponent {
  String name = 'World';
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
- [Examples](angular/angular/example)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

MIT License - see the [LICENSE](LICENSE) file for details.

## Credits

AngularDart was originally developed by Google. This is a community-maintained revival for Dart 3.

---

<p align="center">
  Made with ❤️ for the Dart community
</p>
