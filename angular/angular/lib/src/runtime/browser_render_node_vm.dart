/// Stub BrowserRenderNode for native/AOT builds.
///
/// On server-side rendering, this class is never instantiated because
/// [RenderFactory.useServerMode()] is always called before any node creation.
/// This stub exists only to satisfy the compiler on VM where `package:web`
/// is not available.
library;

import 'render_node.dart';

class BrowserRenderNode implements RenderNode {
  /// Throws [UnsupportedError] if called - this should never happen on VM
  /// because SSR always uses server mode.
  factory BrowserRenderNode(dynamic node) {
    throw UnsupportedError(
      'BrowserRenderNode cannot be used on native/AOT builds. '
      'SSR must use ServerRenderNode via renderFactory.useServerMode().',
    );
  }

  /// Throws [UnsupportedError] if called - this should never happen on VM.
  factory BrowserRenderNode.text(String content) {
    throw UnsupportedError(
      'BrowserRenderNode cannot be used on native/AOT builds.',
    );
  }

  /// Throws [UnsupportedError] if called - this should never happen on VM.
  factory BrowserRenderNode.comment() {
    throw UnsupportedError(
      'BrowserRenderNode cannot be used on native/AOT builds.',
    );
  }

  @override
  String get tagName => throw UnsupportedError('Not available on VM');

  @override
  void appendChild(RenderNode child) {}

  @override
  void setProperty(String name, Object? value) {}

  @override
  void setAttribute(String name, String value) {}

  @override
  void setClass(String className, bool enabled) {}

  @override
  void setText(String text) {}

  @override
  String get innerHtml => '';

  @override
  set innerHtml(String value) {}

  @override
  void markAsServerRendered({String? contentId}) {}

  @override
  bool get isServerRendered => false;

  @override
  void applyShimClass(String className) {}

  @override
  void toggleClass(String className, bool enabled) {}

  @override
  Object get nativeNode => throw UnsupportedError('Not available on VM');
}
