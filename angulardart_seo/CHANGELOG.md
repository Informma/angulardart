## 1.0.1

- Fix: Remove prerender-related classes (NoPrerender, PrerenderConfig, PrerenderAware) - now in angulardart_prerender only
- Cleaner separation of concerns between SEO and prerendering

## 1.0.0

- Initial release
- `SeoService` for managing meta tags, Open Graph, Twitter Cards, JSON-LD
- `TitleService` for managing document title
- Annotations: `SeoConfig`, `DynamicSeo`, `SeoAware`
- Models: `MetaTag`, `OpenGraphTag`, `TwitterCardTag`, `LinkTag`, `JsonLd`
- Uses `package:web` (no `dart:html`)
