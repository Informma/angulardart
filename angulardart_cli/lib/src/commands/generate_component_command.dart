import 'dart:async';

import 'package:args/command_runner.dart';

import '../entity_name.dart';
import '../generators/component_generator.dart';
import 'command.dart';

class GenerateComponentCommand extends NgDartCommand {
  @override
  String get name => 'component';

  @override
  String get description => 'Generate an AngularDart component.';

  @override
  String get invocation => 'ngdart generate component <Name> [--path <path>]';

  GenerateComponentCommand() {
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
      throw UsageException('Component name is required.', usage);
    }

    final entityName = EntityName(rest.first);
    await ComponentGenerator(entityName, _outputPath).generate();
  }
}
