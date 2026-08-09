/// Native/AOT platform stub implementation of DOM APIs.
///
/// This is used when compiling to native AOT (server-side rendering) where
/// [package:web] is not available. All methods are no-ops since DOM operations
/// are not needed in server mode.
///
/// Re-exports all abstract types from [web_types.dart] and provides platform-specific
/// globals that use the stub implementations defined there.
library;

export 'web_types.dart';
