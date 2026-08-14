import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart' as path;

import 'command.dart';

/// Adds SEO + prerendering support to an existing AngularDart project.
///
/// This command can be combined with SSR (if angulardart_server is present)
/// or used for client-side prerendering only.
class AddSeoCommand extends NgDartCommand {
  @override
  String get name => 'seo';

  @override
  String get description => 'Add SEO and prerendering support to an existing project.';

  @override
  String get invocation => 'ngdart add seo';

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

    // Check if SEO is already present
    if (pubspecContent.contains('angulardart_seo:')) {
      print('SEO support is already enabled in this project.');
      return;
    }

    final mainFile = File('web/main.dart');
    if (!mainFile.existsSync()) {
      throw UsageException('web/main.dart not found. Run this command from the root of an AngularDart project.', usage);
    }

    print('Adding SEO support...');

    // Extract project name for platform_dom import (if SSR is present)
    final nameMatch = RegExp(r'^name:\s*(.+)$', multiLine: true).firstMatch(pubspecContent);
    final projectName = nameMatch?.group(1)?.trim() ?? 'my_app';

    // 1. Modify pubspec.yaml - add SEO dependencies
    if (!pubspecContent.contains('angulardart_seo:')) {
      pubspecContent = pubspecContent.replaceFirst(
        'dependencies:',
        "dependencies:\n  angulardart_router: '>=5.0.0 <6.0.0'\n  angulardart_seo: '>=1.0.0 <2.0.0'",
      );
      print('  Added angulardart_router and angulardart_seo');
    }

    if (!pubspecContent.contains('angulardart_prerender:')) {
      pubspecContent = pubspecContent.replaceFirst(
        'dev_dependencies:',
        "dev_dependencies:\n  angulardart_prerender: '>=1.0.0 <2.0.0'",
      );
      print('  Added angulardart_prerender');
    }

    await pubspecFile.writeAsString(pubspecContent);

    // 2. Modify index.html to add base href (if not present)
    final indexHtml = File('web/index.html');
    if (indexHtml.existsSync()) {
      var htmlContent = await indexHtml.readAsString();
      if (!htmlContent.contains('<base href')) {
        htmlContent = htmlContent.replaceFirst(
          '<head>',
          '<head>\n    <base href="/">',
        );
        await indexHtml.writeAsString(htmlContent);
        print('  Updated web/index.html with base href');
      }
    }

    // 3. Transform main.dart to add routing + SEO services
    var mainContent = await mainFile.readAsString();

    if (mainContent.contains('SeoService') && mainContent.contains('routerProviders')) {
      print('web/main.dart already has SEO support.');
    } else {
      // Check if SSR is present (has hydrateApplication)
      final hasSsr = mainContent.contains('hydrateApplication');

      // Extract the factory name from runApp call
      final factoryMatch = RegExp(r'runApp\((.+?)\)').firstMatch(mainContent);
      final factoryArg = factoryMatch != null ? factoryMatch.group(1)!.trim() : 'ng.AppComponentNgFactory';

      // Check if createInjector is already present
      final hasInjector = mainContent.contains('createInjector:');

      String newMain;
      if (hasSsr) {
        // SSR + SEO: add routing, hydration detection, and SEO services
        final platformImport = "import 'package:$projectName/platform_dom.dart' as platform_dom;";
        final hasPlatformImport = mainContent.contains('platform_dom');

        newMain = '''void main() async {
  final isServerRendered =
      (platform_dom.window as dynamic).document.documentElement?.getAttribute('ng-server-context') == 'ssr';

  if (isServerRendered) {
    await hydrateApplication($factoryArg${hasInjector ? ', createInjector: appInjector' : ''});
  } else {
    runApp($factoryArg${hasInjector ? ', createInjector: appInjector' : ''});
  }
}''';

        if (!hasPlatformImport) {
          mainContent = '$platformImport\n$mainContent';
        }
      } else {
        // CSR + SEO only (no SSR)
        newMain = '''void main() {
  runApp($factoryArg${hasInjector ? ', createInjector: appInjector' : ''});
}''';
      }

      // Replace void main() block
      final mainBlockPattern = RegExp(r'void\s+main\(\)\s*\{[^}]*runApp\([^)]+\)[^}]*\}', multiLine: true);
      if (mainBlockPattern.hasMatch(mainContent)) {
        mainContent = mainContent.replaceFirst(mainBlockPattern, newMain);
      }

      // Add SEO imports
      final hasSeoImport = mainContent.contains("import 'package:angulardart_seo/");
      final hasRouterImport = mainContent.contains("import 'package:angulardart_router/");

      if (!hasSeoImport) {
        mainContent = "import 'package:angulardart_seo/angulardart_seo.dart';\n$mainContent";
      }

      if (!hasRouterImport) {
        mainContent = "import 'package:angulardart_router/angulardart_router.dart';\n$mainContent";
      }

      await mainFile.writeAsString(mainContent);
      print('  Updated web/main.dart with SEO imports');
    }

    // 4. Create prerender.yaml
    final prerenderFile = File('prerender.yaml');
    if (!prerenderFile.existsSync()) {
      const prerenderYaml = '''routes:
  - /
  - /about
  - /contact

timeout: 30000
render_delay_ms: 10000
generate_sitemap: true
generate_robots: true
base_url: 'https://example.com'
''';
      await prerenderFile.writeAsString(prerenderYaml);
      print('  Created prerender.yaml');
    }

    // 5. If SSR is present, ensure platform_dom files exist
    if (mainContent.contains('hydrateApplication')) {
      final libDir = Directory('lib');
      await libDir.create(recursive: true);

      final platformDomFiles = <String, String>{
        'platform_dom.dart': '''/// Platform-agnostic DOM access for SSR.
library;

export 'platform_dom_browser.dart' if (dart.library.io) 'platform_dom_vm.dart';
''',
        'platform_dom_browser.dart': '''/// Browser implementation - re-exports dart:html DOM types.
library;

export 'dart:html';
''',
        'platform_dom_vm.dart': r'''/// Native/AOT platform stub implementations for SSR.
library;

class _StubDocument {
  _StubElement? get documentElement => null;
}

class _StubElement {
  String textContent = '';
  String id = '';
  String? getAttribute(String name) => null;
}

class _StubWindow {
  static final _StubWindow _instance = _StubWindow._();
  _StubWindow._();
  static _StubWindow get instance => _instance;
  _StubDocument? get document => null;
}

dynamic get window => _StubWindow.instance;
''',
      };

      for (final entry in platformDomFiles.entries) {
        final file = File(path.join(libDir.path, entry.key));
        if (!file.existsSync()) {
          await file.writeAsString(entry.value);
          print('  Created lib/${entry.key}');
        }
      }
    }

    print('');
    print('SEO support added successfully!');
    print('');
    print('Next steps:');
    print('  1. dart pub get');
    if (mainContent.contains('hydrateApplication')) {
      print('  2. # Build SSR + SEO :');
      print('  3. ngdart generate-stubs');
      print('  4. dart run build_runner clean');
      print('  5. dart run build_runner build web --release');
      print('  6. for f in .dart_tool/build/generated/*/lib/*.template.dart; do cp "\$f" lib/ 2>/dev/null || true; done');
      print('  7. for f in .dart_tool/build/generated/*/web/*.template.dart; do cp "\$f" web/ 2>/dev/null || true; done');
      print('  8. dart bin/server.dart');
    } else {
      print('  2. # Build SEO :');
      print('  3. dart run build_runner build --release');
      print('  4. dart run angulardart_prerender');
    }
  }
}
