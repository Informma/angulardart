/// Annotations for controlling prerendering behavior.
library;

/// Annotation to exclude a component from prerendering.
///
/// Use this for pages that require authentication or have
/// dynamic content that shouldn't be prerendered.
///
/// Example:
/// ```dart
/// @Component(
///   selector: 'admin-dashboard',
///   template: '...',
/// )
/// @NoPrerender(reason: 'Requires authentication')
/// class AdminDashboardComponent {}
/// ```
class NoPrerender {
  /// Optional reason for excluding from prerendering.
  final String? reason;

  const NoPrerender({this.reason});
}

/// Annotation to configure prerendering for a component.
///
/// Use this to customize how a component is prerendered.
///
/// Example:
/// ```dart
/// @Component(
///   selector: 'blog-post',
///   template: '...',
/// )
/// @PrerenderOptions(
///   waitForSelector: '[data-content-loaded]',
///   timeout: 10000,
/// )
/// class BlogPostComponent {}
/// ```
class PrerenderOptions {
  /// CSS selector to wait for before capturing the page.
  final String? waitForSelector;

  /// Timeout in milliseconds for rendering.
  final int timeout;

  /// Whether to wait for network idle before capturing.
  final bool waitForNetworkIdle;

  /// Custom data to pass to the prerenderer.
  final Map<String, dynamic>? data;

  const PrerenderOptions({
    this.waitForSelector,
    this.timeout = 5000,
    this.waitForNetworkIdle = true,
    this.data,
  });
}

/// Interface for components that are aware of prerendering.
///
/// Implement this interface to control whether the component
/// should be prerendered and to provide prerendering configuration.
///
/// Example:
/// ```dart
/// @Component(...)
/// class BlogPostComponent implements PrerenderAware {
///   final AuthService _auth;
///
///   BlogPostComponent(this._auth);
///
///   @override
///   bool shouldPrerender() => !_auth.requiresLogin;
///
///   @override
///   PrerenderOptions get prerenderConfig => PrerenderOptions(
///     waitForSelector: '[data-post-loaded]',
///   );
/// }
/// ```
abstract class PrerenderAware {
  /// Returns whether this component should be prerendered.
  bool shouldPrerender() => true;

  /// Returns the prerendering configuration for this component.
  PrerenderOptions get prerenderConfig => const PrerenderOptions();
}

/// Annotation to mark a route as requiring dynamic data for prerendering.
///
/// Use this when a route needs specific data to be prerendered correctly.
///
/// Example:
/// ```dart
/// @Component(...)
/// @PrerenderData({
///   'productId': 'widget-pro',
/// })
/// class ProductComponent {}
/// ```
class PrerenderData {
  /// The data to use during prerendering.
  final Map<String, dynamic> data;

  const PrerenderData(this.data);
}

/// Annotation to specify a route provider for dynamic routes.
///
/// Use this to provide a list of concrete routes for a dynamic route pattern.
///
/// Example:
/// ```dart
/// // In routes.dart
/// List<String> blogRoutes() => [
///   '/blog/post-1',
///   '/blog/post-2',
///   '/blog/post-3',
/// ];
///
/// // In prerender.yaml
/// routes:
///   - path: /blog/:slug
///     provider: routes.dart#blogRoutes
/// ```
class RouteProvider {
  /// Path to the provider function.
  ///
  /// Format: `file_path.dart#function_name`
  final String provider;

  const RouteProvider(this.provider);
}
