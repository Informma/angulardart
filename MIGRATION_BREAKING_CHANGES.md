# Migration AngularDart vers Dart 3.12.2 - Breaking Changes

## Résumé de la migration

**Date** : 2026-07-17  
**Version Dart** : 3.12.2  
**Statut** : ✅ Migration complète, tous les tests passent (937 tests)

## Packages migrés

| Package | Ancienne version | Nouvelle version | Tests |
|---------|------------------|------------------|-------|
| angular_ast | 2.0.1 | 3.0.0 | 550/550 ✅ |
| angular_compiler | 2.0.2 | 3.0.0 | N/A (compilateur) |
| angular | 7.0.2 | 8.0.0 | N/A (core) |
| angular_forms | 4.0.1 | 5.0.0 | 253/253 ✅ |
| angular_router | 3.0.1 | 4.0.0 | 85/85 ✅ |
| angular_test | 4.0.1 | 5.0.0 | 49/49 ✅ |
| angular_components | - | - | 1566 erreurs corrigées |

## Breaking Changes

### 1. Exigences système

- **Dart SDK** : `>=3.0.0 <4.0.0` (anciennement `>=2.14.0 <3.0.0`)
- **analyzer** : `^6.0.0` (anciennement `^2.0.0`)

### 2. Changements de dépendances

#### angular
- `js` → `web` (^0.5.0)
- `built_value` : ^8.0.0 → ^8.9.0
- `intl` : ^0.17.0 → ^0.19.0
- `csslib` : ^0.17.0 → ^1.0.0

#### angular_ast
- `charcode` : ^1.1.0 → ^1.3.0
- `source_span` : ^1.4.0 → ^1.10.0
- Ajout de `collection` ^1.18.0 et `string_scanner` ^1.3.0

### 3. Class Modifiers (Dart 3)

Les classes abstraites utilisées comme mixins doivent maintenant être déclarées avec `abstract mixin class` :

```dart
// AVANT (Dart 2)
abstract class TouchHandler { ... }

// APRÈS (Dart 3)
abstract mixin class TouchHandler { ... }
```

**Classes affectées** :
- angular_ast : 16 classes converties
- angular_forms : `TouchHandler`, `ChangeHandler`
- angular_compiler : 2 classes

### 4. Null Safety

#### Suppression de `// @dart=2.9`
Tous les fichiers avec cette annotation doivent être migrés vers null safety complète.

#### Types nullable
Les paramètres optionnels doivent être explicitement nullable :

```dart
// AVANT
void method(HtmlElement element) { ... }

// APRÈS
void method(HtmlElement? element) { ... }
```

#### ViewChild/ContentChild
Doivent être nullable et non-late :

```dart
// AVANT
@ViewChild('elem')
late HtmlElement element;

// APRÈS
@ViewChild('elem')
HtmlElement? element;
```

### 5. Mockito incompatible avec null safety

Mockito ne fonctionne pas correctement avec les types non-nullable en Dart null-safe. Les mocks retournent null pour les méthodes non stubbées, causant des TypeError.

**Solution** : Utiliser des fakes manuels :

```dart
// AVANT (Mockito)
class MockRouter extends Mock implements Router {}

// APRÈS (Fake manuel)
class _FakeRouter implements Router {
  final List<List<dynamic>> navigateCalls = [];
  
  @override
  Future<NavigationResult> navigate(dynamic url, {dynamic extra}) {
    navigateCalls.add([url, extra]);
    return Future.value(NavigationResult.SUCCESS);
  }
  
  @override
  dynamic noSuchMethod(Invocation invocation) => null;
}
```

### 6. Templates Angular

Les event handlers doivent appeler les méthodes avec `()` :

```html
<!-- AVANT (incorrect - évalue la référence) -->
<button (click)="throwError">Click</button>

<!-- APRÈS (correct - appelle la méthode) -->
<button (click)="throwError()">Click</button>
```

### 7. Analyzer v6 API Changes

Pour angular_compiler et les outils de compilation :

| Ancienne API | Nouvelle API |
|--------------|--------------|
| `CompilationUnitElement.types` | `.classes` |
| `LibraryElement.getType()` | `.getClass()` |
| `LibraryElement.imports` | `.libraryImports` |
| `LibraryElement.exports` | `.libraryExports` |
| `InterfaceType.lookUpInherited*` | `InterfaceElement.lookUpInherited*` |
| `ImportElement` | `LibraryImportElement` |
| `isDeferred` | `prefix is DeferredImportElementPrefix` |
| `Token.name` | `Token.lexeme` |
| `DartType.displayName` | `.getDisplayString(withNullability: false)` |
| `InterfaceElement.isEnum` | `element is EnumElement` |
| `getResolvedLibraryByElement2` | `getResolvedLibraryByElement` |

### 8. Template Compiler Fix

`lookUpInheritedConcreteSetter` exclut les setters de la classe elle-même. Utiliser `lookUpSetter` pour inclure les setters définis sur la classe :

```dart
// AVANT (ne trouve pas les @Input() définis sur la classe)
final setter = element.lookUpInheritedConcreteSetter(name, library)!;

// APRÈS (inclut la classe elle-même)
final setter = element.lookUpSetter(name, library);
```

### 9. dart:html (Optionnel)

**Note** : `dart:html` **n'est PAS déprécié** dans Dart 3.12.2 et fonctionne parfaitement. La migration vers `package:web` est optionnelle et concerne uniquement la pérennité future.

## Commandes de test

### angular_ast (tests VM purs)
```bash
cd angular/angular_ast
dart run build_runner test -- -p vm
```

### Autres packages (tests navigateur)
```bash
cd angular/angular_forms
dart run build_runner test -- -p chrome

cd angular/angular_test
dart run build_runner test -- -p chrome

cd angular/angular_router
dart run build_runner test -- -p chrome
```

**Important** : Ne pas utiliser `dart test` - il ne trouve pas les fichiers `.template.dart` générés.

## Migration d'un projet existant

### 1. Mettre à jour pubspec.yaml

```yaml
environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  angular: ^8.0.0
  angular_forms: ^5.0.0
  angular_router: ^4.0.0

dev_dependencies:
  angular_test: ^5.0.0
  build_runner: ^2.4.0
```

### 2. Migrer vers null safety

- Supprimer tous les `// @dart=2.9`
- Ajouter `?` aux types nullable
- Ajouter `late` aux champs non initialisés
- Ajouter `!` pour les null checks

### 3. Corriger les class modifiers

Convertir les classes abstraites utilisées comme mixins en `abstract mixin class`.

### 4. Corriger les templates

Remplacer `(click)="method"` par `(click)="method()"`.

### 5. Remplacer Mockito par des fakes manuels

Voir la section 5 ci-dessus.

### 6. Régénérer les templates

```bash
dart run build_runner clean
dart run build_runner build --delete-conflicting-outputs
```

## Résultats

- ✅ **937 tests réussis**
- ✅ **2 skips attendus**
- ✅ **0 échecs**
- ✅ **0 erreurs de compilation**
- ✅ **Compilateur Angular fonctionnel**

## Ressources

- [Dart 3 migration guide](https://dart.dev/resources/dart-3-migration)
- [package:web migration](https://dart.dev/interop/js-interop/package-web)
- [analyzer changelog](https://pub.dev/packages/analyzer/changelog)
- [dart:js_interop](https://dart.dev/interop/js-interop)
