import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart' show Injectable;

import 'base_href.dart';
import 'platform_location.dart';

@Injectable()
class BrowserPlatformLocation extends PlatformLocation {
  final web.Location location;
  final web.History _history;

  BrowserPlatformLocation()
      : location = web.window.location,
        _history = web.window.history;

  @override
  String? getBaseHrefFromDOM() => baseHrefFromDOM();

  @override
  void onPopState(void Function(web.Event) fn) {
    web.window.addEventListener('popstate', fn.toJS);
  }

  @override
  void onHashChange(void Function(web.Event) fn) {
    web.window.addEventListener('hashchange', fn.toJS);
  }

  @override
  String get pathname {
    return location.pathname;
  }

  @override
  String get search {
    return location.search;
  }

  @override
  String get hash {
    return location.hash;
  }

  set pathname(String newPath) {
    location.pathname = newPath;
  }

  @override
  void pushState(Object? state, String title, String? url) {
    _history.pushState(state.jsify(), title, url);
  }

  @override
  void replaceState(Object? state, String title, String? url) {
    _history.replaceState(state.jsify(), title, url);
  }

  @override
  void forward() {
    _history.forward();
  }

  @override
  void back() {
    _history.back();
  }
}
