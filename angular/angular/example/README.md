# AngularDart Example

A minimal example demonstrating the basics of AngularDart.

## web/main.dart

```dart
import 'package:angulardart/angular.dart';
import 'app_component.dart';

void main() {
  runApp(AppComponent, 'my-app');
}
```

## web/index.html

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AngularDart Example</title>
</head>
<body>
  <my-app>Loading...</my-app>
  <script defer src="main.dart.js"></script>
</body>
</html>
```

## Running the example

1. Install dependencies:
   ```bash
   dart pub get
   ```

2. Build the project:
   ```bash
   dart run build_runner build
   ```

3. Serve the application:
   ```bash
   dart run build_runner serve web
   ```

4. Open your browser to `http://localhost:8080`

## What this example demonstrates

- **Component creation**: A simple `AppComponent` with template
- **Data binding**: Displaying component properties in the template
- **Event handling**: Handling button clicks with `(click)` binding
- **Interpolation**: Using `{{ }}` to display dynamic values
