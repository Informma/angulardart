import 'dart:async';
import 'dom_apis.dart';

import 'package:angulardart/angulardart.dart';
import 'package:meta/meta.dart';

import 'meta_tag.dart';

/// Service for managing SEO-related meta tags in the document head.
///
/// This service provides methods to dynamically update the document's
/// title, meta tags, Open Graph tags, Twitter Card tags, canonical links,
/// and JSON-LD structured data.
///
/// Example usage:
/// ```dart
/// @Component(
///   selector: 'my-page',
///   template: '...',
/// )
/// class MyPageComponent implements OnInit {
///   final SeoService _seo;
///
///   MyPageComponent(this._seo);
///
///   @override
///   void ngOnInit() {
///     _seo
///       ..setTitle('My Page Title')
///       ..setDescription('My page description')
///       ..setOgTitle('My Page Title')
///       ..setOgImage('https://example.com/image.jpg');
///   }
/// }
/// ```
@Injectable()
class SeoService {
  final Document _document = window.document;
  final HTMLHeadElement? _head;

  /// Cache of managed meta tags by their key.
  final Map<String, HTMLMetaElement> _metaTags = {};

  /// Cache of managed link tags by their key.
  final Map<String, HTMLLinkElement> _linkTags = {};

  /// Cache of managed JSON-LD script tags by their id.
  final Map<String, HTMLScriptElement> _jsonLdTags = {};

  /// Stream controller for SEO changes.
  final StreamController<SeoChange> _changesController =
      StreamController<SeoChange>.broadcast();

  /// Stream of SEO changes for testing or analytics.
  Stream<SeoChange> get changes => _changesController.stream;

  SeoService() : _head = window.document.head;

  // ============================================================================
  // Title Management
  // ============================================================================

  /// Gets the current document title.
  String get title => _document.title;

  /// Sets the document title.
  ///
  /// The title is displayed in the browser tab and used by search engines
  /// as the title of the search result.
  ///
  /// Example:
  /// ```dart
  /// seoService.setTitle('My Page Title');
  /// ```
  void setTitle(String title) {
    _document.title = title;
    _changesController.add(SeoChange.title(title));
  }

  // ============================================================================
  // Meta Tag Management
  // ============================================================================

  /// Sets a meta tag with the given name and content.
  ///
  /// If a meta tag with the same name already exists, it will be updated.
  /// Otherwise, a new meta tag will be created.
  ///
  /// Example:
  /// ```dart
  /// seoService.setMeta('description', 'My page description');
  /// seoService.setMeta('keywords', 'angular, dart, seo');
  /// ```
  void setMeta(String name, String content) {
    _setMetaTag(MetaTag.name(name: name, content: content));
  }

  /// Removes a meta tag by name.
  ///
  /// Example:
  /// ```dart
  /// seoService.removeMeta('keywords');
  /// ```
  void removeMeta(String name) {
    final key = 'name:$name';
    final element = _metaTags.remove(key);
    element?.remove();
    _changesController.add(SeoChange.metaRemoved(name));
  }

  /// Sets multiple meta tags at once.
  ///
  /// Example:
  /// ```dart
  /// seoService.setMetas({
  ///   'description': 'My page description',
  ///   'keywords': 'angular, dart, seo',
  ///   'author': 'John Doe',
  /// });
  /// ```
  void setMetas(Map<String, String> metas) {
    metas.forEach(setMeta);
  }

  // ============================================================================
  // Open Graph Management
  // ============================================================================

  /// Sets an Open Graph meta tag.
  ///
  /// Open Graph tags are used by social media platforms (Facebook, LinkedIn, etc.)
  /// to display rich previews of your content.
  ///
  /// Example:
  /// ```dart
  /// seoService.setOgTag('title', 'My Page Title');
  /// seoService.setOgTag('description', 'My page description');
  /// seoService.setOgTag('image', 'https://example.com/image.jpg');
  /// ```
  void setOgTag(String property, String content) {
    _setMetaTag(OpenGraphTag(property: property, content: content));
  }

