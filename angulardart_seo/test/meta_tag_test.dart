import 'package:angulardart_seo/src/meta_tag.dart';
import 'package:angulardart_seo/src/seo_annotations.dart';
import 'package:test/test.dart';

void main() {
  group('MetaTag', () {
    test('creates name meta tag', () {
      final tag = MetaTag.name(name: 'description', content: 'Test description');
      expect(tag.name, equals('description'));
      expect(tag.content, equals('Test description'));
      expect(tag.key, equals('name:description'));
    });

    test('creates property meta tag', () {
      final tag = MetaTag.property(property: 'og:title', content: 'Test Title');
      expect(tag.property, equals('og:title'));
      expect(tag.content, equals('Test Title'));
      expect(tag.key, equals('property:og:title'));
    });

    test('generates HTML', () {
      final tag = MetaTag.name(name: 'description', content: 'Test');
      expect(tag.toHtml(), equals('<meta name="description" content="Test">'));
    });
  });

  group('OpenGraphTag', () {
    test('creates og tag', () {
      final tag = OpenGraphTag(property: 'title', content: 'Test Title');
      expect(tag.property, equals('og:title'));
      expect(tag.content, equals('Test Title'));
    });
  });

  group('TwitterCardTag', () {
    test('creates twitter tag', () {
      final tag = TwitterCardTag(name: 'card', content: 'summary');
      expect(tag.name, equals('twitter:card'));
      expect(tag.content, equals('summary'));
    });
  });

  group('LinkTag', () {
    test('creates canonical link', () {
      final tag = LinkTag.canonical('https://example.com');
      expect(tag.rel, equals('canonical'));
      expect(tag.href, equals('https://example.com'));
    });

    test('generates HTML', () {
      final tag = LinkTag.canonical('https://example.com');
      expect(tag.toHtml(), equals('<link rel="canonical" href="https://example.com">'));
    });
  });

  group('JsonLd', () {
    test('creates website JSON-LD', () {
      final jsonLd = JsonLd.webSite(
        name: 'Test Site',
        url: 'https://example.com',
      );
      expect(jsonLd.data['@type'], equals('WebSite'));
      expect(jsonLd.data['name'], equals('Test Site'));
      expect(jsonLd.id, equals('website'));
    });

    test('generates HTML', () {
      final jsonLd = JsonLd(data: {'@type': 'Test'}, id: 'test');
      final html = jsonLd.toHtml();
      expect(html, contains('application/ld+json'));
      expect(html, contains('id="jsonld-test"'));
    });
  });

  group('SeoConfig', () {
    test('creates config with defaults', () {
      const config = SeoConfig();
      expect(config.index, isTrue);
      expect(config.follow, isTrue);
      expect(config.robotsValue, equals('index, follow'));
    });

    test('creates noindex config', () {
      const config = SeoConfig(index: false);
      expect(config.robotsValue, equals('noindex, follow'));
    });
  });
}
