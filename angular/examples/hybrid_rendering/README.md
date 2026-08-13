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

`dart:html` expose des types et APIs qui ne sont pas disponibles sur la VM Dart. Le framework s'appuie sur un export conditionnel (`platform_dom.dart`) pour isoler le DOM côté navigateur :

| Méthode | Résultat |
|---------|----------|
| `dart run build_runner build web/main.server.dart` puis `dart bin/server.dart` | ✅ Fonctionne (code compilé par dart2js) |
| `dart run bin/server.dart` directement | ❌ Échoue (types browser indisponibles sur VM) |

**Solution recommandée** : toujours utiliser `build_runner` pour compiler l'application avant de l'exécuter. Le binaire généré contient tout le code nécessaire au rendu SSR.