  /// Sets the Open Graph title.
  void setOgTitle(String title) => setOgTag('title', title);

  /// Sets the Open Graph description.
  void setOgDescription(String description) =>
      setOgTag('description', description);

  /// Sets the Open Graph image URL.
  void setOgImage(String url) => setOgTag('image', url);

  /// Sets the Open Graph URL.
  void setOgUrl(String url) => setOgTag('url', url);

  /// Sets the Open Graph type (e.g., 'website', 'article', 'product').
  void setOgType(String type) => setOgTag('type', type);

  /// Sets the Open Graph site name.
  void setOgSiteName(String name) => setOgTag('site_name', name);

  /// Sets the Open Graph locale (e.g., 'en_US', 'fr_FR').
  void setOgLocale(String locale) => setOgTag('locale', locale);

  /// Sets multiple Open Graph tags at once.
  ///
  /// Example:
  /// ```dart
  /// seoService.setOgTags({
  ///   'title': 'My Page Title',
  ///   'description': 'My page description',
  ///   'image': 'https://example.com/image.jpg',
  /// });
  /// ```
  void setOgTags(Map<String, String> tags) {
    tags.forEach(setOgTag);
  }

  /// Removes an Open Graph tag by property.
  void removeOgTag(String property) {
    final key = 'property:og:$property';
    final element = _metaTags.remove(key);
    element?.remove();
    _changesController.add(SeoChange.ogRemoved(property));
  }

  // ============================================================================
  // Twitter Card Management
  // ============================================================================

  /// Sets a Twitter Card meta tag.
  ///
  /// Twitter Card tags are used by Twitter to display rich previews of your content.
  ///
  /// Example:
  /// ```dart
  /// seoService.setTwitterTag('card', 'summary_large_image');
  /// seoService.setTwitterTag('title', 'My Page Title');
  /// seoService.setTwitterTag('image', 'https://example.com/image.jpg');
  /// ```
  void setTwitterTag(String name, String content) {
    _setMetaTag(TwitterCardTag(name: name, content: content));
  }

  /// Sets the Twitter Card type (e.g., 'summary', 'summary_large_image').
  void setTwitterCard(String type) => setTwitterTag('card', type);

  /// Sets the Twitter Card title.
  void setTwitterTitle(String title) => setTwitterTag('title', title);

  /// Sets the Twitter Card description.
  void setTwitterDescription(String description) =>
      setTwitterTag('description', description);

  /// Sets the Twitter Card image URL.
  void setTwitterImage(String url) => setTwitterTag('image', url);

  /// Sets the Twitter site handle (e.g., '@mysite').
  void setTwitterSite(String handle) => setTwitterTag('site', handle);

  /// Sets the Twitter creator handle (e.g., '@johndoe').
  void setTwitterCreator(String handle) => setTwitterTag('creator', handle);

  /// Sets multiple Twitter Card tags at once.
  void setTwitterTags(Map<String, String> tags) {
    tags.forEach(setTwitterTag);
  }

  /// Removes a Twitter Card tag by name.
  void removeTwitterTag(String name) {
    final key = 'name:twitter:$name';
    final element = _metaTags.remove(key);
    element?.remove();
    _changesController.add(SeoChange.twitterRemoved(name));
  }

  // ============================================================================
  // Canonical and Link Management
  // ============================================================================

  /// Sets the canonical URL for the current page.
  ///
  /// The canonical URL tells search engines which URL is the preferred one
  /// for this page, helping to prevent duplicate content issues.
  ///
  /// Example:
  /// ```dart
  /// seoService.setCanonical('https://example.com/my-page');
  /// ```
  void setCanonical(String url) {
    _setLinkTag(LinkTag.canonical(url));
  }

  /// Removes the canonical link tag.
  void removeCanonical() {
    final element = _linkTags.remove('canonical');
    element?.remove();
    _changesController.add(SeoChange.canonicalRemoved());
  }

