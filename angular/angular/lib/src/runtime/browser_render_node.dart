/// Platform-agnostic RenderNode implementation.
///
/// Provides BrowserRenderNode which wraps a DOM node and exposes an interface
/// compatible with ServerRenderNode for unified rendering logic.
library;

export 'browser_render_node_browser.dart' if (dart.library.io) 'browser_render_node_vm.dart';
