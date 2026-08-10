/// Platform-agnostic DOM access for SSR.
///
/// On web platforms, re-exports [package:web].
/// On native/AOT platforms (server-side rendering), uses stub implementations.
library;

export 'platform_dom_browser.dart' if (dart.library.io) 'platform_dom_vm.dart';
