# Changelog

## 1.0.4

- Fix: constrain package:web to <1.1.0 (JSAny/JSObject types removed in web 1.1.x)

## 1.0.3

- Docs: Added AngularDart Reborn banner and dynamic pub badge to README

## 1.0.2

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
