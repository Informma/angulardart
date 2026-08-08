import 'dart:async';
import 'dart:io';

import 'package:angulardart_server/angulardart_server.dart';
// ignore: uri_has_not_been_generated
import '../web/main.template.dart' as ng;

/// Serveur HTTP SSR pour l'exemple hybrid_rendering.
///
/// Compilation : dart run build_runner build -d web/main.server.dart
/// Exécution :   dart bin/server.dart
Future<void> main() async {
  final server = platformServer();

  await HttpServer.bind('localhost', 4000).then((httpServer) {
    print('Serveur SSR hybrid_rendering en cours d\'exécution sur http://localhost:4000');

    httpServer.listen((request) async {
      try {
        final html = await server.renderApplication<Object>(
          ng.AppRootComponentNgFactory,
          url: request.uri.toString(),
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
