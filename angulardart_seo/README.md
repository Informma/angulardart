<p align="center">
  <a href="https://angulardartreborn.com">
    <img src="https://img.shields.io/badge/website-angulardartreborn.com-blue" alt="Website" />
  </a>
  <a href="https://pub.dev/packages/angulardart_seo">
    <img src="https://badgen.net/pub/v/angulardart_seo?v=1.0.0" alt="pub package" />
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
- **Directives** - Template-based SEO with `seoTitle`, `seoMeta`, etc.
- **Title service** - Advanced title management with templates and history

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  angulardart: ^8.0.0
  angulardart_seo: ^1.0.0
```

## Quick Start

### 1. Add providers to your app

```dart
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_seo/angulardart_seo.dart';

@GenerateInjector([
  seoProviders,
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
      url: 'https://example.com/about',
      image: 'https://example.com/about-image.jpg',
    );
  }
}
```

## Usage Guide

### Setting the Title

```dart
// Simple title
seoService.setTitle('My Page Title');

// With TitleService (advanced)
titleService
  ..setTemplate('{{page}} | {{site}}')
  ..setSiteName('My Website')
  ..setTitle('About Us');
// Result: "About Us | My Website"
```

### Meta Tags

```dart
// Standard meta tags
seoService.setMeta('description', 'Page description');
seoService.setMeta('keywords', 'angular, dart, seo');
seoService.setMeta('author', 'John Doe');

// Multiple at once
seoService.setMetas({
  'description': 'Page description',
  'keywords': 'angular, dart, seo',
  'author': 'John Doe',
});

// Robots
seoService.setRobots('index, follow');
seoService.setRobots('noindex, nofollow');
```

### Open Graph Tags

```dart
// Individual tags
seoService.setOgTitle('My Page Title');
seoService.setOgDescription('Page description');
seoService.setOgImage('https://example.com/image.jpg');
seoService.setOgUrl('https://example.com/page');
seoService.setOgType('article');
seoService.setOgSiteName('My Website');
seoService.setOgLocale('en_US');

// Generic method
seoService.setOgTag('custom_property', 'value');

// Multiple at once
seoService.setOgTags({
  'title': 'My Page Title',
  'description': 'Page description',
  'image': 'https://example.com/image.jpg',
});
```

### Twitter Cards

```dart
// Card type
seoService.setTwitterCard('summary_large_image');

// Card content
seoService.setTwitterTitle('My Page Title');
seoService.setTwitterDescription('Page description');
seoService.setTwitterImage('https://example.com/image.jpg');
seoService.setTwitterSite('@mysite');
seoService.setTwitterCreator('@johndoe');

// Generic method
seoService.setTwitterTag('custom_name', 'value');
```

### Canonical URLs

```dart
// Set canonical URL
seoService.setCanonical('https://example.com/preferred-url');

// Remove canonical
seoService.removeCanonical();
```

### Alternate Languages

```dart
// Add alternate language
seoService.addAlternateLanguage(
  href: 'https://example.com/fr/page',
  hreflang: 'fr',
);

// Remove alternate
seoService.removeAlternateLanguage('fr');
```

### JSON-LD Structured Data

```dart
// WebSite
seoService.setJsonLd(JsonLd.webSite(
  name: 'My Website',
  url: 'https://example.com',
  description: 'Website description',
  logo: 'https://example.com/logo.png',
));

// Organization
seoService.setJsonLd(JsonLd.organization(
  name: 'My Company',
  url: 'https://example.com',
  logo: 'https://example.com/logo.png',
  email: 'contact@example.com',
  telephone: '+1234567890',
  sameAs: [
    'https://facebook.com/mycompany',
    'https://twitter.com/mycompany',
  ],
));

// Article
seoService.setJsonLd(JsonLd.article(
  headline: 'Article Title',
  url: 'https://example.com/article',
  description: 'Article description',
  image: 'https://example.com/article-image.jpg',
  datePublished: '2024-01-01',
  dateModified: '2024-01-02',
  authorName: 'John Doe',
  authorUrl: 'https://example.com/author/john',
  publisherName: 'My Website',
  publisherLogo: 'https://example.com/logo.png',
));

