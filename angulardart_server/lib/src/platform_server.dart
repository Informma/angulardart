/// Point d'entre principal pour le rendu ct serveur.
///
/// Similaire `platformServer()` dans Angular Universal. Cr un contexte de
/// plateforme serveur capable de rendre des composants AngularDart en HTML string.
library;

import 'dart:async';
import 'dart:math' as math;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart/src/core/application_ref.dart' show ApplicationRef, internalCreateApplicationRef;
import 'package:angulardart/src/core/linker/app_view_utils.dart' show AppViewUtils, appViewUtils;
import 'package:angulardart/src/di/injector.dart';
import 'package:angulardart/src/runtime/dom_events.dart' show EventManager;
import 'package:angulardart_router/angulardart_router.dart' show PlatformLocation;

import 'server_location.dart';
import 'server_zone.dart';
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

    // Extract SEO data from TransferState for SSR meta tags.
    final seoData = _extractSeoFromTransferState();
    final titleTag = seoData['title'] != null
        ? '  <title>${_escapeHtml(seoData['title'] as String)}</title>\n'
        : '';
    final metaTags = seoData.entries
        .where((e) => e.key.startsWith('meta:'))
        .map((e) {
          final name = e.key.substring(5); // Remove 'meta:' prefix
          return '  <meta name="$name" content="${_escapeHtml(e.value as String)}">';
        })
        .join('\n');
    final ogTags = seoData.entries
        .where((e) => e.key.startsWith('og:'))
        .map((e) {
          final property = e.key.substring(3); // Remove 'og:' prefix
          return '  <meta property="og:$property" content="${_escapeHtml(e.value as String)}">';
        })
        .join('\n');
    final twitterTags = seoData.entries
        .where((e) => e.key.startsWith('twitter:'))
        .map((e) {
          final name = e.key.substring(8); // Remove 'twitter:' prefix
          return '  <meta name="twitter:$name" content="${_escapeHtml(e.value as String)}">';
        })
        .join('\n');
    final canonicalTag = seoData['canonical'] != null
        ? '  <link rel="canonical" href="${_escapeHtml(seoData['canonical'] as String)}">\n'
        : '';

    final transferScript = TransferState.toScript();

    return '''<!DOCTYPE html>
<html lang="en" ng-server-context="ssr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
$titleTag$metaTags$ogTags$twitterTags$canonicalTag
$transferScript
</head>
<body>
${componentHtml}
</body>
</html>''';
  }

  /// Extracts SEO metadata from TransferState keys prefixed with 'seo:'.
  Map<String, dynamic> _extractSeoFromTransferState() {
    return TransferState.getByPrefix('seo:') as Map<String, dynamic>;
  }

  /// Escapes HTML special characters in a string.
  String _escapeHtml(String input) {
    return input
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&#x27;');
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

    final zone = ServerNgZone();
    late ApplicationRef applicationRef;

    final baseParent = parentInjector ?? Injector.empty();
    final baseInjector = _createServerBaseInjector(
      url: url ?? '',
      appId: appId,
      parentInjector: baseParent,
    );

    final appGlobalInjector = _LazyServerInjector({
      ApplicationRef: () => applicationRef,
      NgZone: () => zone,
    }, baseInjector);

    applicationRef = internalCreateApplicationRef(zone, appGlobalInjector);

    // Initialize appViewUtils for scoped styles support (mirrors browser bootstrap)
    final serverAppId = appId ?? 'a${math.Random().nextInt(0x100000).toRadixString(36)}';
    appViewUtils = AppViewUtils(serverAppId, EventManager(zone));

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
    required String url,
    String? appId,
    required Injector parentInjector,
  }) {
    return Injector.map({
      APP_ID: appId ?? _createRandomAppId(),
      ExceptionHandler: const ExceptionHandler(),
      ComponentLoader: const ComponentLoader(),
      PlatformLocation: () => ServerPlatformLocation(url),
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
