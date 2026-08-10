library;

import 'package:angulardart/angulardart.dart' show Injectable;

import '../router_types.dart';
import 'platform_location_vm.dart' show PlatformLocation;


@Injectable()
class BrowserPlatformLocation implements PlatformLocation {
  @override String? getBaseHrefFromDOM() => null;
  @override void onPopState(void Function(RouterEvent) fn) {}
  @override void onHashChange(void Function(RouterEvent) fn) {}
  @override String get pathname => '';
  @override set pathname(String value) {}
  @override String get search => '';
  @override String get hash => '';
  @override void pushState(Object? state, String title, String? url) {}
  @override void replaceState(Object? state, String title, String? url) {}
  @override void forward() {}
  @override void back() {}
}
