/// Platform-agnostic JavaScript interop for angular_components.
///
/// On web platforms, exposes real `dart:js` / `package:js` accessors. On
/// native/AOT (server-side rendering), exposes no-op stubs so the package
/// compiles without browser-only JS interop libraries.
library;

export 'js_apis_browser.dart' if (dart.library.io) 'js_apis_vm.dart';
