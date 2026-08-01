# Bug critique: AngularDart ne démarre pas sur angulardartreborn.com

## Statut: RESOLU

## Résumé
Le site https://angulardartreborn.com affichait une page noire. AngularDart ne s'initialisait pas.

## Causes racines identifiées

### Bug 1: `runAppLegacy` ne fonctionne pas en mode release
`runAppLegacy` utilise `ReflectiveInjector` qui nécessite la réflexion runtime. En mode dart2js release (`-O4`), les noms de types sont mangelés et le reflector ne retrouve pas les component factories.

**Solution:** Utiliser `runApp` avec `@GenerateInjector` :
```dart
// web/main.dart
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_website/src/app_component.template.dart' as ng;
import 'main.template.dart' as ng_main;

@GenerateInjector([routerProviders])
final InjectorFactory appInjector = ng_main.appInjector$Injector;

void main() {
  ng.initReflector();
  runApp(ng.AppComponentNgFactory, createInjector: appInjector);
}
```

### Bug 2: `<base href>` manquant pour le router
Le `PathLocationStrategy` d'AngularDart exige soit un élément `<base href="/">` dans le HTML, soit le token `appBaseHref`.

**Erreur:** `No base href set. Please provide a value for the appBaseHref token or add a base element to the document.`

**Solution:** Ajouter `<base href="/">` dans `web/index.html` :
```html
<head>
    <meta charset="utf-8">
    <base href="/">
    ...
</head>
```

## Configuration finale fonctionnelle

### web/main.dart
```dart
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_website/src/app_component.template.dart' as ng;
import 'main.template.dart' as ng_main;

@GenerateInjector([routerProviders])
final InjectorFactory appInjector = ng_main.appInjector$Injector;

void main() {
  ng.initReflector();
  runApp(ng.AppComponentNgFactory, createInjector: appInjector);
}
```

### web/index.html
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <base href="/">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    ...
    <script defer src="main.dart.js"></script>
</head>
<body>
    <app-component></app-component>
</body>
</html>
```

### pubspec.yaml
```yaml
dependencies:
  angulardart: ^8.0.17
  angulardart_router: ^4.0.10
  web: ^0.5.0
  markdown: ^7.1.0
```

## Leçons apprises

1. **Ne JAMAIS utiliser `runAppLegacy` en mode release** - Utiliser `runApp` + `@GenerateInjector`
2. **Toujours ajouter `<base href="/">`** quand on utilise le router AngularDart avec `PathLocationStrategy`
3. **Toujours vérifier la console navigateur** - Les erreurs JavaScript sont visibles uniquement dans la console (F12)
4. **Les `dependency_overrides`** sont utiles pour le développement local mais doivent être retirés avant la production

## Environnement
- Dart SDK: 3.12.0
- AngularDart: 8.0.17
- AngularDart Router: 4.0.10
- Build: dart2js avec -O4
- Serveur: nginx sur VPS
- URL: https://angulardartreborn.com
