/// Platform-agnostic DOM APIs for browser platform.
///
/// Provides real browser DOM implementations on dart2js/dart2wasm,
/// and stub no-op implementations on native/AOT (SSR).
library;

export 'browser_dom_apis_browser.dart' if (dart.library.io) 'native_dom_apis.dart';
