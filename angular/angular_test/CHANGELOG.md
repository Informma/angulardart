## 6.0.2

- Add community-maintained disclaimer to README

## 6.0.1

- Fix: Use angulardart_meta for isDevMode (dart analyze clean)
- Widen version constraints

## 6.0.0

- **BREAKING**: Migrate from `dart:html` to `package:web`
- Test bed and fixture types updated to package:web
- Element → web.Element
- Element.tag() → web.document.createElement()
- element.parent!.remove() → parentNode?.removeChild()
- element.text → element.textContent
- Requires angulardart ^9.0.0

## 5.2.0

- Previous stable release
