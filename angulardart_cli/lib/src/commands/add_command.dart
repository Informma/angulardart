import 'dart:async';

import 'add_ssr_command.dart';
import 'add_hybrid_command.dart';
import 'add_seo_command.dart';
import 'command.dart';

class AddCommand extends NgDartCommand {
  @override
  String get name => 'add';

  @override
  String get description => 'Add features to an existing AngularDart project.';

  @override
  String get invocation => 'ngdart add <subcommand>\n\nSubcommands:\n  ssr       Add server-side rendering support.\n  hybrid    Add hybrid SSR + routing + RenderMode support.\n  seo       Add SEO and prerendering support.';

  AddCommand() {
    addSubcommand(AddSsrCommand());
    addSubcommand(AddHybridCommand());
    addSubcommand(AddSeoCommand());
  }

  @override
  Future<void> runCommand() async {}
}
