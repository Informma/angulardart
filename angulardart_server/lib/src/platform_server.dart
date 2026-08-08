/// Point d'entre principal pour le rendu ct serveur.
///
/// Similaire `platformServer()` dans Angular Universal. Cr un contexte de
/// plateforme serveur capable de rendre des composants AngularDart en HTML string.
library;

import 'dart:async';
import 'dart:math' as math;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/application_ref.dart' show ApplicationRef, internalCreateApplicationRef;
import 'package:angulardart/src/di/injector.dart';

import 'transfer_state.dart';
import '_html_builder.dart';

/// Instance globale de la plateforme serveur.
PlatformServerRef? _globalServerInstance;

/// Crée une nouvelle instance de plateforme serveur.
///
/// Similaire à `platformServer()` d'Angular Universal.
/// Peut être appelée plusieurs fois pour créer des instances isolées.
PlatformServerRef platformServer() {
  return _globalServerInstance ??= PlatformServerRef._();
}

/// Référence à une plateforme de rendu serveur.
class PlatformServerRef {
  bool _disposed = false;

  PlatformServerRef._();

  /// Rend un composant racine en HTML string.
  Future<String> renderComponent<T extends Object>(
    ComponentFactory<T> componentFactory, {
    String? url,
    String? appId,
    Injector? parentInjector,
  }) async {
    if (_disposed) {
      throw StateError('PlatformServerRef has been disposed');
    }

    TransferState.clear();

    final htmlBuilder = HtmlBuilder();
    await _renderComponentToBuilder(
      componentFactory,
      htmlBuilder,
      url: url,
      appId: appId,
      parentInjector: parentInjector,
    );
    return htmlBuilder.toString();
  }

  /// Rend une application complète avec routing.
  Future<String> renderApplication<T extends Object>(
    ComponentFactory<T> componentFactory, {
    required String url,
    String? appId,
    Injector? parentInjector,
  }) async {
    final componentHtml = await renderComponent(
      componentFactory,
      url: url,
      appId: appId,
      parentInjector: parentInjector,
    );

    final transferScript = TransferState.toScript();

    return '''<!DOCTYPE html>
<html lang="en" ng-server-context="ssr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AngularDart App</title>
$transferScript
</head>
<body>
${componentHtml}
</body>
</html>''';
  }

  Future<void> _renderComponentToBuilder<T extends Object>(
    ComponentFactory<T> componentFactory,
    HtmlBuilder builder, {
    String? url,
    String? appId,
    Injector? parentInjector,
  }) async {
    if (componentFactory.renderMode == RenderMode.client) {
      builder.openTag(componentFactory.selector);
      builder.closeTag(componentFactory.selector);
      return;
    }

    final zone = NgZone();
    late ApplicationRef applicationRef;

    final baseParent = parentInjector ?? Injector.empty();
    final baseInjector = _createServerBaseInjector(
      appId: appId,
      parentInjector: baseParent,
    );

    final appGlobalInjector = _LazyServerInjector({
      ApplicationRef: () => applicationRef,
      NgZone: () => zone,
    }, baseInjector);

    applicationRef = internalCreateApplicationRef(zone, appGlobalInjector);

    // Enable server mode so the component tree is built with ServerRenderNode
    renderFactory.useServerMode();
    ServerRenderNode.reset();

    ComponentRef<T>? componentRef;
    try {
      componentRef = applicationRef.bootstrap(componentFactory);
    } catch (e) {
      zone.dispose();
      rethrow;
    }

    // Capture the rendered HTML from the root ServerRenderNode
    final rootElement = componentRef.location as dynamic;
    if (rootElement is ServerRenderNode) {
      builder.innerHtml(rootElement.toHtml());
    } else {
      // Fallback: should not happen in server mode, but keep safety net
      builder.openTag(componentFactory.selector);
      builder.closeTag(componentFactory.selector);
    }

    applicationRef.dispose();
    zone.dispose();

    // Restore browser mode
    renderFactory.useBrowserMode();
  }

  Injector _createServerBaseInjector({
    String? appId,
    required Injector parentInjector,
  }) {
    return Injector.map({
      APP_ID: appId ?? _createRandomAppId(),
      ExceptionHandler: const ExceptionHandler(),
      ComponentLoader: const ComponentLoader(),
    }, parentInjector);
  }

  void dispose() {
    _disposed = true;
  }
}

class _LazyServerInjector extends HierarchicalInjector {
  final Map<Object, Object Function()> _providers;

  _LazyServerInjector(
    this._providers, [
    Injector? parent,
  ]) : super(parent ?? Injector.empty());

  @override
  Object? injectFromSelfOptional(Object token, [Object? orElse = throwIfNotFound]) {
    var result = _providers[token];
    if (result == null) {
      if (identical(token, Injector)) {
        return this;
      }
      return orElse;
    }
    return result();
  }
}

String _createRandomAppId() {
  final random = math.Random.secure();
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  return List.generate(
    12,
    (_) => chars[random.nextInt(chars.length)],
  ).join('');
}
