/// Platform-agnostic DOM APIs for linker.
///
/// Provides DOM types and utilities used by AngularDart's linker on both
/// browser (dart2js/dart2wasm) and native/AOT (SSR) platforms.
library;

export '../../runtime/web_types.dart';
export 'linker_dom_apis_browser.dart' if (dart.library.io) 'linker_dom_apis_vm.dart';
