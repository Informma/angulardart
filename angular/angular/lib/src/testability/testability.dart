/// Platform-agnostic testability module for AngularDart.
///
/// Provides testing hooks also accessible via JavaScript APIs in the browser.
/// On native/AOT builds (server-side rendering), stub implementations are used
/// since DOM operations and JS interop are not needed.
library angular.src.testability;

export 'testability_browser.dart' if (dart.library.io) '../testability_vm.dart';
