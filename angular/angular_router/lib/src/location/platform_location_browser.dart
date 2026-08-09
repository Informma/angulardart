library;

import '../router_types.dart';

export '../router_types.dart';

abstract class PlatformLocation {
  String? getBaseHrefFromDOM();
  void onPopState(void Function(RouterEvent) fn);
  void onHashChange(void Function(RouterEvent) fn);
  String get pathname;
  set pathname(String value);
  String get search;
  String get hash;
  void pushState(Object? state, String title, String? url);
  void replaceState(Object? state, String title, String? url);
  void forward();
  void back();
}
