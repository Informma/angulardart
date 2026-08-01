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

## Résumé des corrections

Tous les bugs identifiés ont été corrigés:

1. ✅ **Template Parser** - Support complet des list literals ajouté
2. ✅ **routerLink** - Accepte maintenant `String` et `List<String>`
3. ✅ **Documentation** - Exemples mis à jour avec la bonne utilisation de `routerProviders`

Les corrections sont disponibles dans le commit `ef2adcf` et peuvent être publiées dans la prochaine version des packages.

---

## Recommandations pour la publication

1. Publier `angulardart_compiler` avec la version 3.0.11 (ou 3.1.0 si breaking changes acceptés)
2. Publier `angulardart_router` avec la version 4.0.10 (ou 4.1.0)
3. Mettre à jour le site web pour utiliser les nouvelles versions
4. Documenter les nouvelles fonctionnalités dans le changelog
