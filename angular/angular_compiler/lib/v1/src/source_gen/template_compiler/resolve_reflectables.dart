import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:path/path.dart' as p;
import 'package:angulardart_compiler/v1/angular_compiler.dart';
import 'package:angulardart_compiler/v1/cli.dart';

/// Given the provided library, returns the [ReflectableOutput].
///
/// This is a combination of classes, functions, and libraries that need to
/// be referenced and linked in the generator `initReflector()` function in each
/// `.template.dart` file.
Future<ReflectableOutput> resolveReflectables({
  required LibraryElement from,
  required CompilerFlags flags,
  required BuildStep buildStep,
}) {
  // Resolves the URI in the context of [buildStep].
  //
  // Returns null if the URI is unsupported.
  AssetId? tryResolvedAsset(String uri) {
    try {
      return AssetId.resolve(Uri.parse(uri), from: buildStep.inputId);
    } on UnsupportedError catch (_) {
      return null;
    }
  }

  // `canRead`/`resolver.isLibrary` on a *generated* output can trigger a
  // reentrant build in build_runner ("Cannot recurse at later or equal
  // phase"). Detect it so we can degrade gracefully instead of crashing the
  // whole compiler.
  bool isReentrancyError(Object e) =>
      e is StateError && '$e'.contains('recurse');

  final reader = ReflectableReader(
    recordInjectableFactories: flags.emitInjectableFactories,
    recordComponentFactories: flags.emitComponentFactories,
    // For a given import or export directive, return whether we have the
    // Dart file's URI in our inputs (for Bazel, it will be in the srcs =
    // [ ... ]).
    //
    // For example, if the template processor is running on an input set
    // of generate_for = [a.dart, b.dart], and we are currently running on
    // a.dart, and a.dart imports b.dart, we can assume that there will be
    // a generated b.template.dart that we need to import/initReflector().
    hasInput: (uri) async {
      final placeholder = tryResolvedAsset(_ngPlaceholderName(uri));
      if (placeholder == null) {
        return false;
      }
      try {
        return await buildStep.canRead(placeholder);
      } catch (e) {
        if (!isReentrancyError(e)) rethrow;
        // The `.ng_placeholder` only exists as a *generated* output, which
        // means the corresponding source will generate a `.template.dart`.
        // Treat the input as present so it is linked via `initReflector()`.
        return true;
      }
    },
    // For a given import or export directive, return whether a generated
    // .template.dart file already exists. If it does we will need to link
    // to it and call initReflector().
    isLibrary: (uri) async {
      final assetId = tryResolvedAsset(uri);
      if (assetId == null) {
        return false;
      }
      try {
        return await buildStep.resolver.isLibrary(assetId);
      } catch (e) {
        if (!isReentrancyError(e)) rethrow;
        // A generated output is not a committed source, so it is not a
        // library; linking is handled by `hasInput` instead.
        return false;
      }
    },
  );

  return reader.resolve(from);
}

/// Given `a.dart` returns `a.ng_placeholder`.
String _ngPlaceholderName(String uri) {
  return p.setExtension(uri, '.ng_placeholder');
}
