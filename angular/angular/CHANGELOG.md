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
