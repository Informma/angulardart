## 6.0.2

- Add community-maintained disclaimer to README

## 6.0.1

- Fix: Update tests for package:web API (innerHtml → innerHTML, NodeList[] → .item())
- Widen version constraints

## 6.0.0

- **BREAKING**: Migrate from `dart:html` to `package:web`
- All form directive types updated to package:web
- InputElement → web.HTMLInputElement
- SelectElement → web.HTMLSelectElement
- HtmlElement → web.HTMLElement
- Event constructor: canBubble → EventInit()..bubbles = true
- Requires angulardart ^9.0.0

## 5.2.0

- Previous stable release
