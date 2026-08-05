## 5.0.1

- Fix: Generated code now adds `.toJS` for native DOM event listeners
- Generated templates now import `dart:js_interop` unconditionally
- Compiler differentiates between DOM events and directive outputs

## 5.0.0

- **BREAKING**: Migrate from `dart:html` to `package:web`
- Generated code now imports `package:web/web.dart` instead of `dart:html`
- Updated 32 type identifiers (HtmlElement → HTMLElement, DivElement → HTMLDivElement, etc.)
- NodeTreeSanitizer reference removed
- SVG types updated (SvgSvgElement → SVGSVGElement)
- Requires angulardart ^9.0.0

## 4.1.0

- Previous stable release
