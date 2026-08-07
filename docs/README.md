# Documentation SEO/GEO pour AngularDart

Ce dossier contient la documentation complète pour les fonctionnalités SEO et GEO d'AngularDart.

## Fichiers

- **SEO_PRERENDER_USER_GUIDE.md** : Guide utilisateur complet — création de projet SEO, configuration des meta tags et prerendering
- **SEO_GUIDE.md** : Guide complet sur l'utilisation de `angulardart_seo` et les bonnes pratiques SEO
- **PRERENDER_GUIDE.md** : Guide complet sur l'utilisation de `angulardart_prerender` pour le prerendering
- **INTEGRATION.md** : Instructions pour intégrer cette documentation au site web angulardartreborn.com

## Intégration au site web

Pour intégrer cette documentation au site web angulardartreborn.com, consultez le fichier `INTEGRATION.md`.

## Packages concernés

- [angulardart_seo](../angulardart_seo/) : Service de gestion SEO
- [angulardart_prerender](../angulardart_prerender/) : Builder de prerendering

## Résumé des fonctionnalités

### angulardart_seo

- Gestion dynamique des meta tags (title, description, keywords, robots)
- Support complet Open Graph (Facebook, LinkedIn)
- Support Twitter Cards
- Gestion des URL canoniques
- Support JSON-LD pour les données structurées
- Annotations pour configuration statique (@SeoConfig)
- Interface pour configuration dynamique (SeoAware)
- Service TitleService avancé avec templates

### angulardart_prerender

- Prerendering via navigateur headless (Puppeteer)
- Collecte automatique des routes
- Support des routes dynamiques avec providers
- Détection automatique des routes protégées
- Génération automatique de sitemap.xml
- Génération automatique de robots.txt
- Contrôle granulaire par composant (@NoPrerender, @PrerenderConfig)
- Interface pour contrôle dynamique (PrerenderAware)
- Système de cache pour performances optimales
- Rendu parallèle configurable

## Installation rapide

```yaml
dependencies:
  angulardart: ^8.0.0
  angulardart_seo: ^1.0.0

dev_dependencies:
  angulardart_prerender: ^1.0.0
```

## Utilisation rapide

### 1. Configurer les providers

```dart
@GenerateInjector([
  seoProviders,
  routerProviders,
])
final InjectorFactory appInjector = appInjector$Injector;
```

### 2. Utiliser dans un composant

```dart
@Component(
  selector: 'my-page',
  template: '<h1>Ma page</h1>',
)
class MyPageComponent implements OnInit {
  final SeoService _seo;

  MyPageComponent(this._seo);

  @override
  void ngOnInit() {
    _seo.setPageSeo(
      title: 'Ma Page - Mon Site',
      description: 'Description de ma page',
      url: 'https://example.com/ma-page',
      image: 'https://example.com/image.jpg',
    );
  }
}
```

### 3. Configurer le prerendering

Créez `prerender.yaml` :

```yaml
routes:
  - /
  - /about
  - /contact

exclude:
  - /admin/**

rendering:
  timeout: 5000
  wait_for_selector: '[data-prerender-ready]'

output:
  generate_sitemap: true
  generate_robots: true

base_url: 'https://example.com'
```

### 4. Générer les fichiers statiques

```bash
dart run build_runner build --release
```

## Ressources

- [Guide SEO complet](SEO_GUIDE.md)
- [Guide Prerendering complet](PRERENDER_GUIDE.md)
- [Documentation angulardart_seo](https://pub.dev/documentation/angulardart_seo/latest/)
- [Documentation angulardart_prerender](https://pub.dev/documentation/angulardart_prerender/latest/)
