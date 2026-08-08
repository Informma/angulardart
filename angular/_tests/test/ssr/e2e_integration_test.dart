/// Tests d'intégration end-to-end pour le rendu serveur (SSR).
///
/// Ces tests compile un exemple hello_world_ssr avec build_runner,
/// démarrent le serveur HTTP, et vérifient le HTML rendu via des requêtes HTTP.
///
/// Variable d'environnement : SKIP_E2E_SSR=false pour exécuter ces tests (lents: ~90s).
library;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

/// Chemin vers l'exemple hello_world_ssr, déterminé dynamiquement.
String? _examplePath;
int? _serverPort;
Process? _serverProcess;

void main() {
  // Par défaut, les tests e2e SSR sont sautés (lents: ~90s de build).
  // Pour les exécuter : SKIP_E2E_SSR=false dart test test/ssr/e2e_integration_test.dart
  final skip = Platform.environment['SKIP_E2E_SSR']?.toLowerCase() != 'false';

  group('SSR End-to-End Integration', () {
    setUpAll(() async {
      if (skip) {
        print('SKIP_E2E_SSR est défini — tests e2e SSR sautés.');
        return;
      }

      // Déterminer le chemin vers l'exemple hello_world_ssr.
      final currentPath = Directory.current.path;
      _examplePath = currentPath.endsWith('/angular/_tests')
          ? '${currentPath.replaceAll('/_tests', '')}/examples/hello_world_ssr'
          : '$currentPath/../../hello_world_ssr';

      // Vérifier que l'exemple existe.
      if (!Directory(_examplePath!).existsSync()) {
        throw StateError(
            'Exemple hello_world_ssr non trouvé à: $_examplePath\n'
            'Assurez-vous de lancer les tests depuis angular/_tests/');
      }

      print('Build de l\'exemple SSR dans: $_examplePath');
      await _runBuildRunner(_examplePath!);
    });

    tearDownAll(() async {
      if (skip) return;
      await _killServer();
    });

    group('serveur HTTP SSR', () {
      setUp(() async {
        if (skip) return;
        _serverPort = await _findFreePort();
        _serverProcess = await _startServer(_examplePath!, _serverPort!);
        // Attendre que le serveur soit prêt.
        await _waitForServer(_serverPort!, maxRetries: 10);
      });

      tearDown(() async {
        if (skip) return;
        await _killServer();
      });

      test('répond avec HTML valide sur /', () async {
        if (skip) return;
        final html = await _httpGetHtml(_serverPort!);
        expect(html, contains('<!DOCTYPE html>'));
        expect(html, contains('<html'));
        expect(html, contains('</html>'));
      });

      test('contient le contexte SSR ng-server-context="ssr"', () async {
        if (skip) return;
        final html = await _httpGetHtml(_serverPort!);
        expect(html, contains('ng-server-context="ssr"'),
            reason: 'La balise <html> doit avoir ng-server-context="ssr"');
      });

      test('contient le contenu rendu par le serveur', () async {
        if (skip) return;
        final html = await _httpGetHtml(_serverPort!);
        expect(html, contains('Hello World'),
            reason: 'Le HTML rendu côté serveur doit contenir "Hello World"');
        expect(html, contains('This page demonstrates AngularDart SSR.'),
            reason: 'Le HTML rendu côté serveur doit contenir le paragraphe');
      });

      test('contient les marqueurs de hydration data-ng-id', () async {
        if (skip) return;
        final html = await _httpGetHtml(_serverPort!);
        expect(html, contains('data-ng-id'),
            reason: 'Les nœuds SSR doivent avoir des marqueurs data-ng-id pour la hydration');
      });

      test('contient un script ng-transfer-state', () async {
        if (skip) return;
        final html = await _httpGetHtml(_serverPort!);
        expect(html, contains('ng-transfer-state'),
            reason: 'Le HTML doit contenir un script ng-transfer-state');
      });

      test('ContentType est text/html', () async {
        if (skip) return;
        final response = await _httpGetResponse(_serverPort!);
        expect(response.headers['content-type'], contains('text/html'),
            reason: 'Le content-type doit être text/html');
      });

      test('GET /unknown retourne HTML valide (SSR fallback)', () async {
        if (skip) return;
        final html = await _httpGetHtml(_serverPort!, path: '/unknown-path');
        expect(html, contains('Hello World'));
      });

      test('requêtes multiples produisent des data-ng-id cohérents', () async {
        if (skip) return;
        final htmls = await Future.wait([
          _httpGetHtml(_serverPort!),
          _httpGetHtml(_serverPort!),
          _httpGetHtml(_serverPort!),
        ]);

        for (var i = 0; i < htmls.length; i++) {
          final ids = _extractNgIds(htmls[i]);
          expect(ids.length, greaterThan(0),
              reason: 'La réponse $i doit contenir au moins un nœud avec data-ng-id');
        }

        // La structure HTML doit être identique entre les requêtes.
        final firstIds = _extractNgIds(htmls[0]);
        final secondIds = _extractNgIds(htmls[1]);
        expect(firstIds, equals(secondIds),
            reason: 'La structure HTML doit être identique entre les requêtes');
      });

      test('HTML ne contient pas de balises <script> dangereuses', () async {
        if (skip) return;
        final html = await _httpGetHtml(_serverPort!);
        expect(html, isNot(contains('<script>alert')),
            reason: 'Le HTML ne doit pas contenir de scripts injectés');
      });

      test('la page contient une balise <body> avec le contenu du composant', () async {
        if (skip) return;
        final html = await _httpGetHtml(_serverPort!);
        expect(html, contains('<body'));
        expect(html, contains('</body>'));
        expect(html, contains('>Hello World<'));
      });

      test('la page contient des balises <head> complètes', () async {
        if (skip) return;
        final html = await _httpGetHtml(_serverPort!);
        expect(html, contains('<head'));
        expect(html, contains('</head>'));
        expect(html, contains('<meta charset'));
      });

      test('performance: réponse en moins de 5 secondes', () async {
        if (skip) return;
        final stopwatch = Stopwatch()..start();
        await _httpGetHtml(_serverPort!);
        stopwatch.stop();

        expect(stopwatch.elapsedMilliseconds, lessThan(5000),
            reason: 'La réponse SSR ne doit pas prendre plus de 5s');
      });
    });
  });
}

