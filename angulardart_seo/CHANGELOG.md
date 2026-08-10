## 1.3.1

- Fix: Align with angulardart 9.3.4 SSR fixes (no direct changes, dependency update)

## 1.3.0

- Add: Server-aware SeoService — detects SSR mode via `_head == null` on VM
- Add: `static Map<String, String> _serverMeta` for storing SEO data during server rendering
- Add: All SEO methods now use `TransferState.set()` for SSR compatibility (setTitle, setMeta, setOgTag, setTwitterTag, setCanonical, setRobots, setJsonLd)
- Fix: `_storeServerMeta()` stores in both _serverMeta AND TransferState when on server

## 1.2.7

- Fix: Constrain package:web to >=0.5.0 <1.0.0 (1.x uses dart:js_interop incompatible with our codebase)


- Fix: Constrain package:web to <1.1.0 (1.1.x removed JS interop methods .toJS, jsify)


- Fix: Template compiler compatibility — ensure SEO service works with RenderNode helpers in SSR

## 1.2.4

- Fix: package:web constraint updated to <1.2.0

## 1.2.3

- Migrate from `dart:html` to `package:web` for DOM types
- Add: SSR rendering support with conditional platform imports (browser_dom_apis.dart, native_dom_apis.dart)
- Fix: Zero errors/warnings/infos in dart analyze --fatal-infos

## 1.2.2
- Fix: constrain package:web to <1.1.0 (JSAny/JSObject types removed in web 1.1.x)

## 1.2.1
- Docs: Added AngularDart Reborn banner and dynamic pub badge to README

## 1.2.0
- Add: SSR SEO optimization for AngularDart applications
- Add: Integration with `angulardart_server` and `angulardart_prerender`
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
