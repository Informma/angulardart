import 'package:path/path.dart' as path;

import '../entity_name.dart';
import '../generator.dart';
import '../templates.dart';
import 'component_generator.dart';

class ProjectGenerator extends Generator {
  final String name;
  final String description;
  final ComponentGenerator component;
  final bool seo;

  ProjectGenerator._(
    this.name,
    this.description,
    this.component,
    this.seo,
    String destinationFolder,
  ) : super(destinationFolder);

  factory ProjectGenerator(
    EntityName projectName,
    String destinationFolder,
    EntityName componentClassName, {
    bool seo = false,
  }) {
    final projectDir = path.join(destinationFolder, projectName.underscored);
    final component = ComponentGenerator(
      componentClassName,
      path.join(projectDir, 'lib'),
    );
    return ProjectGenerator._(
      projectName.underscored,
      projectName.spaced,
      component,
      seo,
      projectDir,
    );
  }

  @override
  Future<void> generate() async {
    final context = {
      'name': name,
      'description': description,
      'seo': seo,
      'component': {
        'selector': component.selector,
        'className': component.className,
        'targetName': component.targetName,
      },
    };

    await writeFromTemplate(
      path.join(destinationFolder, 'pubspec.yaml'),
      seo ? Templates.projectPubspecSeo : Templates.projectPubspec,
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
      seo ? Templates.projectIndexHtmlSeo : Templates.projectIndexHtml,
      context,
    );
    if (seo) {
      // SEO projects: main() is in app_component.dart, no separate main.dart needed
    } else {
      await writeFromTemplate(
        path.join(destinationFolder, 'web', 'main.dart'),
        Templates.projectMainDart,
        context,
      );
    }
    await writeStatic(
      path.join(destinationFolder, 'web', 'styles.css'),
      Templates.projectStyles,
    );

    if (seo) {
      await writeStatic(
        path.join(destinationFolder, 'prerender.yaml'),
        Templates.projectPrerenderYaml,
      );
      await writeFromTemplate(
        path.join(destinationFolder, 'web', 'main.dart'),
        Templates.projectMainDartSeo,
        context,
      );
    } else {
      await component.generate();
    }

    print('Created project "$name" at $destinationFolder');
    print('');
    print('Next steps:');
    print('  cd $name');
    print('  dart pub get');
    if (seo) {
      print('  dart run build_runner build --release');
      print('  dart run angulardart_prerender');
    } else {
      print('  dart run build_runner serve');
    }
  }
}
