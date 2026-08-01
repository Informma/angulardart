# Bugs trouvés dans AngularDart Router v4.0.9

## ✅ Bug 1: Template Parser - List literals non supportés dans les bindings

**Sévérité:** Moyenne  
**Composant:** `angulardart_compiler` (template parser)  
**Statut:** CORRIGÉ

### Description
Le template parser d'AngularDart ne supportait pas les expressions de type list literal dans les bindings:

```html
<!-- Ne compilait pas avant la correction -->
<a [routerLink]="['/guide']">Guide</a>
<a [routerLink]="[link['path']]">Link</a>
```

### Erreur
```
Parser Error: ListLiteralImpl: Not a subset of supported Dart expressions.
```

### Correction appliquée
1. Ajout de la classe `LiteralList` dans `ast.dart`
2. Implémentation de `visitListLiteral` dans `analyzer_parser.dart`
3. Mise à jour de tous les visiteurs AST pour supporter `LiteralList`
4. Génération de code pour les listes dans `expression_converter.dart`

### Fichiers modifiés
- `angular/angular_compiler/lib/v1/src/compiler/expression_parser/ast.dart`
- `angular/angular_compiler/lib/v1/src/compiler/expression_parser/analyzer_parser.dart`
- `angular/angular_compiler/lib/v1/src/compiler/analyzed_class.dart`
- `angular/angular_compiler/lib/v1/src/compiler/view_compiler/expression_converter.dart`
- `angular/angular_compiler/lib/v1/src/compiler/i18n/property_visitor.dart`
- `angular/_tests/test/compiler/expression_parser/unparser.dart`

### Tests ajoutés
- `angular/angular_compiler/test/expression_parser_list_literal_test.dart`

---

## ✅ Bug 2: API routerLink - Support de List<String>

**Sévérité:** Faible (changement d'API)  
**Composant:** `angulardart_router`  
**Statut:** CORRIGÉ

### Description
Dans `angulardart_router` v4.0.9, `routerLink` acceptait uniquement un `String`, pas une `List<String>` comme dans les versions précédentes d'AngularDart.

### Avant (v4.0.9)
```html
<!-- Ne fonctionnait pas -->
<a [routerLink]="['/users', userId]">User</a>
```

### Maintenant (après correction)
```html
<!-- Fonctionne maintenant -->
<a [routerLink]="['/users', userId]">User</a>
<a [routerLink]="['/guide', 'template-syntax']">Guide</a>
```

### Correction appliquée
Modification du setter `routerLink` dans `router_link_directive.dart` pour accepter:
- `String` (comportement existant)
- `List<dynamic>` (converti en chemin avec `/` comme séparateur)

### Fichiers modifiés
- `angular/angular_router/lib/src/directives/router_link_directive.dart`

### Tests ajoutés
- `angular/angular_router/test/router_link_list_test.dart`

---

## ✅ Bug 3: Router est une classe abstraite

**Sévérité:** Faible (documentation)  
**Composant:** `angulardart_router`  
**Statut:** CORRIGÉ (documentation)

### Description
`Router` est une classe abstraite et ne peut pas être instanciée directement avec `ClassProvider(Router)`. Il faut utiliser `routerProviders` qui fournit `RouterImpl`.

### Erreur
```dart
// Ne fonctionne pas
providers: [ClassProvider(Router)]
```

### Solution (documentée)
```dart
// Utiliser routerProviders dans main.dart
void main() {
  runAppLegacy(AppComponent, createInjectorFromProviders: [routerProviders]);
}
```

### Fichiers modifiés
- Documentation dans les exemples du site web

---

## ✅ Bug 4: `<base href>` obligatoire pour PathLocationStrategy

**Sévérité:** Critique (page noire sans erreur visible)  
**Composant:** `angulardart_router`  
**Statut:** Documenté (comportement attendu)

### Description
Le `PathLocationStrategy` utilisé par défaut par `routerProviders` exige soit un élément `<base href="/">` dans le HTML, soit le token `appBaseHref`. Sans cela, le router lève une `ArgumentError` au démarrage qui peut passer inaperçue si la console n'est pas ouverte.

### Erreur
```
EXCEPTION: Invalid argument(s): No base href set. Please provide a value for the appBaseHref token or add a base element to the document.
```

### Solution
Ajouter `<base href="/">` dans le `<head>` de `web/index.html` :
```html
<head>
    <meta charset="utf-8">
    <base href="/">
    ...
</head>
```

Ou fournir le token `appBaseHref` dans l'injecteur :
```dart
@GenerateInjector([
  routerProviders,
  const ValueProvider.forToken(appBaseHref, '/'),
])
final InjectorFactory appInjector = appInjector$Injector;
```

---

## ✅ Bug 5: `runAppLegacy` ne fonctionne pas en mode release

**Sévérité:** Critique (page noire)  
**Composant:** `angulardart` (bootstrap)  
**Statut:** Documenté

### Description
`runAppLegacy` utilise `ReflectiveInjector` qui nécessite la réflexion runtime pour résoudre les component factories. En mode dart2js release (`-O4`), les noms de types sont mangelés et le reflector ne retrouve pas les factories enregistrées par `initReflector()`.

### Solution
Utiliser `runApp` avec `@GenerateInjector` qui génère un injecteur statique à la compilation :
```dart
@GenerateInjector([routerProviders])
final InjectorFactory appInjector = ng_main.appInjector$Injector;

void main() {
  ng.initReflector();
  runApp(ng.AppComponentNgFactory, createInjector: appInjector);
}
```

---

## Résumé des corrections

Tous les bugs identifiés ont été corrigés:

1. ✅ **Template Parser** - Support complet des list literals ajouté
2. ✅ **routerLink** - Accepte maintenant `String` et `List<String>`
3. ✅ **Documentation** - Exemples mis à jour avec la bonne utilisation de `routerProviders`
4. ✅ **`<base href>`** - Documenté comme obligatoire pour PathLocationStrategy
5. ✅ **`runAppLegacy`** - Documenté comme incompatible avec le mode release

Les corrections sont disponibles dans les versions publiées :
- `angulardart` 8.0.17
- `angulardart_router` 4.0.10
- `angulardart_compiler` 3.0.11

---

## Recommandations pour la publication

1. ✅ `angulardart_compiler` 3.0.11 publié
2. ✅ `angulardart_router` 4.0.10 publié
3. ✅ `angulardart` 8.0.17 publié
4. ✅ Site web mis à jour et fonctionnel sur https://angulardartreborn.com
