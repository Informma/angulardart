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
      'ngdart new <project_name> [--path <path>] [--root-component <Name>] [--ssr] [--seo] [--hybrid]';

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
          help: 'Add SEO and prerendering support. Can be combined with --ssr.',
          defaultsTo: false)
      ..addFlag('ssr',
          help: 'Add server-side rendering support (no routing). Can be combined with --seo.',
          defaultsTo: false)
      ..addFlag('hybrid',
          help: 'Add hybrid SSR + routing + RenderMode support.',
          defaultsTo: false);
  }

  String get _projectPath => argResults!['path'] as String;
  String get _rootComponent => argResults!['root-component'] as String;
  bool get _seo => argResults!['seo'] as bool;
  bool get _ssr => argResults!['ssr'] as bool;
  bool get _hybrid => argResults!['hybrid'] as bool;

  @override
  Future<void> runCommand() async {
    final rest = argResults!.rest;
    if (rest.isEmpty) {
      throw UsageException('Project name is required.', usage);
    }

    final projectName = EntityName(rest.first);
    final rootComponentName = EntityName(_rootComponent);

    if (_hybrid && _ssr) {
      throw UsageException('Cannot use both --hybrid and --ssr flags together (--hybrid implies SSR).', usage);
    }

    await ProjectGenerator(
      projectName,
      _projectPath,
      rootComponentName,
      seo: _seo,
      ssr: _ssr,
      hybrid: _hybrid,
    ).generate();
  }
}
