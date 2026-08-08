## 6.2.5

- Fix: fixture.dart — cast location to web.Node, simplify rootElement getter
- Fix: bootstrap.dart — cast componentRef.location to web.Node for append()
- Fix: package:web constraint updated to <1.2.0

## 6.2.4

- Migrate from `dart:html` to `package:web` for DOM types
- Add: SSR rendering support with conditional platform imports (browser_dom_apis.dart, native_dom_apis.dart)
- Fix: Zero errors/warnings/infos in dart analyze --fatal-infos

## 6.2.3
- Fix: constrain package:web to <1.1.0 (JSAny/JSObject types removed in web 1.1.x)

## 6.2.2
- Fix: Restore pub.dev score to 150+ points (+30 pts)
  - Improve pubspec description: +10pts
  - Add example directory: +10pts
  - Remove unused test dependency in example: +10pts

## 6.2.1
- Fix: Republish for compatibility with corrected angulardart 9.2.1

## 6.2.0
- Add: Compatibility with SSR and hybrid rendering modes
- Fix: Use wide version notation for all dev_dependencies (mockito, lints)

## 6.0.3
- Fix: Updated dependency constraints for compatibility with angulardart 9.x ecosystem

## 6.0.2
- Add community-maintained disclaimer to README

## 6.0.1
- Fix: Use angulardart_meta for isDevMode (dart analyze clean)
- Widen version constraints

## 6.0.0

- Migrate from `dart:html` to `package:web`
- Test bed and fixture types updated to package:web
- Element → web.Element
- Element.tag() → web.document.createElement()
- element.parent!.remove() → parentNode?.removeChild()
- element.text → element.textContent
- Requires angulardart ^9.0.0

## 5.2.0
- Previous stable release
