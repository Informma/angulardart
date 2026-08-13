import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';

import 'command.dart';

class SeoInitCommand extends NgDartCommand {
  @override
  String get name => 'init';

  @override
  String get description => 'Add SEO and prerendering support to an existing project.';

  @override
  String get invocation => 'ngdart seo init';

  @override
  Future<void> runCommand() async {
    final pubspecFile = File('pubspec.yaml');
    if (!pubspecFile.existsSync()) {
      throw UsageException(
        'pubspec.yaml not found. Run this command from the root of an AngularDart project.',
        usage,
      );
    }

    var pubspecContent = await pubspecFile.readAsString();

    if (!pubspecContent.contains('angulardart:')) {
      throw UsageException(
        'This does not appear to be an AngularDart project (angulardart not found in dependencies).',
        usage,
      );
    }

    print('Adding SEO support...');

    if (!pubspecContent.contains('angulardart_router:')) {
      pubspecContent = pubspecContent.replaceFirst(
        'dependencies:',
        'dependencies:\n  angulardart_router: \'>=5.0.0 <6.0.0\'',
      );
      print('  Added angulardart_router');
    }

    if (!pubspecContent.contains('angulardart_seo:')) {
      pubspecContent = pubspecContent.replaceFirst(
        'dependencies:',
        'dependencies:\n  angulardart_seo: \'>=1.0.0 <2.0.0\'',
      );
      print('  Added angulardart_seo');
    }

    if (!pubspecContent.contains('angulardart_prerender:')) {
      pubspecContent = pubspecContent.replaceFirst(
        'dev_dependencies:',
        'dev_dependencies:\n  angulardart_prerender: \'>=1.0.0 <2.0.0\'',
      );
      print('  Added angulardart_prerender');
    }

    await pubspecFile.writeAsString(pubspecContent);

    final mainFile = File('web/main.dart');
    if (mainFile.existsSync()) {
      var mainContent = await mainFile.readAsString();

      if (!mainContent.contains('angulardart_seo')) {
        mainContent = "import 'package:angulardart_seo/angulardart_seo.dart';\n$mainContent";
      }

      if (!mainContent.contains('ClassProvider(SeoService)')) {
        mainContent = mainContent.replaceFirst(
          '@GenerateInjector([',
          '@GenerateInjector([\n  ClassProvider(SeoService),\n  ClassProvider(TitleService),',
        );
      }

      await mainFile.writeAsString(mainContent);
      print('  Updated web/main.dart');
    }

    final prerenderFile = File('prerender.yaml');
    if (!prerenderFile.existsSync()) {
      await prerenderFile.writeAsString('''
routes:
  - /

timeout: 5000
wait_for_network_idle: true
generate_sitemap: true
generate_robots: true
base_url: 'https://example.com'
''');
      print('  Created prerender.yaml');
    }

    print('');
    print('SEO support added successfully!');
    print('');
    print('Next steps:');
    print('  1. Add SeoService to your components and call setPageSeo() in ngOnInit()');
    print('  2. dart pub get');
    print('  3. dart run build_runner build --release');
    print('  4. dart run angulardart_prerender');
  }
}
