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
  final bool ssr;

  ProjectGenerator._(
    this.name,
    this.description,
    this.component,
    this.seo,
    this.ssr,
    String destinationFolder,
  ) : super(destinationFolder);

  factory ProjectGenerator(
    EntityName projectName,
    String destinationFolder,
    EntityName componentClassName, {
    bool seo = false,
    bool ssr = false,
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
      ssr,
      projectDir,
    );
  }

  @override
  Future<void> generate() async {
    final context = {
      'name': name,
      'description': description,
      'seo': seo,
      'ssr': ssr,
      'component': {
        'selector': component.selector,
        'className': component.className,
        'targetName': component.targetName,
      },
    };

    await writeFromTemplate(
      path.join(destinationFolder, 'pubspec.yaml'),
      seo ? Templates.projectPubspecSeo : (ssr ? Templates.projectPubspecSsr : Templates.projectPubspec),
      context,
    );
    await writeStatic(
      path.join(destinationFolder, 'analysis_options.yaml'),
      Templates.projectAnalysisOptions,
    );
    await writeStatic(
      path.join(destinationFolder, 'build.yaml'),
      ssr ? Templates.projectBuildYamlSsr : Templates.projectBuildYaml,
    );
    await writeStatic(
      path.join(destinationFolder, '.gitignore'),
      Templates.projectGitignore,
    );
    await writeFromTemplate(
      path.join(destinationFolder, 'web', 'index.html'),
      seo ? Templates.projectIndexHtmlSeo : (ssr ? Templates.projectIndexHtmlSsr : Templates.projectIndexHtml),
      context,
    );

    if (seo) {
      // SEO projects: main() is in app_component.dart
    } else if (ssr) {
      await writeFromTemplate(
        path.join(destinationFolder, 'web', 'main.dart'),
        Templates.projectMainDartSsr,
        context,
      );
      await writeFromTemplate(
        path.join(destinationFolder, 'web', 'main.server.dart'),
        Templates.projectMainServerDartEntry,
        context,
      );
      await _generateServerBin(context);
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
    } else if (ssr) {
      await writeFromTemplate(
        path.join(destinationFolder, 'README.md'),
        Templates.projectReadmeSsr,
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
    } else if (ssr) {
      print('  # Dveloppement (client uniquement) :');
      print('  dart run build_runner serve');
      print('  # Build SSR :');
      print('  dart run build_runner build web');
      print('  dart bin/server.dart');
    } else {
      print('  dart run build_runner serve');
    }
  }

  Future<void> _generateServerBin(Map<String, dynamic> context) async {
    final binDir = path.join(destinationFolder, 'bin');
    await writeFromTemplate(
      path.join(binDir, 'server.dart'),
      Templates.projectMainServerDartFixed,
      context,
    );
  }
}
