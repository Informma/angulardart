// **DO NOT CHANGE**. The analyzer looks for this _specific name_.
@experimental
library angular.meta;

import 'package:meta/meta.dart';
export 'src/meta.dart' show visibleForTemplate;

/// Wraps an typed [callback] with a single parameter of type [A].
///
/// This function returns an _untyped_ callback with a single parameter of type
/// `dynamic`, which in turn dynamically is casted/checked to [A] before invoking
/// [callback].
@Deprecated('Use directiveTypes: [ ... ] to properly type instead')
T Function(dynamic) castCallback1ForDirective<T, A>(
  T Function(A) callback,
) {
  return (element) => callback(element as A);
}
