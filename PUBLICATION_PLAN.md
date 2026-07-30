# Plan de publication des packages AngularDart sur pub.dev

## Objectif

Publier les 7 packages AngularDart migrés Dart 3 sur pub.dev sous de nouveaux noms (préfixe `angulardart_`), car nous n'avons pas accès aux packages originaux.

## Statut global

**Progression** : 100% - TERMINE
**Derniere mise a jour** : 2026-07-30
**Statut** : Tous les 7 packages publies sur pub.dev

---

## 1. Mapping des noms

| Ancien nom | Nouveau nom | Version | Depend de |
|------------|-------------|---------|-----------|
| `angular_ast` | `angulardart_ast` | 3.0.0 | (rien) |
| `angular_compiler` | `angulardart_compiler` | 3.0.0 | angulardart_ast, angulardart |
| `angular` | `angulardart` | 8.0.0 | angulardart_ast, angulardart_compiler |
| `angular_forms` | `angulardart_forms` | 5.0.0 | angulardart |
| `angular_router` | `angulardart_router` | 4.0.0 | angulardart |
| `angular_test` | `angulardart_test` | 5.0.0 | angulardart |
| `angular_components` | `angulardart_components` | 2.0.0 | angulardart, angulardart_forms |

## 2. Ordre de publication

```
1. angulardart_ast        (3.0.0)  - pas de dependances angulardart
2. angulardart_compiler   (3.0.0)  - depend de angulardart_ast + angulardart
3. angulardart            (8.0.0)  - depend de angulardart_ast + angulardart_compiler
4. angulardart_forms      (5.0.0)  - depend de angulardart
5. angulardart_router     (4.0.0)  - depend de angulardart
6. angulardart_test       (5.0.0)  - depend de angulardart
7. angulardart_components (2.0.0)  - depend de angulardart + angulardart_forms
```

**Note** : `angulardart_compiler` et `angulardart` ont une dependance circulaire. `angulardart_compiler` doit etre publie en premier (ou les deux simultanement).

---

## 3. Etapes d'implementation

### Etape 3.1 : Modifier les 7 `pubspec.yaml`

- [x] Renommer le champ `name:` dans chaque package
- [x] Remplacer les noms dans `dependencies:` et `dev_dependencies:`
- [x] Ajouter `dependency_overrides` temporaires pour la validation locale
- [x] Ajouter la dependance `js: '>=0.6.3 <0.8.0'` a `angulardart` et `angulardart_components`

**Statut** : ✅ Termine

### Etape 3.2 : Remplacer les imports Dart (`package:angular*`)

- [x] `package:angular/` → `package:angulardart/` (~507 fichiers)
- [x] `package:angular_ast/` → `package:angulardart_ast/` (~21 fichiers)
- [x] `package:angular_compiler/` → `package:angulardart_compiler/` (~129 fichiers)
- [x] `package:angular_forms/` → `package:angulardart_forms/` (~39 fichiers)
- [x] `package:angular_router/` → `package:angulardart_router/` (~25 fichiers)
- [x] `package:angular_test/` → `package:angulardart_test/` (~108 fichiers)
- [x] `package:angular_components/` → `package:angulardart_components/` (~289 fichiers)
- [x] Correction du double remplacement `angulardartdart_` → `angulardart_`

**Total** : ~2560 lignes d'imports remplacees dans ~1118 fichiers

**Statut** : ✅ Termine

### Etape 3.3 : Mettre a jour les string literals du compilateur

- [x] Constants `'package:angular'` → `'package:angulardart'` (5 fichiers)
- [x] Constants `'asset:angular/lib'` → `'asset:angulardart/lib'` (2 fichiers)
- [x] Allow-listed imports dans `dart_emitter.dart`
- [x] Test file `resolve.dart`

**Statut** : ✅ Termine

### Etape 3.4 : Mettre a jour les fichiers `build.yaml`

- [x] `angular/angular/build.yaml` : imports, builder names, applies_builders
- [x] `angular/angular_router/build.yaml` : builder name
- [x] `angular_components/angular_gallery/build.yaml` : references
- [x] `angular_components/angular_gallery_section/build.yaml` : references
- [x] ~26 exemples dans `angular_components/examples/*/build.yaml`

