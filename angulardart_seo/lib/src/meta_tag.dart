/// Models for SEO meta tags.
library;

/// Represents an HTML meta tag.
class MetaTag {
  /// The name attribute (e.g., 'description', 'keywords').
  final String? name;

  /// The property attribute (e.g., 'og:title', 'twitter:card').
  final String? property;

  /// The httpEquiv attribute (e.g., 'Content-Type', 'refresh').
  final String? httpEquiv;

  /// The content attribute value.
  final String content;

  /// The charset attribute (for <meta charset="...">).
  final String? charset;

  const MetaTag({
    this.name,
    this.property,
    this.httpEquiv,
    required this.content,
    this.charset,
  }) : assert(
          name != null || property != null || httpEquiv != null || charset != null,
          'At least one of name, property, httpEquiv, or charset must be provided',
        );

  /// Creates a standard meta tag with name and content.
  const MetaTag.name({required String name, required String content})
      : this(name: name, content: content);

  /// Creates a property-based meta tag (for Open Graph, etc.).
  const MetaTag.property({required String property, required String content})
      : this(property: property, content: content);

  /// Creates a meta tag with httpEquiv.
  const MetaTag.httpEquiv({required String httpEquiv, required String content})
      : this(httpEquiv: httpEquiv, content: content);

  /// Creates a charset meta tag.
  const MetaTag.charset(String charset) : this(charset: charset, content: '');

  /// Returns a unique key for this meta tag.
  String get key {
    if (name != null) return 'name:$name';
    if (property != null) return 'property:$property';
    if (httpEquiv != null) return 'httpEquiv:$httpEquiv';
    if (charset != null) return 'charset';
    return 'unknown';
  }

  /// Converts this meta tag to an HTML string.
  String toHtml() {
    if (charset != null) {
      return '<meta charset="$charset">';
    }
    final buffer = StringBuffer('<meta ');
    if (name != null) {
      buffer.write('name="$name" ');
    }
    if (property != null) {
      buffer.write('property="$property" ');
    }
    if (httpEquiv != null) {
      buffer.write('http-equiv="$httpEquiv" ');
    }
    buffer.write('content="${_escapeHtml(content)}"');
    buffer.write('>');
    return buffer.toString();
  }

  String _escapeHtml(String value) {
    return value
        .replaceAll('&', '&amp;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&#39;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;');
  }

  @override
  String toString() => toHtml();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MetaTag && other.key == key && other.content == content;
  }

  @override
  int get hashCode => Object.hash(key, content);
}

/// Represents an Open Graph meta tag.
class OpenGraphTag extends MetaTag {
  OpenGraphTag({
    required String property,
    required String content,
  }) : super(property: 'og:$property', content: content);

  /// Creates an og:title tag.
  OpenGraphTag.title(String title)
      : this(property: 'title', content: title);

  /// Creates an og:description tag.
  OpenGraphTag.description(String description)
      : this(property: 'description', content: description);

  /// Creates an og:image tag.
  OpenGraphTag.image(String url)
      : this(property: 'image', content: url);

  /// Creates an og:url tag.
  OpenGraphTag.url(String url)
      : this(property: 'url', content: url);

  /// Creates an og:type tag.
  OpenGraphTag.type(String type)
      : this(property: 'type', content: type);

  /// Creates an og:site_name tag.
  OpenGraphTag.siteName(String name)
      : this(property: 'site_name', content: name);

  /// Creates an og:locale tag.
  OpenGraphTag.locale(String locale)
      : this(property: 'locale', content: locale);
}

/// Represents a Twitter Card meta tag.
class TwitterCardTag extends MetaTag {
  TwitterCardTag({
    required String name,
    required String content,
  }) : super(name: 'twitter:$name', content: content);

  /// Creates a twitter:card tag.
  TwitterCardTag.card(String type)
      : this(name: 'card', content: type);

  /// Creates a twitter:title tag.
  TwitterCardTag.title(String title)
      : this(name: 'title', content: title);

  /// Creates a twitter:description tag.
  TwitterCardTag.description(String description)
      : this(name: 'description', content: description);

  /// Creates a twitter:image tag.
  TwitterCardTag.image(String url)
      : this(name: 'image', content: url);

  /// Creates a twitter:site tag.
  TwitterCardTag.site(String handle)
      : this(name: 'site', content: handle);

  /// Creates a twitter:creator tag.
  TwitterCardTag.creator(String handle)
      : this(name: 'creator', content: handle);
}

/// Represents a link tag (e.g., canonical, alternate).
class LinkTag {
  /// The rel attribute (e.g., 'canonical', 'alternate', 'icon').
  final String rel;

  /// The href attribute.
  final String href;

  /// The type attribute (e.g., 'application/rss+xml').
  final String? type;

  /// The hreflang attribute (for alternate language links).
  final String? hreflang;

  /// The title attribute.
  final String? title;

  /// The sizes attribute (for icons).
  final String? sizes;

