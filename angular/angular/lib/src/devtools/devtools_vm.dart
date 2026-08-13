/// VM-compatible DevTools stubs for server-side rendering.
///
/// On native/AOT builds the Dart VM Service Protocol inspector and the
/// JavaScript DevTools bridge are unavailable. These stubs provide the same
/// public surface as the browser implementation with no-op bodies.
library angular.src.devtools_vm;

/// Whether developer tools are enabled.
///
/// Always `false` on native/AOT builds.
bool get isDevToolsEnabled => false;

/// Enables developer tools if in development mode.
///
/// No-op on native/AOT builds.
void enableDevTools() {}

/// Registers [element] as an additional location to search for components.
///
/// No-op on native/AOT builds.
void registerContentRoot(dynamic element) {}

/// A service for inspecting an app via the Dart VM Service Protocol.
///
/// No-op on native/AOT builds (server-side rendering does not expose DevTools).
class Inspector {
  /// The current [Inspector].
  static final Inspector instance = Inspector._();

  Inspector._();

  /// No-op on native/AOT builds.
  void inspect(dynamic applicationRef) {}

  /// No-op on native/AOT builds.
  void registerComponentView(dynamic view) {}

  /// No-op on native/AOT builds.
  void registerDirective(dynamic node, dynamic directive) {}

  /// No-op on native/AOT builds.
  void registerContentRoot(dynamic element) {}

  /// Returns `null`; component inspection is unavailable on native/AOT builds.
  dynamic getComponentElement(int id) => null;

  /// Returns `-1`; component inspection is unavailable on native/AOT builds.
  int getComponentIdForNode(dynamic node, String groupName) => -1;
}
