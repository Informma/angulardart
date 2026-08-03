# Migration vers analyzer ^14.0.0 (nécessite SDK Dart >= 3.13.0)

Cette branche contient la migration vers analyzer 14.x qui sera nécessaire quand SDK 3.13.0 sera stable.

## Changements API appliqués

### LibraryElement
- `definingCompilationUnit` → `firstFragment`
- `libraryImports` → `firstFragment.libraryImports`
- `libraryExports` → `firstFragment.libraryExports`
- `source` → `firstFragment.source`

### FunctionElement
- `FunctionElement` → `TopLevelFunctionElement`
- `.parameters` → `.formalParameters`
- `isAsynchronous` → `firstFragment.isAsynchronous`

### ParameterElement
- `ParameterElement` → `FormalParameterElement`

### AST
- `NamedExpression` → `NamedArgument`
- `ElementDeclarationResult` → `FragmentDeclarationResult`

### Visitors
- `RecursiveElementVisitor` → `RecursiveElementVisitor2` (visitor2.dart)
- `SimpleElementVisitor` → `SimpleElementVisitor2` (visitor2.dart)

### Types
- `type.isDynamic` → `type is DynamicType`
- `type.isVoid` → `type is VoidType`

### Metadata
- `metadatai` → `metadata.annotationsi`

### Method lookup
- `lookUpMethod(name, lib)` → `lookUpMethod(name: name, library: lib)`

### DartFormatter
- `DartFormatter()` → `DartFormatter(languageVersion: DartFormatter.latestLanguageVersion)`

### Element declaration
- `element.source` → `element.library?.firstFragment.source`

### Compilation
- `CompilationUnitElement` → `LibraryFragment`

### Invocation
- `getInvocation()` → `constructorInvocation`

### Type system
- `resolveToBound` → `typeSystem.resolveToBound()`

### Synthetic fields
- `isSynthetic` → `!field.isOriginDeclaration`

## Prérequis

- SDK Dart >= 3.13.0 (beta actuel)
- build_web_compilers ^4.8.1

## Retour vers analyzer 13.x

Pour revenir vers analyzer 13.x (compatible SDK 3.12.2), il faut :

1. Changer `analyzer: ^14.0.0` → `analyzer: ^13.0.0` dans tous les pubspec.yaml
2. Inverser tous les changements API listés ci-dessus
3. Utiliser `build_web_compilers: ^4.8.0` (compatible analyzer 13.x)
