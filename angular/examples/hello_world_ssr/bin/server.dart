import 'dart:async';
import 'dart:io';

import 'package:angulardart_server/angulardart_server.dart';
// ignore: uri_has_not_been_generated
import '../web/main.server.dart' as ng;

/// Map des types MIME pour les fichiers statiques.
final _mimeTypes = {
  '.css': 'text/css',
  '.js': 'application/javascript',
  '.html': 'text/html',
  '.htm': 'text/html',
  '.json': 'application/json',
  '.png': 'image/png',
  '.jpg': 'image/jpeg',
  '.jpeg': 'image/jpeg',
  '.gif': 'image/gif',
  '.svg': 'image/svg+xml',
  '.ico': 'image/x-icon',
  '.woff': 'font/woff',
  '.woff2': 'font/woff2',
  '.ttf': 'font/ttf',
  '.eot': 'application/vnd.ms-fontobject',
  '.webp': 'image/webp',
  '.map': 'text/plain',
};

/// Serveur HTTP SSR pour l'exemple hello_world_ssr.
///
/// Compilation : dart run build_runner build web --release
/// Exécution :   dart bin/server.dart
Future<void> main() async {
  final server = platformServer();

  await HttpServer.bind('localhost', 4000).then((httpServer) {
    print('Serveur SSR angulardart en cours d\'exécution sur http://localhost:4000');

    httpServer.listen((request) async {
      final path = request.uri.path;

      // Servir les fichiers statiques (styles.css, main.dart.js, ...).
      if (_isStaticAsset(path)) {
        await _serveStatic(request);
        return;
      }

      // Rendu SSR pour les autres requêtes
      try {
        final html = await server.renderApplication(
          ng.appComponentFactory,
          url: request.uri.toString(),
          stylesheets: ['styles.css'],
        );

        request.response
          ..headers.contentType = ContentType.html
          ..write(html)
          ..close();
      } catch (e, st) {
        print('Erreur lors du rendu : $e');
        print(st);
        request.response
          ..statusCode = HttpStatus.internalServerError
          ..write('<h1>Erreur serveur</h1>')
          ..close();
      }
    });
  });
}

/// Vérifie si la requête doit servir un fichier statique.
bool _isStaticAsset(String path) {
  final ext = path.contains('.') ? path.substring(path.lastIndexOf('.')) : '';
  return _mimeTypes.containsKey(ext);
}

/// Recherche le fichier statique dans `web/` puis dans les sorties compilées
/// de build_runner (ex: `main.dart.js` émis sous `.dart_tool/build/generated/`).
File? _findStaticFile(String path) {
  final sourceFile = File('web$path');
  if (sourceFile.existsSync()) return sourceFile;

  final generated = Directory('.dart_tool/build/generated');
  if (generated.existsSync()) {
    for (final entry in generated.listSync()) {
      if (entry is Directory) {
        final candidate = File('${entry.path}/web$path');
        if (candidate.existsSync()) return candidate;
      }
    }
  }
  return null;
}

/// Sert un fichier statique.
Future<void> _serveStatic(HttpRequest request) async {
  final path = request.uri.path;
  final file = _findStaticFile(path);

  if (file == null) {
    request.response
      ..statusCode = HttpStatus.notFound
      ..write('Non trouvé')
      ..close();
    return;
  }

  final ext = path.substring(path.lastIndexOf('.'));
  request.response.headers.contentType =
      ContentType.parse(_mimeTypes[ext] ?? 'application/octet-stream');
  request.response.add(await file.readAsBytes());
  await request.response.close();
}
