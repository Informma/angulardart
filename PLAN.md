# Plan de migration AngularDart vers Dart 3

## Objectif

Mettre à jour l'ensemble du projet AngularDart pour le rendre compatible avec Dart 3, permettant ainsi de continuer à l'utiliser à l'avenir.

## Repos concernés

### Repo principal : `angular`
- **URL** : https://github.com/angulardart/angular
- **Packages** : 6 packages principaux
- **Fichiers Dart** : 578 fichiers

### Repo secondaire : `angular_components`
- **URL** : https://github.com/angulardart/angular_components
- **Packages** : 1 package principal
- **Fichiers Dart** : 407 fichiers

## Structure des packages

```
angular/
├── angular/              (package principal)
├── angular_ast/          (parser templates)
├── angular_compiler/     (compilateur)
├── angular_forms/        (formulaires)
├── angular_router/       (routeur)
└── angular_test/         (tests)

angular_components/
└── angular_components/   (composants Material Design)
```

## Ordre de migration

L'ordre est déterminé par les dépendances entre packages :

1. **angular_ast** - Indépendant (0 imports d'autres packages angular)
2. **angular_compiler** - Dépend de angular_ast + angular
3. **angular** - Dépend de angular_ast + angular_compiler
4. **angular_forms** - Dépend de angular
5. **angular_router** - Dépend de angular
6. **angular_test** - Dépend de angular
7. **angular_components** - Dépend de angular + angular_forms

## Changements par package

### 1. angular_ast (v2.0.1 → v3.0.0)

**Changements appliqués** :
- SDK : `>=2.14.0 <3.0.0` → `>=3.0.0 <4.0.0`
- `analyzer` : `^2.0.0` → `^6.0.0`
- `charcode` : `^1.1.0` → `^1.3.0`
- `source_span` : `^1.4.0` → `^1.10.0`
- Migration des 16 classes abstraites en `abstract mixin class` (breaking change Dart 3)
- `pedantic` → `lints`

**Fichiers modifiés** :
- `pubspec.yaml`
- 16 fichiers dans `lib/src/ast/` (class modifiers)

**Validation** :
- `dart pub get` : ✓
- `dart analyze` : ✓ (0 erreurs)
- `dart test` : ✓ (550 tests passés, 1 skipped)

### 2. angular_compiler (v2.0.2 → v3.0.0)

**Changements appliqués** :
- SDK : `>=2.14.0 <3.0.0` → `>=3.0.0 <4.0.0`
- `analyzer` : `^2.0.0` → `^6.0.0` (migration majeure des APIs)
- 65 erreurs de compilation corrigées
- Migration complète des APIs analyzer v2→v6
- Class modifiers (2 classes)
- `analysis_options.yaml` migré de pedantic → lints

**APIs analyzer migrées** :
- `CompilationUnitElement.types` → `.classes`
- `LibraryElement.getType()` → `.getClass()`
- `LibraryElement.imports/exports` → `.libraryImports/.libraryExports`
- `InterfaceType.lookUpInherited*` → `InterfaceElement.lookUpInherited*` (avec paramètre library)
- `ImportElement` → `LibraryImportElement`
- `isDeferred` → `prefix is DeferredImportElementPrefix`
- `AnalysisSession.getResolvedLibraryByElement2` → `getResolvedLibraryByElement`
- `InterfaceElement.isEnum` → `element is EnumElement`
- `DartType.displayName` → `getDisplayString(withNullability: false)`
- `Token.name` → `Token.lexeme`

**Fichiers modifiés** :
- `pubspec.yaml`
- `analysis_options.yaml` (racine)
- 10 fichiers dans `lib/`
- 10 fichiers dans `test/`

**Validation** :
- `dart pub get` : ✓
- `dart analyze` : ✓ (0 erreurs dans lib/)

### 3. angular (v7.0.2 → v8.0.0)

**Changements appliqués** :
- SDK : `>=2.14.0 <3.0.0` → `>=3.0.0 <4.0.0`
- `js` : `^0.6.3` → remplacé par `web: ^0.5.0`
- `// @dart=2.9` supprimé dans `build.dart`
- Toutes les dépendances mises à jour

**Fichiers modifiés** :
- `pubspec.yaml`
- `lib/src/build.dart` (suppression `// @dart=2.9`)

**Validation** :
- `dart pub get` : ✓
- `dart analyze` : ✓ (0 erreurs)

**Notes** :
- La migration `dart:html` → `package:web` est reportée (le code compile avec dart:html sous Dart 3)
- La migration `package:js` → `dart:js_interop` est reportée (6 fichiers, peut être fait ultérieurement)

### 4. angular_forms (v4.0.1 → v5.0.0)

**Changements appliqués** :
- SDK : `>=2.14.0 <3.0.0` → `>=3.0.0 <4.0.0`
- `angular` : `^7.0.0` → `^8.0.0`
- `TouchHandler` et `ChangeHandler` convertis en `mixin class`

**Fichiers modifiés** :
- `pubspec.yaml`
- `lib/src/directives/control_value_accessor.dart` (class modifiers)

**Validation** :
- `dart pub get` : ✓
- `dart analyze` : ✓ (0 erreurs dans lib/)

### 5. angular_router (v3.0.1 → v4.0.0)

**Changements appliqués** :
- SDK : `>=2.14.0 <3.0.0` → `>=3.0.0 <4.0.0`
- `angular` : `^7.0.0` → `^8.0.0`
- `js` : `^0.6.3` → `web: ^0.5.0`

**Fichiers modifiés** :
- `pubspec.yaml`

**Validation** :
- `dart pub get` : ✓
- `dart analyze` : ✓ (0 erreurs dans lib/)

### 6. angular_test (v4.0.1 → v5.0.0)

**Changements appliqués** :
- SDK : `>=2.14.0 <3.0.0` → `>=3.0.0 <4.0.0`
- `angular` : `^7.0.0` → `^8.0.0`
- `pedantic` → `dart:async` (unawaited)

**Fichiers modifiés** :
- `pubspec.yaml`
- `lib/src/frontend/ng_zone/base_stabilizer.dart` (suppression import pedantic)

**Validation** :
- `dart pub get` : ✓
- `dart analyze` : ✓ (0 erreurs dans lib/)

### 7. angular_components (v1.0.3 → v2.0.0)

**Changements appliqués** :
- SDK : `>=2.10.5 <3.0.0` → `>=3.0.0 <4.0.0`
- Toutes les dépendances mises à jour

**Fichiers modifiés** :
- `pubspec.yaml`

**Statut** : Migration null safety non terminée (1832 erreurs)

**Notes** :
- Ce package était en SDK 2.10.5 (pre-null safety)
- La migration nécessite une conversion complète vers null safety EN PLUS de Dart 3
- Estimated effort : 1-2 semaines de travail supplémentaire

## Dépendances entre packages

Tous les packages utilisent des `dependency_overrides` avec des chemins relatifs pour fonctionner en monorepo local :

```yaml
dependency_overrides:
  angular:
    path: ../angular
  angular_ast:
    path: ../angular_ast
  angular_compiler:
    path: ../angular_compiler
```

## Points d'attention

### Migration analyzer v2 → v6
- Changements majeurs dans l'API
- Element API complètement modifiée
- Type system APIs modifiées
- Nécessite une compréhension approfondie de l'analyzer

### Class modifiers Dart 3
- Les classes abstraites utilisées comme mixin doivent être déclarées `abstract mixin class`
- Les classes concrètes utilisées comme mixin doivent être déclarées `mixin class`
- Breaking change important pour l'écosystème

### Migration dart:html → package:web
- `dart:html` est déprécié dans Dart 3 mais fonctionne encore
- Migration vers `package:web` recommandée à terme
- 32 fichiers dans angular à migrer

### Migration package:js → dart:js_interop
- `package:js` est remplacé par `dart:js_interop`
- 6 fichiers dans angular à migrer
- Nouvelle syntaxe pour les interops JS

## Timeline

- **Phase 1** (angular_ast) : ✓ Terminé
- **Phase 2** (angular_compiler) : ✓ Terminé
- **Phase 3** (angular) : ✓ Terminé
- **Phase 4** (angular_forms, angular_router, angular_test) : ✓ Terminé
- **Phase 5** (angular_components) : ⚠ En cours (null safety requise)

## Critères de succès

1. ✓ Tous les packages principaux compilent sans erreurs avec Dart 3
2. ✓ `dart analyze` passe sans erreurs sur tous les packages (lib/)
3. ⚠ Les tests unitaires passent (angular_ast : 550 tests, autres : à valider)
4. ⚠ Les exemples compilent et s'exécutent
5. ⚠ Publication possible sur pub.dev avec SDK Dart 3

## Références

- Dart 3 migration guide : https://dart.dev/resources/dart-3-migration
- package:web migration : https://dart.dev/interop/js-interop/package-web
- analyzer changelog : https://pub.dev/packages/analyzer/changelog
- dart:js_interop : https://dart.dev/interop/js-interop
