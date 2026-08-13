/// Native/AOT stub for [BrowserPlatformLocation] (server-side rendering).
library;

import 'package:angulardart/angulardart.dart' show Injectable;

import '../router_types.dart';
import 'base_href.dart';
import 'platform_location.dart';

/// No-op platform location for native/VM builds (server-side rendering).
@Injectable()
class BrowserPlatformLocation extends PlatformLocation {
  @override
  String? getBaseHrefFromDOM() => baseHrefFromDOM();

  @override
  void onPopState(void Function(RouterEvent) fn) {}

  @override
  void onHashChange(void Function(RouterEvent) fn) {}

  @override
  String get pathname => '';

  @override
  set pathname(String value) {}

  @override
  String get search => '';

  @override
  String get hash => '';

  @override
  void pushState(Object? state, String title, String? url) {}

  @override
  void replaceState(Object? state, String title, String? url) {}

  @override
  void forward() {}

  @override
  void back() {}
}
