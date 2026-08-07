<p align="center">
  <a href="https://angulardartreborn.com">
    <img src="https://img.shields.io/badge/website-angulardartreborn.com-blue" alt="Website" />
  </a>
  <a href="https://pub.dev/packages/angulardart_cli">
    <img src="https://badgen.net/pub/v/angulardart_cli?v=1.0.14" alt="pub package" />
  </a>
</p>

# AngularDart CLI

A command line interface for scaffolding AngularDart projects and components. Compatible with Dart 3 and the latest AngularDart packages.

## Installation

```bash
dart pub global activate angulardart_cli
```

After installation, the `ngdart` command will be available globally.

## Quick Start

Create a new AngularDart project in seconds:

```bash
ngdart new my_awesome_app
cd my_awesome_app
dart pub get
dart run build_runner serve
```

Then open your browser at `http://localhost:8080` to see your app running!

## Commands

### `ngdart new` - Create a New Project

Creates a complete AngularDart project structure with all necessary files.

```bash
ngdart new <project_name> [options]
```

**Options:**
- `-p, --path <path>`: Project directory path (default: current directory)
- `-r, --root-component <name>`: Root component class name (default: AppComponent)

**Example:**
```bash
ngdart new todo_app -r TodoAppComponent
```

**What's included:**
```
my_project/
├── lib/
│   └── app_component.dart      # Root component
│   └── app_component.html      # Root component template
├── web/
│   ├── index.html              # Main HTML file
│   ├── main.dart               # Application entry point
│   └── styles.css              # Global styles
├── pubspec.yaml                # Package dependencies
├── build.yaml                  # Build configuration
└── analysis_options.yaml       # Linter rules
```

### `ngdart generate component` - Generate a Component

Creates a new AngularDart component with Dart and HTML files.

```bash
ngdart generate component <ComponentName> [options]
```

**Options:**
- `-p, --path <path>`: Output directory (default: lib)

**Example:**
```bash
ngdart generate component UserCard
```

**Generated files:**
- `lib/user_card.dart`:
```dart
import 'package:angulardart/angulardart.dart';

@Component(
  selector: 'user-card',
  templateUrl: 'user_card.html',
)
class UserCard {
  var name = 'AngularDart';
}
```

- `lib/user_card.html`:
```html
<h1>Hello {{name}}</h1>
```

### `ngdart generate directive` - Generate a Directive

Creates a new AngularDart directive.

```bash
ngdart generate directive <DirectiveName> [options]
```

**Options:**
- `-p, --path <path>`: Output directory (default: lib)

**Example:**
```bash
ngdart generate directive Highlight
```

**Generated file:**
```dart
import 'package:angulardart/angulardart.dart';

@Directive(
  selector: '[highlight]',
)
class Highlight {
  final ElementRef _elementRef;

  Highlight(this._elementRef);
}
```

### `ngdart generate pipe` - Generate a Pipe

Creates a new AngularDart pipe for transforming data in templates.

```bash
ngdart generate pipe <PipeName> [options]
```

**Options:**
- `-p, --path <path>`: Output directory (default: lib)

**Example:**
```bash
ngdart generate pipe ReverseText
```

**Generated file:**
```dart
import 'package:angulardart/angulardart.dart';

@Pipe('ReverseText')
class ReverseText extends PipeTransform {
  @override
  dynamic transform(dynamic value, [List<dynamic>? args]) {
    return value;
  }
}
```

### `ngdart generate service` - Generate a Service

Creates a new injectable AngularDart service.

```bash
ngdart generate service <ServiceName> [options]
```

**Options:**
- `-p, --path <path>`: Output directory (default: lib)

**Example:**
```bash
ngdart generate service DataService
```

**Generated file:**
```dart
import 'package:angulardart/angulardart.dart';

@Injectable()
class DataService {
  DataService();
}
```

## Naming Conventions

The CLI automatically converts names to appropriate formats:

- **Component/Directive/Pipe/Service names**: PascalCase → snake_case for files
  - `UserCard` → `user_card.dart`
- **Selectors**: PascalCase → kebab-case for HTML selectors
  - `UserCard` → `user-card`

## Development Workflow

### Running Your Application

```bash
# Development server with hot reload
dart run build_runner serve

# Production build
dart run build_runner build --release
```

### Running Tests

```bash
dart run build_runner test
```

## Requirements

- **Dart SDK**: >= 3.0.0 < 4.0.0
- **Build tools**: `build_runner` and `build_web_compilers` (automatically added to new projects)

## Related Packages

This CLI generates projects using the following AngularDart packages:

- [angulardart](https://pub.dev/packages/angulardart) - Core framework
- [angulardart_forms](https://pub.dev/packages/angulardart_forms) - Forms support
- [angulardart_router](https://pub.dev/packages/angulardart_router) - Routing
- [angulardart_test](https://pub.dev/packages/angulardart_test) - Testing utilities
- [angulardart_components](https://pub.dev/packages/angulardart_components) - Material Design components

## Troubleshooting

### Command not found after installation

Make sure Dart's global bin directory is in your PATH:

```bash
export PATH="$PATH":"$HOME/.pub-cache/bin"
```

### Build errors

If you encounter build errors, try:

```bash
# Clean build artifacts
dart run build_runner clean

# Rebuild
dart run build_runner build --delete-conflicting-outputs
```

## License

BSD 3-Clause License

---

## Disclaimer

**AngularDart Reborn** is a community-maintained fork of Google's original [AngularDart](https://pub.dev/packages/angulardart) framework (formerly known as AngularDart by Google). This project is **not affiliated with, endorsed by, or sponsored by Google LLC**.

- **Angular**, **AngularDart**, and all associated packages (`angulardart`, `angulardart_router`, `angulardart_compiler`, `angulardart_forms`, `angulardart_meta`, `angulardart_ast`, `angulardart_cli`, `angulardart_seo`, `angulardart_prerender`, `angulardart_test`, `angulardart_components`) are trademarks and projects of the AngularDart Reborn community.
- The original AngularDart framework was developed by Google LLC and hosted at [github.com/angulardart](https://github.com/angulardart).
- This is an independent, 100% community-driven project that continues the work started by Google's AngularDart team after Google ceased active maintenance.

For the official Angular Framework (TypeScript/JavaScript), visit [angular.io](https://angular.io). For the original Google-maintained AngularDart repository, see [github.com/angulardart](https://github.com/angulardart).
