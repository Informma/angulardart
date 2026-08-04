/// SEO and meta tag management for AngularDart applications.
///
/// This library provides services for managing SEO-related elements in the
/// document head, including:
///
/// - Document title management
/// - Meta tags (description, keywords, robots, etc.)
/// - Open Graph tags for social media
/// - Twitter Card tags
/// - Canonical URLs
/// - JSON-LD structured data
///
/// ## Quick Start
///
/// 1. Add the service to your app's injector:
///
/// ```dart
/// import 'package:angulardart/angulardart.dart';
/// import 'package:angulardart_seo/angulardart_seo.dart';
///
/// @GenerateInjector([
///   seoProviders,
///   routerProviders,
/// ])
/// final InjectorFactory appInjector = appInjector$Injector;
/// ```
///
/// 2. Use the service in your components:
///
/// ```dart
/// @Component(
///   selector: 'my-page',
///   template: '...',
/// )
/// class MyPageComponent implements OnInit {
///   final SeoService _seo;
///
///   MyPageComponent(this._seo);
///
///   @override
///   void ngOnInit() {
///     _seo.setPageSeo(
///       title: 'My Page Title',
///       description: 'My page description',
///       image: 'https://example.com/image.jpg',
///     );
///   }
/// }
/// ```
library angulardart_seo;

// Models
export 'src/meta_tag.dart'
    show
        MetaTag,
        OpenGraphTag,
        TwitterCardTag,
        LinkTag,
        JsonLd;

// Services
export 'src/seo_service.dart'
    show
        SeoService,
        SeoChange,
        SeoChangeType;

export 'src/title_service.dart' show TitleService;

// Annotations and interfaces
export 'src/seo_annotations.dart'
    show
        SeoConfig,
        DynamicSeo,
        NoPrerender,
        PrerenderConfig,
        SeoAware,
        PrerenderAware;
