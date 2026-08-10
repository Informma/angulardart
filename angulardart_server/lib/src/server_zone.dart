/// Zone sans changement automatique dtection pour le serveur.
///
/// Ct serveur, on rend une fois puis on arr te. Pas besoin de zone interne
/// avec interception des microtaches comme ct client.
import 'dart:async';

import 'package:angulardart/src/core/zone/ng_zone.dart' show NgZone;

class ServerNgZone extends NgZone {
  @override
  R run<R>(R Function() callback) => callback();

  @override
  void runGuarded(void Function() callback) => callback();

  @override
  R runOutsideAngular<R>(R Function() callback) => callback();

  @override
  Stream<void> get onMicrotaskEmpty => const Stream.empty();

  @override
  Stream<void> get onEventDone => const Stream.empty();

  @override
  bool get hasPendingMicrotasks => false;

  @override
  bool get hasPendingMacrotasks => false;

  void dispose() {
    super.dispose();
  }
}
