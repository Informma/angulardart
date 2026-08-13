import 'package:angulardart_prerender/src/sitemap_generator.dart';
import 'package:angulardart_prerender/src/prerender_config.dart';
import 'package:test/test.dart';

/// Unit tests for sitemap.xml and robots.txt generation.
void main() {
  group('SitemapGenerator', () {
    final config = PrerenderConfig(
      baseUrl: 'https://example.com',
    );
    final generator = SitemapGenerator(config);

    test('generates valid XML declaration', () {
      final sitemap = generator.generateSitemap(['/']);
      expect(sitemap, startsWith('<?xml version="1.0" encoding="UTF-8"?>'));
    });

    test('generates urlset with correct namespace', () {
      final sitemap = generator.generateSitemap(['/']);
      expect(
        sitemap,
        contains('xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"'),
      );
    });

    test('includes all routes as <url> entries', () {
      final routes = ['/', '/about', '/contact'];
      final sitemap = generator.generateSitemap(routes);
      expect(sitemap, contains('<loc>https://example.com/</loc>'));
      expect(sitemap, contains('<loc>https://example.com/about</loc>'));
      expect(sitemap, contains('<loc>https://example.com/contact</loc>'));
    });

    test('each URL has lastmod date', () {
      final sitemap = generator.generateSitemap(['/']);
      expect(sitemap, contains('<lastmod>'));
    });

    test('each URL has changefreq', () {
      final sitemap = generator.generateSitemap(['/']);
      expect(sitemap, contains('<changefreq>daily</changefreq>'));
    });

    test('homepage gets daily changefreq', () {
      final sitemap = generator.generateSitemap(['/']);
      expect(sitemap, contains('<changefreq>daily</changefreq>'));
    });

    test('blog routes get weekly changefreq', () {
      final sitemap = generator.generateSitemap(['/blog/post-1']);
      expect(sitemap, contains('<changefreq>weekly</changefreq>'));
    });

    test('about/contact routes get monthly changefreq', () async {
      final aboutSitemap = generator.generateSitemap(['/about']);
      expect(aboutSitemap, contains('<changefreq>monthly</changefreq>'));

      final contactSitemap = generator.generateSitemap(['/contact']);
      expect(contactSitemap, contains('<changefreq>monthly</changefreq>'));
    });

    test('homepage gets priority 1.0', () {
      final sitemap = generator.generateSitemap(['/']);
      expect(sitemap, contains('<priority>1.0</priority>'));
    });

    test('root-level routes get priority 0.8', () {
      final sitemap = generator.generateSitemap(['/about']);
      // Should have 0.8 for root-level pages
      expect(sitemap, contains('<priority>0.8</priority>'));
    });

    test('deep routes get lower priority', () {
      final sitemap = generator.generateSitemap(['/blog/2024/post-1']);
      // Depth 3+ gets 0.5 (homepage=1.0, depth1=0.8, depth2=0.6, depth3+=0.5)
      expect(sitemap, contains('<priority>0.5</priority>'));
    });

    test('sitemap ends with </urlset>', () {
      final sitemap = generator.generateSitemap(['/']);
      expect(sitemap.trim(), endsWith('</urlset>'));
    });

    test('generates robots.txt with User-agent', () {
      final robots = generator.generateRobotsTxt();
      expect(robots, contains('User-agent: *'));
    });

    test('robots.txt references sitemap location', () {
      final robots = generator.generateRobotsTxt();
      expect(robots, contains('Sitemap: https://example.com/sitemap.xml'));
    });

    test('validates correct sitemap XML', () {
      final sitemap = generator.generateSitemap(['/']);
      expect(generator.validateSitemap(sitemap), isTrue);
    });

    test('rejects invalid sitemap XML', () {
      expect(generator.validateSitemap('<html></html>'), isFalse);
      expect(generator.validateSitemap('not xml at all'), isFalse);
    });

    test('validates correct robots.txt', () {
      final robots = generator.generateRobotsTxt();
      expect(generator.validateRobotsTxt(robots), isTrue);
    });

    test('rejects invalid robots.txt', () {
      expect(generator.validateRobotsTxt(''), isFalse);
      expect(generator.validateRobotsTxt('no user agent here'), isFalse);
    });
  });

  group('SitemapGenerator with empty baseUrl', () {
    final config = PrerenderConfig(baseUrl: '');
    final generator = SitemapGenerator(config);

    test('generates sitemap without domain prefix', () {
      final sitemap = generator.generateSitemap(['/about']);
      expect(sitemap, contains('<loc>/about</loc>'));
      expect(sitemap, isNot(contains('https://')));
    });

    test('robots.txt does not reference sitemap when baseUrl empty', () {
      final robots = generator.generateRobotsTxt();
      expect(robots, isNot(contains('Sitemap:')));
    });
  });

  group('RouteConfig with providers', () {
    test('generates sitemap for dynamic routes from provider', () {
      final config = PrerenderConfig(baseUrl: 'https://example.com');
      final generator = SitemapGenerator(config);

      // Simulate routes collected from a provider (e.g., blog slugs)
      final routes = [
        '/blog/my-first-post',
        '/blog/second-post',
        '/blog/third-post',
      ];
      final sitemap = generator.generateSitemap(routes);

      expect(sitemap, contains('<loc>https://example.com/blog/my-first-post</loc>'));
      expect(sitemap, contains('<loc>https://example.com/blog/second-post</loc>'));
      expect(sitemap, contains('<loc>https://example.com/blog/third-post</loc>'));

      // All blog routes should have weekly changefreq
      final matches = RegExp(r'<changefreq>weekly</changefreq>')
          .allMatches(sitemap)
          .length;
      expect(matches, equals(3));
    });
  });

  group('SitemapRoutes extension', () {
    test('chunkForSitemaps splits routes into chunks', () {
      final routes = List.generate(55000, (i) => '/page/$i');
      final chunks = routes.chunkForSitemaps(maxUrls: 50000);
      expect(chunks.length, equals(2));
      expect(chunks[0].length, equals(50000));
      expect(chunks[1].length, equals(5000));
    });

    test('chunkForSitemaps with exact multiple', () {
      final routes = List.generate(100000, (i) => '/page/$i');
      final chunks = routes.chunkForSitemaps(maxUrls: 50000);
      expect(chunks.length, equals(2));
      expect(chunks[0].length, equals(50000));
      expect(chunks[1].length, equals(50000));
    });

    test('filterValidRoutes removes invalid routes', () {
      final routes = [
        '/valid-route',
        '/also/valid/route',
        '/blog/:slug', // dynamic route is valid
        'invalid-no-slash',
        '/route with spaces',
        '/route?query=param',
      ];
      final valid = routes.filterValidRoutes();
      expect(valid, contains('/valid-route'));
      expect(valid, contains('/also/valid/route'));
      expect(valid, contains('/blog/:slug'));
      expect(valid, isNot(contains('invalid-no-slash')));
      expect(valid, isNot(contains('/route with spaces')));
      expect(valid, isNot(contains('/route?query=param')));
    });

    test('sortByPriority puts homepage first', () {
      final routes = ['/blog/post-1', '/', '/about', '/contact'];
      final sorted = routes.sortByPriority();
      expect(sorted.first, equals('/'));
    });

    test('sortByPriority orders by depth then alphabetically', () async {
      final routes = ['/contact', '/about', '/blog/2024/post-1', '/blog/2024/early'];
      final sorted = routes.sortByPriority();
      // Root-level pages first (alphabetical)
      expect(sorted.indexOf('/about'), lessThan(sorted.indexOf('/blog/2024/post-1')));
      expect(sorted.indexOf('/contact'), lessThan(sorted.indexOf('/blog/2024/post-1')));
      // Then deeper pages
      expect(
        sorted.indexOf('/blog/2024/early'),
        lessThan(sorted.indexOf('/blog/2024/post-1')),
      );
    });
  });

  group('SitemapGenerator with custom changeFreq and priorities', () {
    final config = PrerenderConfig(baseUrl: 'https://example.com');
    final generator = SitemapGenerator(config);

    test('uses provided lastModified dates', () {
      final routes = ['/'];
      // Use UTC datetime to avoid timezone conversion issues
      final lastModified = {'/': DateTime.utc(2024, 6, 15)};
      final sitemap = generator.generateSitemap(routes, lastModified: lastModified);
      expect(sitemap, contains('<lastmod>2024-06-15T00:00:00Z</lastmod>'));
    });

    test('uses provided changeFreq values', () {
      final routes = ['/'];
      final changeFreq = {'/': 'yearly'};
      final sitemap = generator.generateSitemap(routes, changeFreq: changeFreq);
      expect(sitemap, contains('<changefreq>yearly</changefreq>'));
    });

    test('uses provided priority values', () {
      final routes = ['/'];
      final priorities = {'/': 0.9};
      final sitemap = generator.generateSitemap(routes, priorities: priorities);
      expect(sitemap, contains('<priority>0.9</priority>'));
    });
  });

  group('robots.txt with custom paths', () {
    test('includes disallow paths', () async {
      final config = PrerenderConfig(baseUrl: 'https://example.com');
      final generator = SitemapGenerator(config);
      final robots = generator.generateRobotsTxt(
        disallowPaths: ['/admin', '/private'],
      );
      expect(robots, contains('Disallow: /admin'));
      expect(robots, contains('Disallow: /private'));
    });

    test('includes allow paths', () async {
      final config = PrerenderConfig(baseUrl: 'https://example.com');
      final generator = SitemapGenerator(config);
      final robots = generator.generateRobotsTxt(
        allowPaths: ['/public'],
      );
      expect(robots, contains('Allow: /public'));
    });

    test('includes crawl delay when specified', () async {
      final config = PrerenderConfig(baseUrl: 'https://example.com');
      final generator = SitemapGenerator(config);
      final robots = generator.generateRobotsTxt(crawlDelay: 10);
      expect(robots, contains('Crawl-delay: 10'));
    });

    test('omits crawl delay when zero', () async {
      final config = PrerenderConfig(baseUrl: 'https://example.com');
      final generator = SitemapGenerator(config);
      final robots = generator.generateRobotsTxt(crawlDelay: 0);
      expect(robots, isNot(contains('Crawl-delay')));
    });
  });

  group('SitemapGenerator sitemap index', () {
    test('generates valid sitemap index for large sites', () async {
      final config = PrerenderConfig(baseUrl: 'https://example.com');
      final generator = SitemapGenerator(config);
      final sitemaps = [
        'https://example.com/sitemap1.xml',
        'https://example.com/sitemap2.xml',
      ];
      final index = generator.generateSitemapIndex(sitemaps);
      expect(index, contains('<?xml version="1.0" encoding="UTF-8"?>'));
      expect(
        index,
        contains('xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"'),
      );
      expect(index, contains('<sitemapindex'));
      expect(index, contains('</sitemapindex>'));
      expect(index, contains('<loc>https://example.com/sitemap1.xml</loc>'));
      expect(index, contains('<loc>https://example.com/sitemap2.xml</loc>'));
    });
  });

  group('PrerenderConfig copyWith', () {
    test('creates modified copy with new values', () async {
      final original = PrerenderConfig(
        timeout: 30000,
        renderDelayMs: 10000,
        baseUrl: 'https://example.com',
      );
      final copied = original.copyWith(timeout: 60000);
      expect(copied.timeout, equals(60000));
      expect(copied.renderDelayMs, equals(10000)); // unchanged
      expect(copied.baseUrl, equals('https://example.com')); // unchanged
    });

    test('creates copy with all new values', () async {
      final original = PrerenderConfig();
      final copied = original.copyWith(
        timeout: 5000,
        renderDelayMs: 2000,
        baseUrl: 'https://newsite.com',
        generateSitemap: false,
        parallel: false,
      );
      expect(copied.timeout, equals(5000));
      expect(copied.renderDelayMs, equals(2000));
      expect(copied.baseUrl, equals('https://newsite.com'));
      expect(copied.generateSitemap, isFalse);
      expect(copied.parallel, isFalse);
    });
  });

  group('RouteConfig toMap', () {
    test('converts static route to map', () async {
      const route = RouteConfig(path: '/about');
      final map = route.toMap();
      expect(map['path'], equals('/about'));
      expect(map.containsKey('provider'), isFalse);
    });

    test('converts dynamic route with provider to map', () async {
      const route = RouteConfig(
        path: '/blog/:slug',
        provider: 'routes.dart#blogRoutes',
        timeout: 8000,
      );
      final map = route.toMap();
      expect(map['path'], equals('/blog/:slug'));
      expect(map['provider'], equals('routes.dart#blogRoutes'));
      expect(map['timeout'], equals(8000));
    });
  });

  group('RouteConfig parameters', () {
    test('extracts single parameter', () async {
      const route = RouteConfig(path: '/product/:id');
      expect(route.parameters, contains('id'));
      expect(route.parameters.length, equals(1));
    });

    test('extracts multiple parameters', () async {
      const route = RouteConfig(path: '/:org/:repo/issues/:num');
      expect(route.parameters, contains('org'));
      expect(route.parameters, contains('repo'));
      expect(route.parameters, contains('num'));
      expect(route.parameters.length, equals(3));
    });

    test('returns empty list for static route', () async {
      const route = RouteConfig(path: '/about');
      expect(route.parameters, isEmpty);
    });
  });
}
