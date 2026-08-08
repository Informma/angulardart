## 9.2.2

- Fix: Restore pub.dev score to 150/160 points (+40 pts)
  - Fix `RenderMode` downgrade compatibility (angulardart_meta >=1.2.0): +20pts
  - Remove remaining `dart:js` usage for WASM compatibility: +10pts
  - Fix static analysis issues (dangling doc comment, missing type annotation): +10pts
  - Add example/ directory with hello_world app: +10pts

## 9.2.1

- Fix: Add missing exports (ComponentFactory, ComponentRef) and RenderMode to public API

## 9.2.0

- Add: Server-side rendering (SSR) support with `ServerRenderNode` and hydration markers
- Add: Hybrid rendering mode (`RenderMode.server`, `RenderMode.client`, `RenderMode.automatic`) per component
- Add: `hydrateApplication()` for client-side DOM reuse after SSR
- Add: `TransferState` for server-to-client state transfer
- Add: Browser render node abstraction layer
- Improve: Testability system with WASM-compatible JS interop

## 9.0.12

- **BREAKING**: Migrate from `package:js` to `dart:js_interop` (WASM-compatible JS interop)
  - Replaced all `@JS()` annotations and `package:js/js_util.dart` usage with `dart:js_interop`
  - Affected files: testability system, devtools, dom_helpers
  - Removes discontinued `package:js` dependency

## 9.0.11

- Fix: Remove broken dartdoc categories config (missing markdown files) to restore documentation scoring on pub.dev

## 9.0.10

- Docs: Updated README ecosystem table with angulardart_seo and angulardart_prerender, added recommended packages section

## 9.0.9

- Fix: Use wide version notation for all dev_dependencies (build_runner, build_web_compilers)

## 9.0.8

- Fix: Resolve `UnresolvedAnnotationException` crash in compiler when `annotationSource` is null (context.dart)
- Fix: Updated dependency constraints for compatibility with angulardart_meta 1.x ecosystem

## 9.0.7

- **BREAKING FIX**: Resolve dart2js `NoSuchMethodError` on sidebar navigation by making `detectChanges()` a proper instance method on `ChangeDetectorRef` instead of relying on extension methods that fail during dart2js tree-shaking/minification
- Fix: Support injection of `package:web` extension types in DI system (Element, HTMLElement)
- Fix: Correctly resolve JSObject lookups to package:web extension type providers

## 9.0.6

- Fix: Platform-agnostic JS interop utilities for DDC/VM compatibility
- Fix: Event listener callbacks now work correctly with dart2js and DDC

## 9.0.5

- Fix: Support injection of `package:web` extension types (web.Element, web.HTMLElement) in DI system

## 9.0.3

- Fix: Clarified community-maintained status (not affiliated with Google)
- Updated pub.dev description and README disclaimer

## 9.0.2

- Fix: Event listeners now compatible with `package:web`'s `addEventListener`
- Split `eventHandler0/1` into DOM and Stream variants for proper type safety
- Fix `ngClass` directive to use `== true` instead of `!= null`

## 9.0.1

- Fix: Remove unnecessary imports (dart analyze clean)
- Migrate to use `angulardart_meta` package for metadata annotations

## 9.0.0

- **BREAKING**: Migrate from `dart:html` to `package:web`
- All DOM types now use `package:web` (Element → web.Element, HtmlElement → web.HTMLElement, etc.)
- NodeTreeSanitizer removed, use template + innerHTML approach
- element.classes → element.classList
- element.parent → element.parentNode
- element.remove() → parentNode?.removeChild()
- console.error() requires .toJS for string conversion
- innerHTML setter requires .toJS, getter returns JSAny
- Requires `web: ^1.0.0`

## 8.2.0

- Previous stable release
