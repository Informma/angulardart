/// Platform-agnostic DOM APIs for AngularDart.
///
/// Exposes the browser [document] (and a few DOM type aliases) on web
/// platforms, and no-op stubs on native/AOT (server-side rendering) where
/// `dart:html` is unavailable.
///
/// This conditional export pattern lets the same code compile for both
/// browser and native targets without importing `dart:html` on native builds.
library;

export 'dom_apis_browser.dart' if (dart.library.io) 'dom_apis_native.dart';
