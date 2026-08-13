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

/// E2E test for sitemap.xml generation and validation.
void main() {
  final monorepoRoot = Directory.current.path;

  Future<bool> _canUsePuppeteer() async {
    try {
      final result = await Process.run('which', ['chromium-browser']);
      return result.exitCode == 0;
    } catch (_) {
      return false;
    }
  }

  group('E2E Sitemap Validation', () {
    String? testProjectDir;
    String? outputDir;

    setUpAll(() async {
      final canUsePuppeteer = await _canUsePuppeteer();
      if (!canUsePuppeteer) {
        print('SKIP: No browser found for E2E sitemap tests.');
        throw Exception('SKIP: No browser found');
      }

      final tempDir = Directory.systemTemp.createTempSync('angulardart_sitemap_e2e_');
      testProjectDir = p.join(tempDir.path, 'sitemap_test_project');
      outputDir = p.join(testProjectDir!, 'build', 'web');

      // Generate project with SEO
      final cliResult = await _runProc(
        'dart', [
          'run',
          p.join(monorepoRoot, 'angulardart_cli', 'bin', 'ngdart.dart'),
          'new', testProjectDir!, '--seo',
        ],
      );
      if (cliResult.exitCode != 0) {
        throw Exception('Failed to generate project:\n${cliResult.stderr}');
      }

      // Fix pubspec.yaml
      final pubspec = File(p.join(testProjectDir!, 'pubspec.yaml'));
      var content = await pubspec.readAsString();
      content = content.replaceAllMapped(
          RegExp(r'^name: .+$', multiLine: true), (m) => 'name: sitemap_test_project');
      content = content.replaceAllMapped(
        RegExp(r'^description: .+$', multiLine: true),
        (m) => 'description: Sitemap Test Project',
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

      final pubGet = await _runProc(
        'dart', ['pub', 'get'],
        workingDirectory: testProjectDir!,
      );
      if (pubGet.exitCode != 0) {
        throw Exception('Failed to get dependencies:\n${pubGet.stderr}');
      }

      // Remove .dart_tool/build
      final dartToolBuild = Directory(p.join(testProjectDir!, '.dart_tool', 'build'));
      if (await dartToolBuild.exists()) {
        await dartToolBuild.delete(recursive: true);
      }

      // Build
      final buildResult = await _runProc(
        'dart', ['run', 'build_runner', 'build', '--release', '-o', 'build'],
        workingDirectory: testProjectDir!,
      );
      if (buildResult.exitCode != 0) {
        throw Exception('Build failed:\n${buildResult.stderr}');
      }

      // Run prerendering
      final prerenderYaml = File(p.join(testProjectDir!, 'prerender.yaml'));
      var prerenderContent = await prerenderYaml.readAsString();
      prerenderContent = prerenderContent.replaceAll(
        "base_url: 'https://example.com'",
        "base_url: 'http://localhost:18081'",
      );
      await prerenderYaml.writeAsString(prerenderContent);

      final prerenderResult = await _runProc(
        'dart', [
          'run',
          p.join(monorepoRoot, 'angulardart_prerender', 'bin', 'prerender.dart'),
          '-c', 'prerender.yaml', '-o', outputDir!, '-p', '18081',
        ],
        workingDirectory: testProjectDir!,
      );
      if (prerenderResult.exitCode != 0) {
        throw Exception('Prerendering failed:\n${prerenderResult.stderr}');
      }
    });

    tearDownAll(() async {
      if (testProjectDir != null) {
        final testDir = Directory(testProjectDir!);
        if (await testDir.exists()) {
          await testDir.delete(recursive: true);
        }
      }
    });

    group('sitemap.xml content', () {
      test('contains XML declaration', () async {
        final sitemap = File(p.join(outputDir!, 'sitemap.xml'));
        expect(await sitemap.exists(), isTrue);
        final content = await sitemap.readAsString();
        expect(content, contains('<?xml version="1.0" encoding="UTF-8"?>'));
      });

      test('contains urlset with correct namespace', () async {
        final sitemap = File(p.join(outputDir!, 'sitemap.xml'));
        final content = await sitemap.readAsString();
        expect(
          content,
          contains('xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"'),
        );
      });

      test('contains / route', () async {
        final sitemap = File(p.join(outputDir!, 'sitemap.xml'));
        final content = await sitemap.readAsString();
        expect(content, contains('<loc>http://localhost:18081/</loc>'));
      });

      test('contains /about route', () async {
        final sitemap = File(p.join(outputDir!, 'sitemap.xml'));
        final content = await sitemap.readAsString();
        expect(content, contains('<loc>http://localhost:18081/about</loc>'));
      });

      test('contains /contact route', () async {
        final sitemap = File(p.join(outputDir!, 'sitemap.xml'));
        final content = await sitemap.readAsString();
        expect(content, contains('<loc>http://localhost:18081/contact</loc>'));
      });

      test('has exactly 3 <url> entries', () async {
        final sitemap = File(p.join(outputDir!, 'sitemap.xml'));
        final content = await sitemap.readAsString();
        expect(RegExp(r'<url>').allMatches(content).length, equals(3));
      });

      test('each URL has lastmod date', () async {
        final sitemap = File(p.join(outputDir!, 'sitemap.xml'));
        final content = await sitemap.readAsString();
        expect(RegExp(r'<lastmod>.*?</lastmod>').allMatches(content).length, equals(3));
      });

      test('each URL has changefreq', () async {
        final sitemap = File(p.join(outputDir!, 'sitemap.xml'));
        final content = await sitemap.readAsString();
        expect(RegExp(r'<changefreq>.*?</changefreq>').allMatches(content).length, equals(3));
      });

      test('each URL has priority', () async {
        final sitemap = File(p.join(outputDir!, 'sitemap.xml'));
        final content = await sitemap.readAsString();
        expect(RegExp(r'<priority>.*?</priority>').allMatches(content).length, equals(3));
      });

      test('homepage has priority 1.0', () async {
        final sitemap = File(p.join(outputDir!, 'sitemap.xml'));
        final content = await sitemap.readAsString();
        expect(content, contains('<priority>1.0</priority>'));
      });

      test('subpages have lower priority than homepage', () async {
        final sitemap = File(p.join(outputDir!, 'sitemap.xml'));
        final content = await sitemap.readAsString();
        expect(content, contains('<priority>0.8</priority>'));
      });

      test('ends with </urlset>', () async {
        final sitemap = File(p.join(outputDir!, 'sitemap.xml'));
        final content = await sitemap.readAsString();
        expect(content.trim(), endsWith('</urlset>'));
      });
    });

    group('robots.txt content', () {
      test('contains User-agent directive', () async {
        final robots = File(p.join(outputDir!, 'robots.txt'));
        final content = await robots.readAsString();
        expect(content, contains('User-agent: *'));
      });

      test('references sitemap.xml location', () async {
        final robots = File(p.join(outputDir!, 'robots.txt'));
        final content = await robots.readAsString();
        expect(content, contains('Sitemap: http://localhost:18081/sitemap.xml'));
      });
    });
  });
}
