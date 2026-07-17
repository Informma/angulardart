# PROMPT DE CONTINUATION

## Contexte du projet

Migration d'AngularDart (non maintenu) vers Dart 3.12.2. Le projet comprend 7 packages à migrer.

**Emplacement** : `/home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/`

## État actuel

**Progression globale** : 95% - Migration de compilation terminée

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
- **PROGRESS.md** à jour

## Prochaines étapes

### Priorité haute : Validation des tests
```bash
# Pour chaque package, exécuter les tests
cd /home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/angular/angular
dart test

cd /home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/angular/angular_forms
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

# Voir la distribution des erreurs
dart analyze lib/ 2>&1 | grep " error " | awk -F' - ' '{print $NF}' | sort | uniq -c | sort -rn | head -20

# Exécuter les tests
dart test

# Formatter le code
dart format lib/
```

## Patterns de correction appliqués

### Null safety
```dart
// Paramètres optionnels
void foo(String bar) {}  // AVANT (implicite nullable)
void foo(String? bar) {} // APRÈS

// Champs non initialisés
String name;              // AVANT
late String name;         // APRÈS (si initialisé dans constructor/init)
String? name;             // APRÈS (si peut être null)

// Variables locales
var x = someNullableValue;
x.someMethod();           // AVANT
x!.someMethod();          // APRÈS (ou x?.someMethod())

// Retours nullable
T get selectedValue => null;  // AVANT
T? get selectedValue => null; // APRÈS
```

### Class modifiers Dart 3
```dart
abstract class Foo { }  // utilisée comme mixin → AVANT
abstract mixin class Foo { }  // APRÈS

class Bar { }  // utilisée comme mixin → AVANT
mixin class Bar { }  // APRÈS
```

## Pièges courants

1. `const []` est inféré comme `List<Object>` → utiliser `<T>[]` pour les listes génériques typées
2. Les fichiers `part of` partagent le contexte du fichier principal → analyser via le fichier parent
3. `HasDisabled` n'avait qu'un getter → ajouter un setter pour les composants qui implémentent l'interface
4. `ComponentRenderer` sans type args = `ComponentRenderer<RendersValue, dynamic>` → spécifier `ComponentRenderer<RendersValue, Object>` pour matcher l'interface
5. Après `if (x != null)`, utiliser `x!` pour les accès suivants
6. `ListBase<Element> children = element.children` → `List<Element> children = element.children`

## Fichiers importants

- `/home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/PROGRESS.md` : Journal de progression détaillé
- `/home/guy-yannvectol/dev/perso/angulardart_upgrade_v3/.gitignore` : Fichiers à ignorer

## Objectif final

- [ ] Tous les tests passent
- [ ] Migration `dart:html` → `package:web` (optionnelle)
- [ ] Documentation complète
- [ ] Préparation à la publication des packages
