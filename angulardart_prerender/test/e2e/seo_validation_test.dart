import 'dart:async';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

/// Helper to run a process.
Future<_ProcessResult> _runProc(
  String executable,
  List<String> args, {
  String? workingDirectory,
}) async {
  final proc = await Process.start(
    executable, args,
    workingDirectory: workingDirectory, runInShell: true,
  );
  final stdoutBuf = <int>[];
  final stderrBuf = <int>[];
  final stdoutSub = proc.stdout.listen(stdoutBuf.addAll);
  final stderrSub = proc.stderr.listen(stderrBuf.addAll);
  final exitCode = await proc.exitCode;
  await stdoutSub.cancel();
  await stderrSub.cancel();
  return _ProcessResult(
    exitCode: exitCode,
    stdout: String.fromCharCodes(stdoutBuf),
    stderr: String.fromCharCodes(stderrBuf),
  );
}

class _ProcessResult {
  final int exitCode;
  final String stdout;
  final String stderr;
  const _ProcessResult({required this.exitCode, required this.stdout, required this.stderr});
}

/// E2E test suite for prerendering SEO validation.
void main() {
  final monorepoRoot = Directory.current.path;
  final cliTool = File(p.join(monorepoRoot, 'angulardart_cli', 'bin', 'ngdart.dart'));

  if (!cliTool.existsSync()) {
    print('WARNING: angulardart_cli/bin/ngdart.dart not found. Skipping E2E tests.');
    return;
  }

  Future<bool> _canUsePuppeteer() async {
    try {
      final result = await Process.run('which', ['chromium-browser']);
      return result.exitCode == 0;
    } catch (_) {
      return false;
    }
  }

  group('E2E Prerendering SEO Validation', () {
    late String testProjectDir;
    late String outputDir;

    setUpAll(() async {
      final canUsePuppeteer = await _canUsePuppeteer();
      if (!canUsePuppeteer) {
        print('SKIP: No browser found for E2E tests.');
        throw Exception('SKIP: No browser found');
      }

      final tempDir = Directory.systemTemp.createTempSync('angulardart_e2e_');
      testProjectDir = p.join(tempDir.path, 'seo_test_project');
      outputDir = p.join(testProjectDir, 'build', 'web');

      // Generate project with CLI
      final cliResult = await _runProc(
        'dart', [
          'run',
          p.join(monorepoRoot, 'angulardart_cli', 'bin', 'ngdart.dart'),
          'new', testProjectDir, '--seo',
        ],
      );
      if (cliResult.exitCode != 0) {
        throw Exception('Failed to generate project:\n${cliResult.stderr}');
      }

      // Fix pubspec.yaml
      final pubspec = File(p.join(testProjectDir, 'pubspec.yaml'));
      var content = await pubspec.readAsString();
      content = content.replaceAllMapped(
          RegExp(r'^name: .+$', multiLine: true), (m) => 'name: seo_test_project');
      content = content.replaceAllMapped(
        RegExp(r'^description: .+$', multiLine: true),
        (m) => 'description: SEO Test Project',
      );
      content += '''

dependency_overrides:
  angulardart:
    path: ${p.join(monorepoRoot, 'angular', 'angular')}
  angulardart_router:
    path: ${p.join(monorepoRoot, 'angular', 'angular_router')}
  angulardart_seo:
    path: ${p.join(monorepoRoot, 'angulardart_seo')}
  angulardart_test:
    path: ${p.join(monorepoRoot, 'angular', 'angular_test')}
  angulardart_prerender:
    path: ${p.join(monorepoRoot, 'angulardart_prerender')}
''';
      await pubspec.writeAsString(content);

      // Get dependencies
      final pubGet = await _runProc(
        'dart', ['pub', 'get'],
        workingDirectory: testProjectDir,
      );
      if (pubGet.exitCode != 0) {
        throw Exception('Failed to get dependencies:\n${pubGet.stderr}');
      }

      // Remove .dart_tool/build
      final dartToolBuild = Directory(p.join(testProjectDir, '.dart_tool', 'build'));
      if (await dartToolBuild.exists()) {
        await dartToolBuild.delete(recursive: true);
      }

      // Build
      final buildResult = await _runProc(
        'dart', ['run', 'build_runner', 'build', '--release', '-o', 'build'],
        workingDirectory: testProjectDir,
      );
      if (buildResult.exitCode != 0) {
        throw Exception('Build failed:\n${buildResult.stderr}');
      }

      // Run prerendering
      final prerenderYaml = File(p.join(testProjectDir, 'prerender.yaml'));
      var prerenderContent = await prerenderYaml.readAsString();
      prerenderContent = prerenderContent.replaceAll(
        "base_url: 'https://example.com'",
        "base_url: 'http://localhost:18080'",
      );
      await prerenderYaml.writeAsString(prerenderContent);

      final prerenderResult = await _runProc(
        'dart', [
          'run',
          p.join(monorepoRoot, 'angulardart_prerender', 'bin', 'prerender.dart'),
          '-c', 'prerender.yaml', '-o', outputDir, '-p', '18080',
        ],
        workingDirectory: testProjectDir,
      );
      if (prerenderResult.exitCode != 0) {
        throw Exception('Prerendering failed:\n${prerenderResult.stderr}');
      }
    });

    tearDownAll(() async {
      final testDir = Directory(testProjectDir);
      if (await testDir.exists()) {
        await testDir.delete(recursive: true);
      }
    });

    group('HTML SEO Elements', () {
      test('index.html has data-prerendered="true" on <html>', () async {
        final html = await _readFile(p.join(outputDir, 'index.html'));
        expect(html, contains('<html data-prerendered='));
        expect(html, contains('data-prerendered="true"'));
      });

      test('index.html has a <title> tag', () async {
        final html = await _readFile(p.join(outputDir, 'index.html'));
        expect(html, contains('<title>'));
        expect(html, isNot(contains('{{name}}')));
      });

      test('index.html has meta description', () async {
        final html = await _readFile(p.join(outputDir, 'index.html'));
        expect(html, contains('<meta name="description"'));
      });

      test('about/index.html has data-prerendered="true"', () async {
        final html = await _readFile(p.join(outputDir, 'about', 'index.html'));
        expect(html, contains('data-prerendered="true"'));
      });

      test('about and home have titles', () async {
        final homeTitle = await _extractTitle(p.join(outputDir, 'index.html'));
        final aboutTitle = await _extractTitle(
            p.join(outputDir, 'about', 'index.html'));
        expect(homeTitle, isNotEmpty);
        expect(aboutTitle, isNotEmpty);
      });

      test('contact/index.html has data-prerendered="true"', () async {
        final html = await _readFile(p.join(outputDir, 'contact', 'index.html'));
        expect(html, contains('data-prerendered="true"'));
      });

      test('contact/index.html has meta description', () async {
        final html = await _readFile(p.join(outputDir, 'contact', 'index.html'));
        expect(html, contains('<meta name="description"'));
      });
    });

    group('Canonical URLs', () {
      test('index.html has canonical link', () async {
        final html = await _readFile(p.join(outputDir, 'index.html'));
        expect(html, contains('rel="canonical"'));
        expect(html, contains('href='));
      });

      test('about/index.html has canonical link', () async {
        final html = await _readFile(p.join(outputDir, 'about', 'index.html'));
        expect(html, contains('rel="canonical"'));
      });

      test('contact/index.html has canonical link', () async {
        final html = await _readFile(p.join(outputDir, 'contact', 'index.html'));
        expect(html, contains('rel="canonical"'));
      });
    });

    group('Prerender timestamp', () {
      test('index.html has prerender-timestamp meta tag', () async {
        final html = await _readFile(p.join(outputDir, 'index.html'));
        expect(html, contains('<meta name="prerender-timestamp"'));
      });

      test('about/index.html has prerender-timestamp meta tag', () async {
        final html = await _readFile(p.join(outputDir, 'about', 'index.html'));
        expect(html, contains('<meta name="prerender-timestamp"'));
      });
    });

    group('Sitemap and robots.txt', () {
      test('sitemap.xml exists', () async {
        final sitemap = File(p.join(outputDir, 'sitemap.xml'));
        expect(await sitemap.exists(), isTrue);
      });

      test('robots.txt exists', () async {
        final robots = File(p.join(outputDir, 'robots.txt'));
        expect(await robots.exists(), isTrue);
      });
    });
  });
}

Future<String> _readFile(String path) => File(path).readAsString();

Future<String?> _extractTitle(String htmlPath) async {
  final content = await _readFile(htmlPath);
  final match = RegExp(r'<title>(.*?)</title>').firstMatch(content);
  return match?.group(1)?.trim();
}
