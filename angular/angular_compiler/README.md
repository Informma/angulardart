<img src="https://github.com/flutterdocteur/angulardart/raw/main/media/banner.png" alt="AngularDart Compiler banner" style="width: 100%; max-width: 100%;" />

<p align="center">
  <a href="https://pub.dev/packages/angulardart_compiler">
    <img src="https://img.shields.io/pub/v/angulardart_compiler.svg" alt="pub package" />
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
