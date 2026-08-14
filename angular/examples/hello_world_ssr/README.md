# Exemple hello_world_ssr — Rendu Serveur (SSR)

Exemple minimal démontrant le rendu serveur avec AngularDart et `package:angulardart_server`.

## Compilation

```bash
dart pub get
dart run build_runner build web --release
```

## Exécution

```bash
dart bin/server.dart
# Serveur SSR angulardart en cours d'exécution sur http://localhost:4000
```

## Tests e2e SSR (optionnels, lents)

Les tests end-to-end compilent l'exemple et démarrent un serveur HTTP pour vérifier le HTML rendu. Ils sont **sautés par défaut** car le build prend ~90s.

```bash
# Exécuter les tests e2e :
SKIP_E2E_SSR=false dart test test/ssr/e2e_integration_test.dart

# Les tests unitaires/intégration (rapides) s'exécutent normalement :
dart test test/ssr/
```

## Limitations connues

### Exécution en VM vs build_runner

`dart:html` expose des types et APIs qui ne sont pas disponibles sur la VM Dart. Le framework s'appuie sur un export conditionnel (`platform_dom.dart`) pour isoler le DOM côté navigateur :

| Méthode | Résultat |
|---------|----------|
| `dart run build_runner build web --release` puis `dart bin/server.dart` | ✅ Fonctionne (code compilé par dart2js) |
| `dart run bin/server.dart` directement | ❌ Échoue (types browser indisponibles sur VM) |

**Solution recommandée** : toujours utiliser `build_runner` pour compiler l'application avant de l'exécuter. Le binaire généré contient tout le code nécessaire au rendu SSR.
