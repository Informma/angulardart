/// Transfre d'tat du serveur vers le client.
///
/// Permet de stocker des donnes ct serveur (ex: rsultats d'API) et de les
/// rutiliser ct client sans refaire la mme requ te.
///
/// Similaire `@angular/core/primitives/state` dans Angular Universal.
///
/// ## Exemple
///
/// ```dart
/// // Ct serveur, avant le rendu :
/// TransferState.set('api-users', userList);
/// String html = await server.renderComponent(factory);
///
/// // Le script ng-transfer-state est inject dans le HTML
///
/// // Ct client, aprs l'hydration :
/// final users = TransferState.get<List>('api-users');
/// ```
import 'dart:convert';

import 'dom_apis.dart';

/// Clé TransferState utilisée pour transmettre l'`APP_ID` du serveur au client.
///
/// L'`APP_ID` sert de préfixe aux classes d'encapsulation CSS (`_ngcontent-…`).
/// Il doit être identique côté serveur et côté client pour que les styles SSR
/// continuent de s'appliquer après l'hydration.
const ssrAppIdKey = 'ng-ssr-app-id';

class TransferState {
  static const _keyPrefix = 'ng-transfer-state:';
  static final Map<String, Object?> _state = {};

  /// Stocke une valeur avec la cl donne.
  static void set<T>(String key, T value) {
    _state[_keyPrefix + key] = value;
  }

  /// Rcupre une valeur stocke. Retourne `null` si absente.
  static T? get<T>(String key) {
    return _state[_keyPrefix + key] as T?;
  }

  /// Supprime une valeur stocke.
  static void remove<T>(String key) {
    _state.remove(_keyPrefix + key);
  }

  /// Vrifie si une cl existe dans l'tat transfr.
  static bool has<T>(String key) => _state.containsKey(_keyPrefix + key);

  /// Retourne toutes les valeurs dont la cl correspond au prfixe donn.
  ///
  /// Utile pour extraire des donnes SEO depuis [TransferState] ct serveur.
  /// Les cls retournes sont sans les prfixes `ng-transfer-state:` et [prefix].
  ///
  /// Exemple :
  /// ```dart
  /// final seoData = TransferState.getByPrefix('seo:');
  /// // Retourne {'title': 'My Page', 'meta:description': 'Description...'}
  /// ```
  static Map<String, Object?> getByPrefix(String prefix) {
    final result = <String, Object?>{};
    final searchKey = _keyPrefix + prefix;
    for (final entry in _state.entries) {
      if (entry.key.startsWith(searchKey)) {
        // Remove the `ng-transfer-state:` and `prefix` prefixes to return
        // clean keys (e.g. `seo:title` -> `title`).
        final cleanKey = entry.key.substring(searchKey.length);
        result[cleanKey] = entry.value;
      }
    }
    return result;
  }

  /// Gnre le script HTML injecter dans la page pour transfrer l'tat
  /// du serveur vers le client.
  static String toScript() {
    if (_state.isEmpty) return '';

    final jsonMap = <String, dynamic>{};
    for (final entry in _state.entries) {
      jsonMap[entry.key] = _serializeValue(entry.value);
    }

    final escapedJson = _escapeJson(jsonEncode(jsonMap));
    return '<script id="ng-transfer-state" type="application/json">$escapedJson</script>';
  }

  /// Lit l'tat transfr depuis le script HTML inject par le serveur.
  ///
  /// Recherche un lment `<script id="ng-transfer-state" type="application/json">`
  /// dans le document et parse son contenu pour peupler [_state].
  static void fromHtml() {
    final scriptEl = document.getElementById('ng-transfer-state');
    if (scriptEl == null) return;

    final text = scriptEl.text?.trim();
    if (text == null || text.isEmpty) return;

    try {
      final jsonMap = jsonDecode(text) as Map<String, dynamic>;
      _state.clear();
      for (final entry in jsonMap.entries) {
        _state[entry.key] = _deserializeValue(entry.value);
      }
    } catch (_) {
      // Ignorer les erreurs de parsing - l'tat restera vide
    }
  }

  /// Vrifie si l'tat a t charg depuis le HTML.
  static bool get isLoadedFromHtml => !_state.isEmpty;

  /// Vide tout l'tat transfre. Utile entre les requests ct serveur.
  static void clear() {
    _state.clear();
  }

  static Object? _serializeValue(Object? value) {
    if (value == null) return null;
    if (value is String) return value;
    if (value is num) return value;
    if (value is bool) return value;
    if (value is List) return value.map(_serializeValue).toList();
    if (value is Map) {
      final result = <String, dynamic>{};
      value.forEach((k, v) {
        result[k.toString()] = _serializeValue(v);
      });
      return result;
    }
    try {
      return jsonEncode(value);
    } catch (_) {
      return '<non-serializable>';
    }
  }

  static String _escapeJson(String json) {
    return json
        .replaceAll('&', '\\u0026')
        .replaceAll('<', '\\u003c')
        .replaceAll('>', '\\u003e')
        .replaceAll('\u2028', '\\u2028')
        .replaceAll('\u2029', '\\u2029');
  }

  static Object? _deserializeValue(Object? value) {
    if (value == null) return null;
    if (value is String) return value;
    if (value is num) return value;
    if (value is bool) return value;
    if (value is List) return value.map(_deserializeValue).toList();
    if (value is Map) {
      final result = <String, dynamic>{};
      value.forEach((k, v) {
        result[k.toString()] = _deserializeValue(v);
      });
      return result;
    }
    return value;
  }
}
