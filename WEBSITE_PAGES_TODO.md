# Pages à créer sur angulardartreborn.com

**PRIORITÉ HAUTE** - Ces pages sont référencées dans le code source et la documentation mais n'existent pas encore sur le site.

## Pages de guide (documentation principale)

| URL | Description | Fichier source référençant |
|-----|-------------|---------------------------|
| `/guide` | Index des guides | `angular/angular/lib/angulardart.dart` |
| `/guide/template-syntax` | Syntaxe des templates (ngIf, ngFor, ngClass, ngStyle, ngModel, ngSwitch, $event, ref-vars) | `angular/angular/lib/src/common/directives/*.dart`, `angular_components/lib/app_layout/README.md`, `angular_components/lib/simple_html/README.md` |
| `/guide/attribute-directives` | Directives d'attribut | `angular/angular/lib/src/meta/directives.dart` |
| `/guide/structural-directives` | Directives structurelles | `angular/angular/lib/src/common/directives/ng_switch.dart` |
| `/guide/lifecycle-hooks` | Hooks de cycle de vie | `angular/angular/lib/src/meta/directives.dart`, `angular/angular/lib/src/meta/lifecycle_hooks.dart` |
| `/guide/forms` | Guide des formulaires | `angular/angular_forms/lib/src/directives/ng_model.dart` |
| `/guide/security` | Sécurité (sanitization) | `angular/angular_compiler/lib/v1/src/compiler/template_parser/ast_template_parser.dart` |

## Pages d'exemples

| URL | Description | Fichier source référençant |
|-----|-------------|---------------------------|
| `/examples/lifecycle-hooks` | Exemples des hooks de cycle de vie | `angular/angular/lib/src/meta/lifecycle_hooks.dart` |
| `/examples/template-syntax` | Exemples de syntaxe de template | `angular/angular/lib/src/common/directives/ng_class.dart`, `ng_style.dart`, `ng_switch.dart` |
| `/angular/angular_forms/lib/src/directives/ng_model.dart` | Exemple ngModel | `angular/angular_forms/lib/src/directives/ng_model.dart` |

## Pages d'outils

| URL | Description | Fichier source référençant |
|-----|-------------|---------------------------|
| `/tools/dartdevc` | DartDevCompiler | `angular/angular/CHANGELOG.md` |

## Autres pages

| URL | Description | Fichier source référençant |
|-----|-------------|---------------------------|
| `/cheatsheet` | Cheatsheet AngularDart | `angular/angular/lib/angulardart.dart` |
| `/dart-2` | Guide de migration Dart 2 | `angular/angular/CHANGELOG.md`, `angular_components/angular_components/CHANGELOG.md` |

## Résumé des priorités

### Priorité 1 - Pages essentielles
1. `/guide/template-syntax` - Référencée 8+ fois dans les directives
2. `/guide/lifecycle-hooks` - Référencée 5+ fois
3. `/guide` - Index des guides

### Priorité 2 - Pages importantes
4. `/guide/forms` - Guide des formulaires
5. `/guide/security` - Sécurité
6. `/guide/attribute-directives` - Directives d'attribut
7. `/guide/structural-directives` - Directives structurelles
8. `/cheatsheet` - Cheatsheet

### Priorité 3 - Pages secondaires
9. `/examples/lifecycle-hooks` - Exemples
10. `/examples/template-syntax` - Exemples
11. `/tools/dartdevc` - Outils (historique)
12. `/dart-2` - Migration (historique)

## Notes

- Les URLs avec des ancres (ex: `#ngIf`, `#aftercontent`) doivent être gérées par les pages parentes
- Le site redirige actuellement vers la page d'accueil si une page n'existe pas
- Ces URLs sont utilisées dans les commentaires de documentation du code source (dartdoc)
