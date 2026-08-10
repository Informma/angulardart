import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:angulardart_compiler/v2/context.dart';

import 'di/dependencies.dart';
import 'types.dart';

/// Determines how to generate and link to `initReflector` in other files.
///
/// AngularDart's `initReflector` is used to create a graph of all generated
/// code that mirrors user-authored code. Significant classes and factories are
/// recorded into a global map and can be used at runtime (via the `reflector`).
///
/// The recorder has various options on how much recording is required for a
/// given application, with the end-goal being requiring little or none for most
/// applications.
class ReflectableReader {
  static const _defaultOutputExtension = '.template.dart';

  /// Used to read dependencies from dart objects.
  final DependencyReader dependencyReader;

  /// Returns whether [uri] is a file part of the same build process.
  ///
  /// Used to determine whether [uri] (i.e. `foo.dart`) _will_ generate a future
  /// output (i.e. `foo.template.dart`). It should be assumed the [uri]
  /// parameter, if a relative URI, is relative to the library being analyzed.
  final FutureOr<bool> Function(String) hasInput;

  /// Returns whether [uri] represents a summarized/analyzed dart library.
  ///
  /// It should be assumed the [uri] parameter, if a relative URI, is relative
  /// to the library being analyzed.
  final Future<bool> Function(String) isLibrary;

  /// File extension used when compiling AngularDart files.
  ///
  /// By default this is `.template.dart`.
  final String outputExtension;

  /// Whether to record `ComponentFactory` for `@Component`-annotated classes.
  ///
  /// This is used to support `SlowComponentLoader`.
  final bool recordComponentFactories;

  /// Whether to record factory functions for `@Injectable`-annotated elements.
  ///
  /// This is used to support `ReflectiveInjector`.
  final bool recordInjectableFactories;

  const ReflectableReader({
    this.dependencyReader = const DependencyReader(),
    required this.hasInput,
    required this.isLibrary,
    this.outputExtension = _defaultOutputExtension,
    this.recordComponentFactories = true,
    this.recordInjectableFactories = true,
  });

  /// Always emits an empty [ReflectableOutput.urlsNeedingInitReflector].
  ///
  /// Useful for tests that do not want to try emulating a complete build.
  @visibleForTesting
  const ReflectableReader.noLinking({
    this.dependencyReader = const DependencyReader(),
    this.outputExtension = _defaultOutputExtension,
    this.recordComponentFactories = true,
    this.recordInjectableFactories = true,
  })  : hasInput = _nullHasInput,
        isLibrary = _nullIsLibrary;

  static FutureOr<bool> _nullHasInput(String _) => false;
  static Future<bool> _nullIsLibrary(String _) async => false;

  static Iterable<LibraryFragment> _allUnits(LibraryElement lib) sync* {
    yield lib.firstFragment;
  }

  /// Returns information needed to write `.template.dart` files.
  Future<ReflectableOutput> resolve(LibraryElement library) async {
    final registerClasses = <ReflectableClass>[];
    final registerFunctions = <DependencyInvocation<ExecutableElement>>[];
    for (final unit in _allUnits(library)) {
      for (final type in unit.element.classes) {
        final reflectable = _resolveClass(type);
        if (reflectable != null) {
          registerClasses.add(reflectable);
        }
        if (recordInjectableFactories) {
          registerFunctions.addAll(_resolveFunctions(type.methods));
        }
      }
      if (recordInjectableFactories) {
        registerFunctions.addAll(_resolveFunctions(unit.element.topLevelFunctions));
      }
    }
    var urlsNeedingInitReflector = const <String>[];

    // Only link to other ".initReflector" calls if either flag is enabled.
    if (recordInjectableFactories || recordComponentFactories) {
      urlsNeedingInitReflector = await _resolveNeedsReflector(library);
    }

    return ReflectableOutput(
      urlsNeedingInitReflector: urlsNeedingInitReflector,
      registerClasses: registerClasses,
      registerFunctions: registerFunctions,
    );
  }

  ReflectableClass? _resolveClass(ClassElement element) {
    DependencyInvocation<ConstructorElement>? factory;
    if (_shouldRecordFactory(element) && recordInjectableFactories) {
      if (element.isPrivate) {
        throw BuildError.forElement(
          element,
          'Private classes can not be @Injectable',
        );
      }
      factory = dependencyReader.parseDependencies(element);
    }
    final isComponent = $Component.firstAnnotationOfExact(element) != null;
    if (factory == null && !isComponent) {
      return null;
    }
    return ReflectableClass(
      element: element,
      factory: factory,
      name: element.name!,
      registerComponentFactory: isComponent && recordComponentFactories,
    );
  }

  DependencyInvocation<ExecutableElement>? _resolveFunction(
      ExecutableElement element) {
    if ($Injectable.firstAnnotationOfExact(element) == null) {
      return null;
    }
    if (!element.isStatic) {
      throw BuildError.forElement(
        element,
        'Non-static functions can not be @Injectable',
      );
    }
    if (element.isPrivate) {
      throw BuildError.forElement(
        element,
        'Private functions can not be @Injectable',
      );
    }
    return dependencyReader.parseDependencies(element);
  }

