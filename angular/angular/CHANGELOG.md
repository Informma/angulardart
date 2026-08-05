## 9.0.6

- Fix: Correctly resolve `JSObject` lookups to `package:web` extension type providers (Element, HTMLElement) in DI system
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
