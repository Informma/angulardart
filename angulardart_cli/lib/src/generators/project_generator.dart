import 'package:path/path.dart' as path;

import '../entity_name.dart';
import '../generator.dart';
import '../templates.dart';
import 'component_generator.dart';

class ProjectGenerator extends Generator {
  final String name;
  final String description;
  final ComponentGenerator component;

  ProjectGenerator._(
    this.name,
    this.description,
    this.component,
    String destinationFolder,
  ) : super(destinationFolder);

  factory ProjectGenerator(
    EntityName projectName,
    String destinationFolder,
    EntityName componentClassName,
  ) {
    final projectDir = path.join(destinationFolder, projectName.underscored);
    final component = ComponentGenerator(
      componentClassName,
      path.join(projectDir, 'lib'),
    );
    return ProjectGenerator._(
      projectName.underscored,
      projectName.spaced,
      component,
      projectDir,
    );
  }

  @override
  Future<void> generate() async {
    final context = {
      'name': name,
      'description': description,
      'component': {
        'selector': component.selector,
        'className': component.className,
        'targetName': component.targetName,
      },
    };

    await writeFromTemplate(
      path.join(destinationFolder, 'pubspec.yaml'),
      Templates.projectPubspec,
      context,
    );
    await writeStatic(
      path.join(destinationFolder, 'analysis_options.yaml'),
      Templates.projectAnalysisOptions,
    );
    await writeStatic(
      path.join(destinationFolder, 'build.yaml'),
      Templates.projectBuildYaml,
    );
    await writeStatic(
      path.join(destinationFolder, '.gitignore'),
      Templates.projectGitignore,
    );
    await writeFromTemplate(
      path.join(destinationFolder, 'web', 'index.html'),
      Templates.projectIndexHtml,
      context,
    );
    await writeFromTemplate(
      path.join(destinationFolder, 'web', 'main.dart'),
      Templates.projectMainDart,
      context,
    );
    await writeStatic(
      path.join(destinationFolder, 'web', 'styles.css'),
      Templates.projectStyles,
    );

    await component.generate();

    print('Created project "$name" at $destinationFolder');
    print('');
    print('Next steps:');
    print('  cd $name');
    print('  dart pub get');
    print('  dart run build_runner serve');
  }
}
