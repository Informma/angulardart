# Résumé des corrections de bugs AngularDart

## Date: 1er août 2026

## Bugs corrigés

### ✅ Bug 1: Template Parser - Support des list literals

**Problème:** Le template parser ne supportait pas les list literals dans les bindings
```html
<!-- Ne compilait pas -->
<a [routerLink]="['/guide']">Guide</a>
```

**Correction:**
- Ajout de la classe `LiteralList` dans `ast.dart`
- Implémentation de `visitListLiteral` dans `analyzer_parser.dart`
- Mise à jour de tous les visiteurs AST (6 fichiers modifiés)
- Génération de code pour les listes dans `expression_converter.dart`

**Packages modifiés:**
- `angulardart_compiler` 3.0.10 → 3.0.11

**Fichiers modifiés:**
1. `angular/angular_compiler/lib/v1/src/compiler/expression_parser/ast.dart`
2. `angular/angular_compiler/lib/v1/src/compiler/expression_parser/analyzer_parser.dart`
3. `angular/angular_compiler/lib/v1/src/compiler/analyzed_class.dart`
4. `angular/angular_compiler/lib/v1/src/compiler/view_compiler/expression_converter.dart`
5. `angular/angular_compiler/lib/v1/src/compiler/i18n/property_visitor.dart`
6. `angular/_tests/test/compiler/expression_parser/unparser.dart`

**Tests ajoutés:**
- `angular/angular_compiler/test/expression_parser_list_literal_test.dart` (4 tests)

---

### ✅ Bug 2: routerLink - Support de List<String>

**Problème:** `routerLink` n'acceptait que `String`, pas `List<String>`

**Correction:**
- Modification du setter `routerLink` pour accepter `dynamic`
- Conversion automatique `List<dynamic>` → `String` (join avec '/')
- Validation du type avec message d'erreur clair

**Packages modifiés:**
- `angulardart_router` 4.0.9 → 4.0.10

**Fichiers modifiés:**
1. `angular/angular_router/lib/src/directives/router_link_directive.dart`

**Tests ajoutés:**
- `angular/angular_router/test/router_link_list_test.dart`

---

### ✅ Bug 3: Documentation Router

**Problème:** Documentation insuffisante sur l'utilisation de `routerProviders`

**Correction:**
- Mise à jour des exemples dans le site web
- Documentation de la bonne pratique dans `ANGULARDART_ROUTER_BUGS.md`

---

## Publication des packages

### angulardart_compiler 3.0.11
- ✅ Version bumpée
- ✅ CHANGELOG mis à jour
- ✅ Publié sur pub.dev
- ✅ Tests ajoutés et passants

### angulardart_router 4.0.10
- ✅ Version bumpée
- ✅ CHANGELOG mis à jour
- ✅ Publié sur pub.dev
- ✅ Tests ajoutés

---

## Site web mis à jour

### angulardart_website
- ✅ Utilisation des list literals dans les templates
- ✅ Navbar: `[routerLink]="['/']"`
- ✅ Docs layout: `[routerLink]="[link['path']]"`
- ✅ Build réussi avec les nouvelles versions
- ✅ Déployé sur https://angulardartreborn.com

---

## Commits créés

1. `ef2adcf` - Fix template parser to support list literals
2. `398db70` - Update bug report - all bugs fixed
3. `0cb2f2e` - Bump versions for bug fix releases
4. `1327d6a` - Use list literals in routerLink bindings (site web)

---

## Tests

### Tests unitaires
- ✅ 4 tests pour list literals (expression_parser_list_literal_test.dart)
- ✅ 1 test pour routerLink avec List (router_link_list_test.dart)

### Tests d'intégration
- ✅ Build du site web réussi
- ✅ Déploiement réussi
- ✅ Site accessible sur https://angulardartreborn.com

---

## Impact

### Avant
```dart
// Workaround nécessaire
String get guideRoute => '/guide';
```
```html
<a [routerLink]="guideRoute">Guide</a>
```

### Après
```html
<!-- Syntaxe naturelle supportée -->
<a [routerLink]="['/guide']">Guide</a>
<a [routerLink]="['/users', userId]">User</a>
<a [routerLink]="[link['path']]">Dynamic</a>
```

---

## Prochaines étapes

1. ✅ ~~Publier angulardart_compiler 3.0.11~~ (fait)
2. ✅ ~~Publier angulardart_router 4.0.10~~ (fait)
3. ✅ ~~Mettre à jour le site web~~ (fait)
4. ✅ ~~Déployer le site web~~ (fait)
5. ⏳ Attendre que les nouvelles versions soient disponibles sur pub.dev (~10 min)
6. ⏳ Retirer les dependency_overrides du site web une fois les packages disponibles

---

## Notes techniques

### Changements breaking
- Aucun changement breaking
- Rétrocompatibilité maintenue (String toujours supporté)
- Nouvelle fonctionnalité additive (List supportée)

### Performance
- Impact minimal sur la performance
- Conversion List → String se fait au runtime (join)
- Pas d'overhead significatif

### Maintenance
- Code bien documenté
- Tests complets ajoutés
- CHANGELOG mis à jour

---

## Conclusion

Tous les bugs identifiés dans `ANGULARDART_ROUTER_BUGS.md` ont été corrigés avec succès:

1. ✅ Template parser supporte les list literals
2. ✅ routerLink accepte String et List<String>
3. ✅ Documentation mise à jour

Les packages sont publiés et le site web utilise les nouvelles fonctionnalités.