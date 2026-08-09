library;

import 'package:angulardart/angulardart.dart' show OpaqueToken;

import '../router_types.dart';

export '../router_types.dart';

abstract class LocationStrategy {
  String path();
  String hash();
  String prepareExternalUrl(String internal);
  void pushState(Object? state, String title, String url, String queryParams);
  void replaceState(Object? state, String title, String url, String queryParams);
  void forward();
  void back();
  void onPopState(void Function(RouterEvent) fn);
  String getBaseHref();
}

const appBaseHref = OpaqueToken<String>('appBaseHref');
