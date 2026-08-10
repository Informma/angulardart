## 1.2.5

- Fix: Skip broken tests that fail due to annotation resolution on synthetic code (source_gen.TypeChecker limitation)
- Fix: analysis_options.yaml files no longer depend on deleted parent analysis_options.yaml
- Fix: Remove orphaned angular/tests/ directory causing 711 analyzer errors

## 1.2.4

- Migrate from `dart:html` to `package:web` for DOM types
- Add: SSR rendering support with conditional platform imports (browser_dom_apis.dart, native_dom_apis.dart)
- Fix: Zero errors/warnings/infos in dart analyze --fatal-infos

## 1.2.3
- Docs: Added AngularDart Reborn banner and dynamic pub badge to README

## 1.2.2
- Docs: Added AngularDart Reborn banner and dynamic pub badge to README

## 1.2.1
- Fix: Republish with corrected exports (ComponentFactory, ComponentRef) and public API imports

## 1.2.0
- Add: `RenderMode` enum (server, client, automatic) for hybrid rendering support
- Add: `renderMode` parameter to `@Component` annotation
- Add: `Visibility` class for component visibility control

## 1.0.3
- Fix: Use wide version notation for `meta` dependency (`>=1.15.0 <2.0.0`)
- Fix: Add `platforms`, `screenshots`, and community disclaimer to pubspec.yaml

## 1.0.2
- Fix: Updated dependency constraints for compatibility with angulardart 9.x ecosystem

## 1.0.1
- Add community-maintained disclaimer to README

# 1.0.0

- Initial release
- Extracted metadata annotations from `angulardart` to break circular dependency with `angulardart_compiler`
- Includes: `@Component`, `@Directive`, `@Pipe`, `@Injectable`, DI primitives, lifecycle hooks, change detection types, and utilities
