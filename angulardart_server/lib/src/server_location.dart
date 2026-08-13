/// Implémentation serveur de [PlatformLocation].
///
/// Utilise l'URL de la requête HTTP au lieu de `window.location`.
/// Toutes les méthodes de navigation (pushState, replaceState, etc.) sont no-op
/// car non applicables côté serveur.
///
/// L'URL courante est stockée dans un contexte global par requête, car le
/// router crée `PlatformLocation` via `ClassProvider(..., useClass:
/// ServerPlatformLocation)` (constructeur sans argument) ; voir
/// [PlatformServerRef._renderComponentToBuilder].
import 'package:angulardart_router/angulardart_router.dart';

class ServerPlatformLocation implements PlatformLocation {
  static String _currentUrl = '/';

  /// Définit l'URL de la requête courante (appelé au début de chaque rendu).
  static void setCurrentUrl(String url) {
    _currentUrl = url;
  }

  ServerPlatformLocation();

  @override
  String? getBaseHrefFromDOM() => '';

  @override
  void onPopState(void Function(RouterEvent) fn) {}

  @override
  void onHashChange(void Function(RouterEvent) fn) {}

  @override
  String get pathname {
    final uri = Uri.parse(_currentUrl);
    return uri.path.isEmpty ? '/' : uri.path;
  }

  @override
  set pathname(String value) {}

  @override
  String get search => Uri.parse(_currentUrl).query;

  @override
  String get hash => Uri.parse(_currentUrl).fragment;

  @override
  void replaceState(Object? state, String title, String? url) {}

  @override
  void pushState(Object? state, String title, String? url) {}

  @override
  void forward() {}

  @override
  void back() {}
}
