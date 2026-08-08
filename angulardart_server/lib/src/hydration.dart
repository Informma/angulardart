/// Hydrate le HTML ssr ct client.
///
/// Decte si une page a t rendue ct serveur et rutilise le DOM existant
/// au lieu de tout re-rendre. Similaire `provideClientHydration()` d'Angular 17+.
///
/// ## Fonctionnement
///
/// 1. Dtection : vrifie l'attribut `ng-server-context="ssr"` sur `<html>`
/// 2. Switch RenderFactory : remplace [renderFactory] par [HydrateRenderFactory]
///    qui rutilise les nuds DOM existants (marqus avec `data-ng-id`)
/// 3. Injection des styles : injecte les styles encapsuls dans le `<head>`
/// 4. TransferState : lit l'tat transfr depuis le script HTML du serveur
/// 5. Bootstrap : utilise [ApplicationRef.hydrate()] au lieu de [bootstrap]
///    pour ne pas remplacer le DOM existant
///
/// ## Exemple d'utilisation
///
/// ```dart
/// // main.dart (client)
/// import 'package:angulardart_server/angulardart_server.dart';
/// import 'app_component.template.dart' as ng;
///
/// void main() async {
///   await hydrateApplication(ng.AppComponentNgFactory);
/// }
/// ```
import 'dart:async';

import 'dom_apis.dart';

import 'package:angulardart/angulardart.dart'
    show RenderFactory, HydrateRenderFactory, ApplicationRef, ComponentRef, ComponentFactory, Injector, InjectorFactory;
import 'package:angulardart/src/bootstrap/run.dart' show appInjector;
import 'package:angulardart_server/src/transfer_state.dart';

Future<ComponentRef<Object>> hydrateApplication<T extends Object>(
  ComponentFactory<T> componentFactory, {
  InjectorFactory? createInjector,
}) async {
  final htmlElement = document.documentElement;
  final isServerRendered = htmlElement?.getAttribute('ng-server-context') == 'ssr';

  if (!isServerRendered) {
    return _runAppFallback(componentFactory, createInjector);
  }

  // Lire l'tat transfre depuis le script HTML du serveur
  TransferState.fromHtml();

  // Crer et activer le HydrateRenderFactory pour rutilisation du DOM
  final hydrateFactory = HydrateRenderFactory();

  // Sauvegarder et remplacer renderFactory par HydrateRenderFactory
  final previousInstance = RenderFactory.instance;
  RenderFactory.instance = hydrateFactory;

  try {
    // Injecter les styles encapsuls dans le <head>
    _injectEncapsulatedStyles(hydrateFactory);

    final injectorFactory = createInjector ?? _identityInjector;
    final injector = appInjector(injectorFactory);
    final appRef = injector.provideType<ApplicationRef>(ApplicationRef);

    // Utiliser hydrate() au lieu de bootstrap() pour rutiliser le DOM existant
    return appRef.hydrate(componentFactory);
  } finally {
    // Restaurer la factory originale (pour d'autres applications si ncessaire)
    RenderFactory.instance = previousInstance;
  }
}

/// Rendu client normal (fallback quand pas de HTML ssr).
Future<ComponentRef<Object>> _runAppFallback<T extends Object>(
  ComponentFactory<T> componentFactory, [
  InjectorFactory? createInjector,
]) async {
  final injectorFactory = createInjector ?? _identityInjector;
  final injector = appInjector(injectorFactory);
  final appRef = injector.provideType<ApplicationRef>(ApplicationRef);

  return Future.microtask(() => appRef.bootstrap(componentFactory));
}

/// Injecte les styles encapsuls collects pendant le rendu serveur.
void _injectEncapsulatedStyles(HydrateRenderFactory hydrateFactory) {
  final collectedStyles = hydrateFactory.collectedStyles;
  if (collectedStyles.isEmpty) return;

  // Crer un lment <style> et l'ajouter dans le <head>
  final styleEl = document.createElement('style') as DomHTMLStyleElement;
  styleEl.id = 'ng-ssr-styles';
  styleEl.textContent = collectedStyles.join('\n');

  final head = document.head;
  if (head != null) {
    head.append(styleEl);
  } else {
    // Fallback : ajouter au body si head n'est pas encore disponible
    document.body?.append(styleEl);
  }
}

Injector _identityInjector(Injector parent) => parent;
