/// Platform-agnostic devtools API for AngularDart.
///
/// On web platforms (dart2js/dart2wasm), provides full developer tools support
/// with JavaScript interop for debugging.
///
/// On native/AOT platforms (server-side rendering), provides no-op stubs since
/// devtools require `dart:js_interop` which is not available on VM.
library;

export 'devtools_web.dart' if (dart.library.io) 'devtools_vm.dart';
