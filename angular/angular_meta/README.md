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
