library;

import 'package:angulardart/angulardart.dart' show Injectable, Inject, Optional;

import '../router_types.dart';
import 'location_strategy_vm.dart' show LocationStrategy, appBaseHref;

@Injectable()
class VmHashLocationStrategy implements LocationStrategy {
  final String _baseHref;
  VmHashLocationStrategy(dynamic platformLocation, [@Optional() @Inject(appBaseHref) String? baseHref]) : _baseHref = baseHref ?? '';
  @override void onPopState(void Function(RouterEvent) fn) {}
  @override String getBaseHref() => _baseHref;
  @override String hash() => '';
  @override String path() => '';
  @override String prepareExternalUrl(String internal) => '#$internal';
  @override void pushState(Object? state, String title, String path, String queryParams) {}
  @override void replaceState(Object? state, String title, String path, String queryParams) {}
  @override void forward() {}
  @override void back() {}
}
