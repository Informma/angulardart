# Guide Utilisateur — SEO & Prerendering AngularDart

Ce guide explique comment créer un projet AngularDart optimisé pour le référencement naturel (SEO) et comment générer des pages prerendered pour les moteurs de recherche.

---

## Table des matières

1. [Vue d'ensemble](#vue-densemble)
2. [Création d'un projet SEO](#création-dun-projet-seo)
3. [Structure du projet généré](#structure-du-projet-généré)
4. [Configuration SEO par page](#configuration-seo-par-page)
5. [Prerendering](#prerendering)
6. [Déploiement](#déploiement)
7. [Dépannage](#dépannage)

---

## Vue d'ensemble

AngularDart fournit deux packages pour le SEO :

- **`angulardart_seo`** — Gestion dynamique des meta tags (title, description, Open Graph, Twitter Cards, JSON-LD, canonicals).
- **`angulardart_prerender`** — Outil de prerendering basé sur un navigateur headless (Puppeteer) qui génère du HTML statique complet pour chaque route.

Le prerendering est essentiel pour les applications AngularDart car le HTML initial ne contient que des balises vides comme `<app-component></app-component>`. Les moteurs de recherche et réseaux sociaux ont besoin du contenu HTML complet pour indexer correctement vos pages.

---

## Création d'un projet SEO

### Commande `new --seo`

```bash
dart run angulardart_cli/bin/ngdart.dart new mon_site_seo --seo
```

Cela crée un projet multi-pages avec :
- Router AngularDart configuré
- SEO et meta tags sur chaque page
- Configuration de prerendering (`prerender.yaml`)
- Dépendances `angulardart_seo` et `angulardart_prerender` ajoutées

### Commande `seo init` (projet existant)

```bash
dart run angulardart_cli/bin/ngdart.dart seo init mon_site_seo
```

Cela ajoute les fichiers de configuration SEO à un projet AngularDart existant.

---

## Structure du projet généré

```
mon_site_seo/
├── lib/
│   ├── main.dart                    # Point d'entrée avec router + SEO
│   └── main.template.dart           # Code généré par build_runner
├── web/
│   ├── index.html                   # HTML shell avec meta tags de base
│   └── styles.css
├── prerender.yaml                   # Configuration du prerendering
├── pubspec.yaml                     # Dépendances SEO incluses
└── build_runner.yaml
```

### Fichier `pubspec.yaml`

Le projet généré inclut automatiquement :

```yaml
dependencies:
  angulardart: '>=9.0.0 <10.0.0'
  angulardart_router: '>=5.0.0 <6.0.0'
  angulardart_seo: '>=1.0.0 <2.0.0'

dev_dependencies:
  angulardart_prerender: '>=1.0.0 <2.0.0'
```

---

## Configuration SEO par page

### Injecteur global

Le point d'entrée (`main.dart`) configure l'injecteur AngularDart avec les providers SEO :

```dart
@GenerateInjector([routerProviders, SeoService, TitleService])
final InjectorFactory appInjector = ng.appInjector$Injector;
```

### Composants enfants

Chaque composant de page doit avoir ses propres `providers` pour `SeoService` et `TitleService` :

```dart
@Component(
  selector: 'home-page',
  template: '<h1>Accueil</h1>',
  providers: [SeoService, TitleService],
)
class HomeComponent implements OnInit {
  final SeoService _seo;
  final TitleService _title;

  HomeComponent(this._seo, this._title);

  @override
  void ngOnInit() {
    _title.setTitle('Accueil - Mon Site');
    _seo.setPageSeo(
      title: 'Accueil - Mon Site',
      description: 'Bienvenue sur Mon Site. Découvrez nos services.',
      url: 'https://example.com/',
      image: 'https://example.com/og-image.jpg',
    );
  }
}
```

### Meta tags générés automatiquement

`SeoService.setPageSeo()` génère automatiquement :

| Balise | Source | Exemple |
|--------|--------|---------|
| `<title>` | `TitleService.setTitle()` | `<title>Accueil - Mon Site</title>` |
| `<meta name="description">` | `setPageSeo(description:)` | `<meta name="description" content="Bienvenue...">` |
| `<meta property="og:title">` | `setPageSeo(title:)` | `<meta property="og:title" content="Accueil - Mon Site">` |
| `<meta property="og:description">` | `setPageSeo(description:)` | `<meta property="og:description" content="Bienvenue...">` |
| `<meta property="og:image">` | `setPageSeo(image:)` | `<meta property="og:image" content="https://example.com/og-image.jpg">` |
| `<meta name="twitter:card">` | automatique | `<meta name="twitter:card" content="summary_large_image">` |
| `<link rel="canonical">` | `setPageSeo(url:)` | `<link rel="canonical" href="https://example.com/">` |

---

## Prerendering

### Étape 1 — Build du projet

```bash
dart pub get
dart run build_runner build --release -o build
```

Cela compile le projet AngularDart en JavaScript et génère les fichiers dans `build/`.

### Étape 2 — Configuration `prerender.yaml`

```yaml
# Routes à prerender (liste exhaustive)
routes:
  - /
  - /about
  - /contact
  - /blog/post-1
  - /blog/post-2

# Routes à exclure du prerendering
exclude:
  - /admin/**
  - /api/**

# Paramètres de rendu
rendering:
  timeout: 30000          # Timeout par route en ms (défaut: 30000)
  render_delay_ms: 10000  # Délai d'attente pour le rendu AngularDart (ms)

# Génération de fichiers SEO
generate_sitemap: true    # Génère sitemap.xml
generate_robots: true     # Génère robots.txt

# URL de base pour les canonicals et le sitemap
base_url: 'https://example.com'
```

### Étape 3 — Lancer le prerendering

```bash
cd mon_site_seo
dart run angulardart_prerender/bin/prerender.dart -c prerender.yaml -o build/web
```

Sortie attendue :

```
Prerender starting...
Config: base_url=https://example.com, routes=3, exclude=[]
Starting local server on port 8080...
Rendering route: / -> http://localhost:8080/
Rendering route: /about -> http://localhost:8080/about
Rendering route: /contact -> http://localhost:8080/contact
Local server stopped.
Generating sitemap.xml...
Generating robots.txt...

Prerender complete!
  Routes rendered: 3
  Routes failed: 0
```

### Étape 4 — Vérification

Les fichiers suivants sont générés dans le dossier de sortie :

| Fichier | Description |
|---------|-------------|
| `index.html` | Page prerendered pour `/` |
| `about/index.html` | Page prerendered pour `/about` |
| `contact/index.html` | Page prerendered pour `/contact` |
| `sitemap.xml` | Sitemap avec toutes les routes |
| `robots.txt` | Fichier robots pointant vers le sitemap |

Chaque page HTML contient :
- Le contenu complet des composants AngularDart (pas de balises vides)
- Un marqueur `<html data-prerendered="true">`
- Les meta tags SEO uniques par page
- La balise canonical correspondante

---

## Déploiement

### Hébergement statique

Les fichiers prerendered sont du HTML/CSS/JS statique. Ils peuvent être hébergés sur n'importe quel serveur web :

```bash
# Exemple avec nginx
cp -r build/web/* /var/www/html/

# Exemple avec Apache
sudo cp -r build/web/* /var/www/html/
```

### Configuration nginx recommandée

```nginx
server {
    listen 80;
    server_name example.com;
    root /var/www/html;
    index index.html;

    # Compression gzip pour les fichiers statiques
    gzip on;
    gzip_types text/html application/javascript text/css application/xml;

    # Cache pour les assets statiques
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff2?)$ {
        expires 30d;
        add_header Cache-Control "public, immutable";
    }

    # Pas de cache pour index.html (permet le déploiement zero-downtime)
    location = /index.html {
        add_header Cache-Control "no-cache";
    }
}
```

### Déploiement avec Docker

Un `Dockerfile` et `docker-compose.yml` sont fournis dans le projet angulardart_website comme exemple de référence.

---

## Dépannage

### `<app-component></app-component>` vide dans le HTML prerendered

**Cause :** Le router AngularDart ne navigue pas vers la route par défaut ou les providers manquent.

**Vérifications :**
1. `main.dart` contient-il `@GenerateInjector([routerProviders, SeoService, TitleService])` ?
2. `runApp()` utilise-t-il `createInjector: appInjector` ?
3. Le template contient-il `<router-outlet [routes]="routes">` (pas juste `<router-outlet>`) ?
4. `ngOnInit()` appelle-t-il `_router.navigate('/')` ?
5. Les composants enfants ont-ils `providers: [SeoService, TitleService]` ?

### Erreur JS "No provider found" dans le navigateur

**Cause :** Un service injecté n'est pas enregistré dans l'injector.

**Solution :** S'assurer que tous les services utilisés par les composants sont listés dans `@GenerateInjector([...])`.

### Prerendering échoue avec `net::ERR_HTTP_RESPONSE_CODE_FAILURE`

**Cause :** Le serveur local Dart ne répond pas correctement (MIME types, résolution de chemin).

**Solution :**
1. Vérifier que le fichier `index.html` existe bien dans le dossier de build avant de lancer le prerendering.
2. Vérifier les permissions du dossier `build/`.
3. Augmenter `render_delay_ms` dans `prerender.yaml` si la page met du temps à charger.

### Titres ou meta tags identiques sur toutes les pages

**Cause :** Tous les composants partagent le même titre au lieu d'avoir des titres uniques.

**Solution :** Chaque composant doit appeler `_title.setTitle()` avec un titre unique dans `ngOnInit()`.

### sitemap.xml ne liste pas toutes les routes

**Cause :** La configuration `prerender.yaml` n'inclut pas toutes les routes.

**Solution :** Ajouter manuellement chaque route dans la section `routes:` de `prerender.yaml`, puis relancer le prerendering.

---

## Bonnes pratiques SEO

1. **Titres uniques** — Chaque page doit avoir un `<title>` unique et descriptif (50-60 caractères).
2. **Meta descriptions** — Chaque page doit avoir une `description` unique et engageante (150-160 caractères).
3. **URL canoniques** — Toujours définir l'URL canonique pour éviter le contenu dupliqué.
4. **Open Graph** — Définir `og:title`, `og:description` et `og:image` pour un partage optimal sur les réseaux sociaux.
5. **Sitemap** — Garder le `sitemap.xml` à jour avec toutes les routes publiques.
6. **Balise `<html lang="fr">`** — Indiquer la langue du contenu pour l'accessibilité et le SEO international.
