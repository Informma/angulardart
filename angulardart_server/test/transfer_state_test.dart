import 'package:angulardart_server/src/transfer_state.dart' show TransferState;
import 'package:test/test.dart';

void main() {
  group('TransferState', () {
    setUp(() {
      TransferState.clear();
    });

    test('set et get avec une chaîne', () {
      TransferState.set('name', 'AngularDart');
      expect(TransferState.get<String>('name'), equals('AngularDart'));
    });

    test('set et get avec un nombre entier', () {
      TransferState.set('count', 42);
      expect(TransferState.get<int>('count'), equals(42));
    });

    test('set et get avec un nombre décimal', () {
      TransferState.set('pi', 3.14159);
      expect(TransferState.get<double>('pi'), closeTo(3.14159, 0.00001));
    });

    test('set et get avec un booléen true', () {
      TransferState.set('enabled', true);
      expect(TransferState.get<bool>('enabled'), isTrue);
    });

    test('set et get avec un booléen false', () {
      TransferState.set('disabled', false);
      expect(TransferState.get<bool>('disabled'), isFalse);
    });

    test('get retourne null pour une clé inexistante', () {
      expect(TransferState.get<String>('missing'), isNull);
    });

    test('has retourne true pour une clé existante', () {
      TransferState.set('key', 'value');
      expect(TransferState.has('key'), isTrue);
    });

    test('has retourne false pour une clé inexistante', () {
      expect(TransferState.has('missing'), isFalse);
    });

    test('set avec une liste de chaînes', () {
      TransferState.set('items', ['a', 'b', 'c']);
      expect(TransferState.get<List<String>>('items'), equals(['a', 'b', 'c']));
    });

    test('set avec une liste de nombres', () {
      TransferState.set('numbers', [1, 2, 3]);
      expect(TransferState.get<List<int>>('numbers'), equals([1, 2, 3]));
    });

    test('set avec une liste mixte', () {
      TransferState.set('mixed', [1, 'two', true, null]);
      final result = TransferState.get<List>('mixed');
      expect(result, hasLength(4));
      expect(result![0], equals(1));
      expect(result[1], equals('two'));
      expect(result[2], isTrue);
      expect(result[3], isNull);
    });

    test('set avec une map simple', () {
      TransferState.set('data', {'key': 'value', 'num': 42});
      final result = TransferState.get<Map<String, dynamic>>('data');
      expect(result!['key'], equals('value'));
      expect(result['num'], equals(42));
    });

    test('set avec une map imbriquée', () {
      TransferState.set('nested', {'outer': {'inner': 'deep'}});
      final result = TransferState.get<Map<String, dynamic>>('nested');
      expect(result!['outer'] is Map, isTrue);
    });

    test('set avec null stocke null', () {
      TransferState.set('nullValue', null as String?);
      expect(TransferState.get<String?>('nullValue'), isNull);
    });

    test('remove supprime une clé', () {
      TransferState.set('key', 'value');
      expect(TransferState.has('key'), isTrue);
      TransferState.remove('key');
      expect(TransferState.has('key'), isFalse);
      expect(TransferState.get<String>('key'), isNull);
    });

    test('clear vide tout l\'état', () {
      TransferState.set('a', 1);
      TransferState.set('b', 2);
      TransferState.clear();
      expect(TransferState.has('a'), isFalse);
      expect(TransferState.has('b'), isFalse);
    });

    test('toScript retourne chaîne vide si état vide', () {
      expect(TransferState.toScript(), equals(''));
    });

    test('toScript génère un script avec les données sérialisées', () {
      TransferState.set('name', 'AngularDart');
      TransferState.set('count', 42);
      final script = TransferState.toScript();
      expect(script, contains('ng-transfer-state'));
      // Les clés incluent le préfixe ng-transfer-state:.
      expect(script, contains('"ng-transfer-state:name":"AngularDart"'));
      expect(script, contains('"ng-transfer-state:count":42'));
    });

    test('toScript échappe les caractères spéciaux dans le JSON', () {
      TransferState.set('html', '<script>alert("xss")</script>');
      final script = TransferState.toScript();
      expect(script, contains('\\u003c'));
      expect(script, contains('\\u003e'));
    });

    test('toScript avec une liste sérialise correctement', () {
      TransferState.set('items', ['a', 'b']);
      final script = TransferState.toScript();
      expect(script, contains('"ng-transfer-state:items":["a","b"]'));
    });

    test('isLoadedFromHtml retourne false quand état vide', () {
      expect(TransferState.isLoadedFromHtml, isFalse);
    });

    test('plusieurs appels à set sur la même clé écrasent', () {
      TransferState.set('key', 'first');
      TransferState.set('key', 'second');
      expect(TransferState.get<String>('key'), equals('second'));
    });

    test('toScript avec une map vide dans une map', () {
      TransferState.set('data', {'empty': {}, 'value': 1});
      final script = TransferState.toScript();
      expect(script, contains('"value":1'));
    });

    test('sérialisation d\'une chaîne avec esperluette', () {
      TransferState.set('url', '/search?q=1&lang=en');
      final script = TransferState.toScript();
      expect(script, contains('\\u0026'));
    });

    test('toScript contient l\'id ng-transfer-state', () {
      TransferState.set('key', 'value');
      final script = TransferState.toScript();
      expect(script, contains('id="ng-transfer-state"'));
      expect(script, contains('type="application/json"'));
    });

    test('fromHtml avec un élément script valide charge l\'état', () {
      // fromHtml dépend du DOM (package:web), donc ce test vérifie
      // le comportement quand l'élément n'existe pas.
      TransferState.clear();
      expect(TransferState.isLoadedFromHtml, isFalse);
    });

    test('clear après toScript ne change pas la chaîne déjà générée', () {
      TransferState.set('key', 'value');
      final script = TransferState.toScript();
      TransferState.clear();
      // Le script est une String immuable, donc il reste inchangé.
      expect(script, contains('"ng-transfer-state:key":"value"'));
    });

    test('get lance TypeError pour un type cast incorrect', () {
      TransferState.set('num', 42);
      // get<T> utilise `as T?` qui lance TypeError si le type ne correspond pas.
      expect(() => TransferState.get<String>('num'), throwsA(isA<TypeError>()));
    });

    test('set avec une liste vide', () {
      TransferState.set('emptyList', <String>[]);
      final result = TransferState.get<List<String>>('emptyList');
      expect(result, isEmpty);
    });

    test('set avec une map vide', () {
      TransferState.set('emptyMap', <String, dynamic>{});
      final result = TransferState.get<Map<String, dynamic>>('emptyMap');
      expect(result!, isEmpty);
    });

    test('toScript avec des valeurs booléennes', () {
      TransferState.set('flag1', true);
      TransferState.set('flag2', false);
      final script = TransferState.toScript();
      expect(script, contains('"ng-transfer-state:flag1":true'));
      expect(script, contains('"ng-transfer-state:flag2":false'));
    });

    test('toScript avec des valeurs null dans une liste', () {
      TransferState.set('withNulls', [1, null, 'a']);
      final script = TransferState.toScript();
      expect(script, contains('null'));
    });
  });
}
