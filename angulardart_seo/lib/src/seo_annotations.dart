/// Annotations for SEO configuration on components.
library;

/// Annotation to configure SEO for a component.
///
/// Use this annotation to define default SEO values for a component.
/// These values will be automatically applied when the component is activated.
///
/// Example:
/// ```dart
/// @Component(
///   selector: 'about-page',
///   template: '...',
/// )
/// @SeoConfig(
///   title: 'About Us',
///   description: 'Learn more about our company',
///   ogImage: 'https://example.com/about.jpg',
/// )
/// class AboutPageComponent {}
/// ```
class SeoConfig {
  /// The page title.
  final String? title;

  /// The meta description.
  final String? description;

  /// The meta keywords (comma-separated).
  final String? keywords;

  /// The canonical URL.
  final String? canonical;

  /// The robots directive (e.g., 'index, follow').
  final String? robots;

  /// The Open Graph title.
  final String? ogTitle;

  /// The Open Graph description.
  final String? ogDescription;

  /// The Open Graph image URL.
  final String? ogImage;

  /// The Open Graph type (e.g., 'website', 'article').
  final String? ogType;

  /// The Twitter Card type (e.g., 'summary_large_image').
  final String? twitterCard;

  /// The Twitter Card title.
  final String? twitterTitle;

  /// The Twitter Card description.
  final String? twitterDescription;

  /// The Twitter Card image URL.
  final String? twitterImage;

  /// Whether this page should be indexed.
  final bool index;

  /// Whether links on this page should be followed.
  final bool follow;

  const SeoConfig({
    this.title,
    this.description,
    this.keywords,
    this.canonical,
    this.robots,
    this.ogTitle,
    this.ogDescription,
    this.ogImage,
    this.ogType,
    this.twitterCard,
    this.twitterTitle,
    this.twitterDescription,
    this.twitterImage,
    this.index = true,
    this.follow = true,
  });

  /// Creates a robots value from index and follow.
  String get robotsValue {
    if (robots != null) return robots!;
    final indexStr = index ? 'index' : 'noindex';
    final followStr = follow ? 'follow' : 'nofollow';
    return '$indexStr, $followStr';
  }
}

/// Annotation to mark a component as requiring dynamic SEO.
///
/// Use this when SEO values need to be set dynamically based on
/// component data (e.g., from an API call).
///
/// The component should implement [SeoAware] to provide the SEO values.
///
/// Example:
/// ```dart
/// @Component(
///   selector: 'product-page',
///   template: '...',
/// )
/// @DynamicSeo()
/// class ProductPageComponent implements OnInit, SeoAware {
///   final SeoService _seo;
///   Product? _product;
///
///   ProductPageComponent(this._seo);
///
///   @override
///   void ngOnInit() async {
///     _product = await loadProduct();
///     _seo.setPageSeo(
///       title: _product!.name,
///       description: _product!.description,
///       image: _product!.imageUrl,
///     );
///   }
///
///   @override
///   SeoConfig get seoConfig => SeoConfig(
///     title: _product?.name ?? 'Product',
///     description: _product?.description,
///     ogImage: _product?.imageUrl,
///   );
/// }
/// ```
class DynamicSeo {
  const DynamicSeo();
}

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
/// @NoPrerender()
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
/// @PrerenderConfig(
///   waitForSelector: '[data-content-loaded]',
///   timeout: 10000,
/// )
/// class BlogPostComponent {}
/// ```
class PrerenderConfig {
  /// CSS selector to wait for before capturing the page.
  final String? waitForSelector;

  /// Timeout in milliseconds for rendering.
  final int timeout;

  /// Whether to wait for network idle before capturing.
  final bool waitForNetworkIdle;

  /// Custom data to pass to the prerenderer.
  final Map<String, dynamic>? data;

  const PrerenderConfig({
    this.waitForSelector,
    this.timeout = 5000,
    this.waitForNetworkIdle = true,
    this.data,
  });
}

/// Interface for components that provide dynamic SEO configuration.
///
/// Implement this interface when your component needs to set SEO values
/// dynamically based on runtime data.
///
/// Example:
/// ```dart
/// @Component(...)
/// @DynamicSeo()
/// class ProductPageComponent implements OnInit, SeoAware {
///   Product? _product;
///
///   @override
///   void ngOnInit() async {
///     _product = await loadProduct();
///   }
///
///   @override
///   SeoConfig get seoConfig => SeoConfig(
///     title: _product?.name ?? 'Product',
///     description: _product?.description,
///     ogImage: _product?.imageUrl,
///   );
/// }
/// ```
abstract class SeoAware {
  /// Returns the SEO configuration for this component.
  SeoConfig get seoConfig;
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
///   PrerenderConfig get prerenderConfig => PrerenderConfig(
///     waitForSelector: '[data-post-loaded]',
///   );
/// }
/// ```
abstract class PrerenderAware {
  /// Returns whether this component should be prerendered.
  bool shouldPrerender() => true;

  /// Returns the prerendering configuration for this component.
  PrerenderConfig get prerenderConfig => const PrerenderConfig();
}
