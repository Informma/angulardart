## 5.2.5

- Fix: Template compiler UPDATE phase — use RenderNodeHelpers.addRenderEventListener for SSR compatibility
- Fix: Use appendRenderChild helper instead of direct .appendChild() in compile_view.dart
- Fix: Add RenderNodeHelpers and RenderNodeUpdateHelpers identifiers for template compiler
- Fix: Ensure AST visitor integration works correctly with new RenderNode helpers

## 5.2.4

- Fix: Template compiler UPDATE phase — use RenderNodeHelpers.addRenderEventListener for SSR compatibility
- Fix: Use appendRenderChild helper instead of direct .appendChild() in compile_view.dart
- Fix: Add RenderNodeHelpers and RenderNodeUpdateHelpers identifiers for template compiler

## 5.2.3

- Migrate from `dart:html` to `package:web` for DOM types
- Add: SSR rendering support with conditional platform imports (browser_dom_apis.dart, native_dom_apis.dart)
- Fix: Zero errors/warnings/infos in dart analyze --fatal-infos

## 5.2.2
- Fix: Restore pub.dev score to 150+ points (+60 pts)
  - Update angulardart_meta dependency >=1.2.0 for RenderMode compatibility: +20pts
  - Update package_config constraint for latest version support: +10pts
  - Remove deprecated withNullability parameter from analyzer API: +10pts
  - Improve pubspec description: +10pts
  - Add example directory: +10pts

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

- Migrate from `dart:html` to `package:web`
- Generated code now imports `package:web/web.dart` instead of `dart:html`
- Updated 32 type identifiers (HtmlElement → HTMLElement, DivElement → HTMLDivElement, etc.)
- NodeTreeSanitizer reference removed
- SVG types updated (SvgSvgElement → SVGSVGElement)
- Requires angulardart ^9.0.0

## 4.1.0
- Previous stable release
