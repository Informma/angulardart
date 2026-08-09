/// Platform-agnostic DirectiveChangeDetector base class.
///
/// Provides the base class for helpers generated for @Directive-annotated classes.
/// On browser platforms, uses [package:web] types for DOM access.
/// On native/AOT platforms (SSR), uses stub implementations.
library;

export 'directive_change_detector_browser.dart' if (dart.library.io) 'directive_change_detector_vm.dart';
