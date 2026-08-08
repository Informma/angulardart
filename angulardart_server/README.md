# angulardart_server

Server-side rendering (SSR) and hybrid rendering for AngularDart applications.

## Features

- **Server-side rendering**: Render AngularDart components to HTML on the server
- **Hybrid rendering**: Per-component render mode control (`server`, `client`, `automatic`)
- **Client hydration**: Reuse server-rendered DOM on the client for better performance
- **TransferState**: Pass state from server to client efficiently

## Quick Start

```dart
import 'package:angulardart_server/angulardart_server.dart';

final server = platformServer();
final html = await server.renderApplication(
  MyComponentNgFactory,
  url: request.uri.toString(),
);
```

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  angulardart_server: ^1.0.1
```

## Documentation

See the [AngularDart SSR Guide](https://angulardartreborn.com/guide/ssr) for detailed documentation.
