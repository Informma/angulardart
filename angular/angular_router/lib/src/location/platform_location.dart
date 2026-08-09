library;

export '../router_types.dart';
export 'platform_location_browser.dart' if (dart.library.io) 'platform_location_vm.dart';
