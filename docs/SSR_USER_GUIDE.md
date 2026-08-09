# Guide Utilisateur — Server-Side Rendering (SSR) AngularDart

Ce guide explique comment créer et déployer une application AngularDart avec rendu côté serveur (SSR), similaire à [Angular Universal](https://angular.dev/ec/server-side-rendering).

---

## Table des matières

1. [Vue d'ensemble](#vue-densemble)
2. [Création d'un projet SSR](#création-dun-projet-ssr)
3. [Architecture SSR](#architecture-ssr)
4. [Compilation AOT native](#compilation-aot-native)
5. [Hydratation client-side](#hydratation-client-side)
6. [TransferState](#transferstate)
7. [Déploiement](#déploiement)
8. [Dépannage](#dépannage)

---

## Vue d'ensemble

Le **Server-Side Rendering (SSR)** permet de rendre les composants AngularDart en HTML sur le serveur avant d'envoyer la page au navigateur. Cela offre plusieurs avantages :

- **SEO amélioré** — Les moteurs de recherche indexent le contenu HTML complet, pas des balises vides.
- **Temps de chargement plus rapide** — Le client reçoit déjà du HTML renderisé, pas une page blanche en attente du JavaScript.
- **Aperçu social** — Les réseaux sociaux (Facebook, Twitter) voient le contenu réel dans les meta tags générés dynamiquement.

AngularDart SSR fonctionne en deux phases :

1. **Rendu serveur** — Le composant est exécuté sur le serveur et produit une chaîne HTML.
2. **Hydratation client** — Le navigateur réutilise le DOM existant au lieu de tout re-rendre.

---

## Création d'un projet SSR

### Commande `new --ssr`

```bash
dart run angulardart_cli/bin/ngdart.dart new mon_app_ssr --ssr
```

Cela crée un projet avec :

- **Server HTTP** — Un serveur Dart natif sur le port 4000.
- **Composant racine** — Un composant `AppComponent` avec un template simple.
- **Dépendances SSR** — `angulardart_server` ajouté automatiquement.
- **Configuration build_runner** — Prête à compiler les templates AngularDart.

### Structure du projet généré

```
mon_app_ssr/
├── bin/
│   └── server.dart              # Serveur HTTP SSR (port 4000)
├── lib/
│   ├── platform_dom.dart        # Abstraction plateforme (web vs native)
│   ├── platform_dom_browser.dart # Ré-exporte package:web/web.dart
│   └── platform_dom_vm.dart     # Stubs DOM pour compilation AOT
├── web/
│   ├── index.html               # HTML shell client
│   ├── main.dart                # Point d'entrée client (runApp / hydrateApplication)
│   ├── main.server.dart         # Point d'entrée serveur (exporte le factory du composant)
│   └── styles.css
├── pubspec.yaml                 # Dépendances SSR incluses
└── build.yaml                   # Configuration build_runner
```

### Fichier `pubspec.yaml`

Le projet généré inclut automatiquement :

```yaml
dependencies:
  angulardart: '>=9.0.0 <10.0.0'
  angulardart_server: '>=1.0.0 <2.0.0'
  shelf: '>=1.0.0 <2.0.0'

dev_dependencies:
  build_runner: '>=2.16.0 <3.0.0'
  build_web_compilers: '>=4.8.0 <5.0.0'
```

---

## Architecture SSR

### Flux de rendu

```
Requête HTTP → bin/server.dart
                  │
                  ▼
          PlatformServerRef.renderApplication()
                  │
                  ├── 1. Crée un NgZone serveur
                  ├── 2. Active le mode serveur (useServerMode)
                  ├── 3. Bootstrap du composant via ApplicationRef
                  ├── 4. Capture le HTML depuis ServerRenderNode
                  ├── 5. Sérialise TransferState en script JSON
                  └── 6. Retourne HTML complet avec <!DOCTYPE html>...
```

### Composants clés

#### `PlatformServerRef`

Point d'entrée principal pour le rendu serveur :

```dart
import 'package:angulardart_server/angulardart_server.dart';

final server = platformServer();
String html = await server.renderComponent(MyComponentNgFactory);
// Ou pour une application complète avec routing :
String fullHtml = await server.renderApplication(
  MyComponentNgFactory,
  url: request.url.toString(),
);
```

#### `ServerRenderNode`

Remplace les nœuds DOM classiques lors du rendu serveur. Au lieu de manipuler le DOM (inexistant côté serveur), il accumule une chaîne HTML :

- **Échappement automatique** — Les caractères `<`, `>`, `&` sont échappés pour prévenir les injections XSS.
- **Marqueurs d'hydratation** — Chaque nœud reçoit un attribut `data-ng-id` unique pour que le client puisse le réutiliser.
- **Classes conditionnelles** — Les classes CSS sont gérées via `setClass(name, enabled)`.

#### `HtmlBuilder`

Constructeur de chaîne HTML utilisé en interne par `ServerRenderNode` :

```dart
final builder = HtmlBuilder();
builder.openTag('div', {'class': 'container'});
builder.text('Hello World');  // Echappe automatiquement < > &
builder.closeTag('div');
// Résultat: '<div class="container">Hello World</div>'
```

### Détection de la plateforme

Le package `angulardart_server` utilise des exports conditionnels pour fonctionner à la fois sur le navigateur et sur le serveur :

```dart
// dom_apis.dart
export 'browser_dom_apis.dart' if (dart.library.io) 'native_dom_apis.dart';
```

- **Côté navigateur** (`browser_dom_apis.dart`) — Ré-exporte `package:web/web.dart` avec les types DOM réels.
- **Côté serveur** (`native_dom_apis.dart`) — Fournit des stubs no-op (toutes les méthodes retournent null ou ne font rien).

---

## Compilation AOT native

### Prérequis

Le serveur SSR doit être compilé en exécutable natif pour fonctionner sans dépendance au navigateur :

```bash
cd mon_app_ssr
dart pub get
dart run build_runner build web/main.server.dart
dart compile exe bin/server.dart
```

Cela génère `bin/server.exe` (exécutable natif de ~7 Mo).

### Exécution

```bash
./bin/server.exe
# Serveur SSR angulardart en cours d'exécution sur http://localhost:4000
```

### Les stubs `.template.dart`

Lors de la compilation AOT, Dart a besoin de résoudre **tous** les imports, y compris ceux vers les fichiers `.template.dart`. Ces fichiers sont générés par `build_runner` dans `.dart_tool/build/generated/`, mais Dart résout les imports `package:X/y.template.dart` vers `lib/y.template.dart`.

Trois stubs manuels doivent donc exister dans `lib/` :

| Fichier | Package |
|---------|---------|
| `angular/angular/lib/angulardart.template.dart` | angulardart |
| `angulardart_server/lib/angulardart_server.template.dart` | angulardart_server |
| `angular/examples/hello_world_ssr/lib/platform_dom.template.dart` | hello_world_ssr |

Ces stubs sont générés automatiquement par la commande CLI :

```bash
cd angulardart_cli
dart run bin/ngdart.dart generate-stubs
```

Chaque stub contient un commentaire `AUTO-GENERATED — DO NOT EDIT MANUALLY`.

### Vérification complète

```bash
# Analyse statique
dart analyze --fatal-infos

# Compilation AOT
dart compile exe bin/server.dart

# Exécution et test
./bin/server.exe &
curl http://localhost:4000/
kill %1
```

---

## Hydratation client-side

L'hydratation permet au navigateur de réutiliser le HTML déjà rendu par le serveur, au lieu de tout re-rendre depuis zéro.

### Détection SSR côté client

Le fichier `web/main.dart` détecte si la page a été rendue côté serveur :

```dart
import 'package:angulardart_server/angulardart_server.dart';

void main() async {
  final htmlElement = document.documentElement;
  final isServerRendered = htmlElement?.getAttribute('ng-server-context') == 'ssr';

  if (isServerRendered) {
    // Hydrate : réutilise le DOM existant
    await hydrateApplication(MyComponentNgFactory);
  } else {
    // Bootstrap classique : crée tout le DOM depuis zéro
    runApp(MyComponentNgFactory);
  }
}
```

### Comment fonctionne l'hydratation

1. **Détection** — Le client vérifie l'attribut `ng-server-context="ssr"` sur `<html>`.
2. **TransferState** — Le client lit l'état transféré depuis le script JSON injecté par le serveur.
3. **HydrateRenderFactory** — Remplace la factory de rendu par une version qui réutilise les nœuds DOM existants (marqués avec `data-ng-id`).
4. **Injection des styles** — Les styles encapsulés du composant sont injectés dans `<head>`.
5. **Bootstrap hydraté** — Le composant est attaché au DOM existant via `ApplicationRef.hydrate()`.

### Marqueurs d'hydratation

Chaque nœud rendu côté serveur reçoit un attribut `data-ng-id` unique :

```html
<div data-ng-id="0" class="container">
  <h1 data-ng-id="1">Hello World</h1>
  <p data-ng-id="2">This page was rendered on the server.</p>
</div>
```

Ces IDs permettent au client de mapper chaque nœud du DOM existant à la hiérarchie de composants AngularDart.

---

## TransferState

Le `TransferState` permet de transférer des données du serveur vers le client sans refaire les mêmes requêtes API.

### Côté serveur (avant le rendu)

```dart
import 'package:angulardart_server/angulardart_server.dart';

// Stocke des données avant le rendu
TransferState.set('api-users', userList);
TransferState.set('api-count', 42);

// Le HTML généré inclut automatiquement :
// <script id="ng-transfer-state" type="application/json">
//   {"ng-transfer-state:api-users":[...],"ng-transfer-state:api-count":42}
// </script>
String html = await server.renderComponent(MyComponentNgFactory);
```

### Côté client (après l'hydratation)

```dart
import 'package:angulardart_server/angulardart_server.dart';

// L'état est automatiquement chargé depuis le script HTML
final users = TransferState.get<List>('api-users');  // Les données du serveur
final count = TransferState.get<int>('api-count');   // 42
```

### API TransferState

| Méthode | Description |
|---------|-------------|
| `set<T>(String key, T value)` | Stocke une valeur avec la clé donnée. |
| `get<T>(String key)` | Récupère une valeur stockée. Retourne `null` si absente. |
| `has(String key)` | Vérifie si une clé existe dans l'état transféré. |
| `remove<T>(String key)` | Supprime une valeur stockée. |
| `clear()` | Vide tout l'état transféré (utile entre les requêtes serveur). |
| `toScript()` | Génère le script HTML `<script id="ng-transfer-state">` avec les données sérialisées en JSON. |
| `fromHtml()` | Lit l'état transféré depuis le script HTML injecté par le serveur. |

### Types supportés

- `String`, `int`, `double`, `bool`
- `null`
- `List<T>` (récursif)
- `Map<String, dynamic>` (récursif)
- Les objets non sérialisables sont convertis en `<non-serializable>`.

### Sécurité

Les caractères spéciaux dans les valeurs JSON sont échappés pour prévenir les injections :

| Caractère | Échappement |
|-----------|-------------|
| `&` | `\u0026` |
| `<` | `\u003c` |
| `>` | `\u003e` |
| `\u2028` (line separator) | `\u2028` |
| `\u2029` (paragraph separator) | `\u2029` |

---

## Déploiement

### Option 1 : Processus système (systemd)

```ini
# /etc/systemd/system/angulardart-ssr.service
[Unit]
Description=AngularDart SSR Server
After=network.target

[Service]
Type=simple
User=www-data
WorkingDirectory=/opt/mon_app_ssr
ExecStart=/opt/mon_app_ssr/bin/server.exe
Restart=always
RestartSec=5

[Install]
WantedBy=multi-user.target
```

```bash
sudo systemctl enable angulardart-ssr
sudo systemctl start angulardart-ssr
```

### Option 2 : Docker

```dockerfile
FROM dart:stable AS build
WORKDIR /app
COPY . .
RUN dart pub get
RUN dart compile exe bin/server.dart

FROM debian:bookworm-slim
COPY --from=build /app/bin/server.exe /server
EXPOSE 4000
CMD ["/server"]
```

```bash
docker build -t angulardart-ssr .
docker run -p 4000:4000 angulardart-ssr
```

### Option 3 : Reverse proxy (nginx)

```nginx
server {
    listen 80;
    server_name mon-app.example.com;

    location / {
        proxy_pass http://localhost:4000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}
```

---

## Dépannage

### Erreur : `Error reading 'lib/angulardart.template.dart': No such file or directory`

Les stubs `.template.dart` sont requis pour la compilation AOT. Les régénérer :

```bash
cd angulardart_cli
dart run bin/ngdart.dart generate-stubs
```

### Erreur : `dart:js_interop is not available on this platform`

Ce message apparaît si vous essayez d'exécuter du code web (qui dépend de `package:web`) sur le serveur. Vérifiez que :

- Vous utilisez bien les exports conditionnels (`if (dart.library.io)`) pour séparer le code web et le code serveur.
- Vos imports côté serveur n'incluent pas transitivement `package:web` ou `dart:js_interop`.

### Le HTML rendu est vide

Vérifiez que :

1. Le composant a un template non vide.
2. Le `selector` du composant correspond à ce qui est attendu dans le HTML.
3. Les dépendances DI du composant sont correctement fournies.

### L'hydratation ne fonctionne pas côté client

Vérifiez que :

1. La page contient bien `ng-server-context="ssr"` sur la balise `<html>`.
2. Le script `ng-transfer-state` est présent dans le `<head>`.
3. Vous appelez `hydrateApplication()` au lieu de `runApp()` quand `ng-server-context == 'ssr'`.

### Les IDs d'hydratation (`data-ng-id`) changent entre les requêtes

C'est un comportement attendu si l'applicatif utilise des données dynamiques qui influencent la structure du DOM. Pour une hydration correcte, la structure HTML doit être **identique** entre le rendu serveur et l'hydratation client. Si certaines parties du DOM sont conditionnelles (ex: `*ngIf`), assurez-vous que la condition est évaluée de manière cohérente côté serveur et côté client.

### Performance lente au premier chargement

Le premier rendu SSR peut être lent si :

- Le composant effectue des appels API synchrones pendant le rendu.
- La hiérarchie de composants est très profonde.
- Les templates contiennent beaucoup de nœuds.

**Solutions :**
- Utilisez `TransferState` pour éviter les appels API redondants après l'hydratation.
- Limitez la profondeur de la hiérarchie de composants.
- Envisagez le rendu hybride (SSR pour les pages critiques, CSR pour le reste).
