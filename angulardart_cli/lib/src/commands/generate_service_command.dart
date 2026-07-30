import 'dart:async';

import 'package:args/command_runner.dart';

import '../entity_name.dart';
import '../generators/service_generator.dart';
import 'command.dart';

class GenerateServiceCommand extends NgDartCommand {
  @override
  String get name => 'service';

  @override
  String get description => 'Generate an AngularDart service.';

  @override
  String get invocation => 'ngdart generate service <Name> [--path <path>]';

  GenerateServiceCommand() {
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
      throw UsageException('Service name is required.', usage);
    }

    final entityName = EntityName(rest.first);
    await ServiceGenerator(entityName, _outputPath).generate();
  }
}
