library;

import 'package:angulardart/angulardart.dart' show Injectable, Inject, Optional;

import '../router_types.dart';
import 'location_strategy_vm.dart' show LocationStrategy, appBaseHref;
import 'location.dart' show Location;

@Injectable()
class VmPathLocationStrategy implements LocationStrategy {
  late final String _baseHref;
  VmPathLocationStrategy(dynamic platformLocation, [@Optional() @Inject(appBaseHref) String? href]) {
    if (href == null) throw ArgumentError('No base href set.');
    _baseHref = href;
  }
  @override void onPopState(void Function(RouterEvent) fn) {}
  @override String getBaseHref() => _baseHref;
  @override String prepareExternalUrl(String internal) => Location.joinWithSlash(_baseHref, internal);
  @override String hash() => '';
  @override String path() => '';
  @override void pushState(Object? state, String title, String url, String queryParams) {}
  @override void replaceState(Object? state, String title, String url, String queryParams) {}
  @override void forward() {}
  @override void back() {}
}
