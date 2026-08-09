library;

import 'dart:js_interop';

// ignore: depend_on_referenced_packages
import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart' show Injectable;

import '../router_types.dart';
import 'platform_location_browser.dart' show PlatformLocation;
import 'base_href_browser.dart' if (dart.library.io) 'base_href_vm.dart';

@Injectable()
class BrowserPlatformLocation implements PlatformLocation {
  late final web.Location _location;
  late final web.History _history;
  BrowserPlatformLocation() {
    _location = web.window.location;
    _history = web.window.history;
  }
  @override String? getBaseHrefFromDOM() => baseHrefFromDOM();
  @override void onPopState(void Function(RouterEvent) fn) {
    web.window.addEventListener('popstate', ((web.Event e) {
      fn(_wrapEvent(e));
    }).toJS);
  }
  @override void onHashChange(void Function(RouterEvent) fn) {
    web.window.addEventListener('hashchange', ((web.Event e) {
      fn(_wrapEvent(e));
    }).toJS);
  }
  @override String get pathname => _location.pathname;
  @override set pathname(String value) => _location.pathname = value;
  @override String get search => _location.search;
  @override String get hash => _location.hash;
  @override void pushState(Object? state, String title, String? url) {
    _history.pushState(state.jsify(), title, url);
  }
  @override void replaceState(Object? state, String title, String? url) {
    _history.replaceState(state.jsify(), title, url);
  }
  @override void forward() => _history.forward();
  @override void back() => _history.back();
  RouterEvent _wrapEvent(web.Event e) => _WebEventWrapper(e);
}

class _WebEventWrapper implements RouterEvent {
  _WebEventWrapper(this._event);
  final web.Event _event;
  @override String get type => _event.type;
  @override dynamic get detail => (this as dynamic)._event.detail;
  @override bool get bubbles => _event.bubbles;
  @override bool get cancelable => _event.cancelable;
  @override bool get defaultPrevented => _event.defaultPrevented;
  @override bool get composed => _event.composed;
  @override RouterEventTarget? get target => null;
  @override RouterEventTarget? get currentTarget => null;
  @override void preventDefault() => _event.preventDefault();
  @override void stopPropagation() => _event.stopPropagation();
  @override void stopImmediatePropagation() => _event.stopImmediatePropagation();
}
