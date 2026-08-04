# AngularDart Prerender Example

Example demonstrating how to use the `angulardart_prerender` package.

## Running the example

```bash
# Install dependencies
dart pub get

# Run the example
dart run bin/example.dart
```

## What this example demonstrates

This example shows how to:

1. **Load configuration from YAML** - Parse prerender.yaml files
2. **Configure routes** - Static and dynamic routes with providers
3. **Exclude routes** - Pattern matching for route exclusion
4. **Generate sitemap.xml** - Create sitemap from routes
5. **Generate robots.txt** - Create robots.txt with sitemap reference
6. **Use annotations** - @NoPrerender and @PrerenderOptions

## Expected output

```
Configuration loaded from YAML
  Routes: 4
  Timeout: 5000ms
  Base URL: https://example.com
  Generate sitemap: true
  Generate robots: true

Routes:
  - /
  - /about
  - /contact
  - /blog/:slug (dynamic, provider: routes/blog_routes.dart#blogRoutes)

Route exclusion tests:
  /admin/users excluded: true
  /admin/settings/profile excluded: true
  /blog/post-1 excluded: false
  /about excluded: false

Generating sitemap...
Sitemap generated (XXX bytes)
First 200 chars:
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://example.com/</loc>
    ...

Generating robots.txt...
Robots.txt generated:
User-agent: *
Allow: /
Sitemap: https://example.com/sitemap.xml

Programmatic configuration:
  Routes: 4
  Excluded: [/admin/**]

Annotations:
  @NoPrerender: reason=Requires authentication
  @PrerenderOptions: selector=[data-content-loaded], timeout=10000ms

✅ Example completed successfully!
```

## Using the prerender script

In a real project, after building your AngularDart app:

```bash
# Build your app
dart run build_runner build --release

# Run the prerender script
dart run angulardart_prerender --config prerender.yaml
```

## Configuration file (prerender.yaml)

```yaml
routes:
  - /
  - /about
  - /contact
  - path: /blog/:slug
    provider: routes/blog_routes.dart#blogRoutes

exclude:
  - /admin/**
  - /dashboard/**

timeout: 5000
wait_for_selector: '[data-prerender-ready]'
wait_for_network_idle: true
generate_sitemap: true
generate_robots: true
base_url: https://example.com
```

See the [main README](../README.md) for full documentation.
