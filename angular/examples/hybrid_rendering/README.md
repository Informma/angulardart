# Exemple hybrid_rendering — Rendu Hybride SSR/CSR

Exemple démontrant le rendu hybride avec AngularDart : certains composants sont rendus côté serveur, d'autres uniquement côté client.

## Compilation

```bash
dart pub get
dart run build_runner build web/main.server.dart
```

## Exécution

```bash
dart bin/server.dart
# Serveur SSR hybrid_rendering en cours d'exécution sur http://localhost:4000
```

## Tests e2e SSR (optionnels, lents)

```bash
SKIP_E2E_SSR=false dart test test/ssr/e2e_integration_test.dart
dart test test/ssr/  # tests unitaires/intégration (rapides, skip e2e par défaut)
```

## Limitations connues

### Exécution en VM vs build_runner

`package:web` (qui remplace `dart:html`) utilise des types et APIs qui ne sont pas disponibles sur la VM Dart. Cela signifie :

| Méthode | Résultat |
|---------|----------|
| `dart run build_runner build -d web/main.server.dart` puis `dart bin/server.dart` | ✅ Fonctionne (code compilé par dart2js) |
| `dart run bin/server.dart` directement | ❌ Échoue (types browser indisponibles sur VM) |

**Solution recommandée** : toujours utiliser `build_runner` pour compiler l'application avant de l'exécuter. Le binaire généré contient tout le code nécessaire au rendu SSR.

### Version de `package:web`

La version `web: ^1.x` nécessite Dart SDK >= 3.0.0. Les versions plus récentes de `package:web` peuvent introduire des breaking changes avec les versions stables de Dart SDK.