// Breadcrumbs
seoService.setJsonLd(JsonLd.breadcrumbList([
  {'name': 'Home', 'url': 'https://example.com'},
  {'name': 'Products', 'url': 'https://example.com/products'},
  {'name': 'Widget', 'url': 'https://example.com/products/widget'},
]));

// Custom JSON-LD
seoService.setJsonLd(JsonLd(
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
seoService.removeJsonLd('product');
seoService.removeAllJsonLd();
```

### Complete Page SEO

```dart
// Set all SEO at once
seoService.setPageSeo(
  title: 'Page Title',
  description: 'Page description',
  url: 'https://example.com/page',
  image: 'https://example.com/image.jpg',
  type: 'article',
  siteName: 'My Website',
  locale: 'en_US',
  twitterCard: 'summary_large_image',
  twitterSite: '@mysite',
  twitterCreator: '@johndoe',
  canonical: 'https://example.com/preferred-url',
  robots: 'index, follow',
);
```

## Using Annotations

### Static SEO with @SeoConfig

```dart
@Component(
  selector: 'about-page',
  template: '<h1>About Us</h1>',
  directives: [seoDirectives],
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

```dart
@Component(
  selector: 'product-page',
  template: '<h1>{{product.name}}</h1>',
  directives: [seoDirectives],
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

## Using Directives

### Title Directive

```html
<h1 [seoTitle]="pageTitle">{{pageTitle}}</h1>
```

### Meta Directive

```html
<div seoMeta="description" [seoContent]="pageDescription"></div>
```

### Open Graph Directive

```html
<div seoOg="title" [seoOgContent]="pageTitle"></div>
<div seoOg="image" [seoOgContent]="pageImage"></div>
```

### Twitter Directive

```html
<div seoTwitter="title" [seoTwitterContent]="pageTitle"></div>
```

### Canonical Directive

```html
<link seoCanonical="https://example.com/page">
```

## TitleService

Advanced title management with templates and history.

```dart
// Configure template
titleService
  ..setTemplate('{{page}} | {{site}}')
  ..setSiteName('My Website')
  ..setSeparator(' - ')
  ..setMaxLength(60);

// Set titles
titleService.setTitle('About Us');
// Result: "About Us | My Website"

titleService.setTitleWithCategory('Widget Pro', 'Products');
// Result: "Widget Pro - Products | My Website"

titleService.setArticleTitle('How to Use AngularDart', 'Blog');
// Result: "How to Use AngularDart - Blog | My Website"

titleService.setSearchTitle('angular dart');
// Result: "Search results for: angular dart | My Website"

titleService.setErrorTitle(404, 'Page Not Found');
// Result: "404 - Page Not Found | My Website"

// Title history
titleService.goBack(); // Go to previous title
titleService.clearHistory();
```

## Best Practices

### 1. Set SEO Early

Set SEO values in `ngOnInit` to ensure they're applied before the page is rendered:

```dart
@override
void ngOnInit() {
  seoService.setPageSeo(...);
}
```

### 2. Use Canonical URLs

Always set canonical URLs to prevent duplicate content issues:

```dart
seoService.setCanonical('https://example.com/preferred-url');
```

### 3. Optimize Title Length

Keep titles under 60 characters for optimal display in search results:

```dart
titleService.setMaxLength(60);
```

### 4. Use Structured Data

Add JSON-LD for rich search results:

```dart
seoService.setJsonLd(JsonLd.article(...));
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
- AngularDart >= 8.0.0

## Related Packages

- [angulardart](https://pub.dev/packages/angulardart) - Core framework
- [angulardart_router](https://pub.dev/packages/angulardart_router) - Client-side routing
- [angulardart_prerender](https://pub.dev/packages/angulardart_prerender) - Prerendering for SEO

## License

MIT License