  const LinkTag({
    required this.rel,
    required this.href,
    this.type,
    this.hreflang,
    this.title,
    this.sizes,
  });

  /// Creates a canonical link tag.
  const LinkTag.canonical(String url)
      : this(rel: 'canonical', href: url);

  /// Creates an alternate language link tag.
  const LinkTag.alternate({
    required String href,
    required String hreflang,
    String? title,
  }) : this(
          rel: 'alternate',
          href: href,
          hreflang: hreflang,
          title: title,
        );

  /// Creates a favicon link tag.
  const LinkTag.icon(String href, {String? sizes, String? type})
      : this(
          rel: 'icon',
          href: href,
          sizes: sizes,
          type: type,
        );

  /// Returns a unique key for this link tag.
  String get key {
    if (hreflang != null) return '$rel:$hreflang';
    if (sizes != null) return '$rel:$sizes';
    return rel;
  }

  /// Converts this link tag to an HTML string.
  String toHtml() {
    final buffer = StringBuffer('<link rel="$rel" href="${_escapeHtml(href)}"');
    if (type != null) {
      buffer.write(' type="$type"');
    }
    if (hreflang != null) {
      buffer.write(' hreflang="$hreflang"');
    }
    if (title != null) {
      buffer.write(' title="${_escapeHtml(title!)}"');
    }
    if (sizes != null) {
      buffer.write(' sizes="$sizes"');
    }
    buffer.write('>');
    return buffer.toString();
  }

  String _escapeHtml(String value) {
    return value
        .replaceAll('&', '&amp;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&#39;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;');
  }

  @override
  String toString() => toHtml();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LinkTag && other.key == key && other.href == href;
  }

  @override
  int get hashCode => Object.hash(key, href);
}

/// Represents JSON-LD structured data.
class JsonLd {
  /// The structured data as a Map.
  final Map<String, dynamic> data;

  /// An optional identifier for this JSON-LD block.
  final String? id;

  const JsonLd({
    required this.data,
    this.id,
  });

  /// Creates a WebSite JSON-LD structure.
  JsonLd.webSite({
    required String name,
    required String url,
    String? description,
    String? logo,
  }) : this(
          data: {
            '@context': 'https://schema.org',
            '@type': 'WebSite',
            'name': name,
            'url': url,
            if (description != null) 'description': description,
            if (logo != null) 'logo': logo,
          },
          id: 'website',
        );

  /// Creates an Organization JSON-LD structure.
  JsonLd.organization({
    required String name,
    required String url,
    String? logo,
    String? email,
    String? telephone,
    List<String>? sameAs,
  }) : this(
          data: {
            '@context': 'https://schema.org',
            '@type': 'Organization',
            'name': name,
            'url': url,
            if (logo != null) 'logo': logo,
            if (email != null) 'email': email,
            if (telephone != null) 'telephone': telephone,
            if (sameAs != null) 'sameAs': sameAs,
          },
          id: 'organization',
        );

  /// Creates an Article JSON-LD structure.
  JsonLd.article({
    required String headline,
    required String url,
    String? description,
    String? image,
    String? datePublished,
    String? dateModified,
    String? authorName,
    String? authorUrl,
    String? publisherName,
    String? publisherLogo,
  }) : this(
          data: {
            '@context': 'https://schema.org',
            '@type': 'Article',
            'headline': headline,
            'url': url,
            if (description != null) 'description': description,
            if (image != null) 'image': image,
            if (datePublished != null) 'datePublished': datePublished,
            if (dateModified != null) 'dateModified': dateModified,
            if (authorName != null)
              'author': {
                '@type': 'Person',
                'name': authorName,
                if (authorUrl != null) 'url': authorUrl,
              },
            if (publisherName != null)
              'publisher': {
                '@type': 'Organization',
                'name': publisherName,
                if (publisherLogo != null) 'logo': {
                  '@type': 'ImageObject',
                  'url': publisherLogo,
                },
              },
          },
          id: 'article',
        );

  /// Creates a BreadcrumbList JSON-LD structure.
  JsonLd.breadcrumbList(List<Map<String, dynamic>> items)
      : this(
          data: {
            '@context': 'https://schema.org',
            '@type': 'BreadcrumbList',
            'itemListElement': items.asMap().entries.map((entry) {
              return {
                '@type': 'ListItem',
                'position': entry.key + 1,
                'name': entry.value['name'],
                'item': entry.value['url'],
              };
            }).toList(),
          },
          id: 'breadcrumb',
        );

  /// Converts this JSON-LD to an HTML script tag.
  String toHtml() {
    final jsonString = _toJsonString(data);
    final idAttr = id != null ? ' id="jsonld-$id"' : '';
    return '<script type="application/ld+json"$idAttr>$jsonString</script>';
  }

  String _toJsonString(Map<String, dynamic> map) {
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
      return _toJsonString(value);
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

  @override
  String toString() => toHtml();
}
