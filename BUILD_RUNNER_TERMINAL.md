+
+## Comportement observe
+
+Lors de l'execution de `dart run build_runner serve` (ou `watch`, `build`), la console affiche un bloc de progression qui se met a jour en place, donnant l'impression que les lignes du dessus sont "mangees".
+
+**Exemple d'affichage :**
+
+```
+0:00 +main -123 outputs [65s]
+angulardart_compiler|angularCompiler on web/main.dart (cached)
+  4.2s angulardart_router|ngRouter on lib/src/router_module.dart
+  1.8s build_web_compilers|entrypoint on web/main.dart
+
+Built with build_runner/aot in 65s; wrote 123 outputs.
+```
+
+Ce bloc se reecrit a chaque mise a jour de progression au lieu d'ajouter des lignes.
+
+## Cause
+
+Ce comportement est provoque par `build_runner` (v2.15+), pas par AngularDart.
+
+Dans `package:build_runner` (v2.16.0 utilisee ici), la classe `LogDisplay` (`lib/src/logging/log_display.dart`) active un mode "block" qui utilise des sequences d'echappement ANSI :
+
+- `\x1b[nF` — Cursor Previous Line : deplace le curseur n lignes vers le haut
+- `\x1b[J` — Erase in Display : efface du curseur jusqu'a la fin de l'ecran
+
+Ces codes permettent de reecrire le meme bloc en place pour un affichage de progression fluide.
+
+### Conditions d'activation (`LogDisplay.displayingBlocks`)
+
+Le mode block s'active quand **toutes** ces conditions sont remplies :
+
+1. Un terminal est present (`stdout.hasTerminal == true`)
+2. Le terminal supporte les ANSI escapes (`stdout.supportsAnsiEscapes == true`)
+3. Le mode de log est `BuildLogMode.build` (cas par defaut pour `serve`, `watch`, `build`)
+4. Aucun callback `onLog` n'est defini
+
+### Versions concernees
+
+- **build_runner < 2.5** : affichage ligne par ligne classique
+- **build_runner >= 2.15** : nouveau mode "block" avec mise a jour en place via ANSI
+
+## Comportement par commande
+
+| Commande | Mode log | Affichage |
+|----------|----------|-----------|
+| `build_runner build` | `BuildLogMode.build` | Block (ANSI) |
+| `build_runner serve` | `BuildLogMode.build` | Block (ANSI) |
+| `build_runner watch` | `BuildLogMode.build` | Block (ANSI) |
+| `build_runner daemon` | `BuildLogMode.daemon` | Ligne par ligne |
+| `build_runner clean` | `BuildLogMode.simple` | Ligne par ligne |
+
+## Desactiver le mode block
+
+### Option 1 : Variable NO_COLOR
+
+```bash
+NO_COLOR=1 dart run build_runner serve
+```
+
+### Option 2 : TERM=dumb
+
+```bash
+TERM=dumb dart run build_runner serve
+```
+
+Ces methodes font croire a `build_runner` qu'il n'y a pas de terminal ANSI, ce qui force le mode ligne par ligne.
+
+## Notes techniques
+
+- Le seuil d'actualisation est de 100ms en mode block (`_shouldShowProgressNow`)
+- Si le bloc depasse la hauteur de la console, `build_runner` bascule automatiquement en mode simple avec un avertissement : "Log overflowed the console, switching to line-by-line logging."
+- Les erreurs sont toujours affichees immediatement, meme en mode block

