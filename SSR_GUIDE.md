# SSR_GUIDE.md — Structure et règles pour les projets SSR AngularDart

---

## Règle : les composants peuvent être dans `lib/` ou inline dans `web/main.dart`

Le builder angulardart génère des fichiers `.template.dart` pour tous les composants. Pour que la compilation AOT/VM fonctionne, ces fichiers doivent être accessibles via les imports `package:`.

**Avant le fix Phase 6.5** : seuls les composants inline dans `web/main.dart` fonctionnaient.
**Après le fix Phase 6.5** : les composants dans `lib/` fonctionnent aussi (le reflector ne skippe plus les templates du package courant).

---

## Structure correcte pour un projet SSR avec composants dans `lib/`

```
my_app/
├── web/
│   ├── main.dart          ← entrypoint client + root component (optionnel)
│   ├── main.server.dart   ← entrypoint server-side
│   └── ...
├── lib/
│   ├── home_component.dart    ← sous-composants dans lib/ → OK maintenant !
│   ├── about_component.dart
│   ├── dashboard_component.dart
│   ├── data_service.dart
│   └── platform_dom*.dart     ← abstraction DOM conditionnelle pour SSR
├── bin/
│   └── server.dart
└── pubspec.yaml
```

---

## Template `web/main.dart` pour SSR (sans composants dans lib/)

```dart
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_server/angulardart_server.dart';
// ignore: uri_has_not_been_generated
import 'package:my_app/platform_dom.dart' as platform_dom;
// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

void main() async {
  final isServerRendered =
      (platform_dom.window as dynamic).document.documentElement?.getAttribute('ng-server-context') == 'ssr';

  if (isServerRendered) {
    await hydrateApplication(ng.AppComponentNgFactory);
  } else {
    runApp(ng.AppComponentNgFactory);
  }
}

@Component(
  selector: 'app-component',
  template: '<h1>Hello {{name}}</h1>',
)
class AppComponent {
  var name = 'AngularDart';
}
```

---

## Pour les apps complexes (routing, multiples composants dans lib/)

Les composants peuvent maintenant être définis dans `lib/` :

```dart
// web/main.dart — entrypoint avec routing
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_server/angulardart_server.dart';
import 'package:my_app/home_component.dart';      // lib/ → OK !
import 'package:my_app/about_component.dart';     // lib/ → OK !
// ignore: uri_has_not_been_generated
import 'home_component.template.dart' as home;    // templates de lib/ → OK !
// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

@GenerateInjector([routerProviders])
final InjectorFactory appInjector = ng.appInjector\$Injector;

@Component(
  selector: 'app-component',
  template: '<nav><a [routerLink]="[\\'/\\']">Home</a> | <a [routerLink]="[\\'/about\\']">About</a></nav>'
            '<main><router-outlet [routes]="routes"></router-outlet></main>',
  directives: [routerDirectives],
)
class AppComponent implements OnInit {
  final Router _router;
  List<RouteDefinition> routes = [];

  AppComponent(this._router);

  @override
  void ngOnInit() {
    _router.onRouteActivated.listen((_) {});
    routes = [
      RouteDefinition(path: '/', component: home.HomeComponentNgFactory, useAsDefault: true),
      RouteDefinition(path: '/about', component: about.AboutComponentNgFactory),
    ];
    _router.navigate('/');
  }
}

void main() async { ... }
```

---

## Workflow build pour les projets SSR avec composants dans lib/

```bash
# Build
dart run build_runner clean
dart run build_runner build web --release

# Copier TOUS les templates générés (web/ ET lib/) vers leurs emplacements respectifs
ngdart generate-stubs

# Ou manuellement :
for f in .dart_tool/build/generated/*/lib/*.template.dart; do cp "$f" lib/ 2>/dev/null || true; done
for f in .dart_tool/build/generated/*/web/*.template.dart; do cp "$f" web/ 2>/dev/null || true; done

# Lancer le serveur
dart bin/server.dart
```

---

## Fichiers à générer pour un projet SSR avec composants dans lib/

1. `web/main.dart` — entrypoint client + root component (optionnel)
2. `web/main.server.dart` — stub exportant `appComponentFactory`
3. `bin/server.dart` — serveur HTTP
4. `lib/*.dart` — sous-composants avec leurs templates `.template.dart` copiés par `generate-stubs`

---

## Commandes build_runner SSR

```bash
# Build (pas de -d)
dart run build_runner build web --release

# Développement (serveur HMR)
dart run build_runner serve
```
