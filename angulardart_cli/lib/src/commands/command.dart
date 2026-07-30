import 'dart:async';

import 'package:args/command_runner.dart';

abstract class NgDartCommand extends Command<void> {
  static const String binaryName = 'ngdart';

  @override
  Future<void> run() async {
    await runCommand();
  }

  Future<void> runCommand();
}
