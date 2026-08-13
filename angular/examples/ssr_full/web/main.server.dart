import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_server/angulardart_server.dart';

// ignore: uri_has_not_been_generated
import 'package:examples_ssr_full/app_component.template.dart' as app;
// ignore: uri_has_not_been_generated
import 'main.server.template.dart' as ng;

/// Retourne le factory du composant racine pour le rendu server-side.
ComponentFactory<Object> get appComponentFactory =>
    app.AppComponentNgFactory;

/// Injecteur applicatif (routing) pour le rendu server-side.
///
/// Fournit [routerProviders] + [appBaseHref] (le `<base href>` n'existe pas
/// sur la VM), et remplace `PlatformLocation` par [ServerPlatformLocation] qui
/// lit l'URL de la requête HTTP.
@GenerateInjector([
  routerProviders,
  ClassProvider(PlatformLocation, useClass: ServerPlatformLocation),
  ValueProvider.forToken(appBaseHref, '/'),
])
final InjectorFactory appInjector = ng.appInjector$Injector;
