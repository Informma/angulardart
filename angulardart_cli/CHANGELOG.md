## 1.4.2

- Fix: SSR template uses relative import `../lib/{{component.targetName}}.dart` so the angulardart builder can find and generate NgFactory

## 1.4.1

- Fix: SSR template now includes the component inline in main.dart so the angulardart builder can find and generate NgFactory (matches hello_world_ssr example pattern)

## 1.4.0

- Fix: SSR template now uses package import instead of relative path so the builder can find and generate AppComponentNgFactory

## 1.3.0

- Fix: SSR template now requires angulardart_server >=1.2.0 (fixes missing textContent/id DOM properties)
- Fix: build_runner command corrected from `build web/main.server.dart` to `build web` in usage instructions

## 1.2.2

- Fix: SSR template now requires angulardart_server >=1.2.0 (fixes missing textContent/id DOM properties)
- Fix: build_runner command corrected from `build web/main.server.dart` to `build web` in usage instructions

## 1.2.1

- Fix: `web/main.server.dart` now generated as a proper AngularDart entry point (exports `appComponentFactory`) instead of HTTP server code
- Fix: `bin/server.dart` imports from `../web/main.template.dart` and uses `ng.appComponentFactory` correctly
- Fix: added `package:web` dependency to SSR project template for DOM access in `main.dart`
- Fix: build_runner command corrected from `build -d web/main.server.dart` to `build web/main.server.dart`
- Fix: escaped single quotes and UTF-8 characters properly in generated Dart string literals
- Fix: corrected broken French accents in SSR README (côté, reçoit, réutilise, accède)

## 1.2.0

- Add: `ngdart generate-stubs` command to auto-generate `.template.dart` stubs for AOT compilation
- Fix: _findRepoRoot() now works from any directory in the monorepo (no longer depends on .dart_tool/)

## 1.1.3

- Fix: package:web constraint updated to <1.2.0

## 1.1.2

- Migrate from `dart:html` to `package:web` for DOM types
- Add: SSR rendering support with conditional platform imports (browser_dom_apis.dart, native_dom_apis.dart)
- Fix: Zero errors/warnings/infos in dart analyze --fatal-infos

## 1.1.1
- Fix: removed invalid empty abbreviation on `--ssr` flag (fixes crash on startup)
- Fix: use wide version notation for all dependencies per project conventions

## 1.1.0
- Add: SSR project scaffolding with `ngdart new --ssr` flag
- Add: Hybrid rendering template generation
- Docs: Documented `ngdart new --seo` and `angulardart seo init` commands, added SEO/prerender to Related Packages

## 1.0.15
- Fix: Use wide version notation for all dev_dependencies (lints, test)

## 1.0.14
- Fix: Updated dependency constraints for compatibility with angulardart 9.x ecosystem

## 1.0.13
- Add community-maintained disclaimer to README

## 1.0.12
- feat: add --seo flag to `ngdart new` command
- feat: add `ngdart seo init` command for existing projects
- fix: remove unused imports in SEO templates

## 1.0.11
- fix: release.sh now looks for commits touching the package directory
- chore: add release.sh scripts to all packages

## 1.0.10
- Updated generated project dependencies to latest versions
- Fixed `camelCased` getter crash on trailing separators
- Changed pipe template to use `implements` instead of `extends` for `PipeTransform`

## 1.0.9
- Updated documentation links to point to angulardartreborn.com
- Updated homepage to https://angulardartreborn.com

## 1.0.2
- Added `topics` for better discoverability on pub.dev
- Added `issue_tracker` URL
- Added explicit `platforms` declaration for Linux, macOS, and Windows

## 1.0.1
- Removed unused imports (cleaner code)

## 1.0.0
- Initial version
- `ngdart new <project>` - Create a new AngularDart project
- `ngdart generate component <Name>` - Generate a component
- `ngdart generate directive <Name>` - Generate a directive
- `ngdart generate pipe <Name>` - Generate a pipe
- `ngdart generate service <Name>` - Generate a service
