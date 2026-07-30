import 'dart:async';

import 'package:args/command_runner.dart';

import '../entity_name.dart';
import '../generators/directive_generator.dart';
import 'command.dart';

class GenerateDirectiveCommand extends NgDartCommand {
  @override
  String get name => 'directive';

  @override
  String get description => 'Generate an AngularDart directive.';

  @override
  String get invocation => 'ngdart generate directive <Name> [--path <path>]';

  GenerateDirectiveCommand() {
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
      throw UsageException('Directive name is required.', usage);
    }

    final entityName = EntityName(rest.first);
    await DirectiveGenerator(entityName, _outputPath).generate();
  }
}
