/// Entrée serveur pour le rendu SSR hybride.
///
/// Ce fichier est compilé séparément avec build_runner pour générer
/// le code utilisé par le serveur HTTP.
library;

import 'package:angulardart/angulardart.dart';

// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

/// Retourne la factory du composant racine pour le rendu serveur.
ComponentFactory<Object> get appComponentFactory =>
    ng.AppRootComponentNgFactory;
