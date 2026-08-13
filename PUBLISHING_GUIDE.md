# PUBLISHING_GUIDE.md — Procédure complète de publication sur pub.dev

---

## 1. Vérifier (analyse + tests)

```bash
for pkg in angulardart_cli angular/angular_meta angular/angular_ast \
           angular/angular_compiler angular/angular angular/angular_forms \
           angular/angular_router angular/angular_test \
           angular_components/angular_components \
            angulardart_seo angulardart_server angulardart_prerender; do
  echo "=== $pkg ===" && (cd "$pkg" && dart analyze --fatal-infos)
done
```

Puis `dart test` sur chaque package concerné. Corriger si erreurs non-environnementales.

---

## 2. Commit + push

Ajouter uniquement les fichiers modifiés (pas de binaires ni fichiers générés), commit descriptif, push sur main.

---

## 3. Bumper les versions

Pour chaque package modifié :
- **Patch** (`x.x.X`) : corrections de bugs, changements de templates non-breaking
- **Mineure** (`x.X.0`) : nouvelles fonctionnalités, nouveaux flags CLI
- **Majeure** (`X.0.0`) : breaking changes (**uniquement après confirmation utilisateur**)

Mettre à jour le CHANGELOG.md correspondant. Commit + push séparément pour traçabilité.

---

## 4. Publier dans l'ordre des dépendances

```
angulardart_meta → angulardart_ast → angulardart_compiler → angulardart
    ↓
angulardart_forms, angulardart_router, angulardart_test (dépendent de: angulardart)
    ↓
angulardart_components (dépend de: angulardart, angulardart_forms)
angulardart_server (dépend de: angulardart, angulardart_meta, angulardart_router)
angulardart_cli, angulardart_prerender (standalone)
```

Pour chaque package : `cd <chemin> && echo y | dart pub publish`

**Attendre 300s entre chaque publication** pour laisser le temps à pub.dev de propager la version.

---

## Exemple complet

```bash
cd angular/angular_ast && echo y | dart pub publish; sleep 300
cd angular/angular_compiler && echo y | dart pub publish; sleep 300
cd angular/angular && echo y | dart pub publish; sleep 300
# ... continuer dans l'ordre des dépendances
```
