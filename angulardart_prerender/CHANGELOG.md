## 1.2.0

- Add: SSR prerendering support for AngularDart applications
- Add: Integration with `angulardart_server` for hybrid rendering
- Docs: Added integration section with angulardart_seo, updated features list with SEO/canonical/prerendered marker details

## 1.0.4

- Cleanup: Remove verbose debug logging from HtmlRenderer (body preview, page loaded messages)
- Only collect JS errors instead of all console messages for better production output

## 1.0.3

- Fix: Updated dependency constraints for compatibility with angulardart 9.x ecosystem

## 1.0.2

- Add community-maintained disclaimer to README

## 1.0.1

- Fix: Widen version constraints

## 1.0.0

- Initial release
- Standalone prerendering tool using Puppeteer
- Configuration via `prerender.yaml` (routes, rendering, output)
- Annotations: `NoPrerender`, `PrerenderOptions`, `PrerenderAware`, `PrerenderData`
- Route collection, HTML rendering, sitemap/robots generation
