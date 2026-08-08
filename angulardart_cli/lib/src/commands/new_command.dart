import 'dart:async';

import 'package:args/command_runner.dart';

import '../entity_name.dart';
import 'command.dart';
import '../generators/project_generator.dart';

class NewProjectCommand extends NgDartCommand {
  @override
  String get name => 'new';

  @override
  String get description => 'Create an AngularDart project.';

  @override
  String get invocation =>
      'ngdart new <project_name> [--path <path>] [--root-component <Name>] [--ssr]';

  NewProjectCommand() {
    argParser
      ..addOption('path',
          abbr: 'p',
          help: 'Project path.',
          defaultsTo: '.')
      ..addOption('root-component',
          abbr: 'r',
          help: 'Class name of root component.',
          defaultsTo: 'AppComponent')
      ..addFlag('seo',
          abbr: 's',
          help: 'Add SEO and prerendering support.',
          defaultsTo: false)
      ..addFlag('ssr',
          abbr: '',
          help: 'Add server-side rendering support.',
          defaultsTo: false);
  }

  String get _projectPath => argResults!['path'] as String;
  String get _rootComponent => argResults!['root-component'] as String;
  bool get _seo => argResults!['seo'] as bool;
  bool get _ssr => argResults!['ssr'] as bool;

  @override
  Future<void> runCommand() async {
    final rest = argResults!.rest;
    if (rest.isEmpty) {
      throw UsageException('Project name is required.', usage);
    }

    final projectName = EntityName(rest.first);
    final rootComponentName = EntityName(_rootComponent);

    if (_ssr && _seo) {
      throw UsageException('Cannot use both --ssr and --seo flags together.', usage);
    }

    await ProjectGenerator(
      projectName,
      _projectPath,
      rootComponentName,
      seo: _seo,
      ssr: _ssr,
    ).generate();
  }
}