  /// Adds an alternate language link.
  ///
  /// Use this to indicate that the current page is available in other languages.
  ///
  /// Example:
  /// ```dart
  /// seoService.addAlternateLanguage(
  ///   href: 'https://example.com/fr/ma-page',
  ///   hreflang: 'fr',
  /// );
  /// ```
  void addAlternateLanguage({
    required String href,
    required String hreflang,
    String? title,
  }) {
    _setLinkTag(LinkTag.alternate(
      href: href,
      hreflang: hreflang,
      title: title,
    ));
  }

  /// Removes an alternate language link by hreflang.
  void removeAlternateLanguage(String hreflang) {
    final key = 'alternate:$hreflang';
    final element = _linkTags.remove(key);
    element?.remove();
    _changesController.add(SeoChange.alternateRemoved(hreflang));
  }

  /// Sets the favicon for the page.
  ///
  /// Example:
  /// ```dart
  /// seoService.setFavicon('/favicon.ico');
  /// seoService.setFavicon('/favicon-32x32.png', sizes: '32x32');
  /// ```
  void setFavicon(String href, {String? sizes, String? type}) {
    _setLinkTag(LinkTag.icon(href, sizes: sizes, type: type));
  }

  /// Adds a custom link tag.
  ///
  /// Example:
  /// ```dart
  /// seoService.addLink(LinkTag(
  ///   rel: 'preload',
  ///   href: '/fonts/main.woff2',
  ///   type: 'font/woff2',
  /// ));
  /// ```
  void addLink(LinkTag linkTag) {
    _setLinkTag(linkTag);
  }

  /// Removes a link tag by rel (and optionally hreflang or sizes).
  void removeLink(String rel, {String? hreflang, String? sizes}) {
    String key;
    if (hreflang != null) {
      key = '$rel:$hreflang';
    } else if (sizes != null) {
      key = '$rel:$sizes';
    } else {
      key = rel;
    }
    final element = _linkTags.remove(key);
    element?.remove();
  }

  // ============================================================================
  // Robots Management
  // ============================================================================

  /// Sets the robots meta tag.
  ///
  /// The robots meta tag tells search engines how to crawl and index the page.
  ///
  /// Example:
  /// ```dart
  /// seoService.setRobots('index, follow');
  /// seoService.setRobots('noindex, nofollow');
  /// ```
  void setRobots(String robots) {
    setMeta('robots', robots);
  }

  /// Sets the Googlebot-specific robots meta tag.
  void setGooglebot(String robots) {
    setMeta('googlebot', robots);
  }

  // ============================================================================
  // JSON-LD Structured Data Management
  // ============================================================================

  /// Sets a JSON-LD structured data block.
  ///
  /// JSON-LD is used by search engines to understand the content of your page
  /// and display rich snippets in search results.
  ///
  /// Example:
  /// ```dart
  /// seoService.setJsonLd(JsonLd(
  ///   data: {
  ///     '@context': 'https://schema.org',
  ///     '@type': 'Product',
  ///     'name': 'My Product',
  ///     'description': 'Product description',
  ///   },
  ///   id: 'product',
  /// ));
  /// ```
  void setJsonLd(JsonLd jsonLd) {
    final id = jsonLd.id ?? 'default';
    final key = 'jsonld-$id';

    // Remove existing tag if present.
    _jsonLdTags[key]?.remove();

    // Create new script tag.
    final script = _document.createElement('script') as HTMLScriptElement
      ..type = 'application/ld+json'
      ..id = key
      ..text = _mapToJsonString(jsonLd.data);

    _head?.append(script);
    _jsonLdTags[key] = script;
    _changesController.add(SeoChange.jsonLdSet(id));
  }

  /// Removes a JSON-LD block by id.
  void removeJsonLd(String id) {
    final key = 'jsonld-$id';
    final element = _jsonLdTags.remove(key);
    element?.remove();
    _changesController.add(SeoChange.jsonLdRemoved(id));
  }

