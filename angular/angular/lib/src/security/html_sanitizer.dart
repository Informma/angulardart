/// Platform-agnostic HTML sanitizer.
///
/// Provides HTML sanitization utilities used by AngularDart's security module.
/// On browser platforms, uses [package:web] for full DOM access.
/// On native/AOT platforms (SSR), returns input as-is since sanitization is
/// handled client-side.
library;

export 'html_sanitizer_browser.dart' if (dart.library.io) 'html_sanitizer_vm.dart';
