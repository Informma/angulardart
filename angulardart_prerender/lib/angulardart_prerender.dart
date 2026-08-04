/// Prerendering tool for AngularDart applications.
///
/// This library provides a standalone script that generates static HTML
/// files for each configured route using a headless browser (Puppeteer).
///
/// ## Quick Start
///
/// 1. Add the dependency to your `pubspec.yaml`:
///
/// ```yaml
/// dev_dependencies:
///   angulardart_prerender: ^1.0.0
/// ```
///
/// 2. Create a `prerender.yaml` configuration file:
///
/// ```yaml
/// routes:
///   - /
///   - /about
///   - /contact
///
/// exclude:
///   - /admin/**
///   - /dashboard/**
///
/// timeout: 5000
/// wait_for_selector: '[data-prerender-ready]'
/// wait_for_network_idle: true
/// generate_sitemap: true
/// generate_robots: true
/// base_url: 'https://example.com'
/// ```
///
/// 3. Build your app:
///
/// ```bash
/// dart run build_runner build --release
/// ```
///
/// 4. Run the prerenderer:
///
/// ```bash
/// dart run angulardart_prerender
/// ```
///
/// ## Configuration
///
/// ### Routes
///
/// You can specify routes in two ways:
///
/// 1. **Static routes**: Simple path strings
///    ```yaml
///    routes:
///      - /
///      - /about
///      - /contact
///    ```
///
/// 2. **Dynamic routes with providers**: For routes with parameters
///    ```yaml
///    routes:
///      - path: /blog/:slug
///        provider: routes/blog_routes.dart#blogRoutes
///    ```
///
/// 3. **Excluded routes**: Routes to skip
///    ```yaml
///    exclude:
///      - /admin/**
///      - /dashboard/**
///    ```
///
/// ### Rendering Options
///
/// - `timeout`: Maximum time to wait for a page to render (ms)
/// - `wait_for_selector`: CSS selector to wait for before capturing
/// - `wait_for_network_idle`: Wait for network requests to complete
/// - `viewport_width`: Browser viewport width
/// - `viewport_height`: Browser viewport height
///
/// ### Output Options
///
/// - `generate_sitemap`: Generate sitemap.xml (default: true)
/// - `generate_robots`: Generate robots.txt (default: true)
/// - `base_url`: Base URL for canonical URLs and sitemap
///
/// ## Dynamic Routes
///
/// For routes with parameters (e.g., `/blog/:slug`), you need to provide
/// a list of concrete routes. Create a provider function:
///
/// ```dart
/// // routes/blog_routes.dart
/// List<String> blogRoutes() => [
///   '/blog/getting-started',
///   '/blog/advanced-tips',
///   '/blog/best-practices',
/// ];
/// ```
///
/// Then reference it in your configuration:
///
/// ```yaml
/// routes:
///   - path: /blog/:slug
///     provider: routes/blog_routes.dart#blogRoutes
/// ```
///
/// ## Component-Level Control
///
/// You can control prerendering at the component level:
///
/// ### Exclude a Component
///
/// ```dart
/// @Component(...)
/// @NoPrerender(reason: 'Requires authentication')
/// class AdminDashboardComponent {}
/// ```
///
/// ### Configure Prerendering
///
/// ```dart
/// @Component(...)
/// @PrerenderConfig(
///   waitForSelector: '[data-content-loaded]',
///   timeout: 10000,
/// )
/// class BlogPostComponent {}
/// ```
///
/// ### Dynamic Control
///
/// ```dart
/// @Component(...)
/// class ProductComponent implements PrerenderAware {
///   @override
///   bool shouldPrerender() => /* your logic */;
///
///   @override
///   PrerenderConfig get prerenderConfig => PrerenderConfig(
///     waitForSelector: '[data-product-loaded]',
///   );
/// }
/// ```
///
/// ## Sitemap and Robots
///
/// The prerenderer automatically generates:
///
/// - `sitemap.xml`: List of all prerendered URLs
/// - `robots.txt`: Points to the sitemap
///
/// You can customize these in the configuration:
///
/// ```yaml
/// generate_sitemap: true
/// generate_robots: true
/// base_url: 'https://example.com'
/// ```
///
/// ## Troubleshooting
///
/// ### Browser not found
///
/// If Puppeteer can't find a browser, install Chromium:
///
/// ```bash
/// # On Ubuntu/Debian
/// sudo apt-get install chromium-browser
///
/// # On macOS
/// brew install chromium
/// ```
///
/// Or specify the browser path:
///
/// ```yaml
/// browser_executable_path: '/usr/bin/chromium'
/// ```
///
/// ### Timeout errors
///
/// Increase the timeout:
///
/// ```yaml
/// timeout: 10000
/// ```
///
/// ### Blank pages
///
/// Make sure to wait for your content:
///
/// ```yaml
/// wait_for_selector: '[data-content-loaded]'
/// ```
///
/// Or add the attribute to your component:
///
/// ```html
/// <div data-content-loaded *ngIf="dataLoaded">
///   <!-- content -->
/// </div>
/// ```
library angulardart_prerender;

// Annotations
export 'src/prerender_annotations.dart'
    show
        NoPrerender,
        PrerenderOptions,
        PrerenderAware,
        PrerenderData,
        RouteProvider;

// Configuration
export 'src/prerender_config.dart'
    show
        PrerenderConfig,
        RouteConfig;

// Utilities
export 'src/route_collector.dart' show RouteCollector;
export 'src/html_renderer.dart' show HtmlRenderer;
export 'src/sitemap_generator.dart' show SitemapGenerator, SitemapRoutes;
