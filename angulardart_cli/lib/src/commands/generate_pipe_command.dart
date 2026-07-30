import 'dart:async';

import 'package:args/command_runner.dart';

import '../entity_name.dart';
import '../generators/pipe_generator.dart';
import 'command.dart';

class GeneratePipeCommand extends NgDartCommand {
  @override
  String get name => 'pipe';

  @override
  String get description => 'Generate an AngularDart pipe.';

  @override
  String get invocation => 'ngdart generate pipe <Name> [--path <path>]';

  GeneratePipeCommand() {
    argParser.addOption('path',
        abbr: 'p',
        help: 'Output path.',
        defaultsTo: 'lib');
  }

  String get _outputPath => argResults!['path'] as String;

  @override
  Future<void> runCommand() async {
    final rest = argResults!.rest;
    if (rest.isEmpty) {
      throw UsageException('Pipe name is required.', usage);
    }

    final entityName = EntityName(rest.first);
    await PipeGenerator(entityName, _outputPath).generate();
  }
}
