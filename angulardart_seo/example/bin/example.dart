import 'package:angulardart_seo/src/meta_tag.dart';
import 'package:angulardart_seo/src/seo_annotations.dart';

void main() {
  // Créer des meta tags
  final description = MetaTag.name(
    name: 'description',
    content: 'AngularDart SEO - Complete SEO management for AngularDart applications',
  );
  print('Meta tag: ${description.toHtml()}');

  // Créer des Open Graph tags
  final ogTitle = OpenGraphTag(property: 'title', content: 'AngularDart SEO');
  final ogDescription = OpenGraphTag(
    property: 'description',
    content: 'Complete SEO management for AngularDart applications',
  );
  final ogImage = OpenGraphTag(
    property: 'image',
    content: 'https://example.com/image.jpg',
  );
  print('OG Title: ${ogTitle.toHtml()}');
  print('OG Description: ${ogDescription.toHtml()}');
  print('OG Image: ${ogImage.toHtml()}');

  // Créer des Twitter Card tags
  final twitterCard = TwitterCardTag(name: 'card', content: 'summary_large_image');
  final twitterTitle = TwitterCardTag(name: 'title', content: 'AngularDart SEO');
  print('Twitter Card: ${twitterCard.toHtml()}');
  print('Twitter Title: ${twitterTitle.toHtml()}');

  // Créer un lien canonique
  final canonical = LinkTag.canonical('https://example.com/page');
  print('Canonical: ${canonical.toHtml()}');

  // Créer des données structurées JSON-LD
  final website = JsonLd.webSite(
    name: 'AngularDart SEO',
    url: 'https://example.com',
    description: 'Complete SEO management',
  );
  print('JSON-LD Website: ${website.toHtml()}');

  final article = JsonLd.article(
    headline: 'Getting Started with AngularDart SEO',
    url: 'https://example.com/blog/getting-started',
    description: 'Learn how to use AngularDart SEO',
    datePublished: '2024-01-01',
    authorName: 'John Doe',
  );
  print('JSON-LD Article: ${article.toHtml()}');

  // Exemple de configuration SEO complète
  const seoConfig = SeoConfig(
    title: 'My Page',
    description: 'Page description',
    keywords: 'angular, dart, seo',
    ogTitle: 'My Page - AngularDart',
    ogImage: 'https://example.com/image.jpg',
    twitterCard: 'summary_large_image',
    canonical: 'https://example.com/my-page',
    robots: 'index, follow',
  );
  print('SEO Config title: ${seoConfig.title}');
  print('SEO Config robots: ${seoConfig.robotsValue}');

  print('\n✅ Example completed successfully!');
}
