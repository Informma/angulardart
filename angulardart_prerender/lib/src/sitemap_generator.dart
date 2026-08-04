import 'package:logging/logging.dart';

import 'prerender_config.dart';

final _logger = Logger('SitemapGenerator');

/// Generates sitemap.xml and robots.txt files for SEO.
///
/// This class is responsible for:
/// 1. Generating a valid sitemap.xml with all prerendered routes
/// 2. Generating a robots.txt file pointing to the sitemap
/// 3. Supporting sitemap index files for large sites
class SitemapGenerator {
  final PrerenderConfig _config;

  SitemapGenerator(this._config);

  /// Generates a sitemap.xml file content.
  ///
  /// The sitemap includes all prerendered routes with their:
  /// - loc: The URL of the page
  /// - lastmod: Last modification date (optional)
  /// - changefreq: Change frequency (optional)
  /// - priority: Priority (optional)
  String generateSitemap(
    List<String> routes, {
    Map<String, DateTime>? lastModified,
    Map<String, String>? changeFreq,
    Map<String, double>? priorities,
  }) {
    final buffer = StringBuffer();

    // XML declaration.
    buffer.writeln('<?xml version="1.0" encoding="UTF-8"?>');

    // URLSet element.
    buffer.writeln(
      '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">',
    );

    // Add each route as a URL.
    for (final route in routes) {
      buffer.writeln('  <url>');

      // loc (required).
      final url = _buildFullUrl(route);
      buffer.writeln('    <loc>$url</loc>');

      // lastmod (optional).
      if (lastModified != null && lastModified.containsKey(route)) {
        final date = lastModified[route]!;
        buffer.writeln('    <lastmod>${_formatDate(date)}</lastmod>');
      } else {
        // Use current date if not provided.
        buffer.writeln('    <lastmod>${_formatDate(DateTime.now())}</lastmod>');
      }

      // changefreq (optional).
      if (changeFreq != null && changeFreq.containsKey(route)) {
        buffer.writeln('    <changefreq>${changeFreq[route]}</changefreq>');
      } else {
        // Default change frequency based on route.
        buffer.writeln('    <changefreq>${_getDefaultChangeFreq(route)}</changefreq>');
      }

      // priority (optional).
      if (priorities != null && priorities.containsKey(route)) {
        buffer.writeln('    <priority>${priorities[route]}</priority>');
      } else {
        // Default priority based on route depth.
        buffer.writeln('    <priority>${_getDefaultPriority(route)}</priority>');
      }

      buffer.writeln('  </url>');
    }

    buffer.writeln('</urlset>');

    _logger.info('Generated sitemap with ${routes.length} URLs');

    return buffer.toString();
  }

  /// Generates a sitemap index file for large sites.
  ///
  /// Use this when you have more than 50,000 URLs or when you want
  /// to split your sitemap into multiple files.
  String generateSitemapIndex(List<String> sitemapUrls) {
    final buffer = StringBuffer();

    // XML declaration.
    buffer.writeln('<?xml version="1.0" encoding="UTF-8"?>');

    // SitemapIndex element.
    buffer.writeln(
      '<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">',
    );

    // Add each sitemap.
    for (final url in sitemapUrls) {
      buffer.writeln('  <sitemap>');
      buffer.writeln('    <loc>$url</loc>');
      buffer.writeln('    <lastmod>${_formatDate(DateTime.now())}</lastmod>');
      buffer.writeln('  </sitemap>');
    }

    buffer.writeln('</sitemapindex>');

    _logger.info('Generated sitemap index with ${sitemapUrls.length} sitemaps');

    return buffer.toString();
  }

