/// VM platform stub implementation of DirectiveChangeDetector.
///
/// On native/AOT builds (server-side rendering), this is a no-op since
/// DOM operations are handled by the server renderer.
library;

import 'package:angulardart/src/core/linker/views/render_view.dart';

/// Base class for helpers generated for some classes annotated with @Directive.
abstract class DirectiveChangeDetector {
  /// Implements `detectChanges()`-like logic but for the directive instance.
  void detectHostChanges(RenderView view, dynamic hostElement);
}
