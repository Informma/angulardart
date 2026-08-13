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
/// Compilation : dart run build_runner build web
/// Exécution :   dart bin/server.dart
Future<void> main() async {
  final server = platformServer();
  final webDir = Directory('web');

  await HttpServer.bind('localhost', 4000).then((httpServer) {
    print('Serveur SSR angulardart en cours d\'exécution sur http://localhost:4000');

    httpServer.listen((request) async {
      final path = request.uri.path;

      // Servir les fichiers statiques depuis le dossier web/
      if (_shouldServeStatic(path)) {
        await _serveStaticFile(request, webDir);
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
bool _shouldServeStatic(String path) {
  if (path == '/' || path.startsWith('/main.dart.js')) return false;
  final ext = path.substring(path.lastIndexOf('.'));
  return _mimeTypes.containsKey(ext);
}

/// Sert un fichier statique depuis le dossier web/.
Future<void> _serveStaticFile(HttpRequest request, Directory webDir) async {
  final path = request.uri.path;
  final filePath = path == '/' ? '/index.html' : path;
  final file = File('${webDir.path}$filePath');

  if (await file.exists()) {
    final ext = filePath.substring(filePath.lastIndexOf('.'));
    final mimeType = _mimeTypes[ext] ?? 'application/octet-stream';

    request.response.headers.contentType = ContentType.parse(mimeType);
    final bytes = await file.readAsBytes();
    request.response.add(bytes);
    await request.response.close();
  } else {
    request.response
      ..statusCode = HttpStatus.notFound
      ..write('Non trouvé')
      ..close();
  }
}