  Iterable<DependencyInvocation<ExecutableElement>> _resolveFunctions(
          Iterable<ExecutableElement> elements) =>
      elements
          .map(_resolveFunction)
          .whereType<DependencyInvocation<ExecutableElement>>();

  String _withOutputExtension(String uri) {
    final extensionAt = uri.lastIndexOf('.');
    return uri.substring(0, extensionAt) + outputExtension;
  }

  Future<List<String>> _resolveNeedsReflector(LibraryElement library) async {
    final results = <String>[];
    final futures = <Future<void>>[];

    for (final import in library.firstFragment.libraryImports) {
      final uri = import.uri is DirectiveUriWithRelativeUriString
          ? (import.uri as DirectiveUriWithRelativeUriString).relativeUriString
          : '';
      futures.add(() async {
        if (await _needsInitReflector(uri, import.prefix, import.importedLibrary)) {
          var outputUri = uri;
          if (!outputUri.endsWith(outputExtension)) {
            outputUri = _withOutputExtension(outputUri);
          }
          results.add(outputUri);
        }
      }());
    }

    for (final export in library.firstFragment.libraryExports) {
      final uri = export.uri is DirectiveUriWithRelativeUriString
          ? (export.uri as DirectiveUriWithRelativeUriString).relativeUriString
          : '';
      futures.add(() async {
        if (await _needsInitReflector(uri, null, export.exportedLibrary)) {
          var outputUri = uri;
          if (!outputUri.endsWith(outputExtension)) {
            outputUri = _withOutputExtension(outputUri);
          }
          results.add(outputUri);
        }
      }());
    }

    await Future.wait(futures);
    return results..sort();
  }

  Future<bool> _needsInitReflector(
    String uri,
    PrefixFragment? prefix,
    LibraryElement? targetLibrary,
  ) async {
    if (prefix != null && prefix.isDeferred) {
      return false;
    }
    if (uri.endsWith(outputExtension)) {
      return true;
    }
    if (!uri.contains('.')) {
      return false;
    }
    final outputUri = _withOutputExtension(uri);
    try {
      if (!(await isLibrary(outputUri) || await hasInput(uri))) {
        return false;
      }
      // Skip files that don't have Angular content to avoid importing
      // browser-only packages (like package:web) on the VM
      if (targetLibrary != null && !_hasAngularContent(targetLibrary)) {
        return false;
      }
      return true;
    } catch (e) {
      throw BuildError.withoutContext(
          'Could not parse URI. Additional information:\n$e\n');
    }
  }

  /// Returns true if the library contains any Angular annotations
  /// (@Component, @Directive, or @Injectable).
  bool _hasAngularContent(LibraryElement lib) {
    for (final unit in _allUnits(lib)) {
      for (final type in unit.element.classes) {
        if ($Component.firstAnnotationOfExact(type) != null ||
            $Directive.firstAnnotationOfExact(type) != null ||
            $Injectable.firstAnnotationOfExact(type) != null) {
          return true;
        }
      }
    }
    return false;
  }

  bool _shouldRecordFactory(ClassElement element) =>
      $Injectable.hasAnnotationOfExact(element);
}

class ReflectableOutput {
  /// What `.template.dart` files need to be imported and linked to this file.
  final List<String> urlsNeedingInitReflector;

  /// What `class` elements require registration in `initReflector`.
  final List<ReflectableClass> registerClasses;

  /// What factory functions require registration in `initReflector`.
  final List<DependencyInvocation<ExecutableElement>> registerFunctions;

  @visibleForTesting
  const ReflectableOutput({
    this.urlsNeedingInitReflector = const [],
    this.registerClasses = const [],
    this.registerFunctions = const [],
  });

  static const _list = ListEquality<Object?>();

  @override
  bool operator ==(Object other) =>
      other is ReflectableOutput &&
      _list.equals(urlsNeedingInitReflector, other.urlsNeedingInitReflector) &&
      _list.equals(registerClasses, other.registerClasses) &&
      _list.equals(registerFunctions, other.registerFunctions);

  @override
  int get hashCode =>
      _list.hash(urlsNeedingInitReflector) ^
      _list.hash(registerClasses) ^
      _list.hash(registerFunctions);

  @override
  String toString() =>
      'ReflectableOutput ${{
        'urlsNeedingInitReflector': urlsNeedingInitReflector,
        'registerClasses': registerClasses,
        'registerFunctions': registerFunctions,
      }}';
}

class ReflectableClass {
  /// Actual class element.
  final ClassElement element;

  /// Factory required to invoke the constructor of the class.
  final DependencyInvocation<ConstructorElement?>? factory;

  /// Name of the class.
  final String name;

  /// If `true`, this class has an `NgFactory` needing registration.
  final bool registerComponentFactory;

  @visibleForTesting
  const ReflectableClass({
    required this.element,
    this.factory,
    required this.name,
    this.registerComponentFactory = false,
  });

  @override
  bool operator ==(Object other) =>
      other is ReflectableClass &&
      factory == other.factory &&
      name == other.name &&
      registerComponentFactory == other.registerComponentFactory;

  @override
  int get hashCode =>
      factory.hashCode ^ name.hashCode ^ registerComponentFactory.hashCode;

  @override
  String toString() =>
      'ReflectableClass${{
        'factory': factory,
        'name': name,
        'registerComponentFactory': registerComponentFactory,
      }}';
}
