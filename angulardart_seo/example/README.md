# AngularDart SEO Example

Example demonstrating how to use the `angulardart_seo` package.

## Running the example

```bash
# Install dependencies
dart pub get

# Run the example
dart run bin/example.dart
```

## What this example demonstrates

This example shows how to:

1. **Create meta tags** - Standard HTML meta tags for SEO
2. **Create Open Graph tags** - For social media sharing (Facebook, LinkedIn)
3. **Create Twitter Card tags** - For Twitter sharing
4. **Create canonical links** - To prevent duplicate content
5. **Create JSON-LD structured data** - For rich search results
6. **Use SeoConfig** - Declarative SEO configuration

## Expected output

```
Meta tag: <meta name="description" content="AngularDart SEO - Complete SEO management for AngularDart applications">
OG Title: <meta property="og:title" content="AngularDart SEO">
OG Description: <meta property="og:description" content="Complete SEO management for AngularDart applications">
OG Image: <meta property="og:image" content="https://example.com/image.jpg">
Twitter Card: <meta name="twitter:card" content="summary_large_image">
Twitter Title: <meta name="twitter:title" content="AngularDart SEO">
Canonical: <link rel="canonical" href="https://example.com/page">
JSON-LD Website: <script type="application/ld+json" id="jsonld-website">{"@context":"https://schema.org","@type":"WebSite","name":"AngularDart SEO","url":"https://example.com","description":"Complete SEO management"}</script>
JSON-LD Article: <script type="application/ld+json" id="jsonld-article">{"@context":"https://schema.org","@type":"Article","headline":"Getting Started with AngularDart SEO","url":"https://example.com/blog/getting-started","description":"Learn how to use AngularDart SEO","datePublished":"2024-01-01","author":{"@type":"Person","name":"John Doe"}}</script>
SEO Config title: My Page
SEO Config robots: index, follow

✅ Example completed successfully!
```

## Integration with AngularDart

In a real AngularDart application, you would:

1. Add `SeoService` and `TitleService` to your injector
2. Inject them into your components
3. Call methods like `seoService.setPageSeo()` in `ngOnInit()`

See the [main README](../README.md) for full integration examples.
