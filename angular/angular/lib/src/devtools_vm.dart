/// VM-compatible devtools stubs.
///
/// Provides no-op implementations for developer tools on native/AOT builds
/// (server-side rendering) where `dart:js_interop` is not available.
///
/// DevTools are only functional on web platforms (dart2js/dart2wasm).
library;

import 'package:angulardart/src/utilities.dart';
import 'runtime/dom_apis.dart';

/// Whether developer tools are enabled.
///
/// This is always false in release mode and on native/AOT builds where
/// devtools require `dart:js_interop` which is not available.
bool get isDevToolsEnabled => isDevMode;

/// Enables developer tools if in development mode.
///
/// On native/AOT builds (server-side rendering), this is a no-op since
/// devtools require JavaScript interop APIs that are only available in browsers.
void enableDevTools() {
  // No-op on VM - devtools require dart:js_interop
}

/// Registers [element] as an additional location to search for components.
///
/// On native/AOT builds, this is a no-op since there's no browser DOM.
void registerContentRoot(DomElement element) {
  // No-op on VM - devtools require dart:js_interop and browser DOM
}

/// Stub Inspector class for VM/native builds.
///
/// DevTools are not available on native/AOT builds, so this provides
/// no-op implementations of all methods.
class Inspector {
  /// The current [Inspector] instance (no-op on VM).
  static final instance = Inspector._();

  Inspector._();

  /// No-op on VM - devtools require browser DOM.
  void inspect(dynamic applicationRef) {}

  /// No-op on VM - devtools require browser DOM.
  void registerContentRoot(DomElement element) {}

  /// No-op on VM - devtools require browser DOM.
  void registerComponentView(dynamic view) {}
}