  /// Generates a robots.txt file content.
  String generateRobotsTxt({
    List<String> disallowPaths = const [],
    List<String> allowPaths = const [],
    int crawlDelay = 0,
  }) {
    final buffer = StringBuffer();

    // User-agent.
    buffer.writeln('User-agent: *');

    // Allow paths.
    for (final path in allowPaths) {
      buffer.writeln('Allow: $path');
    }

    // Disallow paths.
    for (final path in disallowPaths) {
      buffer.writeln('Disallow: $path');
    }

    // Crawl delay.
    if (crawlDelay > 0) {
      buffer.writeln('Crawl-delay: $crawlDelay');
    }

    // Sitemap location.
    if (_config.baseUrl.isNotEmpty) {
      final sitemapUrl = '${_config.baseUrl}/sitemap.xml';
      buffer.writeln('Sitemap: $sitemapUrl');
    }

    _logger.info('Generated robots.txt');

    return buffer.toString();
  }

  /// Builds a full URL from a route path.
  String _buildFullUrl(String route) {
    if (_config.baseUrl.isNotEmpty) {
      final baseUrl = _config.baseUrl.endsWith('/')
          ? _config.baseUrl.substring(0, _config.baseUrl.length - 1)
          : _config.baseUrl;
      return '$baseUrl$route';
    }
    return route;
  }

  /// Formats a DateTime for sitemap (ISO 8601 format).
  String _formatDate(DateTime date) {
    return date.toUtc().toIso8601String().split('.').first + 'Z';
  }

  /// Gets the default change frequency for a route.
  String _getDefaultChangeFreq(String route) {
    if (route == '/') return 'daily';
    if (route.startsWith('/blog')) return 'weekly';
    if (route.startsWith('/product')) return 'weekly';
    if (route.startsWith('/about') || route.startsWith('/contact')) {
      return 'monthly';
    }
    return 'monthly';
  }

  /// Gets the default priority for a route.
  String _getDefaultPriority(String route) {
    if (route == '/') return '1.0';
    final depth = route.split('/').length - 1;
    if (depth == 1) return '0.8';
    if (depth == 2) return '0.6';
    return '0.5';
  }

  /// Validates a sitemap XML string.
  bool validateSitemap(String sitemapXml) {
    // Basic validation.
    if (!sitemapXml.contains('<?xml')) return false;
    if (!sitemapXml.contains('<urlset')) return false;
    if (!sitemapXml.contains('</urlset>')) return false;
    if (!sitemapXml.contains('<loc>')) return false;

    return true;
  }

  /// Validates a robots.txt string.
  bool validateRobotsTxt(String robotsTxt) {
    // Basic validation.
    if (!robotsTxt.contains('User-agent:')) return false;

    return true;
  }
}

/// Extension methods for sitemap generation.
extension SitemapRoutes on List<String> {
  /// Splits routes into chunks for multiple sitemaps.
  List<List<String>> chunkForSitemaps({int maxUrls = 50000}) {
    final chunks = <List<String>>[];
    for (var i = 0; i < length; i += maxUrls) {
      final end = (i + maxUrls < length) ? i + maxUrls : length;
      chunks.add(sublist(i, end));
    }
    return chunks;
  }

  /// Filters routes to only include valid URLs.
  List<String> filterValidRoutes() {
    return where((route) {
      // Must start with /.
      if (!route.startsWith('/')) return false;
      // Must not contain spaces.
      if (route.contains(' ')) return false;
      // Must not contain special characters (except : for dynamic routes).
      if (RegExp(r'[^a-zA-Z0-9\-_/:]').hasMatch(route)) return false;
      return true;
    }).toList();
  }

  /// Sorts routes by priority (homepage first, then by depth).
  List<String> sortByPriority() {
    final sorted = List<String>.from(this);
    sorted.sort((a, b) {
      // Homepage first.
      if (a == '/') return -1;
      if (b == '/') return 1;
      // Then by depth.
      final depthA = a.split('/').length;
      final depthB = b.split('/').length;
      if (depthA != depthB) return depthA.compareTo(depthB);
      // Then alphabetically.
      return a.compareTo(b);
    });
    return sorted;
  }
}
