# Bugs trouvés dans AngularDart Router v4.0.9

## Bug 1: Template Parser - List literals non supportés dans les bindings

**Sévérité:** Moyenne  
**Composant:** `angulardart_compiler` (template parser)

### Description
Le template parser d'AngularDart ne supporte pas les expressions de type list literal dans les bindings:

```html
<!-- Ne compile pas -->
<a [routerLink]="['/guide']">Guide</a>
<a [routerLink]="[link['path']]">Link</a>
```

### Erreur
```
Parser Error: ListLiteralImpl: Not a subset of supported Dart expressions.
```

### Workaround
Utiliser des getters dans le composant Dart:

```dart
// Dans le composant
String get guideRoute => '/guide';

// Dans le template
<a [routerLink]="guideRoute">Guide</a>
```

### Impact
- Rend l'utilisation de `routerLink` avec des valeurs dynamiques très verbeuse
- Impossible d'utiliser la syntaxe standard `[routerLink]="['/path']"` documentée
- Oblige à créer des getters pour chaque route

### Reproduction
```dart
@Component(
  selector: 'test',
  template: '<a [routerLink]="[\'/test\']">Test</a>',
  directives: [routerDirectives],
)
class TestComponent {}
```

---

## Bug 2: API routerLink - Type String au lieu de List<String>

**Sévérité:** Faible (changement d'API)  
**Composant:** `angulardart_router`

### Description
Dans `angulardart_router` v4.0.9, `routerLink` attend un `String`, pas une `List<String>` comme dans les versions précédentes d'AngularDart.

### Avant (AngularDart v5 et avant)
```html
<a [routerLink]="['/users', userId]">User</a>
```

### Maintenant (v4.0.9)
```html
<a routerLink="/users/{{userId}}">User</a>
<!-- ou -->
<a [routerLink]="getUserRoute(userId)">User</a>
```

### Impact
- Changement d'API breaking par rapport à l'ancien router
- Nécessite de construire les URLs manuellement pour les routes avec paramètres
- Moins flexible pour la navigation programmatique

### Code source
```dart
// RouterLink dans router_link_directive.dart
late String _routerLink;  // Attend String, pas List<String>
```

---

## Bug 3: Router est une classe abstraite

**Sévérité:** Faible (documentation)  
**Composant:** `angulardart_router`

### Description
`Router` est une classe abstraite et ne peut pas être instanciée directement avec `ClassProvider(Router)`. Il faut utiliser `routerProviders` qui fournit `RouterImpl`.

### Erreur
```dart
// Ne fonctionne pas
providers: [ClassProvider(Router)]
```

### Solution
```dart
// Utiliser routerProviders dans main.dart
@GenerateInjector([routerProviders])
final InjectorFactory appInjector = appInjector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: appInjector);
}
```

### Impact
- Pas vraiment un bug, mais la documentation pourrait être plus claire
- L'erreur "Found a constructor for abstract class Router but it is not a factory" n'est pas très explicite

---

## Recommandations

1. **Supporter les list literals dans le template parser** - C'est une limitation importante qui rend le router moins ergonomique
2. **Documenter clairement les changements d'API** entre l'ancien router et le nouveau
3. **Ajouter des exemples complets** dans la documentation du router montrant comment configurer les providers
4. **Considérer supporter à nouveau List<String>** pour routerLink pour compatibilité avec les anciennes applications

---

## Fichiers concernés

- `package:angulardart_compiler/v1/src/compiler/template_parser/ast_template_parser.dart`
- `package:angulardart_router/lib/src/directives/router_link_directive.dart`
- `package:angulardart_router/lib/src/router/router.dart`
- `package:angulardart_router/lib/src/constants.dart`
