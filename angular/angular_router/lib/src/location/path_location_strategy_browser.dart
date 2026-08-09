library;

import 'package:angulardart/angulardart.dart' show Injectable, Inject, Optional;

import '../router_types.dart';
import 'location_strategy_browser.dart' show LocationStrategy, appBaseHref;
import 'platform_location_browser.dart' show PlatformLocation;
import 'location.dart' show Location;

@Injectable()
class PathLocationStrategy implements LocationStrategy {
  final PlatformLocation _platformLocation;
  late final String _baseHref;
  PathLocationStrategy(this._platformLocation, [@Optional() @Inject(appBaseHref) String? href]) {
    href ??= _platformLocation.getBaseHrefFromDOM();
    if (href == null) throw ArgumentError('No base href set.');
    _baseHref = href;
  }
  @override void onPopState(void Function(RouterEvent) fn) => _platformLocation.onPopState(fn);
  @override String getBaseHref() => _baseHref;
  @override String prepareExternalUrl(String internal) => Location.joinWithSlash(_baseHref, internal);
  @override String hash() => _platformLocation.hash;
  @override String path() => _platformLocation.pathname + Location.normalizeQueryParams(_platformLocation.search);
  @override void pushState(Object? state, String title, String url, String queryParams) {
    var externalUrl = prepareExternalUrl(url + Location.normalizeQueryParams(queryParams));
    _platformLocation.pushState(state, title, externalUrl);
  }
  @override void replaceState(Object? state, String title, String url, String queryParams) {
    var externalUrl = prepareExternalUrl(url + Location.normalizeQueryParams(queryParams));
    _platformLocation.replaceState(state, title, externalUrl);
  }
  @override void forward() => _platformLocation.forward();
  @override void back() => _platformLocation.back();
}
