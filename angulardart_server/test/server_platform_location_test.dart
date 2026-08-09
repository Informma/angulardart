/// Tests for ServerPlatformLocation URL parsing logic.
///
/// The real ServerPlatformLocation depends on package:angulardart_router which
/// transitively imports dart:js_interop, making it impossible to test on the VM.
/// This file contains a minimal copy of the same logic for testing purposes.

import 'package:test/test.dart';

void main() {
  group('ServerPlatformLocation', () {
    test('pathname extrait le chemin de l\'URL', () {
      final location = _TestServerPlatformLocation('/home');
      expect(location.pathname, equals('/home'));
    });

    test('pathname retourne / pour une URL vide', () {
      final location = _TestServerPlatformLocation('');
      expect(location.pathname, equals('/'));
    });

    test('pathname ignore la partie query de l\'URL', () {
      final location = _TestServerPlatformLocation('/search?q=test&page=1');
      expect(location.pathname, equals('/search'));
    });

    test('pathname ignore le fragment de l\'URL', () {
      final location = _TestServerPlatformLocation('/page#section');
      expect(location.pathname, equals('/page'));
    });

    test('pathname gère les chemins multiples', () {
      final location = _TestServerPlatformLocation('/api/v1/users/list');
      expect(location.pathname, equals('/api/v1/users/list'));
    });

    test('search retourne la chaîne de requête sans le ?', () {
      final location = _TestServerPlatformLocation('/search?q=hello&lang=en');
      expect(location.search, equals('q=hello&lang=en'));
    });

    test('search retourne vide pour une URL sans query', () {
      final location = _TestServerPlatformLocation('/home');
      expect(location.search, equals(''));
    });

    test('hash retourne le fragment sans le #', () {
      final location = _TestServerPlatformLocation('/page#section-1');
      expect(location.hash, equals('section-1'));
    });

    test('hash retourne vide pour une URL sans fragment', () {
      final location = _TestServerPlatformLocation('/home');
      expect(location.hash, equals(''));
    });

    test('getBaseHrefFromDOM retourne une chaîne vide', () {
      final location = _TestServerPlatformLocation('/app');
      expect(location.getBaseHrefFromDOM(), equals(''));
    });

    test('pushState est un no-op (ne lève pas d\'exception)', () {
      final location = _TestServerPlatformLocation('/home');
      expect(() => location.pushState(null, 'Title', '/new'), returnsNormally);
    });

    test('replaceState est un no-op (ne lève pas d\'exception)', () {
      final location = _TestServerPlatformLocation('/home');
      expect(
        () => location.replaceState(null, 'Title', '/new'),
        returnsNormally,
      );
    });

    test('forward est un no-op (ne lève pas d\'exception)', () {
      final location = _TestServerPlatformLocation('/home');
      expect(() => location.forward(), returnsNormally);
    });

    test('back est un no-op (ne lève pas d\'exception)', () {
      final location = _TestServerPlatformLocation('/home');
      expect(() => location.back(), returnsNormally);
    });

    test('onPopState ne lève pas d\'exception', () {
      final location = _TestServerPlatformLocation('/home');
      expect(
        () => location.onPopState((_) {}),
        returnsNormally,
      );
    });

    test('onHashChange ne lève pas d\'exception', () {
      final location = _TestServerPlatformLocation('/home');
      expect(
        () => location.onHashChange((_) {}),
        returnsNormally,
      );
    });

    test('URL avec port inclut le chemin correctement', () {
      final location = _TestServerPlatformLocation('http://localhost:3000/api/users?id=1');
      expect(location.pathname, equals('/api/users'));
      expect(location.search, equals('id=1'));
    });

    test('URL encodée est parsée correctement', () {
      final location = _TestServerPlatformLocation('/search?q=hello%20world');
      expect(location.pathname, equals('/search'));
      expect(location.search, equals('q=hello%20world'));
    });

    test('pathname avec slash final', () {
      final location = _TestServerPlatformLocation('/home/');
      expect(location.pathname, equals('/home/'));
    });

    test('URL complète avec protocole et domaine', () {
      final location = _TestServerPlatformLocation(
        'https://example.com:8080/path?query=value#hash',
      );
      expect(location.pathname, equals('/path'));
      expect(location.search, equals('query=value'));
      expect(location.hash, equals('hash'));
    });

    test('plusieurs appels à pushState restent des no-ops', () {
      final location = _TestServerPlatformLocation('/home');
      for (var i = 0; i < 10; i++) {
        location.pushState(null, 'Title $i', '/path/$i');
      }
    });

    test('plusieurs appels à replaceState restent des no-ops', () {
      final location = _TestServerPlatformLocation('/home');
      for (var i = 0; i < 10; i++) {
        location.replaceState(null, 'Title $i', '/path/$i');
      }
    });

    test('plusieurs appels à back restent des no-ops', () {
      final location = _TestServerPlatformLocation('/home');
      for (var i = 0; i < 10; i++) {
        location.back();
      }
    });

    test('plusieurs appels à forward restent des no-ops', () {
      final location = _TestServerPlatformLocation('/home');
      for (var i = 0; i < 10; i++) {
        location.forward();
      }
    });

    test('URL avec query vide', () {
      final location = _TestServerPlatformLocation('/path?');
      expect(location.pathname, equals('/path'));
      expect(location.search, equals(''));
    });

    test('URL avec hash vide après #', () {
      final location = _TestServerPlatformLocation('/path#');
      expect(location.pathname, equals('/path'));
      expect(location.hash, equals(''));
    });

    test('URL avec query et hash vides', () {
      final location = _TestServerPlatformLocation('/path?#');
      expect(location.pathname, equals('/path'));
      expect(location.search, equals(''));
      expect(location.hash, equals(''));
    });

    test('chemin avec caractères spéciaux dans la query', () {
      final location = _TestServerPlatformLocation('/search?q=<script>&x=1');
      expect(location.pathname, equals('/search'));
      // Uri.parse encode les caracteres speciaux en percent-encoding.
      expect(location.search, contains('%3Cscript%3E'));
    });

    test('pathname ne contient pas le hash', () {
      final location = _TestServerPlatformLocation('/page#section');
      expect(location.pathname, isNot(contains('#')));
    });

    test('search ne contient pas le ?', () {
      final location = _TestServerPlatformLocation('/path?key=value');
      expect(location.search, isNot(contains('?')));
    });
  });
}

// --- Test double (mirrors ServerPlatformLocation logic) ---

class _TestServerPlatformLocation {
  final String _url;

  _TestServerPlatformLocation(this._url);

  String get pathname {
    final uri = Uri.parse(_url);
    return uri.path.isEmpty ? '/' : uri.path;
  }

  String get search => Uri.parse(_url).query;

  String get hash => Uri.parse(_url).fragment;

  void pushState(Object? state, String title, String? url) {}
  void replaceState(Object? state, String title, String? url) {}
  void forward() {}
  void back() {}
  void onPopState(void Function(dynamic) fn) {}
  void onHashChange(void Function(dynamic) fn) {}

  String getBaseHrefFromDOM() => '';
}
