![AngularDart Router banner](https://github.com/flutterdocteur/angulardart/raw/main/media/banner.png)

<p align="center">
  <a href="https://angulardartreborn.com">
    <img src="https://img.shields.io/badge/website-angulardartreborn.com-blue" alt="Website" />
  </a>
  <a href="https://pub.dev/packages/angulardart_router">
    <img src="https://badgen.net/pub/v/angulardart_router" alt="pub package" />
  </a>
</p>

# AngularDart Router

**Client-side routing and navigation for AngularDart applications.**

Part of the [AngularDart](https://pub.dev/packages/angulardart) ecosystem.

## Features

- **Client-side routing** - Navigate between views without page reloads
- **Route configuration** - Define routes with parameters and guards
- **Route lifecycle** - Hooks for route activation and deactivation
- **Router directives** - `<router-outlet>` and `routerLink`
- **Location strategies** - Hash-based or path-based URLs

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  angulardart: ^8.0.0
  angulardart_router: ^4.0.0
```

## Quick Start

### 1. Define routes

```dart
import 'package:angulardart/angular.dart';
import 'package:angulardart_router/router.dart';

@Component(
  selector: 'my-app',
  template: '''
    <nav>
      <a [routerLink]="['/']">Home</a>
      <a [routerLink]="['/about']">About</a>
      <a [routerLink]="['/users', '123']">User 123</a>
    </nav>
    <router-outlet></router-outlet>
  ''',
  directives: [routerDirectives],
)
@RouteConfig(const [
  Route(path: '/', component: HomeComponent, name: 'Home'),
  Route(path: '/about', component: AboutComponent, name: 'About'),
  Route(path: '/users/:id', component: UserComponent, name: 'User'),
])
class AppComponent {}
```

### 2. Create route components

```dart
@Component(
  selector: 'home',
  template: '<h1>Home</h1>',
)
class HomeComponent {}

@Component(
  selector: 'about',
  template: '<h1>About</h1>',
)
class AboutComponent {}

@Component(
  selector: 'user',
  template: '<h1>User {{userId}}</h1>',
)
class UserComponent implements OnActivate {
  String? userId;
  
  @override
  void onActivate(RouterState? previous, RouterState current) {
    userId = current.parameters['id'];
  }
}
```

## Route Parameters

Access route parameters in your components:

```dart
@Component(selector: 'user', template: '<h1>User {{userId}}</h1>')
class UserComponent implements OnActivate {
  String? userId;
  
  @override
  void onActivate(RouterState? previous, RouterState current) {
    userId = current.parameters['id'];
  }
}
```

## Navigation

Navigate programmatically:

```dart
@Component(selector: 'my-comp', template: '...')
class MyComponent {
  final Router _router;
  
  MyComponent(this._router);
  
  void goToUser(String id) {
    _router.navigate('/users/$id');
  }
}
```

## Route Guards

Control access to routes:

```dart
@Injectable()
class AuthGuard implements CanActivate {
  final AuthService _auth;
  
  AuthGuard(this._auth);
  
  @override
  bool canActivate(RouterState? from, RouterState to) {
    return _auth.isLoggedIn;
  }
}

@RouteConfig(const [
  Route(
    path: '/admin',
    component: AdminComponent,
    name: 'Admin',
    canActivate: [AuthGuard],
  ),
])
```

## Location Strategies

### Hash-based URLs (default)
```
http://example.com/#/users/123
```

### Path-based URLs
```
http://example.com/users/123
```

Configure in your main.dart:

```dart
void main() {
  runApp(AppComponent, 'my-app');
}
```

## Documentation

- [API Reference](https://pub.dev/documentation/angulardart_router/latest/)
- [AngularDart main package](https://pub.dev/packages/angulardart)

## Requirements

- Dart SDK >= 3.0.0
- AngularDart >= 8.0.0

## License

MIT License
