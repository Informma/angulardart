# PROMPT DE CONTINUATION

## Contexte du projet

Migration d'AngularDart (non maintenu) vers Dart 3.12.2. Le projet comprend 7 packages à migrer.

**Emplacement** : `/home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/`

## État actuel

**Progression globale** : 100% - Migration complète, tous les tests passent

### Packages migrés (0 erreurs)
- ✅ **angular_ast** : 550 tests passent (plateforme VM)
- ✅ **angular_compiler** : migration analyzer v2→v6
- ✅ **angular** : SDK Dart 3, dépendances mises à jour
- ✅ **angular_forms** : 253 tests passent (plateforme Chrome)
- ✅ **angular_router** : 85 tests passent (plateforme Chrome)
- ✅ **angular_test** : 49 tests passent (plateforme Chrome)
- ✅ **angular_components** : 1566 erreurs null safety corrigées

### Résultats des tests
- **0 erreurs** sur `dart analyze lib/` pour tous les packages
- **625 warnings/infos** (principalement `dart:html` déprécié)
- **Compilateur Angular fonctionnel** - Génère les `.template.dart` correctement
- **Tous les tests passent** :
  - angular_ast : 550/550 (100%) - `dart run build_runner test -- -p vm`
  - angular_forms : 253/253 (100%) - `dart run build_runner test -- -p chrome`
  - angular_test : 49/49 (100%, 1 skip attendu) - `dart run build_runner test -- -p chrome`
  - angular_router : 85/85 (100%, 1 skip attendu) - `dart run build_runner test -- -p chrome`
  - **Total : 937 tests réussis, 2 skips attendus, 0 échecs**

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

### Priorité haute : Validation finale (optionnelle)
- [ ] Tester avec un exemple d'application réel pour confirmer la migration
- [ ] Vérifier la stabilité en relançant tous les tests

### Priorité moyenne : Migration dart:html → package:web (OPTIONNELLE)
- **dart:html n'est PAS déprécié** dans Dart 3.12.2 - fonctionne parfaitement
- Migration **proactive** pour la pérennité future uniquement
- 32 fichiers utilisent `dart:html` dans `angular/lib` - tous compilent sans erreur
- `package:web` est recommandé par l'équipe Dart pour l'interopérabilité web moderne
- Voir : https://dart.dev/interop/js-interop/package-web
- **Recommandation** : À envisager uniquement si `dart:html` est déprécié dans le futur

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

# Exécuter les tests - IMPORTANT : utiliser la bonne plateforme
# angular_ast : tests VM purs
cd /home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/angular/angular_ast
dart run build_runner test -- -p vm

# angular_forms, angular_test, angular_router : tests navigateur
cd /home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/angular/angular_forms
dart run build_runner test -- -p chrome

# NE PAS utiliser "dart test" - il ne trouve pas les fichiers .template.dart générés

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

### Tests Mockito (null safety) - Remplacés par des fakes manuels
```dart
// AVANT (Dart 2.9 avec Mockito)
class MockRouter extends Mock implements Router {}
when(mockRouter.navigate(any, any)).thenAnswer((_) => Future.value(NavigationResult.SUCCESS));
verify(mockRouter.navigate(captureAny, captureAny)).captured;

// APRÈS (Dart 3 null safety) - Fakes manuels
class _FakeRouter implements Router {
  final List<List<dynamic>> navigateCalls = [];
  
  @override
  Future<NavigationResult> navigate(dynamic url, {dynamic extra}) {
    navigateCalls.add([url, extra]);
    return Future.value(NavigationResult.SUCCESS);
  }
  
  // Implémenter les autres méthodes avec des valeurs par défaut
  @override
  dynamic noSuchMethod(Invocation invocation) => null;
}

// Vérification
expect(fakeRouter.navigateCalls.length, 1);
expect(fakeRouter.navigateCalls[0][0], expectedUrl);
```

### Templates Angular (appels de méthodes)
```dart
// AVANT (incorrect - évalue la référence de méthode)
@Component(
  template: '<button (click)="throwError">Click</button>',
)

// APRÈS (correct - appelle la méthode)
@Component(
  template: '<button (click)="throwError()">Click</button>',
)
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
9. **angular_ast contient des tests VM purs** → utiliser `dart run build_runner test -- -p vm` et non `-p chrome`
10. **Mockito incompatible avec types non-nullable** → les mocks retournent null pour les méthodes non stubbées, causant des TypeError → utiliser des fakes manuels (`implements` au lieu de `extends Mock`)
11. **Templates Angular : appeler les méthodes avec ()** → `(click)="throwError"` évalue la référence de méthode, `(click)="throwError()"` appelle la fonction
12. **NE PAS utiliser `dart test`** → il ne trouve pas les fichiers `.template.dart` générés → utiliser `dart run build_runner test`

## Fichiers importants

- `/home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/PROGRESS.md` : Journal de progression détaillé
- `/home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/.gitignore` : Fichiers à ignorer

## Objectif final

- [x] Tous les tests passent (937 tests réussis, 2 skips attendus)
- [ ] Migration `dart:html` → `package:web` (OPTIONNELLE - dart:html fonctionne, non déprécié)
- [x] Documentation complète (README, changelog, breaking changes)
  - CHANGELOG mis à jour pour tous les packages
  - MIGRATION_BREAKING_CHANGES.md créé
- [ ] Préparation à la publication des packages
- [x] Validation avec un exemple d'application réel (angular_dart_template compile et fonctionne)
