![AngularDart banner](https://github.com/flutterdocteur/angulardart/raw/main/media/banner.png)

<p align="center">
  <a href="https://angulardartreborn.com">
    <img src="https://img.shields.io/badge/website-angulardartreborn.com-blue" alt="Website" />
  </a>
  <a href="https://pub.dev/packages/angulardart">
    <img src="https://img.shields.io/pub/v/angulardart" alt="pub package" />
  </a>
  <a href="https://github.com/flutterdocteur/angulardart">
    <img src="https://img.shields.io/github/stars/flutterdocteur/angulardart.svg?style=social&label=Star" alt="GitHub stars" />
  </a>
</p>

# AngularDart

**Fast and productive web framework for Dart 3.**

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

## Ecosystem

AngularDart comes with a complete set of packages for building modern web applications:

| Package | Description |
|---------|-------------|
| [angulardart](https://pub.dev/packages/angulardart) | Core framework (you are here) |
| [angulardart_cli](https://pub.dev/packages/angulardart_cli) | CLI tools for scaffolding, SEO init, and project generation |
| [angulardart_forms](https://pub.dev/packages/angulardart_forms) | Forms framework with validation |
| [angulardart_router](https://pub.dev/packages/angulardart_router) | Client-side routing and navigation |
| [angulardart_components](https://pub.dev/packages/angulardart_components) | Material Design UI components |
| [angulardart_test](https://pub.dev/packages/angulardart_test) | Testing utilities and helpers |
| [angulardart_seo](https://pub.dev/packages/angulardart_seo) | SEO meta tags, titles, and dynamic page metadata |
| [angulardart_prerender](https://pub.dev/packages/angulardart_prerender) | Static prerendering for search engine optimization |

### Recommended packages for production

For full-featured applications with SEO support:

```yaml
dependencies:
  angulardart: ^9.0.0
  angulardart_router: ^5.1.0
  angulardart_seo: ^1.0.4    # Dynamic meta tags and titles
  angulardart_prerender: ^1.0.4  # Static prerendering for SEO

dev_dependencies:
  angulardart_cli: ^1.0.15   # Project scaffolding + `ngdart new --seo`
```

## Key Features

- **Component-based architecture** - Build reusable, encapsulated UI components
- **Two-way data binding** - Automatically sync data between model and view
- **Dependency injection** - Manage services and dependencies efficiently
- **Template syntax** - Powerful templating with directives, pipes, and interpolation
- **Change detection** - Efficient rendering with OnPush strategy support
- **Build-time compilation** - Code generation for optimal performance
- **Null safety** - Full Dart 3 null safety support

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

---

## Disclaimer

**AngularDart Reborn** is a community-maintained fork of Google's original [AngularDart](https://pub.dev/packages/angulardart) framework (formerly known as AngularDart by Google). This project is **not affiliated with, endorsed by, or sponsored by Google LLC**.

- **Angular**, **AngularDart**, and all associated packages (`angulardart`, `angulardart_router`, `angulardart_compiler`, `angulardart_forms`, `angulardart_meta`, `angulardart_ast`, `angulardart_cli`, `angulardart_seo`, `angulardart_prerender`, `angulardart_test`, `angulardart_components`) are trademarks and projects of the AngularDart Reborn community.
- The original AngularDart framework was developed by Google LLC and hosted at [github.com/angulardart](https://github.com/angulardart).
- This is an independent, 100% community-driven project that continues the work started by Google's AngularDart team after Google ceased active maintenance.

For the official Angular Framework (TypeScript/JavaScript), visit [angular.io](https://angular.io). For the original Google-maintained AngularDart repository, see [github.com/angulardart](https://github.com/angulardart).
