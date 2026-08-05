
import 'package:build/build.dart';
import 'package:build/experiments.dart';
import 'package:build_test/build_test.dart' hide testBuilder;
import 'package:logging/logging.dart';
import 'package:test/test.dart';
// ignore: implementation_imports
import 'package:angulardart/src/build.dart';
import 'package:angulardart_compiler/v2/context.dart';

/// A 'test' build process (similar to the normal one).
final List<Builder> _testAngularBuilders = [
  templateCompiler(BuilderOptions({})),
  stylesheetCompiler(BuilderOptions({})),
];



// The locations of the import for AngularDart source code.
//
// **NOTE**: Be very careful changing this, there are hard-coded transformation
// rules as part of open sourcing process to make sure this works both
// externally and internally.
const ngPackage = 'angular';
const ngCompiler = 'angular_compiler';
const ngImport = 'package:$ngPackage/angular.dart';


/// Modeled after `package:build_test/build_test.dart#testBuilder`.
Future<void> _testBuilder(
  List<Builder> builders,
  Map<String, String> sourceAssets, {
  List<AssetId>? runBuilderOn,
  void Function(LogRecord)? onLog,
  String? rootPackage,
}) async {
  await withEnabledExperiments(
    () => runWithContext(
      // ignore: invalid_use_of_visible_for_testing_member
      CompileContext.forTesting(),
      () async {
        final result = await testBuilders(
          builders,
          sourceAssets,
          rootPackage: rootPackage ?? ngPackage,
          onLog: onLog,
          generateFor: runBuilderOn?.map((id) => '${id.package}|${id.path}').toSet(),
        );
        if (runBuilderOn != null) {
          for (final id in runBuilderOn) {
            if (!result.outputs.contains(id)) {
              throw StateError('No output for $id');
            }
          }
        }
      },
    ),
    ['non-nullable'],
  );
}

/// Returns a future that completes, asserting potential end states.
///
/// File [input] is treated as the primary input source. Additional
/// sources can be added via the [include] and [inputSource] properties:
/// ```
/// compilesExpect('...',
///   inputSource: 'pkg|lib/input.dart',
///   include: {
///     'pkg|lib/input.html': '...',
///     'pkg|lib/other.dart': '...',
///   }
/// )
/// ```
///
/// Note that `package:angulardart/**.dart` is always included.
Future<void> compilesExpecting(
  String input, {
  String? inputSource,
  Set<AssetId>? runBuilderOn,
  Map<String, String>? include,
  Object? /*Matcher|Iterable<Matcher>*/ errors,
  Object? /*Matcher|Iterable<Matcher>*/ warnings,
  Object? /*Matcher|Iterable<Matcher>*/ notices,
  Object? /*Matcher|Map<String, Matcher>*/ outputs,
}) async {
  // Default values.
  //
  // We do not use constructor defaults, because then we'd have to specify them
  // twice, once here, and again in 'compilesNormally' (+ additional times
  // wherever we want variants).
  inputSource ??= 'pkg|lib/input.dart';
  include ??= const {};

  // Complete list of input sources.
  final sources = <String, String>{
    inputSource: input,
  }..addAll(include);

  // Run the builder.
  final records = <Level, List<LogRecord>>{};
  await _testBuilder(
    _testAngularBuilders,
    sources,
    runBuilderOn: runBuilderOn?.toList(),
    onLog: (record) {
      records.putIfAbsent(record.level, () => []).add(record);
    },
  );

  expectLogRecords(records[Level.SEVERE], errors, 'Errors');
  expectLogRecords(records[Level.WARNING], warnings, 'Warnings');
  expectLogRecords(records[Level.INFO], notices, 'Notices');

  if (outputs != null) {
    // TODO: Add an output verification or consider a golden file mechanism.
    throw UnimplementedError();
  }
}

void expectLogRecords(List<LogRecord>? logs, matcher, String reasonPrefix) {
  if (matcher == null) {
    return;
  }
  logs ??= [];
  expect(logs.map(formattedLogMessage), matcher,
      reason:
          '$reasonPrefix: \n${logs.map((l) => '${formattedLogMessage(l)} at:\n ${l.stackTrace}')}');
}

String formattedLogMessage(LogRecord record) {
  var message = record.message;
  if (record.error != null) {
    message += '\nERROR: ${record.error}';
  }
  return message;
}

/// Returns a future that completes, asserting no errors or warnings occur.
///
/// An alias [compilesExpecting] with `errors` and `warnings` asserting empty.
Future<void> compilesNormally(
  String input, {
  String? inputSource,
  Map<String, String>? include,
  Set<AssetId>? runBuilderOn,
}) =>
    compilesExpecting(
      input,
      inputSource: inputSource,
      runBuilderOn: runBuilderOn,
      include: include,
      errors: isEmpty,
      warnings: isEmpty,
    );

/// Match for a source location, but don't require tests to manage package
/// names.
Matcher containsSourceLocation(int line, int column) =>
    contains('line $line, column $column of ');
