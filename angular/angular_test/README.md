![AngularDart Test banner](https://github.com/flutterdocteur/angulardart/raw/main/media/banner.png)

<p align="center">
  <a href="https://angulardartreborn.com">
    <img src="https://img.shields.io/badge/website-angulardartreborn.com-blue" alt="Website" />
  </a>
  <a href="https://pub.dev/packages/angulardart_test">
    <img src="https://img.shields.io/pub/v/angulardart_test" alt="pub package" />
  </a>
</p>

# AngularDart Test

**Testing utilities and helpers for AngularDart components.**

Part of the [AngularDart](https://pub.dev/packages/angulardart) ecosystem.

## Features

- **Component testing** - Test AngularDart components in isolation
- **NgTestBed** - Create and manage component test fixtures
- **Test fixtures** - Interact with rendered components
- **Zone stabilization** - Wait for async operations to complete
- **Change detection** - Trigger and verify view updates

## Installation

Add to your `pubspec.yaml`:

```yaml
dev_dependencies:
  angulardart_test: ^5.0.0
  build_runner: ^2.4.0
  build_test: ^2.2.0
  build_web_compilers: ^4.0.0
```

## Quick Start

```dart
import 'package:angulardart/angular.dart';
import 'package:angulardart_test/angulardart_test.dart';
import 'package:test/test.dart';

import 'my_component.dart';
import 'my_component.template.dart' as ng;

void main() {
  ng.initReflector();
  tearDown(disposeAnyRunningTest);

  test('should render greeting', () async {
    final testBed = NgTestBed<HelloComponent>();
    final fixture = await testBed.create();
    
    expect(fixture.text, contains('Hello'));
    
    await fixture.update((c) => c.name = 'World');
    expect(fixture.text, contains('Hello World'));
  });
}
```

## Testing with NgTestBed

### Create a test fixture

```dart
final testBed = NgTestBed<MyComponent>();
final fixture = await testBed.create();
```

### Access component instance

```dart
final component = fixture.rootElement.componentInstance;
```

### Update component state

```dart
await fixture.update((c) {
  c.name = 'New Value';
});
```

### Query DOM elements

```dart
final element = fixture.rootElement.querySelector('.my-class');
expect(element.text, 'Expected text');
```

### Trigger events

```dart
await fixture.update((c) {
  c.onButtonClick();
});
```

## Testing with Dependencies

```dart
test('should work with services', () async {
  final testBed = NgTestBed<MyComponent>(
    beforeChangeDetection: (component) {
      component.service = MockService();
    },
  );
  
  final fixture = await testBed.create();
  expect(fixture.text, contains('Data from mock'));
});
```

## Async Testing

AngularDart tests run in zones. Use `tearDown` to clean up:

```dart
import 'package:angulardart_test/angulardart_test.dart';

void main() {
  tearDown(disposeAnyRunningTest);
  
  test('async test', () async {
    final testBed = NgTestBed<MyComponent>();
    final fixture = await testBed.create();
    
    // Wait for async operations
    await fixture.update((c) {});
  });
}
```

## Configuration

Add to your `pubspec.yaml`:

```yaml
dev_dependencies:
  build_runner: ^2.4.0
  build_test: ^2.2.0
  build_web_compilers: ^4.0.0
```

Run tests:

```bash
dart run build_runner test -- -p chrome
```

## Documentation

- [API Reference](https://pub.dev/documentation/angulardart_test/latest/)
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
