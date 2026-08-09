library;

export '../router_types.dart';
export 'location_strategy_browser.dart' if (dart.library.io) 'location_strategy_vm.dart';
