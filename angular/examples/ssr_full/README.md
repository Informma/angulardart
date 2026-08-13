# AngularDart SSR Full Example

Exemple complet démontrant les fonctionnalités avancées d'AngularDart avec rendu côté serveur (SSR).

## Fonctionnalités démontrées

| Feature | Composant | Détail |
|---------|-----------|--------|
| Routing | `app_component.dart` | 4 routes avec `angulardart_router` |
| Service injecté | `item_service.dart` | `@Injectable()` avec données mockées |
| TransferState | `home_component.dart` | Transfert de données serveur → client |
| Formulaire réactif | `contact_form_component.dart` | Validation avec `angulardart_forms` |
| RenderMode.server | `home_component.dart` | Rendu forcé côté serveur |
| RenderMode.automatic | `about_component.dart` | SSR sur serveur, hydration sur client |
| RenderMode.client | `dashboard_component.dart` | Jamais rendu côté serveur |
| Styles encapsulés | Tous les composants | CSS scoped via `styles: [...]` |

## Structure du projet

```
ssr_full/
├── bin/server.dart                    # Serveur HTTP SSR
├── lib/
│   ├── platform_dom*.dart             # Abstraction DOM conditionnelle
│   ├── app_component.dart/.html       # Routing + navigation
│   ├── home_component.dart/.html      # RenderMode.server + TransferState
│   ├── about_component.dart           # RenderMode.automatic
│   ├── contact_form_component.dart/.html  # Formulaire réactif
│   ├── dashboard_component.dart/.html     # RenderMode.client
│   └── item_service.dart              # Service mocké
├── web/
│   ├── index.html                     # Page HTML avec ng-client-context
│   ├── main.dart                      # Entrée client (hydration)
│   ├── main.server.dart               # Entrée serveur (export factory)
│   └── styles.css                     # Styles globaux
├── pubspec.yaml
├── build.yaml                         # 2 entrypoints: main + main.server
└── analysis_options.yaml
```

## Utilisation

### Développement (client uniquement)

```bash
dart pub get
dart run build_runner serve
# Ouvrir http://localhost:8080
```

### Build SSR complet

```bash
dart pub get
dart run build_runner clean
dart run build_runner build web
# Copier les templates générés vers lib/ et web/
for f in .dart_tool/build/generated/*/lib/*.template.dart; do cp "$f" lib/ 2>/dev/null || true; done
for f in .dart_tool/build/generated/*/web/*.template.dart; do cp "$f" web/ 2>/dev/null || true; done
# Lancer le serveur SSR
dart bin/server.dart
# Ouvrir http://localhost:4000
```

## Hydration

1. Le serveur rend les composants avec `RenderMode.server` en HTML via SSR
2. Les composants avec `RenderMode.client` restent vides (placeholders)
3. Le client reçoit le HTML pré-rendu et active l'application avec hydration
4. L'application réutilise le DOM existant (pas de re-rendu)

## TransferState

Les données transférées du serveur vers le client sont stockées dans un `<script>` tag injecté dans le HTML :

```dart
// Côté serveur, avant le rendu :
TransferState.set('ssr_full:items', itemsList);

// Côté client, après l'hydration :
final serverItems = TransferState.get<List>('ssr_full:items');
```

## Rendu par composant

| Composant | RenderMode | Comportement |
|-----------|------------|--------------|
| AppComponent | (défaut) | SSR si serveur, hydration si client |
| HomePageComponent | server | Toujours rendu côté serveur |
| AboutPageComponent | (défaut) | SSR si serveur, hydration si client |
| ContactPageComponent | (défaut) | SSR si serveur, hydration si client |
| DashboardPageComponent | client | Jamais rendu côté serveur |