  /// Removes all JSON-LD blocks.
  void removeAllJsonLd() {
    for (final element in _jsonLdTags.values) {
      element.remove();
    }
    _jsonLdTags.clear();
    _changesController.add(const SeoChange.jsonLdAllRemoved());
  }

  // ============================================================================
  // Convenience Methods
  // ============================================================================

  /// Sets a complete SEO configuration for a page.
  ///
  /// This is a convenience method that sets the title, description,
  /// Open Graph tags, and Twitter Card tags all at once.
  ///
  /// Example:
  /// ```dart
  /// seoService.setPageSeo(
  ///   title: 'My Page Title',
  ///   description: 'My page description',
  ///   url: 'https://example.com/my-page',
  ///   image: 'https://example.com/image.jpg',
  /// );
  /// ```
  void setPageSeo({
    required String title,
    required String description,
    String? url,
    String? image,
    String? type,
    String? siteName,
    String? locale,
    String? twitterCard,
    String? twitterSite,
    String? twitterCreator,
    String? canonical,
    String? robots,
  }) {
    setTitle(title);
    setMeta('description', description);

    setOgTitle(title);
    setOgDescription(description);
    if (url != null) setOgUrl(url);
    if (image != null) setOgImage(image);
    if (type != null) setOgType(type);
    if (siteName != null) setOgSiteName(siteName);
    if (locale != null) setOgLocale(locale);

    setTwitterCard(twitterCard ?? 'summary_large_image');
    setTwitterTitle(title);
    setTwitterDescription(description);
    if (image != null) setTwitterImage(image);
    if (twitterSite != null) setTwitterSite(twitterSite);
    if (twitterCreator != null) setTwitterCreator(twitterCreator);

    if (canonical != null) setCanonical(canonical);
    if (robots != null) setRobots(robots);
  }

  /// Removes all SEO tags managed by this service.
  ///
  /// This is useful when navigating away from a page to clean up
  /// the head element.
  void clearAll() {
    // Clear title (reset to default).
    _document.title = '';

    // Clear all meta tags.
    for (final element in _metaTags.values) {
      element.remove();
    }
    _metaTags.clear();

    // Clear all link tags.
    for (final element in _linkTags.values) {
      element.remove();
    }
    _linkTags.clear();

    // Clear all JSON-LD tags.
    for (final element in _jsonLdTags.values) {
      element.remove();
    }
    _jsonLdTags.clear();

    _changesController.add(const SeoChange.allCleared());
  }

  /// Disposes of the service and closes the stream controller.
  void dispose() {
    _changesController.close();
  }

  // ============================================================================
  // Private Methods
  // ============================================================================

  void _setMetaTag(MetaTag metaTag) {
    final key = metaTag.key;
    final head = _head;
    if (head == null) return;

    // Check if tag already exists.
    var element = _metaTags[key];
    if (element != null) {
      // Update existing tag.
      if (metaTag.charset != null) {
        element.setAttribute('charset', metaTag.charset!);
      } else {
        element.content = metaTag.content;
      }
    } else {
      // Create new tag.
      element = _document.createElement('meta') as HTMLMetaElement;
      if (metaTag.name != null) {
        element.name = metaTag.name!;
      }
      if (metaTag.property != null) {
        element.setAttribute('property', metaTag.property!);
      }
      if (metaTag.httpEquiv != null) {
        element.httpEquiv = metaTag.httpEquiv!;
      }
      if (metaTag.charset != null) {
        element.setAttribute('charset', metaTag.charset!);
      } else {
        element.content = metaTag.content;
      }
      head.append(element);
      _metaTags[key] = element;
    }

    _changesController.add(SeoChange.metaSet(key, metaTag.content));
  }

