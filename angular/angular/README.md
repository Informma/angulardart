![AngularDart banner](https://github.com/flutterdocteur/angulardart/raw/main/media/banner.png)

# AngularDart

A fast and productive web framework by Google. AngularDart is separate from, but similar to, the JavaScript framework with a similar name.

[![pub package](https://img.shields.io/pub/v/angulardart.svg)](https://pub.dev/packages/angulardart)

## Features

- **Component-based architecture**: Build reusable UI components
- **Two-way data binding**: Automatically sync data between model and view
- **Dependency injection**: Manage services and dependencies efficiently
- **Template syntax**: Powerful templating with directives and pipes
- **Change detection**: Efficient rendering with OnPush strategy support
- **Type safety**: Full Dart type checking and null safety
- **Build-time compilation**: Code generation for optimal performance

## Installation

Add `angulardart` to your `pubspec.yaml`:

```yaml
dependencies:
  angulardart: ^8.0.0
```

## Quick Start

### 1. Create a component

```dart
import 'package:angulardart/angular.dart';

@Component(
  selector: 'my-app',
  template: '<h1>Hello {{name}}!</h1>',
)
class AppComponent {
  String name = 'World';
}
```

### 2. Bootstrap the application

```dart
import 'package:angulardart/angular.dart';
import 'app_component.dart';

void main() {
  runApp(AppComponent, 'my-app');
}
```

### 3. Create the HTML entry point

```html
<!DOCTYPE html>
<html>
<head>
  <title>My AngularDart App</title>
</head>
<body>
  <my-app>Loading...</my-app>
  <script defer src="main.dart.js"></script>
</body>
</html>
```

### 4. Build and run

```bash
dart pub get
dart run build_runner build
dart run build_runner serve web
```

## Documentation

- [AngularDart Tutorial](https://angulardart.dev/tutorial)
- [API Reference](https://pub.dev/documentation/angulardart/latest/)
- [Examples](https://github.com/angulardart/angular/tree/master/examples)

## Related Packages

- [angulardart_cli](https://pub.dev/packages/angulardart_cli) - CLI tools for scaffolding and development
- [angulardart_forms](https://pub.dev/packages/angulardart_forms) - Forms framework
- [angulardart_router](https://pub.dev/packages/angulardart_router) - Routing library
- [angulardart_test](https://pub.dev/packages/angulardart_test) - Testing utilities

## Requirements

- Dart SDK >= 3.0.0
- Web platform support

## License

MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

See [CONTRIBUTING.md](https://github.com/angulardart/angular/blob/master/CONTRIBUTING.md) for guidelines.

## Support

- [GitHub Issues](https://github.com/angulardart/angular/issues)
- [GitHub Discussions](https://github.com/angulardart/angular/discussions)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/angulardart)
