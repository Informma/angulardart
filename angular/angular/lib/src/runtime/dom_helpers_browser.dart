/// Browser implementation of the native DOM property setter.
///
/// This file is only compiled on web platforms. It bypasses `dart:html`'s
/// static typing to set arbitrary properties (e.g. `[disabled]`, `[value]`)
/// directly on the underlying JavaScript object.
library;

import 'package:js/js_util.dart' as js_util;

/// Sets an arbitrary [property] on a native (non-[RenderNode]) [element].
///
/// Used by [package:angulardart/src/runtime/dom_helpers.dart] `setProperty`
/// for the browser path. On the VM this is never called.
void setNativeProperty(dynamic element, String property, Object? value) {
  js_util.setProperty(element, property, value);
}
