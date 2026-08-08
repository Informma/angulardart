## 5.2.2

- Fix: Restore pub.dev score to 150+ points (+20 pts)
  - Improve pubspec description: +10pts
  - Add example directory: +10pts

## 5.2.1

- Fix: Republish for compatibility with corrected angulardart 9.2.1

## 5.2.0

- Add: Compatibility with SSR and hybrid rendering modes
- Fix: Use wide version notation for all dev_dependencies (async, mockito, lints)

## 5.0.9

- Fix: Updated dependency constraints for compatibility with angulardart 9.x ecosystem

## 5.0.8

- Fix: Compatible with angulardart 9.0.7 (dart2js extension method resolution fix)
- Fix: Correctly resolve DI lookups for `web.Element` via updated angulardart DI system

## 5.0.6

- Fix: Use direct `web.Element` injection instead of deprecated `ElementRef` workaround

## 5.0.5

- Fix: RouterLink and RouterLinkActive now properly cast ElementRef.nativeElement to web.Element/web.HTMLElement to avoid runtime errors with extension types

## 5.0.3

- Fix: Remove third argument from addEventListener calls (package:web compatibility)

## 5.0.2

- Add community-maintained disclaimer to README

## 5.0.1

- Fix: Update tests for package:web API (classes → classList)
- Widen version constraints

## 5.0.0

- **BREAKING**: Migrate from `dart:html` to `package:web`
- All location and directive types updated to package:web
- EventListener → void Function(web.Event)
- window.location/history → web.window.location/history
- AnchorElement → web.HTMLAnchorElement
- element.classes.toggleAll() → manual classList loop
- pushState/replaceState state requires .jsify()
- Requires angulardart ^9.0.0

## 4.2.0

- Previous stable release
