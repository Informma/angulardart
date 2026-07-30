import 'dart:async';

import 'command.dart';
import 'generate_component_command.dart';
import 'generate_directive_command.dart';
import 'generate_pipe_command.dart';
import 'generate_service_command.dart';

class GenerateCommand extends NgDartCommand {
  @override
  String get name => 'generate';

  @override
  String get description => 'Generate a component, directive, pipe, or service.';

  @override
  String get invocation => 'ngdart generate <type> <name> [options]';

  GenerateCommand() {
    addSubcommand(GenerateComponentCommand());
    addSubcommand(GenerateDirectiveCommand());
    addSubcommand(GeneratePipeCommand());
    addSubcommand(GenerateServiceCommand());
  }

  @override
  Future<void> runCommand() async {}
}
