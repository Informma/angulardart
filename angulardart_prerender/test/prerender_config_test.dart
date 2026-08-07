import 'package:angulardart_prerender/src/prerender_config.dart';
import 'package:test/test.dart';

void main() {
  group('PrerenderConfig', () {
    test('creates config with defaults', () {
      const config = PrerenderConfig();
      expect(config.routes, isEmpty);
      expect(config.timeout, equals(30000));
      expect(config.renderDelayMs, equals(10000));
      expect(config.waitForSelector, isEmpty);
      expect(config.waitForNetworkIdle, isTrue);
      expect(config.generateSitemap, isTrue);
      expect(config.generateRobots, isTrue);
    });

    test('creates config from YAML', () {
      final yaml = '''
routes:
  - /
  - /about
  - path: /blog/:slug
    provider: routes.dart#blogRoutes

exclude:
  - /admin/**

timeout: 10000
render_delay_ms: 5000
base_url: https://example.com
''';
      final config = PrerenderConfig.fromYaml(yaml);
      expect(config.routes.length, equals(3));
      expect(config.routes[0].path, equals('/'));
      expect(config.routes[1].path, equals('/about'));
      expect(config.routes[2].path, equals('/blog/:slug'));
      expect(config.routes[2].provider, equals('routes.dart#blogRoutes'));
      expect(config.excludeRoutes, contains('/admin/**'));
      expect(config.timeout, equals(10000));
      expect(config.renderDelayMs, equals(5000));
      expect(config.baseUrl, equals('https://example.com'));
    });

    test('shouldExclude returns true for excluded routes', () {
      const config = PrerenderConfig(
        excludeRoutes: ['/admin/**', '/private/*'],
      );
      expect(config.shouldExclude('/admin/users'), isTrue);
      expect(config.shouldExclude('/admin/settings/profile'), isTrue);
      expect(config.shouldExclude('/private/data'), isTrue);
      expect(config.shouldExclude('/public'), isFalse);
      expect(config.shouldExclude('/'), isFalse);
    });

    test('shouldExclude handles wildcard patterns', () {
      const config = PrerenderConfig(
        excludeRoutes: ['/blog/**'],
      );
      expect(config.shouldExclude('/blog'), isFalse);
      expect(config.shouldExclude('/blog/post-1'), isTrue);
      expect(config.shouldExclude('/blog/2024/post-1'), isTrue);
    });
  });

  group('RouteConfig', () {
    test('creates static route', () {
      const route = RouteConfig(path: '/about');
      expect(route.path, equals('/about'));
      expect(route.isDynamic, isFalse);
      expect(route.parameters, isEmpty);
    });

    test('creates dynamic route', () {
      const route = RouteConfig(path: '/blog/:slug');
      expect(route.path, equals('/blog/:slug'));
      expect(route.isDynamic, isTrue);
      expect(route.parameters, contains('slug'));
    });

    test('creates route with provider', () {
      const route = RouteConfig(
        path: '/blog/:slug',
        provider: 'routes.dart#blogRoutes',
      );
      expect(route.provider, equals('routes.dart#blogRoutes'));
    });

    test('creates route from map', () {
      final map = {
        'path': '/product/:id',
        'provider': 'products.dart#productRoutes',
        'timeout': 8000,
      };
      final route = RouteConfig.fromMap(map);
      expect(route.path, equals('/product/:id'));
      expect(route.provider, equals('products.dart#productRoutes'));
      expect(route.timeout, equals(8000));
    });
  });
}
