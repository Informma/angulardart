import 'dart:async';
import 'dart:io';

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_server/angulardart_server.dart';
// ignore: uri_has_not_been_generated
import '../web/main.server.dart' as ng;

/// Point d'entre du serveur HTTP SSR.
///
/// Démo : serveur HTTP qui rend les pages AngularDart avec SSR.
/// Compilez avec : dart run build_runner build web
/// Puis lancez : dart bin/server.dart
Future<void> main() async {
  final server = platformServer();

  // Le `<base href>` n'existe pas sur la VM (pas de document) ; on le fournit
  // explicitement pour que `PathLocationStrategy` puisse résoudre les routes.
  final baseHrefInjector = Injector.map({appBaseHref: '/'});

  await HttpServer.bind('localhost', 4000).then((httpServer) {
    print('Serveur SSR AngularDart (exemple complet) en cours d\'exécution sur http://localhost:4000');

    httpServer.listen((request) async {
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
