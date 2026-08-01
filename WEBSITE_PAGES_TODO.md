# Pages du site angulardartreborn.com

**STATUT: IMPLÉMENTÉ** - Toutes les pages listées ont été créées et sont disponibles sur le site.

## Pages implémentées

### Guides
- ✅ `/guide` - Introduction à AngularDart
- ✅ `/guide/template-syntax` - Syntaxe des templates
- ✅ `/guide/attribute-directives` - Directives d'attribut
- ✅ `/guide/structural-directives` - Directives structurelles
- ✅ `/guide/lifecycle-hooks` - Hooks de cycle de vie
- ✅ `/guide/forms` - Formulaires
- ✅ `/guide/security` - Sécurité

### Exemples
- ✅ `/examples/lifecycle-hooks` - Exemples de lifecycle hooks
- ✅ `/examples/template-syntax` - Exemples de template syntax

### Référence
- ✅ `/cheatsheet` - Cheatsheet AngularDart
- ✅ `/tools/dartdevc` - DartDevCompiler
- ✅ `/dart-2` - Guide de migration Dart 2

## Architecture

Le site utilise une approche de navigation basée sur l'URL avec:
- `AppComponent` qui détecte le chemin actuel et affiche soit la landing page, soit le layout de documentation
- `DocsLayoutComponent` avec une sidebar de navigation et le contenu de la page active
- Chaque page est un composant séparé avec son contenu en Markdown
- Le package `markdown` est utilisé pour convertir le Markdown en HTML

## Fichiers créés

```
lib/src/
├── app_component.dart (modifié pour supporter la navigation)
├── components/
│   └── docs_layout_component.dart/html (nouveau)
├── docs/
│   └── markdown_renderer.dart (nouveau)
└── pages/
    ├── guide_page.dart
    ├── template_syntax_page.dart
    ├── attribute_directives_page.dart
    ├── structural_directives_page.dart
    ├── lifecycle_hooks_page.dart
    ├── forms_page.dart
    ├── security_page.dart
    ├── examples_lifecycle_page.dart
    ├── examples_template_page.dart
    ├── cheatsheet_page.dart
    ├── tools_dartdevc_page.dart
    └── dart2_migration_page.dart
```

## Styles CSS

Les styles pour la documentation ont été ajoutés dans `web/styles.css`:
- Layout avec sidebar et contenu
- Typographie pour le contenu Markdown
- Navigation avec états actifs
- Responsive design

## Déploiement

Le site est déployé via `deploy.sh` qui:
1. Build le projet en mode release
2. Copie les fichiers vers le VPS
3. Redémarre le service

Les pages sont maintenant accessibles sur https://angulardartreborn.com
