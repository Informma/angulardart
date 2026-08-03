# Prompt pour corriger les warnings et info dans AngularDart

## Contexte
Le projet AngularDart est un monorepo contenant plusieurs packages :
- `angular/angular` (angulardart) - framework principal
- `angular/angular_ast` (angulardart_ast) - parser AST
- `angular/angular_compiler` (angulardart_compiler) - compilateur
- `angular/angular_forms` (angulardart_forms) - formulaires
- `angular/angular_router` (angulardart_router) - routeur
- `angular/angular_test` (angulardart_test) - utilities de test
- `angular_components/angular_components` (angulardart_components) - composants Material
- `angulardart_cli` - CLI pour scaffolding

Tous les packages passent `dart analyze` avec 0 erreurs, mais il reste des warnings et info à corriger.

## Tâche
Corriger tous les warnings et info rapportés par `dart analyze` dans chaque package.

## Méthodologie
Pour chaque package :
1. Exécuter `dart analyze lib/` et `dart analyze test/`
2. Lister tous les warnings et info
3. Les corriger par catégorie
4. Vérifier que le package compile toujours

## Catégories de corrections

### 1. `deprecated_member_use` (dart:html, package:js)
**Priorité : HAUTE mais volumineux**

Remplacer `dart:html` par `package:web` et `dart:js_interop` :
```dart
// AVANT
import 'dart:html';
Element element = ...;
element.classes.add('foo');

// APRÈS
import 'package:web/web.dart';
import 'dart:js_interop';
HTMLElement element = ...;
element.classList.add('foo');
```

Pour `package:js` :
```dart
// AVANT
import 'package:js/js.dart';
import 'package:js/js_util.dart';
js_util.setProperty(obj, 'key', value);

// APRÈS
import 'dart:js_interop';
(obj as JSObject).setProperty('key'.toJS, value.jsify());
```

**Fichiers concernés dans angular/angular :** ~30 fichiers
**Fichiers concernés dans angular_components :** ~100+ fichiers

**Note :** Cette migration est complexe car `package:web` a une API différente de `dart:html`. Il faut :
- Remplacer `Element` par `HTMLElement` ou `Element`
- Remplacer `classes.add()` par `classList.add()`
- Remplacer `innerHtml` par `innerHTML`
- Gérer les conversions JS interop

### 2. `constant_identifier_names`
**Priorité : MOYENNE - breaking change**

Les constantes en UPPER_CASE doivent être en lowerCamelCase :
```dart
// AVANT
const RADIO_VALUE_ACCESSOR = ...;
const FORM_PROVIDERS = ...;

// APRÈS
const radioValueAccessor = ...;
const formProviders = ...;
```

**Attention :** C'est un breaking change pour les utilisateurs. Il faut :
1. Créer un alias avec le nouveau nom
2. Déprécier l'ancien nom avec `@Deprecated('Use radioValueAccessor instead')`
3. Documenter dans CHANGELOG

**Fichiers concernés :** ~100 constantes dans angular_forms et angular_components

### 3. `annotate_overrides`
**Priorité : BASSE - rapide**

Ajouter `@override` aux méthodes qui override :
```dart
// AVANT
void ngOnInit() { ... }

// APRÈS
@override
void ngOnInit() { ... }
```

**Fichiers concernés :** ~193 dans angular_components

### 4. `use_super_parameters`
**Priorité : BASSE - rapide**

Utiliser les super parameters quand possible :
```dart
// AVANT
MyClass(String name, int age) : super(name, age);

// APRÈS
MyClass(super.name, super.age);
```

**Fichiers concernés :** ~39 dans angular_components

### 5. `unnecessary_this`
**Priorité : BASSE - rapide**

Supprimer `this.` inutile :
```dart
// AVANT
void setName(String name) {
  this.name = name;
}

// APRÈS
void setName(String name) {
  this.name = name;  // OK si ambiguïté
}

// OU
void setName(String name) {
  this.name = name;  // Garder si nécessaire
}
```

**Fichiers concernés :** ~35 dans angular_components

### 6. `unnecessary_brace_in_string_interps`
**Priorité : BASSE - rapide**

Simplifier les interpolations :
```dart
// AVANT
print('Hello ${name}!');

// APRÈS
print('Hello $name!');
```

**Fichiers concernés :** ~26 dans angular_components

### 7. `avoid_renaming_method_parameters`
**Priorité : BASSE**

Garder les mêmes noms de paramètres que la méthode parent :
```dart
// AVANT
@override
void removeControl(NgControl? ctrl) { ... }

// APRÈS
@override
void removeControl(NgControl? dir) { ... }
```

**Fichiers concernés :** ~20 dans angular_components

### 8. `no_leading_underscores_for_local_identifiers`
**Priorité : BASSE**

Supprimer les underscores des variables locales :
```dart
// AVANT
var _updateParent = () { ... };

// APRÈS
var updateParent = () { ... };
```

**Fichiers concernés :** ~12 dans angular_components

### 9. `unnecessary_library_name`
**Priorité : BASSE**

Supprimer les noms de library inutiles :
```dart
// AVANT
library angulardart_forms;

// APRÈS
// (supprimer la ligne)
```

### 10. `strict_top_level_inference`
**Priorité : MOYENNE**

Ajouter les types manquants :
```dart
// AVANT
var myVar = ...;

// APRÈS
MyType myVar = ...;
```

## Ordre de travail recommandé

1. **Corrections rapides (non-breaking) :**
   - `annotate_overrides`
   - `use_super_parameters`
   - `unnecessary_this`
   - `unnecessary_brace_in_string_interps`
   - `avoid_renaming_method_parameters`
   - `no_leading_underscores_for_local_identifiers`
   - `unnecessary_library_name`

2. **Corrections avec breaking change :**
   - `constant_identifier_names` (avec dépréciation)

3. **Migration volumineuse :**
   - `deprecated_member_use` (dart:html -> package:web)

## Vérification

Après chaque catégorie :
```bash
cd <package>
dart analyze lib/ test/
```

Objectif : 0 warnings, 0 info

## Notes importantes

- **Ne pas casser l'API publique** : pour les renommages, toujours garder l'ancien nom avec `@Deprecated`
- **Tester après chaque changement** : `dart analyze` + tests si disponibles
- **Documenter dans CHANGELOG** : pour chaque breaking change
- **Commits atomiques** : un commit par catégorie de correction

## Commandes utiles

```bash
# Lister tous les info/warning par type
dart analyze lib/ 2>&1 | grep "info" | sed 's/.*- //' | sort | uniq -c | sort -rn

# Lister les fichiers concernés par un type d'info
dart analyze lib/ 2>&1 | grep "annotate_overrides" | cut -d: -f1 | sort -u

# Corriger automatiquement certains problèmes (si disponible)
dart fix --apply
```
