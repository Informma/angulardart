import 'dart:async';

import 'command.dart';
import 'seo_init_command.dart';

class SeoCommand extends NgDartCommand {
  @override
  String get name => 'seo';

  @override
  String get description => 'SEO and prerendering management.';

  @override
  String get invocation => 'ngdart seo <subcommand>';

  SeoCommand() {
    addSubcommand(SeoInitCommand());
  }

  @override
  Future<void> runCommand() async {}
}
