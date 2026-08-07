<p align="center">
  <a href="https://angulardartreborn.com">
    <img src="https://img.shields.io/badge/website-angulardartreborn.com-blue" alt="Website" />
  </a>
  <a href="https://pub.dev/packages/angulardart_seo">
    <img src="https://badgen.net/pub/v/angulardart_seo?v=1.0.4" alt="pub package" />
  </a>
</p>

# AngularDart SEO

**Complete SEO and meta tag management for AngularDart applications.**

Part of the [AngularDart](https://pub.dev/packages/angulardart) ecosystem.

## Features

- **Dynamic meta tags** - Update title, description, keywords, and more at runtime
- **Open Graph support** - Rich social media previews for Facebook, LinkedIn, etc.
- **Twitter Cards** - Beautiful Twitter previews with images and descriptions
- **JSON-LD** - Structured data for rich search results
- **Canonical URLs** - Prevent duplicate content issues
- **Annotations** - Declarative SEO configuration with `@SeoConfig`
- **Title service** - Advanced title management with templates and history

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  angulardart: '>=9.0.0 <10.0.0'
  angulardart_seo: '>=1.0.4 <2.0.0'
```

## Quick Start

### 1. Add providers to your app

```dart
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_seo/angulardart_seo.dart';

@GenerateInjector([
  ClassProvider(SeoService),
  ClassProvider(TitleService),
])
final InjectorFactory appInjector = appInjector$Injector;

void main() {
  runApp(appInjector);
}
```

### 2. Use in your components

```dart
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_seo/angulardart_seo.dart';

@Component(
  selector: 'about-page',
  template: '<h1>About Us</h1>',
)
class AboutPageComponent implements OnInit {
  final SeoService _seo;

  AboutPageComponent(this._seo);

  @override
  void ngOnInit() {
    _seo.setPageSeo(
      title: 'About Us',
      description: 'Learn more about our company and mission',
    );
  }
}
```

## Usage Guide

### Setting the Title

```dart
// Simple title
_seo.setTitle('My Page Title');

// With TitleService (advanced)
_titleService
  ..setTemplate('{{page}} | {{site}}')
  ..setSiteName('My Website')
  ..setTitle('About Us');
// Result: "About Us | My Website"
```

### Meta Tags

```dart
// Standard meta tags
_seo.setMeta('description', 'Page description');
_seo.setMeta('keywords', 'angular, dart, seo');
_seo.setMeta('author', 'John Doe');

// Multiple at once
_seo.setMetas({
  'description': 'Page description',
  'keywords': 'angular, dart, seo',
  'author': 'John Doe',
});

// Remove a meta tag
_seo.removeMeta('keywords');

// Robots
_seo.setRobots('index, follow');
```

### Open Graph Tags

```dart
// Individual tags
_seo.setOgTitle('My Page Title');
_seo.setOgDescription('Page description');
_seo.setOgImage('https://example.com/image.jpg');
_seo.setOgUrl('https://example.com/page');
_seo.setOgType('article');
_seo.setOgSiteName('My Website');
_seo.setOgLocale('en_US');

// Generic method
_seo.setOgTag('custom_property', 'value');

// Multiple at once
_seo.setOgTags({
  'title': 'My Page Title',
  'description': 'Page description',
  'image': 'https://example.com/image.jpg',
});

// Remove an OG tag
_seo.removeOgTag('title');
```

### Twitter Cards

```dart
// Card type
_seo.setTwitterCard('summary_large_image');

// Card content
_seo.setTwitterTitle('My Page Title');
_seo.setTwitterDescription('Page description');
_seo.setTwitterImage('https://example.com/image.jpg');
_seo.setTwitterSite('@mysite');
_seo.setTwitterCreator('@johndoe');

// Generic method
_seo.setTwitterTag('custom_name', 'value');

// Multiple at once
_seo.setTwitterTags({
  'title': 'My Page Title',
  'description': 'Page description',
});

// Remove a Twitter tag
_seo.removeTwitterTag('card');
```

### Canonical URLs

```dart
// Set canonical URL
_seo.setCanonical('https://example.com/preferred-url');

// Remove canonical
_seo.removeCanonical();
```

### Alternate Languages

```dart
// Add alternate language
_seo.addAlternateLanguage(
  href: 'https://example.com/fr/page',
  hreflang: 'fr',
);

// Remove alternate
_seo.removeAlternateLanguage('fr');
```

### JSON-LD Structured Data

```dart
// Custom JSON-LD
_seo.setJsonLd(JsonLd(
  data: {
    '@context': 'https://schema.org',
    '@type': 'Product',
    'name': 'My Product',
    'description': 'Product description',
    'offers': {
      '@type': 'Offer',
      'price': '29.99',
      'priceCurrency': 'USD',
    },
  },
  id: 'product',
));

// Remove JSON-LD
_seo.removeJsonLd('product');
_seo.removeAllJsonLd();
```

### Complete Page SEO

```dart
// Set all SEO at once
_seo.setPageSeo(
  title: 'Page Title',
  description: 'Page description',
  type: 'article',
  siteName: 'My Website',
  locale: 'en_US',
  twitterCard: 'summary_large_image',
  canonical: 'https://example.com/preferred-url',
  robots: 'index, follow',
);
```

### Favicon and Links

```dart
// Set favicon
_seo.setFavicon('/favicon.ico');
_seo.setFavicon('/favicon-32x32.png', sizes: '32x32');

// Add custom link tag
_seo.addLink(LinkTag(
  rel: 'preload',
  href: '/fonts/main.woff2',
));

// Remove a link tag
_seo.removeLink('preload');
```

## Using Annotations

### Static SEO with @SeoConfig

The `@SeoConfig` annotation allows you to declare static SEO metadata directly on your component. This is useful for pages whose SEO values don't change at runtime.

```dart
@Component(
  selector: 'about-page',
  template: '<h1>About Us</h1>',
)
@SeoConfig(
  title: 'About Us',
  description: 'Learn more about our company',
  keywords: 'about, company, team',
  ogImage: 'https://example.com/about.jpg',
  twitterCard: 'summary_large_image',
)
class AboutPageComponent {}
```

### Dynamic SEO with SeoAware

The `SeoAware` interface allows components to provide dynamic SEO values at runtime. Combine it with the `@DynamicSeo()` annotation for components that need this capability.

```dart
@Component(
  selector: 'product-page',
  template: '<h1>{{product.name}}</h1>',
)
@DynamicSeo()
class ProductPageComponent implements OnInit, SeoAware {
  final SeoService _seo;
  Product? _product;

  ProductPageComponent(this._seo);

  @override
  void ngOnInit() async {
    _product = await loadProduct();
  }

  @override
  SeoConfig get seoConfig => SeoConfig(
    title: _product?.name ?? 'Product',
    description: _product?.description,
    ogImage: _product?.imageUrl,
  );
}
```

## TitleService

Advanced title management with templates and history.

```dart
// Configure template
_titleService
  ..setTemplate('{{page}} | {{site}}')
  ..setSiteName('My Website')
  ..setSeparator(' - ')
  ..setMaxLength(60);

// Set titles
_titleService.setTitle('About Us');
// Result: "About Us | My Website"

_titleService.setTitleWithCategory('Widget Pro', 'Products');
// Result: "Widget Pro - Products | My Website"

_titleService.setArticleTitle('How to Use AngularDart', 'Blog');
// Result: "How to Use AngularDart - Blog | My Website"

_titleService.setSearchTitle('angular dart');
// Result: "Search results for: angular dart | My Website"

_titleService.setErrorTitle(404, 'Page Not Found');
// Result: "404 - Page Not Found | My Website"

// Title history
_titleService.goBack(); // Go to previous title
_titleService.clearHistory();
```

## SEO Change Stream

The `SeoService` exposes a stream of SEO changes that you can listen to for analytics or debugging.

```dart
_seo.changes.listen((change) {
  print('SEO changed: ${change.type} - key: ${change.key}, value: ${change.value}');
});
```

## Best Practices

### 1. Set SEO Early

Set SEO values in `ngOnInit` to ensure they're applied before the page is rendered:

```dart
@override
void ngOnInit() {
  _seo.setPageSeo(...);
}
```

### 2. Use Canonical URLs

Always set canonical URLs to prevent duplicate content issues:

```dart
_seo.setCanonical('https://example.com/preferred-url');
```

### 3. Optimize Title Length

Keep titles under 60 characters for optimal display in search results:

```dart
_titleService.setMaxLength(60);
```

### 4. Use Structured Data

Add JSON-LD for rich search results:

```dart
_seo.setJsonLd(JsonLd(...));
```

### 5. Test Your SEO

Use tools like:
- [Google Rich Results Test](https://search.google.com/test/rich-results)
- [Facebook Sharing Debugger](https://developers.facebook.com/tools/debug/)
- [Twitter Card Validator](https://cards-dev.twitter.com/validator)

## API Reference

See the [API documentation](https://pub.dev/documentation/angulardart_seo/latest/) for complete API reference.

## Requirements

- Dart SDK >= 3.0.0
- AngularDart >= 9.0.0

## Related Packages

- [angulardart](https://pub.dev/packages/angulardart) - Core framework
- [angulardart_router](https://pub.dev/packages/angulardart_router) - Client-side routing
- [angulardart_prerender](https://pub.dev/packages/angulardart_prerender) - Prerendering for SEO

## License

MIT License

---

## Disclaimer

**AngularDart Reborn** is a community-maintained fork of Google's original [AngularDart](https://pub.dev/packages/angulardart) framework (formerly known as AngularDart by Google). This project is **not affiliated with, endorsed by, or sponsored by Google LLC**.

- **Angular**, **AngularDart**, and all associated packages (`angulardart`, `angulardart_router`, `angulardart_compiler`, `angulardart_forms`, `angulardart_meta`, `angulardart_ast`, `angulardart_cli`, `angulardart_seo`, `angulardart_prerender`, `angulardart_test`, `angulardart_components`) are trademarks and projects of the AngularDart Reborn community.
- The original AngularDart framework was developed by Google LLC and hosted at [github.com/angulardart](https://github.com/angulardart).
- This is an independent, 100% community-driven project that continues the work started by Google's AngularDart team after Google ceased active maintenance.

For the official Angular Framework (TypeScript/JavaScript), visit [angular.io](https://angular.io). For the original Google-maintained AngularDart repository, see [github.com/angulardart](https://github.com/angulardart).
