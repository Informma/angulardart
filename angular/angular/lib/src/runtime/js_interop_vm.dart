/// VM/DDC platform implementation of JS interop utilities.
///
/// On DDC, strings and functions can be passed directly to DOM APIs without
/// explicit JS wrapping—DDC handles the conversion automatically.
library;

extension JsStringExtension on String {
  /// On DDC/VM, returns the string as-is. DDC handles JS conversion automatically.
  dynamic get js => this;
}

/// Helper function to convert an event listener callback for DDC/VM.
dynamic toJsEventListener(void Function(dynamic) fn) => fn;
