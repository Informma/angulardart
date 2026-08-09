/// Web platform implementation of JS interop utilities.
///
/// Uses local DOM types for dart2js/dart2wasm.
library;

import 'web_types.dart';

extension JsStringExtension on String {
  /// Returns the string as-is (no conversion needed).
  String get js => this;
}

/// Helper function to return an event listener callback directly.
@pragma('dart2js:tryInline')
DomEventListener toJsEventListener(void Function(DomEvent) fn) => fn as DomEventListener;
