/// Developer tools support for AngularDart.
///
/// On web platforms, exports the browser implementation (Dart VM Service
/// Protocol inspector + JavaScript DevTools bridge). On native/AOT builds
/// (server-side rendering), exports no-op stubs so the same code compiles
/// without `dart:html` or `package:js`.
library angular.src.devtools;

export 'devtools/devtools_browser.dart'
    if (dart.library.io) 'devtools/devtools_vm.dart';
export 'devtools/model.dart';
