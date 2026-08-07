![AngularDart Compiler banner](https://github.com/flutterdocteur/angulardart/raw/main/media/banner.png)

<p align="center">
  <a href="https://angulardartreborn.com">
    <img src="https://img.shields.io/badge/website-angulardartreborn.com-blue" alt="Website" />
  </a>
  <a href="https://pub.dev/packages/angulardart_compiler">
    <img src="https://badgen.net/pub/v/angulardart_compiler?v=5.0.4" alt="pub package" />
  </a>
</p>

# AngularDart Compiler

**Template compiler for AngularDart. Transforms templates into efficient Dart code.**

Part of the [AngularDart](https://pub.dev/packages/angulardart) ecosystem.

## Overview

This package provides the template compiler for AngularDart. It transforms AngularDart component templates into efficient Dart code at build time.

## What it does

- Compiles AngularDart templates to Dart code
- Generates component factories and dependency injection code
- Processes `@Component`, `@Directive`, and `@Pipe` annotations
- Integrates with `build_runner` for code generation
- Supports template optimization and tree-shaking

## Usage

This package is typically not used directly. It is a dependency of:

- [angulardart](https://pub.dev/packages/angulardart) - The core AngularDart framework

The compiler runs automatically when you use `build_runner`:

```bash
dart run build_runner build
```

## How it works

1. **Template parsing** - Parses HTML templates into an AST (using `angulardart_ast`)
2. **Code generation** - Generates Dart code for component views
3. **DI generation** - Generates dependency injection code
4. **Optimization** - Optimizes generated code for performance

## Documentation

- [API Reference](https://pub.dev/documentation/angulardart_compiler/latest/)
- [AngularDart main package](https://pub.dev/packages/angulardart)

## Requirements

- Dart SDK >= 3.0.0

## License

MIT License

---

## Disclaimer

**AngularDart Reborn** is a community-maintained fork of Google's original [AngularDart](https://pub.dev/packages/angulardart) framework (formerly known as AngularDart by Google). This project is **not affiliated with, endorsed by, or sponsored by Google LLC**.

- **Angular**, **AngularDart**, and all associated packages (`angulardart`, `angulardart_router`, `angulardart_compiler`, `angulardart_forms`, `angulardart_meta`, `angulardart_ast`, `angulardart_cli`, `angulardart_seo`, `angulardart_prerender`, `angulardart_test`, `angulardart_components`) are trademarks and projects of the AngularDart Reborn community.
- The original AngularDart framework was developed by Google LLC and hosted at [github.com/angulardart](https://github.com/angulardart).
- This is an independent, 100% community-driven project that continues the work started by Google's AngularDart team after Google ceased active maintenance.

For the official Angular Framework (TypeScript/JavaScript), visit [angular.io](https://angular.io). For the original Google-maintained AngularDart repository, see [github.com/angulardart](https://github.com/angulardart).
