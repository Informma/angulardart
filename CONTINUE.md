# PROMPT DE CONTINUATION

## Contexte du projet

Migration d'AngularDart (non maintenu) vers Dart 3.12.2. Le projet comprend 7 packages à migrer.

**Emplacement** : `/home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/`

## État actuel

**Progression globale** : 98% - Compilateur fonctionnel, tests partiellement fonctionnels

### Packages migrés (0 erreurs)
- ✅ **angular_ast** : 550 tests passent
- ✅ **angular_compiler** : migration analyzer v2→v6
- ✅ **angular** : SDK Dart 3, dépendances mises à jour
- ✅ **angular_forms** : 2 class modifiers
- ✅ **angular_router** : `package:js` → `package:web`
- ✅ **angular_test** : `pedantic` → `dart:async`
- ✅ **angular_components** : 1566 erreurs null safety corrigées

### Résultats
- **0 erreurs** sur `dart analyze lib/` pour tous les packages
- **625 warnings/infos** (principalement `dart:html` déprécié)
- **Compilateur Angular fonctionnel** - Génère les `.template.dart` correctement
- **Tests partiellement fonctionnels** :
  - angular_forms : 35/47 tests passent (74%)
  - angular_test : 21/28 tests passent (75%)
  - angular_router : 7/32 tests passent (22%)
  - angular_ast : 550 tests passent (100%)

### Corrections appliquées au compilateur (session actuelle)
1. **`find_components.dart:443`** : `lookUpInheritedConcreteSetter` → `lookUpSetter`
   - Cause racine du problème des inputs manquants (NgFor, NgModel)
   - `lookUpInheritedConcreteSetter` excluait les setters de la classe elle-même
2. **`view_builder.dart:574`** : Cast `List<Statement?>` → `List<Statement>`
   - Utilisation de `.whereType<o.Statement>().toList()` pour filtrer les nulls
3. **`dart_emitter.dart:304,324`** : Mêmes casts corrigés

### Corrections appliquées aux tests
- `navigate_by_url_test.dart` : `captureAny` → `argThat(isA<...>())`
- `1526_empty_hash_test.dart` : `null` → `''` pour paramètres String
- `748_hash_location_strategy_test.dart` : `late HtmlElement` → `HtmlElement?`

## Prochaines étapes

### Priorité haute : Corriger les tests restants
Les tests qui échouent ont principalement deux problèmes :
1. **Factories manquantes** : `createTestControlComponentFactory`, `createAddProvidersFactory`
   - Ces fonctions ne sont pas générées dans les `.template.dart`
   - Cause probable : composants de test non enregistrés dans `initReflector()`
2. **Mocks null safety** : Les mocks Mockito retournent null au lieu de `Future<T>`
   - Nécessite `when(...).thenReturn(...)` avec des valeurs appropriées

```bash
# Pour chaque package, exécuter les tests
cd /home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/angular/angular_forms
dart test

cd /home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/angular/angular_router
dart test

# ... etc pour tous les packages
```

### Priorité moyenne : Migration dart:html → package:web
- 625 infos de dépréciation
- Migration optionnelle mais recommandée pour la pérennité
- Voir : https://dart.dev/interop/js-interop/package-web

### Priorité basse : Documentation
- Mettre à jour les README de chaque package
- Créer un changelog global de migration
- Documenter les breaking changes

## Commandes utiles

```bash
# Vérifier les erreurs d'un package
cd /home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/<package>
dart analyze lib/

# Compter les erreurs
dart analyze lib/ 2>&1 | grep " error " | wc -l

# Générer les templates Angular
dart run build_runner build --delete-conflicting-outputs

# Nettoyer le cache build_runner
dart run build_runner clean

# Exécuter les tests
dart test

# Formatter le code
dart format lib/
```

## Patterns de correction appliqués

### Compilateur Angular
```dart
// lookUpInheritedConcreteSetter exclut la classe elle-même
// AVANT (ne trouve pas les @Input() définis sur la classe)
final setter = element.lookUpInheritedConcreteSetter(name, library)!;

// APRÈS (inclut la classe elle-même)
final setter = element.lookUpSetter(name, library);
if (setter == null) return null;

// Casts List<Statement?> → List<Statement>
// AVANT
visitAllStatements(method.body as List<o.Statement>, context);

// APRÈS
visitAllStatements(method.body.whereType<o.Statement>().toList(), context);
```

### Tests Mockito (null safety)
```dart
// AVANT (Dart 2.9)
verify(mock.method(captureAny, captureAny)).captured;

// APRÈS (Dart 3 null safety)
verify(mock.method(argThat(isA<String>()), argThat(isA<int>()))).called(1);
// ou
verify(mock.method('expectedValue', any)).called(1);
```

### ViewChild/ContentChild (null safety)
```dart
// AVANT
@ViewChild('elem')
late HtmlElement element;

// APRÈS (doit être nullable et non-late)
@ViewChild('elem')
HtmlElement? element;
```

## Pièges courants

1. `const []` est inféré comme `List<Object>` → utiliser `<T>[]` pour les listes génériques typées
2. Les fichiers `part of` partagent le contexte du fichier principal → analyser via le fichier parent
3. `HasDisabled` n'avait qu'un getter → ajouter un setter pour les composants qui implémentent l'interface
4. `ComponentRenderer` sans type args = `ComponentRenderer<RendersValue, dynamic>` → spécifier `ComponentRenderer<RendersValue, Object>` pour matcher l'interface
5. Après `if (x != null)`, utiliser `x!` pour les accès suivants
6. `ListBase<Element> children = element.children` → `List<Element> children = element.children`
7. `lookUpInheritedConcreteSetter` exclut la classe elle-même → utiliser `lookUpSetter` pour inclure les setters définis sur la classe
8. `ClassMethod.body` est `List<Statement?>` → filtrer avec `.whereType<Statement>()` avant cast

## Fichiers importants

- `/home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/PROGRESS.md` : Journal de progression détaillé
- `/home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/.gitignore` : Fichiers à ignorer

## Objectif final

- [ ] Tous les tests passent
- [ ] Migration `dart:html` → `package:web` (optionnelle)
- [ ] Documentation complète
- [ ] Préparation à la publication des packages
