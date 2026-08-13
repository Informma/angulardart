/// Serveur HTTP SSR pour les tests e2e.
///
/// Lit le port depuis la variable d'environnement SSR_TEST_PORT (défaut: 4001).
library;

import 'dart:async';
import 'dart:io';

// ignore: uri_has_not_been_generated
import '../web/main.server.dart' as ng;
import 'package:angulardart_server/angulardart_server.dart';

Future<void> main() async {
  final port = int.tryParse(Platform.environment['SSR_TEST_PORT'] ?? '4001') ?? 4001;

  final server = platformServer();
  final httpServer = await HttpServer.bind('127.0.0.1', port);
  print('Test SSR server running on port $port');

  await for (final request in httpServer) {
    try {
      final html = await server.renderApplication(
        ng.appComponentFactory,
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
  }
}
