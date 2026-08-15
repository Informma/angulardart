/// Platform-agnostic DOM APIs for angular_components.
///
/// On web platforms, re-exports `dart:html` (preserving host-element type
/// resolution for the AngularDart compiler's dependency injection). On
/// native/AOT (server-side rendering), exports stub types so the package
/// compiles without `dart:html`.
library;

export 'dom_apis_browser.dart' if (dart.library.io) 'dom_apis_vm.dart';
