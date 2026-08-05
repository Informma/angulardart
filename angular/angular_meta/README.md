# angulardart_meta

Metadata annotations and core types for AngularDart.

This package contains the annotations, DI primitives, and utility functions shared between `angulardart` (the framework) and `angulardart_compiler` (the code generator).

## Purpose

By extracting these into a standalone package with no dependency on either `angulardart` or `angulardart_compiler`, we break the circular dependency that previously existed between those two packages.

## Contents

- **Annotations**: `@Component`, `@Directive`, `@Pipe`, `@Injectable`, etc.
- **DI primitives**: `Provider`, `Module`, `OpaqueToken`, `MultiToken`, etc.
- **Lifecycle hooks**: `OnInit`, `OnDestroy`, `OnChanges`, etc.
- **Change detection**: `ChangeDetectionStrategy`, `ChangeDetectorState`
- **Utilities**: `isDevMode`, `unsafeCast`

## Usage

This package is typically not used directly. Instead, import `package:angulardart/angulardart.dart` which re-exports these symbols.

## Requirements

- Dart SDK: `>=3.0.0 <4.0.0`

---

## Disclaimer

**AngularDart Reborn** is a community-maintained fork of Google's original AngularDart framework. This project is **not affiliated with, endorsed by, or sponsored by Google LLC**. Angular and AngularDart are trademarks of Google LLC.

This is an independent, 100% community-driven project. For the original Angular framework (TypeScript/JavaScript), visit [angular.io](https://angular.io).
