/// Zone de rendu serveur.
///
/// Contrairement au navigateur, il n'y a pas de boucle d'événements continue :
/// le serveur rend une fois puis s'arrête. Cette zone hérite néanmoins du
/// suivi des microtâches/macrotâches du [NgZone] de base afin que les
/// opérations asynchrones (navigation du routeur, `ngOnInit` async, ...)
/// puissent être attendues avant de capturer le HTML.
import 'dart:async';

import 'package:angulardart/src/core/zone/ng_zone.dart' show NgZone;

class ServerNgZone extends NgZone {
  ServerNgZone() : super.internal();

  /// Attend que la zone soit stable : plus aucune microtâche ni macrotâche
  /// en attente (borné pour éviter une boucle infinie en cas de timer
  /// périodique).
  Future<void> stabilize() async {
    var turns = 0;
    while ((hasPendingMicrotasks || hasPendingMacrotasks) && turns < 100) {
      await Future<void>.delayed(Duration.zero);
      turns++;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
