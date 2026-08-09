/// Platform-agnostic DOM APIs for AngularDart.
///
/// Provides abstracted access to browser DOM APIs (document, window, Element, etc.)
/// using local type stubs on web platforms (dart2js/dart2wasm).
///
/// On native/AOT platforms (server-side rendering), stub implementations are used
/// that provide no-op behavior since DOM operations are not needed.
///
/// This conditional export pattern allows the same codebase to compile for both
/// browser and native targets without [package:web] dependency on native builds.
library;

export 'browser_dom_apis_browser.dart' if (dart.library.io) 'native_dom_apis.dart';
