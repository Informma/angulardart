/// Platform-agnostic JS interop utilities for AngularDart.
///
/// Provides extension methods for converting Dart strings and functions to
/// their JS equivalents, working on both dart2js/dart2wasm (web) and DDC/VM.
library;

export 'js_interop_web.dart' if (dart.library.io) 'js_interop_vm.dart';
