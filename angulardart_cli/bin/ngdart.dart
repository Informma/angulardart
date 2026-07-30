import 'dart:io';

import 'package:angulardart_cli/src/command_runner.dart';
import 'package:args/command_runner.dart';

Future<void> main(List<String> args) async {
  final runner = NgDartCommandRunner();

  try {
    await runner.run(args);
  } on UsageException catch (e) {
    print(e);
    exit(64);
  } catch (e) {
    print(e);
    exit(1);
  }
}
