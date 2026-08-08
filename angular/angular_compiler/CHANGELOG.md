## 5.2.1

- Fix: Republish with corrected RenderMode integration

## 5.2.0

- Add: SSR rendering support with `RenderMode` enum integration
- Add: Server-side template compilation with hydration markers
- Add: Hybrid rendering mode detection in component visitor

## 5.0.5

- Fix: Use wide version notation for all dev_dependencies (build_runner, mockito, lints, test)

## 5.0.4

- Fix: Updated dependency constraints for compatibility with angulardart 9.x ecosystem

## 5.0.3

- Fix: Generated code now calls `detectChangesDeprecated()` directly instead of using extension methods that fail during dart2js tree-shaking/minification
- Fix: Support package:web extension type lookups for Element/HTMLElement providers in DI system

## 5.0.2

- Add community-maintained disclaimer to README

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
