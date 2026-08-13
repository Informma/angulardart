import 'package:angulardart/angulardart.dart';
import 'package:test/test.dart';

void main() {
  group('ServerRenderNode.toHtml()', () {
    test('génère une balise simple sans attributs', () {
      final node = ServerRenderNode('div');
      expect(node.toHtml(), '<div></div>');
    });

    test('n\'émet pas de class sans classes statiques ou dynamiques', () {
      final node = ServerRenderNode('div');
      node.setAttribute('id', 'x');
      expect(node.toHtml(), '<div id="x"></div>');
    });

    test('émet la classe statique seule', () {
      final node = ServerRenderNode('div');
      node.setAttribute('class', 'container active');
      expect(node.toHtml(), '<div class="container active"></div>');
    });

    test('émet la classe dynamique seule', () {
      final node = ServerRenderNode('div');
      node.setClass('highlight', true);
      expect(node.toHtml(), '<div class="highlight"></div>');
    });

    test('fusionne classe statique et dynamique en un seul attribut', () {
      final node = ServerRenderNode('div');
      node.setAttribute('class', 'container active');
      node.setClass('highlight', true);
      node.setClass('container', true); // doublon -> dédupliqué
      final html = node.toHtml();
      expect(html, '<div class="container active highlight"></div>');
      expect('class='.allMatches(html).length, 1);
    });

    test('une classe dynamique désactivée n\'est pas émise', () {
      final node = ServerRenderNode('div');
      node.setClass('hidden', false);
      expect(node.toHtml(), '<div></div>');
    });

    test('toggleClass met à jour une classe existante', () {
      final node = ServerRenderNode('div');
      node.toggleClass('on', true);
      node.toggleClass('off', true);
      node.toggleClass('off', false);
      expect(node.toHtml(), '<div class="on"></div>');
    });

    test('les autres attributs sont conservés avec la classe fusionnée', () {
      final node = ServerRenderNode('a');
      node.setAttribute('href', '/home');
      node.setAttribute('class', 'nav-link');
      node.setClass('active', true);
      expect(
        node.toHtml(),
        '<a href="/home" class="nav-link active"></a>',
      );
    });

    test('classe statique avec espaces multiples normalisée', () {
      final node = ServerRenderNode('div');
      node.setAttribute('class', '  a   b  ');
      node.setClass('c', true);
      expect(node.toHtml(), '<div class="a b c"></div>');
    });
  });
}
