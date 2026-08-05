/// Web platform implementation of JS interop utilities.
///
/// Uses [dart:js_interop] for proper JS string conversion with dart2js/dart2wasm.
library;

import 'dart:js_interop';
import 'package:web/web.dart' as web;

extension JsStringExtension on String {
  /// Converts this Dart [String] to a [JSString] for use with package:web APIs.
  JSString get js => toJS;
}

/// Helper function to convert an event listener callback to JSFunction.
@pragma('dart2js:tryInline')
JSFunction toJsEventListener(void Function(web.Event) fn) => fn.toJS;
