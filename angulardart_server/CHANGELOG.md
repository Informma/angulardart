## 1.4.2

- fix: transmettre l'`APP_ID` du serveur au client via TransferState (`ng-ssr-app-id`) pour que les préfixes d'encapsulation CSS `_ngcontent-…` correspondent après l'hydration.
- fix: injecter le script `ng-transfer-state` dans le shell `index.html` (absent de `_injectIntoShell` → TransferState inopérant avec un shell HTML).
- fix: réinitialiser le cache des `ComponentStyles` à chaque requête SSR pour que `<style id="ng-ssr-styles">` soit présent sur toutes les pages (et pas seulement la première).

## 1.4.1

- fix: `renderApplication` lit `web/index.html` comme shell HTML complet (injection du composant rendu, bascule `ng-server-context="ssr"`, injection des styles scopés dans `<head>`) au lieu d'un shell minimal.

## 1.4.0

- Conversion `package:web` → `dart:html` (`browser_dom_apis.dart`) + contraintes alignées sur la ligne 9.4.0.

## 1.3.0

- Add: Initialize `appViewUtils` in server-side rendering to support scoped styles (`styleUrls`) in components
- Fix: `ngdart generate-stubs` now copies `.css.shim.dart` files for proper CSS encapsulation on VM

## 1.2.4

- Fix: Align with angulardart 9.3.4 SSR fixes (TextBinding now uses renderFactory.createText())

## 1.2.3

- Fix: Improve TransferState serialization and platform_server for SSR compatibility

## 1.2.2

- Fix: Add explicit constructor to ServerNgZone to call generative superclass constructor (fixes non_generative_implicit_constructor error)

## 1.2.1

- Fix: Remove dependency_overrides with path: dependencies (violates pub.dev policy)
- Fix: analysis_options.yaml files no longer depend on deleted parent analysis_options.yaml
- Fix: Remove orphaned angular/tests/ directory causing analyzer errors

## 1.2.0

- Fix: Add missing `textContent` and `id` properties to DomElement/DomHTMLStyleElement in native_dom_apis.dart (required for SSR hydration)

## 1.1.1

- Fix: ServerPlatformLocation now correctly implements PlatformLocation interface (pathname setter, RouterEvent types)

## 1.1.0

- Add: Fine-grained browser/vm platform split files for AOT native compilation support
- Add: `ngdart generate-stubs` CLI command to auto-generate `.template.dart` stubs
- Add: SSR test suite (89 tests passing) and comprehensive user documentation

## 1.0.10

- Fix: Constrain package:web to >=0.5.0 <1.0.0 (1.x uses dart:js_interop incompatible with our codebase)


- Fix: Constrain package:web to <1.1.0 (1.1.x removed JS interop methods .toJS, jsify)


- Fix: Template compiler UPDATE phase — use RenderNodeHelpers.addRenderEventListener() for SSR-compatible event listeners
- Fix: Ensure hydration works with new appendRenderChild helper in template compiler

## 1.0.7

- Fix: package:web constraint updated to <1.2.0

## 1.0.6

- Migrate from `dart:html` to `package:web` for DOM types
- Add: SSR rendering support with conditional platform imports (browser_dom_apis.dart, native_dom_apis.dart)
- Fix: Zero errors/warnings/infos in dart analyze --fatal-infos

# Changelog

## 1.0.5
- Fix: constrain package:web to <1.1.0 (JSAny/JSObject types removed in web 1.1.x)

## 1.0.4
- Fix: constrain package:web to <1.1.0 (JSAny/JSObject types removed in web 1.1.x)

## 1.0.3
- Docs: Added AngularDart Reborn banner and dynamic pub badge to README

## 1.0.5
- Fix: constrain package:web to <1.1.0 (JSAny/JSObject types removed in web 1.1.x)

## 1.0.4
- Fix: constrain package:web to <1.1.0 (JSAny/JSObject types removed in web 1.1.x)

## 1.0.3
- Fix: Use public API exports instead of internal paths, add LICENSE

## 1.0.1
- Add: Server-side rendering (SSR) support with `PlatformServerRef`
- Add: Hybrid rendering mode (`RenderMode.server`, `RenderMode.client`, `RenderMode.automatic`)
- Add: Client-side hydration with `hydrateApplication()`
- Add: `TransferState` for server-to-client state transfer
- Add: Server render node implementation for HTML generation

## 1.0.0
- Initial release of `angulardart_server`
- SSR rendering engine for AngularDart applications
- Hybrid rendering support with per-component render mode control
