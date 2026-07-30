import 'package:args/command_runner.dart';

import 'commands/new_command.dart';
import 'commands/generate_command.dart';

class NgDartCommandRunner extends CommandRunner<void> {
  NgDartCommandRunner()
      : super('ngdart', 'CLI scaffolding tool for AngularDart.') {
    addCommand(NewProjectCommand());
    addCommand(GenerateCommand());
  }
}
