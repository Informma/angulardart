import 'dart:async';
import 'dart:io';

import 'package:args/args.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;

import 'package:angulardart_prerender/src/prerender_config.dart';
import 'package:angulardart_prerender/src/route_collector.dart';
import 'package:angulardart_prerender/src/html_renderer.dart';
import 'package:angulardart_prerender/src/sitemap_generator.dart';

final _logger = Logger('Prerender');

void main(List<String> arguments) async {
  // Setup logging.
  Logger.root.level = Level.INFO;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  // Parse arguments.
  final parser = ArgParser()
    ..addOption('config',
        abbr: 'c',
        defaultsTo: 'prerender.yaml',
        help: 'Path to configuration file')
    ..addOption('output',
        abbr: 'o', defaultsTo: 'build/web', help: 'Output directory')
    ..addOption('port',
        abbr: 'p', defaultsTo: '8080', help: 'Port for local server')
    ..addFlag('help', abbr: 'h', negatable: false, help: 'Show help');

  final results = parser.parse(arguments);

  if (results['help'] as bool) {
    print('AngularDart Prerenderer');
    print('');
    print('Usage: dart run angulardart_prerender [options]');
    print('');
    print(parser.usage);
    exit(0);
  }

  final configPath = results['config'] as String;
  final outputDir = results['output'] as String;
  final port = int.parse(results['port'] as String);

  try {
    await runPrerender(configPath, outputDir, port);
    _logger.info('Prerendering complete!');
    exit(0);
  } catch (e, stack) {
    _logger.severe('Prerendering failed: $e');
    _logger.fine('Stack trace: $stack');
    exit(1);
  }
}

Future<void> runPrerender(
    String configPath, String outputDir, int port) async {
  // Load configuration.
  final configFile = File(configPath);
  if (!await configFile.exists()) {
    throw Exception('Configuration file not found: $configPath');
  }

  final yamlContent = await configFile.readAsString();
  final config = PrerenderConfig.fromYaml(yamlContent);

  _logger.info('Loaded configuration from $configPath');
  _logger.info('Found ${config.routes.length} route configurations');

  // Collect routes.
  final routeCollector = RouteCollector(config);
  final routes = await routeCollector.collectRoutes();

  if (routes.isEmpty) {
    _logger.warning('No routes to prerender');
    return;
  }

  _logger.info('Collected ${routes.length} routes to prerender');

  // Check if build directory exists.
  final buildDir = Directory('build/web');
  if (!await buildDir.exists()) {
    throw Exception(
        'Build directory not found: build/web. Run build_runner first.');
  }

  // Start local server.
  final server = await _startLocalServer(buildDir.path, port);
  _logger.info('Local server started on port $port');

  try {
    // Initialize renderer.
    final renderer = HtmlRenderer(config);
    await renderer.initialize();

    try {
      // Prerender each route.
      final results = <String, String>{};
      final errors = <String, String>{};

      for (final route in routes) {
        try {
          _logger.info('Prerendering: $route');
          final html = await renderer.renderRoute(route);
          results[route] = html;
          _logger.info('✓ Prerendered: $route');
        } catch (e, stack) {
          errors[route] = e.toString();
          _logger.severe('✗ Failed to prerender $route: $e');
          _logger.fine('Stack trace: $stack');
        }
      }

      // Write output files.
      await _writeOutputFiles(results, outputDir);

      // Generate sitemap.xml if enabled.
      if (config.generateSitemap) {
        await _generateSitemap(results.keys.toList(), config, outputDir);
      }

      // Generate robots.txt if enabled.
      if (config.generateRobots) {
        await _generateRobotsTxt(config, outputDir);
      }

      // Log summary.
      _logger.info('Prerendering summary:');
      _logger.info('  - Successful: ${results.length}');
      _logger.info('  - Failed: ${errors.length}');

      if (errors.isNotEmpty) {
        _logger.warning('Failed routes:');
        for (final entry in errors.entries) {
          _logger.warning('  - ${entry.key}: ${entry.value}');
        }
      }
    } finally {
      await renderer.dispose();
    }
  } finally {
    await server.close();
    _logger.info('Local server stopped');
  }
}

Future<HttpServer> _startLocalServer(String buildDir, int port) async {
  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, port);
  server.listen((request) async {
    try {
      final path = request.uri.path;
      final filePath = p.join(buildDir, path);

      if (await File(filePath).exists()) {
        final file = File(filePath);
        request.response.headers.contentType = _getContentType(filePath);
        await request.response.addStream(file.openRead());
      } else {
        // Serve index.html for SPA routes.
        final indexPath = p.join(buildDir, 'index.html');
        if (await File(indexPath).exists()) {
          final file = File(indexPath);
          request.response.headers.contentType = ContentType.html;
          await request.response.addStream(file.openRead());
        } else {
          request.response.statusCode = HttpStatus.notFound;
        }
      }
    } catch (e) {
      _logger.severe('Error handling request: $e');
      request.response.statusCode = HttpStatus.internalServerError;
    } finally {
      await request.response.close();
    }
  });
  return server;
}

ContentType _getContentType(String path) {
  if (path.endsWith('.html')) return ContentType.html;
  if (path.endsWith('.js')) return ContentType('application', 'javascript');
  if (path.endsWith('.css')) return ContentType('text', 'css');
  if (path.endsWith('.json')) return ContentType.json;
  if (path.endsWith('.png')) return ContentType('image', 'png');
  if (path.endsWith('.jpg') || path.endsWith('.jpeg')) {
    return ContentType('image', 'jpeg');
  }
  if (path.endsWith('.svg')) return ContentType('image', 'svg+xml');
  return ContentType.text;
}

Future<void> _writeOutputFiles(
    Map<String, String> results, String outputDir) async {
  for (final entry in results.entries) {
    final route = entry.key;
    final html = entry.value;

    // Determine output file path.
    String outputPath;
    if (route == '/') {
      outputPath = p.join(outputDir, 'index.html');
    } else {
      // Remove leading slash and add index.html.
      final cleanPath = route.startsWith('/') ? route.substring(1) : route;
      outputPath = p.join(outputDir, cleanPath, 'index.html');
    }

    // Create directory if needed.
    final file = File(outputPath);
    await file.parent.create(recursive: true);

    // Write the file.
    await file.writeAsString(html);
    _logger.fine('Wrote: $outputPath');
  }
}

Future<void> _generateSitemap(
    List<String> routes, PrerenderConfig config, String outputDir) async {
  try {
    final sitemapGenerator = SitemapGenerator(config);
    final sitemap = sitemapGenerator.generateSitemap(routes);
    final file = File(p.join(outputDir, 'sitemap.xml'));
    await file.writeAsString(sitemap);
    _logger.info('Generated sitemap.xml');
  } catch (e, stack) {
    _logger.severe('Failed to generate sitemap.xml: $e');
    _logger.fine('Stack trace: $stack');
  }
}

Future<void> _generateRobotsTxt(
    PrerenderConfig config, String outputDir) async {
  try {
    final sitemapGenerator = SitemapGenerator(config);
    final robots = sitemapGenerator.generateRobotsTxt();
    final file = File(p.join(outputDir, 'robots.txt'));
    await file.writeAsString(robots);
    _logger.info('Generated robots.txt');
  } catch (e, stack) {
    _logger.severe('Failed to generate robots.txt: $e');
    _logger.fine('Stack trace: $stack');
  }
}
