import 'package:angulardart_prerender/src/prerender_config.dart';
import 'package:angulardart_prerender/src/prerender_annotations.dart';
import 'package:angulardart_prerender/src/sitemap_generator.dart';

void main() {
  // Exemple 1: Configuration YAML
  const yamlConfig = '''
routes:
  - /
  - /about
  - /contact
  - path: /blog/:slug
    provider: routes/blog_routes.dart#blogRoutes

exclude:
  - /admin/**
  - /dashboard/**

timeout: 5000
wait_for_selector: '[data-prerender-ready]'
wait_for_network_idle: true
generate_sitemap: true
generate_robots: true
base_url: https://example.com
''';

  final config = PrerenderConfig.fromYaml(yamlConfig);
  print('Configuration loaded from YAML');
  print('  Routes: ${config.routes.length}');
  print('  Timeout: ${config.timeout}ms');
  print('  Base URL: ${config.baseUrl}');
  print('  Generate sitemap: ${config.generateSitemap}');
  print('  Generate robots: ${config.generateRobots}');

  // Exemple 2: Routes statiques et dynamiques
  print('\nRoutes:');
  for (final route in config.routes) {
    if (route.isDynamic) {
      print('  - ${route.path} (dynamic, provider: ${route.provider})');
    } else {
      print('  - ${route.path}');
    }
  }

  // Exemple 3: Exclusion de routes
  print('\nRoute exclusion tests:');
  print('  /admin/users excluded: ${config.shouldExclude('/admin/users')}');
  print('  /admin/settings/profile excluded: ${config.shouldExclude('/admin/settings/profile')}');
  print('  /blog/post-1 excluded: ${config.shouldExclude('/blog/post-1')}');
  print('  /about excluded: ${config.shouldExclude('/about')}');

  // Exemple 4: Génération de sitemap
  print('\nGenerating sitemap...');
  final sitemapGenerator = SitemapGenerator(config);
  final routes = ['/', '/about', '/contact', '/blog/post-1', '/blog/post-2'];
  final sitemap = sitemapGenerator.generateSitemap(routes);
  print('Sitemap generated (${sitemap.length} bytes)');
  print('First 200 chars:');
  print(sitemap.substring(0, sitemap.length < 200 ? sitemap.length : 200));

  // Exemple 5: Génération de robots.txt
  print('\nGenerating robots.txt...');
  final robots = sitemapGenerator.generateRobotsTxt();
  print('Robots.txt generated:');
  print(robots);

  // Exemple 6: Configuration programmatique
  print('\nProgrammatic configuration:');
  final programmaticConfig = PrerenderConfig(
    routes: [
      const RouteConfig(path: '/'),
      const RouteConfig(path: '/about'),
      const RouteConfig(path: '/contact'),
      const RouteConfig(
        path: '/product/:id',
        provider: 'routes/product_routes.dart#productRoutes',
        timeout: 10000,
      ),
    ],
    excludeRoutes: ['/admin/**'],
    baseUrl: 'https://example.com',
    timeout: 5000,
    waitForSelector: '[data-prerender-ready]',
  );
  print('  Routes: ${programmaticConfig.routes.length}');
  print('  Excluded: ${programmaticConfig.excludeRoutes}');

  // Exemple 7: Annotations
  print('\nAnnotations:');
  const noPrerender = NoPrerender(reason: 'Requires authentication');
  print('  @NoPrerender: reason=${noPrerender.reason}');

  const prerenderOptions = PrerenderOptions(
    waitForSelector: '[data-content-loaded]',
    timeout: 10000,
  );
  print('  @PrerenderOptions: selector=${prerenderOptions.waitForSelector}, timeout=${prerenderOptions.timeout}ms');

  print('\n✅ Example completed successfully!');
}
