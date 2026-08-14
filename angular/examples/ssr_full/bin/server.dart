import 'dart:async';
import 'dart:io';

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_server/angulardart_server.dart';
// ignore: uri_has_not_been_generated
import '../web/main.server.dart' as ng;

final _mimeTypes = {
  '.css': 'text/css',
  '.js': 'application/javascript',
  '.html': 'text/html',
  '.json': 'application/json',
  '.png': 'image/png',
  '.svg': 'image/svg+xml',
  '.ico': 'image/x-icon',
  '.woff': 'font/woff',
  '.woff2': 'font/woff2',
};

/// Point d'entre du serveur HTTP SSR (avec routing).
///
/// Démo : serveur HTTP qui rend les pages AngularDart avec SSR.
/// Compilez avec : dart run build_runner build web --release
/// Puis lancez : dart bin/server.dart
Future<void> main() async {
  final server = platformServer();

  // Le `<base href>` n'existe pas sur la VM (pas de document) ; on le fournit
  // explicitement pour que `PathLocationStrategy` puisse résoudre les routes.
  final baseHrefInjector = Injector.map({appBaseHref: '/'});

  await HttpServer.bind('localhost', 4000).then((httpServer) {
    print('Serveur SSR AngularDart (exemple complet) en cours d\'exécution sur http://localhost:4000');

    httpServer.listen((request) async {
      final path = request.uri.path;

      // Sert les assets statiques (styles.css, main.dart.js, ...).
      if (_isStaticAsset(path)) {
        await _serveStatic(request);
        return;
      }

      try {
        final html = await server.renderApplication(
          ng.appComponentFactory,
          url: request.uri.toString(),
          parentInjector: ng.appInjector(baseHrefInjector),
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

bool _isStaticAsset(String path) {
  final ext = path.contains('.') ? path.substring(path.lastIndexOf('.')) : '';
  return _mimeTypes.containsKey(ext);
}

File? _findStaticFile(String path) {
  final sourceFile = File('web$path');
  if (sourceFile.existsSync()) return sourceFile;

  // Les assets compilés (ex: main.dart.js) sont émis sous
  // .dart_tool/build/generated/<package>/web/.
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

Future<void> _serveStatic(HttpRequest request) async {
  final path = request.uri.path;
  final file = _findStaticFile(path);

  if (file == null) {
    request.response.statusCode = HttpStatus.notFound;
    request.response.write('Non trouvé');
    await request.response.close();
    return;
  }

  final ext = path.substring(path.lastIndexOf('.'));
  request.response.headers.contentType =
      ContentType.parse(_mimeTypes[ext] ?? 'application/octet-stream');
  request.response.add(await file.readAsBytes());
  await request.response.close();
}
