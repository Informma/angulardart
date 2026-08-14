import 'dart:io';

import 'package:alfred/alfred.dart';
import 'package:angulardart_server/angulardart_server.dart';
// ignore: uri_has_not_been_generated
import '../web/main.server.dart' as ng;

/// Serveur HTTP SSR (implémentation Alfred) pour l'exemple hybrid_rendering.
///
/// Compilation : dart run build_runner build web --release
/// Exécution :   dart bin/server_alfred.dart
Future<void> main() async {
  final server = platformServer();
  final app = Alfred();

  app.all('*', (req, res) async {
    // Servir les fichiers statiques (styles.css, main.dart.js, ...).
    final file = _findStaticFile(req.uri.path);
    if (file != null) return file;

    res.headers.contentType = ContentType.html;
    return await server.renderApplication(
      ng.appComponentFactory,
      url: req.uri.toString(),
      stylesheets: ['styles.css'],
    );
  });

  await app.listen(4000);
  print('Serveur SSR hybrid_rendering (Alfred) sur http://localhost:4000');
}

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
