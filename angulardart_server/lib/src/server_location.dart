/// Implmentation serveur de [PlatformLocation].
///
/// Utilise l'URL de la request HTTP au lieu de `window.location`.
/// Toutes les mthodes de navigation (pushState, replaceState, etc.) sont no-op
/// car non applicables ct serveur.
import 'package:angulardart_router/angulardart_router.dart';
import 'package:web/web.dart' as web;

class ServerPlatformLocation implements PlatformLocation {
  final String _url;

  ServerPlatformLocation(this._url);

  @override
  String? getBaseHrefFromDOM() => '';

  @override
  void onPopState(void Function(web.Event) fn) {}

  @override
  void onHashChange(void Function(web.Event) fn) {}

  @override
  String get pathname {
    final uri = Uri.parse(_url);
    return uri.path.isEmpty ? '/' : uri.path;
  }

  @override
  String get search => Uri.parse(_url).query;

  @override
  String get hash => Uri.parse(_url).fragment;

  @override
  void replaceState(Object? state, String title, String? url) {}

  @override
  void pushState(Object? state, String title, String? url) {}

  @override
  void forward() {}

  @override
  void back() {}
}
