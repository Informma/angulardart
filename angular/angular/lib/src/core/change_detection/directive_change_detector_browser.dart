/// Browser platform implementation of DirectiveChangeDetector.
///
/// Uses local DOM types for dart2js/dart2wasm.
library;

import 'package:angulardart/src/core/linker/views/render_view.dart';

import '../../runtime/web_types.dart';

/// Base class for helpers generated for some classes annotated with @Directive.
abstract class DirectiveChangeDetector {
  /// Implements `detectChanges()`-like logic but for the directive instance.
  void detectHostChanges(RenderView view, DomElement hostElement);
}