// --- Helpers ---

/// Lance build_runner pour compiler l'exemple SSR.
Future<void> _runBuildRunner(String examplePath) async {
  final result = await Process.run(
    'dart',
    ['run', 'build_runner', 'build', 'web/main.server.dart'],
    workingDirectory: examplePath,
    runInShell: true,
  );

  if (result.exitCode != 0) {
    print('=== build_runner stdout ===');
    print(result.stdout);
    print('=== build_runner stderr ===');
    print(result.stderr);
    throw StateError(
        'build_runner a échoué avec code ${result.exitCode}');
  }

  // Vérifier que le binaire a été généré.
  if (!File(serverBinaryFor(examplePath)).existsSync()) {
    print('=== Contenu de .dart_tool/build/entrypoint ===');
    final entrypoint = Directory('$examplePath/.dart_tool/build/entrypoint');
    if (entrypoint.existsSync()) {
      _listDirectory(entrypoint);
    } else {
      print('.dart_tool/build/entrypoint n\'existe pas');
    }
    throw StateError(
        'build_runner s\'est terminé sans générer le binaire attendu: ${serverBinaryFor(examplePath)}');
  }
}

String serverBinaryFor(String examplePath) =>
    '$examplePath/.dart_tool/build/entrypoint/build_web_compilers/bin/main.server.dart.dill';

void _listDirectory(Directory dir, {int depth = 0}) {
  if (depth > 4) return;
  for (final entity in dir.listSync(recursive: true)) {
    final relPath = entity.path.replaceFirst(dir.path, '');
    print('  ${'  ' * depth}$relPath');
  }
}

/// Trouve un port libre.
Future<int> _findFreePort() async {
  final socket = await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
  final port = socket.port;
  await socket.close();
  return port;
}

/// Démarre le serveur SSR de test en tant que processus.
Future<Process> _startServer(String examplePath, int port) async {
  final proc = await Process.start(
    'dart',
    ['run', 'bin/test_server.dart'],
    workingDirectory: examplePath,
    environment: {'SSR_TEST_PORT': '$port'},
    runInShell: true,
  );

  // Logger stdout/stderr du processus.
  proc.stdout.transform(utf8.decoder).listen((line) {
    if (line.contains('running on port')) {
      print('[SSR Test Server] $line');
    }
  });
  proc.stderr.transform(utf8.decoder).listen((line) {
    print('[SSR Test Server ERR] $line');
  });

  return proc;
}

/// Attend que le serveur soit prêt à répondre.
Future<void> _waitForServer(int port, {int maxRetries = 10}) async {
  for (var i = 0; i < maxRetries; i++) {
    try {
      final response = await HttpClient()
          .get('127.0.0.1', port, '/')
          .timeout(const Duration(milliseconds: 500));
      await response.close();
      return; // Serveur prêt.
    } catch (_) {
      await Future.delayed(const Duration(milliseconds: 300));
    }
  }
  throw StateError('Le serveur n\'a pas démarré après ${maxRetries * 300}ms');
}

/// Arrête le processus du serveur.
Future<void> _killServer() async {
  if (_serverProcess != null) {
    try {
      _serverProcess!.kill(ProcessSignal.sigterm);
      await _serverProcess!.exitCode.timeout(const Duration(seconds: 3));
    } catch (_) {
      _serverProcess!.kill(ProcessSignal.sigkill);
    }
  }
}

/// Effectue une requête GET HTTP et retourne la réponse brute.
Future<HttpClientResponse> _httpGetResponse(int port, {String path = '/'}) async {
  final client = HttpClient();
  try {
    final request = await client.get('127.0.0.1', port, path);
    final response = await request.close();
    return response;
  } finally {
    client.close(force: true);
  }
}

/// Effectue une requête GET HTTP et retourne le corps HTML.
Future<String> _httpGetHtml(int port, {String path = '/'}) async {
  final response = await _httpGetResponse(port, path: path);
  final bytes = <int>[];
  await for (final chunk in response) {
    bytes.addAll(chunk);
  }
  return utf8.decode(bytes);
}

/// Extrait tous les data-ng-id d'une réponse HTML.
List<int> _extractNgIds(String html) {
  final ids = <int>[];
  final regex = RegExp(r'data-ng-id="(\d+)"');
  for (final match in regex.allMatches(html)) {
    ids.add(int.parse(match.group(1)!));
  }
  return ids;
}
