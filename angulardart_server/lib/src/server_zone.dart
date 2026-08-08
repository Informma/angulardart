/// Zone sans changement automatique dtection pour le serveur.
///
/// Ct serveur, on rend une fois puis on arr te. Pas besoin de zone interne
/// avec interception des microtaches comme ct client.
import 'dart:async';

class ServerNgZone {
  final _onTurnStart = StreamController<void>.broadcast(sync: true);
  final _onMicrotaskEmpty = StreamController<void>.broadcast(sync: true);
  final _onTurnDone = StreamController<void>.broadcast(sync: true);
  final _onUncaughtError = StreamController<UncaughtError>.broadcast(sync: true);

  var _isRunning = false;

  R run<R>(R Function() callback) {
    try {
      return callback();
    } catch (e, st) {
      _onUncaughtError.add(UncaughtError(e, st));
      rethrow;
    }
  }

  void runGuarded(void Function() callback) {
    try {
      callback();
    } catch (e, st) {
      _onUncaughtError.add(UncaughtError(e, st));
    }
  }

  R runOutsideAngular<R>(R Function() callback) => callback();

  bool get isRunning => _isRunning;
  bool get hasPendingMicrotasks => false;
  bool get hasPendingMacrotasks => false;

  Stream<UncaughtError> get onUncaughtError => _onUncaughtError.stream;
  Stream<void> get onMicrotaskEmpty => const Stream.empty();
  Stream<void> get onEventDone => const Stream.empty();
  Stream<void> get onTurnStart => _onTurnStart.stream;
  Stream<void> get onTurnDone => _onTurnDone.stream;

  void runAfterChangesObserved(void Function() callback) {
    Future.microtask(callback);
  }

  void dispose() {
    _onTurnStart.close();
    _onMicrotaskEmpty.close();
    _onTurnDone.close();
    _onUncaughtError.close();
  }
}

/// Erreur non attrape d'une zone serveur.
class UncaughtError {
  final Object error;
  final StackTrace stackTrace;

  const UncaughtError(this.error, this.stackTrace);

  @override
  String toString() => '$error\n$stackTrace';
}