**Statut** : ✅ Termine

### Etape 3.5 : Corriger le CHANGELOG de `angular_components`

- [x] Ajout de l'entree `## 2.0.0` documentant la migration Dart 3 + null safety

**Statut** : ✅ Termine

### Etape 3.6 : Renommer les fichiers library principaux

- [x] `lib/angular_ast.dart` → `lib/angulardart_ast.dart`
- [x] `lib/angular.dart` → `lib/angulardart.dart`
- [x] `lib/angular_forms.dart` → `lib/angulardart_forms.dart`
- [x] `lib/angular_router.dart` → `lib/angulardart_router.dart`
- [x] `lib/angular_test.dart` → `lib/angulardart_test.dart`
- [x] `lib/angular_components.dart` → `lib/angulardart_components.dart`
- [x] Mise a jour des imports references (ex: `package:angulardart/angular.dart` → `package:angulardart/angulardart.dart`)

**Statut** : ✅ Termine

### Etape 3.7 : Corrections pour la publication

- [x] Ajout de `js: '>=0.6.3 <0.8.0'` dans `angulardart/pubspec.yaml` (6 fichiers importent `package:js`)
- [x] Ajout de `js: '>=0.6.3 <0.8.0'` dans `angulardart_components/pubspec.yaml` (8 fichiers importent `package:js`)
- [x] Correction de 2 erreurs null safety dans `angulardart/lib/src/devtools/inspector.dart` (`b.component!` et `b.directives!`)

**Statut** : ✅ Termine

### Etape 3.8 : Validation (pour chaque package)

| Package | pub get | analyze | dry-run | Resultat |
|---------|---------|---------|---------|----------|
| angulardart_ast | ✅ | ✅ (0 erreurs, 90 warnings/infos) | ✅ (3 warnings mineurs) | ✅ Pret |
| angulardart_compiler | ✅ | ✅ (0 erreurs, 243 warnings/infos) | ✅ (2 warnings + 2 hints) | ✅ Pret |
| angulardart | ✅ | ✅ (0 erreurs, 73 warnings/infos) | ✅ (3 warnings + 2 hints) | ✅ Pret |
| angulardart_forms | ✅ | ✅ (0 erreurs, 20 warnings/infos) | ✅ (2 warnings + 3 hints) | ✅ Pret |
| angulardart_router | ✅ | ✅ (0 erreurs, 15 warnings/infos) | ✅ (2 warnings + 3 hints) | ✅ Pret |
| angulardart_test | ✅ | ✅ (0 erreurs, 12 warnings/infos) | ✅ (3 warnings + 3 hints) | ✅ Pret |
| angulardart_components | ✅ | ✅ (0 erreurs, 625 warnings/infos) | ✅ (3 warnings + 4 hints) | ✅ Pret |

**Statut** : ✅ Termine - Tous les 7 packages passent la validation

### Etape 3.9 : Publication

```bash
# IMPORTANT: Supprimer les dependency_overrides de chaque pubspec.yaml avant de publier!
# Les dependency_overrides sont necessaires pour la validation locale mais doivent etre
# retires pour la publication sur pub.dev.

cd angular/angular_ast     && dart pub publish    # 1. angulardart_ast 3.0.0
cd angular/angular_compiler && dart pub publish   # 2. angulardart_compiler 3.0.0
cd angular/angular         && dart pub publish    # 3. angulardart 8.0.0 (sans build.dart)
cd angular/angular         && dart pub publish    # 4. angulardart 8.0.1 (avec build.dart)
cd angular/angular_test    && dart pub publish    # 5. angulardart_test 5.0.0
cd angular/angular_forms   && dart pub publish    # 6. angulardart_forms 5.0.0
cd angular/angular_router  && dart pub publish    # 7. angulardart_router 4.0.0
cd angular_components/angular_components && dart pub publish  # 8. angulardart_components 2.0.0
```

**Statut** : ✅ Termine - Tous les 7 packages publies avec succes

**Note** : En raison de la dependance circulaire entre `angulardart` et `angulardart_compiler`, `angulardart` a ete publie en deux etapes :
- 8.0.0 : sans `lib/src/build.dart` (qui depend de `angulardart_compiler`)
- 8.0.1 : avec `lib/src/build.dart` et les dependances completes

