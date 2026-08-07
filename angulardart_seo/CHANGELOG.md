## 1.0.5

- Docs: Added integration section with angulardart_prerender explaining how the two packages work together

## 1.0.4

- Fix: Updated dependency constraints for compatibility with angulardart 9.x ecosystem

## 1.0.3

- Add community-maintained disclaimer to README

## 1.0.2

- Fix: Update to angulardart >=9.0.0 (package:web migration)
- Widen version constraints

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
