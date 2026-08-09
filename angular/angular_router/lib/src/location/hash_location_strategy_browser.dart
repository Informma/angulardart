library;

import 'package:angulardart/angulardart.dart' show Injectable, Inject, Optional;

import '../router_types.dart';
import 'location_strategy_browser.dart' show LocationStrategy, appBaseHref;
import 'platform_location_browser.dart' show PlatformLocation;
import 'location.dart' show Location;

@Injectable()
class HashLocationStrategy implements LocationStrategy {
  final PlatformLocation _platformLocation;
  final String _baseHref;
  HashLocationStrategy(this._platformLocation, [@Optional() @Inject(appBaseHref) String? baseHref]) : _baseHref = baseHref ?? '';
  @override void onPopState(void Function(RouterEvent) fn) => _platformLocation.onPopState(fn);
  @override String getBaseHref() => _baseHref;
  @override String hash() => _platformLocation.hash;
  @override String path() {
    var path = _platformLocation.hash;
    if ((path as dynamic) == null) path = '';
    return path.isEmpty ? path : path.substring(1);
  }
  @override String prepareExternalUrl(String internal) {
    var url = Location.joinWithSlash(_baseHref, internal);
    return url.isEmpty ? '${_platformLocation.pathname}${_platformLocation.search}' : '#$url';
  }
  @override void pushState(Object? state, String title, String path, String queryParams) {
    var url = prepareExternalUrl(path + Location.normalizeQueryParams(queryParams));
    _platformLocation.pushState(state, title, url);
  }
  @override void replaceState(Object? state, String title, String path, String queryParams) {
    var url = prepareExternalUrl(path + Location.normalizeQueryParams(queryParams));
    _platformLocation.replaceState(state, title, url);
  }
  @override void forward() => _platformLocation.forward();
  @override void back() => _platformLocation.back();
}