  void _setLinkTag(LinkTag linkTag) {
    final key = linkTag.key;
    final head = _head;
    if (head == null) return;

    // Check if tag already exists.
    var element = _linkTags[key];
    if (element != null) {
      // Update existing tag.
      element.href = linkTag.href;
      if (linkTag.type != null) {
        element.type = linkTag.type!;
      }
      if (linkTag.title != null) {
        element.title = linkTag.title!;
      }
    } else {
      // Create new tag.
      element = _document.createElement('link') as HTMLLinkElement
        ..rel = linkTag.rel
        ..href = linkTag.href;
      if (linkTag.type != null) {
        element.type = linkTag.type!;
      }
      if (linkTag.hreflang != null) {
        element.hreflang = linkTag.hreflang!;
      }
      if (linkTag.title != null) {
        element.title = linkTag.title!;
      }
      if (linkTag.sizes != null) {
        element.setAttribute('sizes', linkTag.sizes!);
      }
      head.append(element);
      _linkTags[key] = element;
    }

    _changesController.add(SeoChange.linkSet(key, linkTag.href));
  }

  String _mapToJsonString(Map<String, dynamic> map) {
    final buffer = StringBuffer('{');
    var first = true;
    for (final entry in map.entries) {
      if (!first) buffer.write(',');
      first = false;
      buffer.write('"${_escapeJsonString(entry.key)}":');
      buffer.write(_jsonValueToString(entry.value));
    }
    buffer.write('}');
    return buffer.toString();
  }

  String _jsonValueToString(dynamic value) {
    if (value == null) return 'null';
    if (value is String) return '"${_escapeJsonString(value)}"';
    if (value is num || value is bool) return value.toString();
    if (value is List) {
      return '[${value.map(_jsonValueToString).join(',')}]';
    }
    if (value is Map<String, dynamic>) {
      return _mapToJsonString(value);
    }
    return '"${_escapeJsonString(value.toString())}"';
  }

  String _escapeJsonString(String value) {
    return value
        .replaceAll('\\', '\\\\')
        .replaceAll('"', '\\"')
        .replaceAll('\n', '\\n')
        .replaceAll('\r', '\\r')
        .replaceAll('\t', '\\t');
  }
}

/// Represents a change to the SEO configuration.
@immutable
class SeoChange {
  /// The type of change.
  final SeoChangeType type;

  /// The key or identifier of the changed element.
  final String? key;

  /// The new value (for meta tags, this is the content).
  final String? value;

  const SeoChange._(this.type, {this.key, this.value});

  const SeoChange.title(String title)
      : this._(SeoChangeType.title, value: title);

  const SeoChange.metaSet(String key, String content)
      : this._(SeoChangeType.metaSet, key: key, value: content);

  const SeoChange.metaRemoved(String name)
      : this._(SeoChangeType.metaRemoved, key: name);

  const SeoChange.ogRemoved(String property)
      : this._(SeoChangeType.ogRemoved, key: property);

  const SeoChange.twitterRemoved(String name)
      : this._(SeoChangeType.twitterRemoved, key: name);

  const SeoChange.canonicalRemoved()
      : this._(SeoChangeType.canonicalRemoved);

  const SeoChange.alternateRemoved(String hreflang)
      : this._(SeoChangeType.alternateRemoved, key: hreflang);

  const SeoChange.linkSet(String key, String href)
      : this._(SeoChangeType.linkSet, key: key, value: href);

  const SeoChange.jsonLdSet(String id)
      : this._(SeoChangeType.jsonLdSet, key: id);

  const SeoChange.jsonLdRemoved(String id)
      : this._(SeoChangeType.jsonLdRemoved, key: id);

  const SeoChange.jsonLdAllRemoved()
      : this._(SeoChangeType.jsonLdAllRemoved);

  const SeoChange.allCleared() : this._(SeoChangeType.allCleared);

  @override
  String toString() => 'SeoChange($type, key: $key, value: $value)';
}

/// Types of SEO changes.
enum SeoChangeType {
  title,
  metaSet,
  metaRemoved,
  ogRemoved,
  twitterRemoved,
  canonicalRemoved,
  alternateRemoved,
  linkSet,
  jsonLdSet,
  jsonLdRemoved,
  jsonLdAllRemoved,
  allCleared,
}
