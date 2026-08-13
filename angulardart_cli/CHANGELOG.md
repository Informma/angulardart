## 1.8.0

- Ajout commandes `add ssr`/`add hybrid`/`add seo`, `seo init`, `generate-stubs` + flags `--ssr`/`--hybrid`/`--seo` sur `ngdart new` (templates base `dart:html`).

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
