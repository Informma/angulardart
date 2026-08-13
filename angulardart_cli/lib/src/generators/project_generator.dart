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
  final bool hybrid;

  ProjectGenerator._(
    this.name,
    this.description,
    this.component,
    this.seo,
    this.ssr,
    this.hybrid,
    String destinationFolder,
  ) : super(destinationFolder);

  factory ProjectGenerator(
    EntityName projectName,
    String destinationFolder,
    EntityName componentClassName, {
    bool seo = false,
    bool ssr = false,
    bool hybrid = false,
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
      hybrid,
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
      'hybrid': hybrid,
      'component': {
        'selector': component.selector,
        'className': component.className,
        'targetName': component.targetName,
      },
    };

    // Add platformDomImportStatement for hybrid and ssr+seo projects
    if (hybrid || (ssr && seo)) {
      context['platformDomImportStatement'] = "import 'package:$name/platform_dom.dart' as platform_dom;";
    }

    await writeFromTemplate(
      path.join(destinationFolder, 'pubspec.yaml'),
      hybrid ? Templates.projectPubspecHybrid : (ssr && seo ? Templates.projectPubspecSsrSeo : (seo ? Templates.projectPubspecSeo : (ssr ? Templates.projectPubspecSsr : Templates.projectPubspec))),
      context,
    );
    await writeStatic(
      path.join(destinationFolder, 'analysis_options.yaml'),
      Templates.projectAnalysisOptions,
    );
    await writeStatic(
      path.join(destinationFolder, 'build.yaml'),
      (ssr || hybrid) ? Templates.projectBuildYamlSsr : Templates.projectBuildYaml,
    );
    await writeStatic(
      path.join(destinationFolder, '.gitignore'),
      Templates.projectGitignore,
    );
    await writeFromTemplate(
      path.join(destinationFolder, 'web', 'index.html'),
      hybrid ? Templates.projectIndexHtmlHybrid : (ssr && seo ? Templates.projectIndexHtmlSsrSeo : (seo ? Templates.projectIndexHtmlSeo : (ssr ? Templates.projectIndexHtmlSsr : Templates.projectIndexHtml))),
      context,
    );

    if (seo && ssr) {
      // SSR + SEO projects: full routing + hydration + SEO
      await writeFromTemplate(
        path.join(destinationFolder, 'web', 'main.dart'),
        Templates.projectMainDartSsrSeo,
        context,
      );
      await writeFromTemplate(
        path.join(destinationFolder, 'web', 'main.server.dart'),
        Templates.projectMainServerDartSsrSeoEntry,
        context,
      );
      await _generateServerBin(context, routing: true);
    } else if (seo) {
      // SEO projects: main() is in app_component.dart
    } else if (hybrid) {
      await writeFromTemplate(
        path.join(destinationFolder, 'web', 'main.dart'),
        Templates.projectMainDartHybrid,
        context,
      );
      await writeFromTemplate(
        path.join(destinationFolder, 'web', 'main.server.dart'),
        Templates.projectMainServerDartHybridEntry,
        context,
      );
      await _generateServerBin(context, routing: true);
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

    if (seo && ssr) {
      // SSR + SEO: write prerender.yaml and SEO components
      await writeStatic(
        path.join(destinationFolder, 'prerender.yaml'),
        Templates.projectPrerenderYamlSsrSeo,
      );
      await _generatePlatformDom();
      await _generateSsrSeoComponents(context);
      await writeFromTemplate(
        path.join(destinationFolder, 'README.md'),
        Templates.projectReadmeSsrSeo,
        context,
      );
    } else if (seo) {
      await writeStatic(
        path.join(destinationFolder, 'prerender.yaml'),
        Templates.projectPrerenderYaml,
      );
      await writeFromTemplate(
        path.join(destinationFolder, 'web', 'main.dart'),
        Templates.projectMainDartSeo,
        context,
      );
    } else if (hybrid) {
      await _generatePlatformDom();
      await _generateHybridComponents(context);
      await writeFromTemplate(
        path.join(destinationFolder, 'README.md'),
        Templates.projectReadmeHybrid,
        context,
      );
    } else if (ssr) {
      await _generatePlatformDom();
      await writeStatic(
        path.join(destinationFolder, 'web', 'app_component.html'),
        Templates.projectAppComponentHtmlSsr,
      );
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
    if (hybrid || ssr) {
      print('  # Développement (client uniquement) :');
      print('  dart run build_runner serve');
      print('  # Build SSR :');
      print('  dart run build_runner build web');
      print('  ngdart generate-stubs');
      print('  dart bin/server.dart');
    } else if (seo) {
      print('  # Build SEO :');
      print('  dart run build_runner build --release');
      print('  dart run angulardart_prerender');
    } else {
      print('  dart run build_runner serve');
    }
  }

  Future<void> _generateServerBin(
    Map<String, dynamic> context, {
    bool routing = false,
  }) async {
    final binDir = path.join(destinationFolder, 'bin');
    await writeFromTemplate(
      path.join(binDir, 'server.dart'),
      routing ? Templates.projectMainServerDartRouting : Templates.projectMainServerDartFixed,
      context,
    );
  }

  Future<void> _generatePlatformDom() async {
    final libDir = path.join(destinationFolder, 'lib');
    await writeStatic(
      path.join(libDir, 'platform_dom.dart'),
      Templates.projectPlatformDom,
    );
    await writeStatic(
      path.join(libDir, 'platform_dom_browser.dart'),
      Templates.projectPlatformDomBrowser,
    );
    await writeStatic(
      path.join(libDir, 'platform_dom_vm.dart'),
      Templates.projectPlatformDomVm,
    );
  }

  Future<void> _generateHybridComponents(Map<String, dynamic> context) async {
    final libDir = path.join(destinationFolder, 'lib');

    await writeFromTemplate(
      path.join(libDir, 'app_component.dart'),
      Templates.projectAppComponentDart,
      context,
    );
    await writeStatic(
      path.join(libDir, 'app_component.html'),
      Templates.projectAppComponentHtml,
    );

    await writeFromTemplate(
      path.join(libDir, 'home_component.dart'),
      Templates.projectHomeComponentDart,
      context,
    );
    await writeStatic(
      path.join(libDir, 'home_component.html'),
      Templates.projectHomeComponentHtml,
    );

    await writeStatic(
      path.join(libDir, 'about_component.dart'),
      Templates.projectAboutComponentDart,
    );
    await writeStatic(
      path.join(libDir, 'about_component.html'),
      Templates.projectAboutComponentHtml,
    );

    await writeStatic(
      path.join(libDir, 'dashboard_component.dart'),
      Templates.projectDashboardComponentDart,
    );
    await writeStatic(
      path.join(libDir, 'dashboard_component.html'),
      Templates.projectDashboardComponentHtml,
    );

    await writeStatic(
      path.join(libDir, 'data_service.dart'),
      Templates.projectDataServiceDart,
    );
  }

  Future<void> _generateSsrSeoComponents(Map<String, dynamic> context) async {
    final libDir = path.join(destinationFolder, 'lib');

    await writeFromTemplate(
      path.join(libDir, 'app_component.dart'),
      Templates.projectAppComponentSsrSeoDart,
      context,
    );
    await writeStatic(
      path.join(libDir, 'app_component.html'),
      Templates.projectAppComponentSsrSeoHtml,
    );

    await writeFromTemplate(
      path.join(libDir, 'home_component.dart'),
      Templates.projectSsrSeoHomeComponentDart,
      context,
    );

    await writeFromTemplate(
      path.join(libDir, 'about_component.dart'),
      Templates.projectSsrSeoAboutComponentDart,
      context,
    );

    await writeFromTemplate(
      path.join(libDir, 'contact_component.dart'),
      Templates.projectSsrSeoContactComponentDart,
      context,
    );
  }
}
