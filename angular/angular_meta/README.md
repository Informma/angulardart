![AngularDart Meta banner](https://github.com/flutterdocteur/angulardart/raw/main/media/banner.png)

<p align="center">
  <a href="https://angulardartreborn.com">
    <img src="https://img.shields.io/badge/website-angulardartreborn.com-blue" alt="Website" />
  </a>
  <a href="https://pub.dev/packages/angulardart_meta">
    <img src="https://img.shields.io/pub/v/angulardart_meta" alt="pub package" />
  </a>
</p>

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

**AngularDart Reborn** is a community-maintained fork of Google's original [AngularDart](https://pub.dev/packages/angulardart) framework (formerly known as AngularDart by Google). This project is **not affiliated with, endorsed by, or sponsored by Google LLC**.

- **Angular**, **AngularDart**, and all associated packages (`angulardart`, `angulardart_router`, `angulardart_compiler`, `angulardart_forms`, `angulardart_meta`, `angulardart_ast`, `angulardart_cli`, `angulardart_seo`, `angulardart_prerender`, `angulardart_test`, `angulardart_components`) are trademarks and projects of the AngularDart Reborn community.
- The original AngularDart framework was developed by Google LLC and hosted at [github.com/angulardart](https://github.com/angulardart).
- This is an independent, 100% community-driven project that continues the work started by Google's AngularDart team after Google ceased active maintenance.

For the official Angular Framework (TypeScript/JavaScript), visit [angular.io](https://angular.io). For the original Google-maintained AngularDart repository, see [github.com/angulardart](https://github.com/angulardart).
