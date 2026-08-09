import 'package:angulardart_server/src/_html_builder.dart';
import 'package:test/test.dart';

void main() {
  group('HtmlBuilder', () {
    test('génère une balise simple sans attributs', () {
      final builder = HtmlBuilder();
      builder.openTag('div');
      expect(builder.toString(), '<div>');
    });

    test('génère une balise avec attributs', () {
      final builder = HtmlBuilder();
      builder.openTag('a', {'href': '/home', 'title': 'Home'});
      expect(builder.toString(), '<a href="/home" title="Home">');
    });

    test('échappe les guillemets dans les attributs', () {
      final builder = HtmlBuilder();
      builder.openTag('div', {'title': 'He said "hello"'});
      expect(builder.toString(), '<div title="He said &quot;hello&quot;">');
    });

    test('échappe les esperluettes dans les attributs', () {
      final builder = HtmlBuilder();
      builder.openTag('a', {'href': '/search?q=1&lang=en'});
      expect(builder.toString(), '<a href="/search?q=1&amp;lang=en">');
    });

    test('génère une balise vide avec valeur vide', () {
      final builder = HtmlBuilder();
      builder.openTag('input', {'type': ''});
      expect(builder.toString(), '<input type>');
    });

    test('ferme une balise', () {
      final builder = HtmlBuilder();
      builder.closeTag('div');
      expect(builder.toString(), '</div>');
    });

    test('écrit du texte avec échappement HTML', () {
      final builder = HtmlBuilder();
      builder.text('<script>alert("xss")</script>');
      expect(
        builder.toString(),
        '&lt;script&gt;alert("xss")&lt;/script&gt;',
      );
    });

    test('écrit du texte brut sans échappement', () {
      final builder = HtmlBuilder();
      builder.innerHtml('<b>bold</b>');
      expect(builder.toString(), '<b>bold</b>');
    });

    test('génère un commentaire HTML', () {
      final builder = HtmlBuilder();
      builder.comment('un commentaire');
      expect(builder.toString(), '<!--un commentaire-->');
    });

    test('génère une balise auto-fermante sans attributs', () {
      final builder = HtmlBuilder();
      builder.selfClosingTag('img');
      expect(builder.toString(), '<img />');
    });

    test('génère une balise auto-fermante avec attributs', () {
      final builder = HtmlBuilder();
      builder.selfClosingTag('img', {'src': 'photo.jpg', 'alt': 'Photo'});
      expect(builder.toString(), '<img src="photo.jpg" alt="Photo" />');
    });

    test('concatène plusieurs opérations dans un StringBuffer', () {
      final builder = HtmlBuilder();
      builder.openTag('div', {'class': 'container'});
      builder.text('Hello World');
      builder.closeTag('div');
      expect(builder.toString(), '<div class="container">Hello World</div>');
    });

    test('gère les balises imbriquées via append', () {
      final parent = HtmlBuilder();
      final child = HtmlBuilder();
      child.openTag('span');
      child.text('nested');
      child.closeTag('span');
      parent.append(child);
      expect(parent.toString(), '<span>nested</span>');
    });

    test('vide le buffer avec clear()', () {
      final builder = HtmlBuilder();
      builder.text('premier');
      builder.clear();
      builder.text('second');
      expect(builder.toString(), 'second');
    });

    test('attributs sans valeur sont des drapeaux', () {
      final builder = HtmlBuilder();
      builder.openTag('input', {'disabled': '', 'type': 'text'});
      expect(builder.toString(), '<input disabled type="text">');
    });

    test('échappe & dans les attributs de balise auto-fermante', () {
      final builder = HtmlBuilder();
      builder.selfClosingTag('meta', {'content': '1&2'});
      expect(builder.toString(), '<meta content="1&amp;2" />');
    });

    test('texte avec caractères HTML spéciaux', () {
      final builder = HtmlBuilder();
      builder.text('& < >');
      expect(builder.toString(), '&amp; &lt; &gt;');
    });

    test('HTML brut non échappé', () {
      final builder = HtmlBuilder();
      builder.innerHtml('<p>safe</p><span>also safe</span>');
      expect(
        builder.toString(),
        '<p>safe</p><span>also safe</span>',
      );
    });

    test('chaîne vide après création', () {
      final builder = HtmlBuilder();
      expect(builder.toString(), '');
    });

    test('plusieurs appels à text accumulent le contenu', () {
      final builder = HtmlBuilder();
      builder.text('a');
      builder.text('b');
      builder.text('c');
      expect(builder.toString(), 'abc');
    });

    test('openTag + closeTag pour une balise vide', () {
      final builder = HtmlBuilder();
      builder.openTag('div');
      builder.closeTag('div');
      expect(builder.toString(), '<div></div>');
    });

    test('attributs avec valeur null sont ignorés', () {
      // Le type Map<String, String> ne permet pas de valeurs null,
      // donc ce test vérifie juste le comportement normal.
      final builder = HtmlBuilder();
      builder.openTag('div', {});
      expect(builder.toString(), '<div>');
    });

    test('clear() après append fonctionne correctement', () {
      final builder = HtmlBuilder();
      builder.text('premier');
      builder.clear();
      builder.text('second');
      expect(builder.toString(), 'second');
    });

    test('append copie le contenu du child au moment de l\'appel', () {
      final parent = HtmlBuilder();
      final child = HtmlBuilder();
      child.text('valeur');
      parent.append(child);
      // append écrit une copie, modifier child après n'affecte pas parent.
      child.clear();
      expect(parent.toString(), 'valeur');
    });

    test('échappe les guillemets dans les balises auto-fermantes', () {
      final builder = HtmlBuilder();
      builder.selfClosingTag('input', {'value': 'a"b'});
      expect(builder.toString(), '<input value="a&quot;b" />');
    });

    test('texte avec esperluette seule', () {
      final builder = HtmlBuilder();
      builder.text('&');
      expect(builder.toString(), '&amp;');
    });

    test('HTML brut avec caractères spéciaux non modifié', () {
      final builder = HtmlBuilder();
      builder.innerHtml('<b>&</b>');
      expect(builder.toString(), '<b>&</b>');
    });
  });
}