---

## 4. Points d'attention

### 4.1 Dependance circulaire angulardart <-> angulardart_compiler

`angulardart_compiler` depend de `angulardart` (pour les annotations @Component, etc.) et `angulardart` depend de `angulardart_compiler` (pour le build). Lors de la publication :
- Publier `angulardart_compiler` en premier (il reference `angulardart` dans ses deps)
- Puis publier `angulardart` (qui reference `angulardart_compiler`)
- Ou publier les deux avec `--force` si necessaire

### 4.2 dependency_overrides a supprimer avant publication

Les `dependency_overrides` avec des chemins locaux sont necessaires pour la validation locale mais doivent etre supprimes avant `dart pub publish`. Chaque pubspec.yaml contient actuellement des overrides :
- `angulardart_compiler` : override vers `../angular` et `../angular_ast`
- `angulardart` : override vers `../angular_ast` et `../angular_compiler`
- `angulardart_forms` : override vers `../angular`, `../angular_ast`, `../angular_compiler`, `../angular_test`
- `angulardart_router` : override vers `../angular`, `../angular_ast`, `../angular_compiler`, `../angular_test`
- `angulardart_test` : override vers `../angular`, `../angular_ast`, `../angular_compiler`
- `angulardart_components` : override vers `../../angular/*`

### 4.3 References `asset:angular/` dans le compilateur

Le compilateur utilise `asset:angulardart/lib/...` (anciennement `asset:angular/lib/...`). Ces references ont ete mises a jour.

### 4.4 Packages non publies

Les packages suivants ne seront PAS publies mais ont ete mis a jour pour la coherence :
- `angular_gallery` (interne au repo angular_components)
- `angular_gallery_section` (interne au repo angular_components)
- `angular/_tests` (tests d'integration)
- Tous les `angular_components/examples/*`

### 4.5 Migration `package:js` reportee

Les packages `angulardart` et `angulardart_components` utilisent encore `package:js` (migration vers `dart:js_interop` reportee). La dependance `js: '>=0.6.3 <0.8.0'` a ete ajoutee pour permettre la publication.

---

## 5. Journal de bord

### 2026-07-30 - Creation du plan
- Plan detaille cree
- Exploration du code terminee
- ~2560 lignes d'imports a remplacer dans ~1118 fichiers
- ~10 fichiers critiques dans le compilateur avec des string literals
- ~34 fichiers build.yaml a mettre a jour

### 2026-07-30 - Implementation complete
- 7 pubspec.yaml modifies (noms + dependances)
- ~2560 imports remplaces dans ~1118 fichiers Dart
- String literals du compilateur mises a jour
- 34 fichiers build.yaml mis a jour
- CHANGELOG de angular_components complete
- 6 fichiers library principaux renommer
- Corrections pour la publication :
  - Ajout dependance `js` dans angulardart et angulardart_components
  - Correction de 2 erreurs null safety dans inspector.dart
  - Correction du double remplacement `angulardartdart_`
- Validation terminee : tous les 7 packages passent `dart pub publish --dry-run`

### 2026-07-30 - Publication reussie
- `dependency_overrides` supprimes des 6 pubspec.yaml
- Publication dans l'ordre (avec gestion de la dependance circulaire) :
  1. `angulardart_ast` 3.0.0 ✅
  2. `angulardart` 8.0.0 (sans build.dart) ✅
  3. `angulardart_compiler` 3.0.0 ✅
  4. `angulardart` 8.0.1 (avec build.dart et dependances completes) ✅
  5. `angulardart_test` 5.0.0 ✅
  6. `angulardart_forms` 5.0.0 ✅
  7. `angulardart_router` 4.0.0 ✅
  8. `angulardart_components` 2.0.0 ✅
- Tous les 7 packages sont maintenant disponibles sur pub.dev
- Liens pub.dev :
  - https://pub.dev/packages/angulardart_ast
  - https://pub.dev/packages/angulardart_compiler
  - https://pub.dev/packages/angulardart
  - https://pub.dev/packages/angulardart_test
  - https://pub.dev/packages/angulardart_forms
  - https://pub.dev/packages/angulardart_router
  - https://pub.dev/packages/angulardart_components
