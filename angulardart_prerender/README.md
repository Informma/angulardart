<p align="center">
  <a href="https://angulardartreborn.com">
    <img src="https://img.shields.io/badge/website-angulardartreborn.com-blue" alt="Website" />
  </a>
  <a href="https://pub.dev/packages/angulardart_prerender">
    <img src="https://badgen.net/pub/v/angulardart_prerender?v=1.0.4" alt="pub package" />
  </a>
</p>

# AngularDart Prerender

**Prerendering builder for AngularDart applications to improve SEO.**

Part of the [AngularDart](https://pub.dev/packages/angulardart) ecosystem.

## Features

- **Headless browser rendering** - Uses Puppeteer for accurate HTML generation
- **Automatic route discovery** - Finds routes from your code automatically
- **Dynamic route support** - Prerender routes with parameters (`/blog/:slug`)
- **Sitemap generation** - Automatically generates sitemap.xml with priorities and changefreq
- **Robots.txt generation** - Creates robots.txt with sitemap reference
- **SEO integration** - Works seamlessly with [angulardart_seo](https://pub.dev/packages/angulardart_seo) for dynamic meta tags
- **Canonical URLs** - Adds canonical link tags automatically
- **Prerendered marker** - Adds `data-prerendered="true"` to `<html>` tag
- **Parallel rendering** - Fast prerendering with concurrent processing
- **Caching support** - Cache prerendered pages for faster builds

## Integration with angulardart_seo

`angulardart_prerender` is designed to work together with [angulardart_seo](https://pub.dev/packages/angulardart_seo). The SEO package sets meta tags dynamically at runtime, while the prerender tool captures those rendered pages as static HTML files.

```yaml
dependencies:
  angulardart: ^9.0.0
  angulardart_router: ^5.1.0
  angulardart_seo: ^1.0.4        # Dynamic meta tags at runtime

dev_dependencies:
  angulardart_prerender: ^1.0.4   # Static prerendering for search engines
```

### How it works

1. `angulardart_seo` sets `<title>`, `<meta name="description">`, Open Graph, and Twitter Card tags in your components
2. `build_runner build --release` compiles the app to JavaScript
3. `angulardart_prerender` launches a headless browser, navigates each route, waits for AngularDart to render, then captures the fully rendered HTML
4. The prerendered HTML files include all SEO metadata embedded as static tags — no JavaScript required for search engines

See [SEO Prerender User Guide](https://github.com/flutterdocteur/angulardart/blob/main/docs/SEO_PRERENDER_USER_GUIDE.md) for a complete walkthrough with examples.

## Installation

Add to your `pubspec.yaml`:

```yaml
dev_dependencies:
  angulardart_prerender: ^1.0.0
```

## Quick Start

### 1. Configure the builder

Create or update your `build.yaml`:

```yaml
targets:
  $default:
    builders:
      angulardart_prerender|prerender:
        enabled: true
        options:
          routes:
            - /
            - /about
            - /contact
          output_dir: web
          base_url: 'https://example.com'
```

### 2. Run the build

```bash
dart run build_runner build --release
```

The builder will generate static HTML files for each route in the `build/web` directory.

## Configuration

### Routes

Specify which routes to prerender:

```yaml
options:
  routes:
    # Static routes
    - /
    - /about
    - /contact
    
    # Dynamic routes with providers
    - path: /blog/:slug
      provider: blog_routes.dart#blogRoutes
    
    # Routes with custom timeout
    - path: /product/:id
      provider: product_routes.dart#productRoutes
      timeout: 10000
```

### Excluding Routes

Exclude routes from prerendering:

```yaml
options:
  exclude:
    - /admin/**
    - /dashboard/**
    - /profile/**
```

### Rendering Options

```yaml
options:
  # Timeout in milliseconds
  timeout: 5000
  
  # Wait for this CSS selector before capturing
  wait_for_selector: '[data-prerender-ready]'
  
  # Wait for network requests to complete
  wait_for_network_idle: true
  
  # Viewport size
  viewport_width: 1280
  viewport_height: 720
  
  # Emulate mobile device
  emulate_mobile: false
```

### Output Options

```yaml
options:
  # Output directory
  output_dir: web
  
  # Generate sitemap.xml
  generate_sitemap: true
  
  # Generate robots.txt
  generate_robots: true
  
  # Base URL for canonical URLs
  base_url: 'https://example.com'
```

### Performance Options

```yaml
options:
  # Enable parallel rendering
  parallel: true
  
  # Maximum parallel tasks
  max_parallel_tasks: 4
  
  # Enable caching
  cache_enabled: true
  
  # Cache TTL in seconds
  cache_ttl: 3600
  
  # Cache directory
  cache_dir: .prerender_cache
```

## Dynamic Routes

For routes with parameters (e.g., `/blog/:slug`), you need to provide a list of concrete routes.

### 1. Create a provider function

```dart
// lib/routes/blog_routes.dart
List<String> blogRoutes() => [
  '/blog/getting-started',
  '/blog/advanced-tips',
  '/blog/best-practices',
];
```

### 2. Reference it in configuration

```yaml
routes:
  - path: /blog/:slug
    provider: blog_routes.dart#blogRoutes
```

### 3. Async providers

You can also use async providers:

```dart
Future<List<String>> productRoutes() async {
  final products = await fetchProducts();
  return products.map((p) => '/product/${p.id}').toList();
}
```

## Component-Level Control

### Exclude a Component

```dart
import 'package:angulardart_prerender/angulardart_prerender.dart';

@Component(
  selector: 'admin-dashboard',
  template: '...',
)
@NoPrerender(reason: 'Requires authentication')
class AdminDashboardComponent {}
```

### Configure Prerendering

```dart
@Component(
  selector: 'blog-post',
  template: '...',
)
@PrerenderConfig(
  waitForSelector: '[data-content-loaded]',
  timeout: 10000,
)
class BlogPostComponent {}
```

### Dynamic Control

```dart
@Component(...)
class ProductComponent implements PrerenderAware {
  final AuthService _auth;

  ProductComponent(this._auth);

  @override
  bool shouldPrerender() => !_auth.requiresLogin;

  @override
  PrerenderConfig get prerenderConfig => PrerenderConfig(
    waitForSelector: '[data-product-loaded]',
  );
}
```

## Sitemap and Robots

The builder automatically generates:

### sitemap.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://example.com/</loc>
    <lastmod>2024-01-01T00:00:00Z</lastmod>
    <changefreq>daily</changefreq>
    <priority>1.0</priority>
  </url>
  <url>
    <loc>https://example.com/about</loc>
    <lastmod>2024-01-01T00:00:00Z</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.8</priority>
  </url>
</urlset>
```

### robots.txt

```
User-agent: *
Allow: /
Sitemap: https://example.com/sitemap.xml
```

## Advanced Usage

### Custom Browser Configuration

```yaml
options:
  # Custom browser executable path
  browser_executable_path: '/usr/bin/chromium'
  
  # Additional browser arguments
  browser_args:
    - '--disable-web-security'
    - '--disable-features=IsolateOrigins'
```

### Wait for Specific Content

Add a marker to your component:

```html
<div data-prerender-ready *ngIf="contentLoaded">
  <!-- Your content -->
</div>
```

Then configure the builder:

```yaml
options:
  wait_for_selector: '[data-prerender-ready]'
```

### Multiple Sitemaps

For large sites (>50,000 URLs), the builder can generate multiple sitemaps:

```dart
final routes = [...]; // Your routes
final chunks = routes.chunkForSitemaps(maxUrls: 50000);

for (var i = 0; i < chunks.length; i++) {
  final sitemap = sitemapGenerator.generateSitemap(chunks[i]);
  // Write to sitemap_$i.xml
}

// Generate sitemap index
final sitemapUrls = List.generate(
  chunks.length,
  (i) => 'https://example.com/sitemap_$i.xml',
);
final index = sitemapGenerator.generateSitemapIndex(sitemapUrls);
```

## Best Practices

### 1. Mark Ready State

Always mark when your content is ready:

```html
<div [attr.data-prerender-ready]="isReady ? '' : null">
  <!-- Content -->
</div>
```

### 2. Exclude Protected Routes

Don't prerender routes that require authentication:

```dart
@NoPrerender(reason: 'Requires authentication')
class AdminComponent {}
```

### 3. Optimize Wait Conditions

Use specific selectors instead of network idle:

```yaml
# Good
wait_for_selector: '[data-content-loaded]'

# Avoid (slower)
wait_for_network_idle: true
```

### 4. Use Caching

Enable caching for faster builds:

```yaml
cache_enabled: true
cache_ttl: 3600
```

### 5. Test Locally First

Always test your prerendering locally before deploying:

```bash
dart run build_runner build
# Check build/web/ for prerendered files
```

## Troubleshooting

### Browser not found

Install Chromium:

```bash
# Ubuntu/Debian
sudo apt-get install chromium-browser

# macOS
brew install chromium

# Or specify path
browser_executable_path: '/path/to/chromium'
```

### Timeout errors

Increase timeout:

```yaml
timeout: 10000
```

### Blank pages

Wait for content:

```yaml
wait_for_selector: '[data-content-loaded]'
```

### Dynamic routes not expanding

Check provider function:

```dart
// Correct
List<String> blogRoutes() => ['/blog/post-1'];

// Wrong (not a List<String>)
var blogRoutes = ['/blog/post-1'];
```

### Performance issues

1. Reduce `max_parallel_tasks`
2. Enable caching
3. Exclude unnecessary routes
4. Use specific selectors instead of network idle

## API Reference

See the [API documentation](https://pub.dev/documentation/angulardart_prerender/latest/) for complete API reference.

## Requirements

- Dart SDK >= 3.0.0
- Chromium or Chrome browser installed
- AngularDart application with build_runner

## Related Packages

- [angulardart](https://pub.dev/packages/angulardart) - Core framework
- [angulardart_seo](https://pub.dev/packages/angulardart_seo) - SEO management
- [angulardart_router](https://pub.dev/packages/angulardart_router) - Client-side routing

## License

MIT License

---

## Disclaimer

**AngularDart Reborn** is a community-maintained fork of Google's original [AngularDart](https://pub.dev/packages/angulardart) framework (formerly known as AngularDart by Google). This project is **not affiliated with, endorsed by, or sponsored by Google LLC**.

- **Angular**, **AngularDart**, and all associated packages (`angulardart`, `angulardart_router`, `angulardart_compiler`, `angulardart_forms`, `angulardart_meta`, `angulardart_ast`, `angulardart_cli`, `angulardart_seo`, `angulardart_prerender`, `angulardart_test`, `angulardart_components`) are trademarks and projects of the AngularDart Reborn community.
- The original AngularDart framework was developed by Google LLC and hosted at [github.com/angulardart](https://github.com/angulardart).
- This is an independent, 100% community-driven project that continues the work started by Google's AngularDart team after Google ceased active maintenance.

For the official Angular Framework (TypeScript/JavaScript), visit [angular.io](https://angular.io). For the original Google-maintained AngularDart repository, see [github.com/angulardart](https://github.com/angulardart).
