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
