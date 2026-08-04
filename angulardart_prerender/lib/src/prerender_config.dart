import 'package:yaml/yaml.dart';

/// Configuration for the prerendering process.
///
/// This class holds all the configuration options for prerendering,
/// including routes to prerender, output settings, and rendering options.
class PrerenderConfig {
  /// List of routes to prerender.
  ///
  /// Routes can be:
  /// - Static: `/`, `/about`, `/contact`
  /// - Dynamic: `/blog/:slug`, `/product/:id`
  /// - Wildcard: `/blog/**` (matches all sub-routes)
  final List<RouteConfig> routes;

  /// List of routes to exclude from prerendering.
  ///
  /// Exclusions take precedence over inclusions.
  final List<String> excludeRoutes;

  /// Output directory for prerendered files (relative to build/).
  final String outputDir;

  /// Timeout in milliseconds for rendering each page.
  final int timeout;

  /// CSS selector to wait for before capturing the page.
  ///
  /// If empty, the builder will wait for network idle.
  final String waitForSelector;

  /// Whether to wait for network idle before capturing.
  final bool waitForNetworkIdle;

  /// Whether to generate a sitemap.xml file.
  final bool generateSitemap;

  /// Whether to generate a robots.txt file.
  final bool generateRobots;

  /// Base URL for the site (used in sitemap and canonical URLs).
  final String baseUrl;

  /// Path to the prerender.yaml configuration file.
  final String? configPath;

  /// Custom route provider function path.
  ///
  /// Format: `file_path.dart#function_name`
  final String? routeProvider;

  /// Whether to ignore route guards during prerendering.
  final bool ignoreGuards;

  /// Whether to enable caching of prerendered pages.
  final bool cacheEnabled;

  /// Cache TTL in seconds.
  final int cacheTtl;

  /// Cache directory.
  final String cacheDir;

  /// Whether to run prerendering in parallel.
  final bool parallel;

  /// Maximum number of parallel prerendering tasks.
  final int maxParallelTasks;

  /// Headless browser executable path (optional).
  final String? browserExecutablePath;

  /// Additional browser arguments.
  final List<String> browserArgs;

  /// Viewport width for rendering.
  final int viewportWidth;

  /// Viewport height for rendering.
  final int viewportHeight;

  /// Device scale factor for rendering.
  final double deviceScaleFactor;

  /// Whether to emulate mobile device.
  final bool emulateMobile;

  const PrerenderConfig({
    this.routes = const [],
    this.excludeRoutes = const [],
    this.outputDir = 'web',
    this.timeout = 5000,
    this.waitForSelector = '',
    this.waitForNetworkIdle = true,
    this.generateSitemap = true,
    this.generateRobots = true,
    this.baseUrl = '',
    this.configPath,
    this.routeProvider,
    this.ignoreGuards = false,
    this.cacheEnabled = true,
    this.cacheTtl = 3600,
    this.cacheDir = '.prerender_cache',
    this.parallel = true,
    this.maxParallelTasks = 4,
    this.browserExecutablePath,
    this.browserArgs = const [],
    this.viewportWidth = 1280,
    this.viewportHeight = 720,
    this.deviceScaleFactor = 1.0,
    this.emulateMobile = false,
  });

  /// Creates a PrerenderConfig from a YAML map.
  factory PrerenderConfig.fromMap(Map<String, dynamic> config) {
    // Parse routes.
    final routesList = <RouteConfig>[];
    final routesConfig = config['routes'] as List? ?? [];
    for (final route in routesConfig) {
      if (route is String) {
        routesList.add(RouteConfig(path: route));
      } else if (route is Map) {
        routesList.add(RouteConfig.fromMap(route.cast<String, dynamic>()));
      }
    }

    // Parse exclude routes.
    final excludeRoutes = (config['exclude'] as List? ?? [])
        .cast<String>();

    return PrerenderConfig(
      routes: routesList,
      excludeRoutes: excludeRoutes,
      outputDir: config['output_dir'] as String? ?? 'web',
      timeout: config['timeout'] as int? ?? 5000,
      waitForSelector: config['wait_for_selector'] as String? ?? '',
      waitForNetworkIdle: config['wait_for_network_idle'] as bool? ?? true,
      generateSitemap: config['generate_sitemap'] as bool? ?? true,
      generateRobots: config['generate_robots'] as bool? ?? true,
      baseUrl: config['base_url'] as String? ?? '',
      configPath: config['config_path'] as String?,
      routeProvider: config['route_provider'] as String?,
      ignoreGuards: config['ignore_guards'] as bool? ?? false,
      cacheEnabled: config['cache_enabled'] as bool? ?? true,
      cacheTtl: config['cache_ttl'] as int? ?? 3600,
      cacheDir: config['cache_dir'] as String? ?? '.prerender_cache',
      parallel: config['parallel'] as bool? ?? true,
      maxParallelTasks: config['max_parallel_tasks'] as int? ?? 4,
      browserExecutablePath: config['browser_executable_path'] as String?,
      browserArgs: (config['browser_args'] as List? ?? []).cast<String>(),
      viewportWidth: config['viewport_width'] as int? ?? 1280,
      viewportHeight: config['viewport_height'] as int? ?? 720,
      deviceScaleFactor: (config['device_scale_factor'] as num?)?.toDouble() ?? 1.0,
      emulateMobile: config['emulate_mobile'] as bool? ?? false,
    );
  }

  /// Creates a PrerenderConfig from a YAML file.
  factory PrerenderConfig.fromYaml(String yamlContent) {
    final yaml = loadYaml(yamlContent) as Map? ?? {};
    return PrerenderConfig.fromMap(yaml.cast<String, dynamic>());
  }

  /// Checks if a route should be excluded from prerendering.
  bool shouldExclude(String route) {
    for (final exclude in excludeRoutes) {
      if (_matchesPattern(route, exclude)) {
        return true;
      }
    }
    return false;
  }

  /// Checks if a route matches a pattern.
  bool _matchesPattern(String route, String pattern) {
    // Handle wildcard patterns.
    if (pattern.endsWith('/**')) {
      final prefix = pattern.substring(0, pattern.length - 3);
      // Must start with prefix and have something after it
      return route.startsWith(prefix) && route.length > prefix.length && route[prefix.length] == '/';
    }
    if (pattern.endsWith('/*')) {
      final prefix = pattern.substring(0, pattern.length - 2);
      if (!route.startsWith(prefix)) return false;
      if (route.length == prefix.length) return true;
      if (route[prefix.length] != '/') return false;
      // Check that there's no more slashes after the first one
      final rest = route.substring(prefix.length + 1);
      return !rest.contains('/');
    }
    // Handle dynamic parameters.
    if (pattern.contains(':')) {
      final patternParts = pattern.split('/');
      final routeParts = route.split('/');
      if (patternParts.length != routeParts.length) return false;
      for (var i = 0; i < patternParts.length; i++) {
        if (patternParts[i].startsWith(':')) continue;
        if (patternParts[i] != routeParts[i]) return false;
      }
      return true;
    }
    // Exact match.
    return route == pattern;
  }

  /// Returns a copy of this config with modified fields.
  PrerenderConfig copyWith({
    List<RouteConfig>? routes,
    List<String>? excludeRoutes,
    String? outputDir,
    int? timeout,
    String? waitForSelector,
    bool? waitForNetworkIdle,
    bool? generateSitemap,
    bool? generateRobots,
    String? baseUrl,
    String? configPath,
    String? routeProvider,
    bool? ignoreGuards,
    bool? cacheEnabled,
    int? cacheTtl,
    String? cacheDir,
    bool? parallel,
    int? maxParallelTasks,
    String? browserExecutablePath,
    List<String>? browserArgs,
    int? viewportWidth,
    int? viewportHeight,
    double? deviceScaleFactor,
    bool? emulateMobile,
  }) {
    return PrerenderConfig(
      routes: routes ?? this.routes,
      excludeRoutes: excludeRoutes ?? this.excludeRoutes,
      outputDir: outputDir ?? this.outputDir,
      timeout: timeout ?? this.timeout,
      waitForSelector: waitForSelector ?? this.waitForSelector,
      waitForNetworkIdle: waitForNetworkIdle ?? this.waitForNetworkIdle,
      generateSitemap: generateSitemap ?? this.generateSitemap,
      generateRobots: generateRobots ?? this.generateRobots,
      baseUrl: baseUrl ?? this.baseUrl,
      configPath: configPath ?? this.configPath,
      routeProvider: routeProvider ?? this.routeProvider,
      ignoreGuards: ignoreGuards ?? this.ignoreGuards,
      cacheEnabled: cacheEnabled ?? this.cacheEnabled,
      cacheTtl: cacheTtl ?? this.cacheTtl,
      cacheDir: cacheDir ?? this.cacheDir,
      parallel: parallel ?? this.parallel,
      maxParallelTasks: maxParallelTasks ?? this.maxParallelTasks,
      browserExecutablePath: browserExecutablePath ?? this.browserExecutablePath,
      browserArgs: browserArgs ?? this.browserArgs,
      viewportWidth: viewportWidth ?? this.viewportWidth,
      viewportHeight: viewportHeight ?? this.viewportHeight,
      deviceScaleFactor: deviceScaleFactor ?? this.deviceScaleFactor,
      emulateMobile: emulateMobile ?? this.emulateMobile,
    );
  }
}

/// Configuration for a single route.
class RouteConfig {
  /// The route path (e.g., `/`, `/about`, `/blog/:slug`).
  final String path;

  /// Path to a route provider function.
  ///
  /// Format: `file_path.dart#function_name`
  ///
  /// The function should return a `List<String>` or `Future<List<String>>`
  /// of concrete route paths.
  final String? provider;

  /// Additional data to pass to the route.
  final Map<String, dynamic>? data;

  /// Custom timeout for this route (overrides global timeout).
  final int? timeout;

  /// Custom wait selector for this route.
  final String? waitForSelector;

  const RouteConfig({
    required this.path,
    this.provider,
    this.data,
    this.timeout,
    this.waitForSelector,
  });

  /// Creates a RouteConfig from a Map.
  factory RouteConfig.fromMap(Map<String, dynamic> map) {
    return RouteConfig(
      path: map['path'] as String,
      provider: map['provider'] as String?,
      data: map['data'] as Map<String, dynamic>?,
      timeout: map['timeout'] as int?,
      waitForSelector: map['wait_for_selector'] as String?,
    );
  }

  /// Checks if this route has dynamic parameters.
  bool get isDynamic => path.contains(':');

  /// Returns the list of parameter names in this route.
  List<String> get parameters {
    final regex = RegExp(r':([\w-]+)');
    return regex.allMatches(path).map((m) => m.group(1)!).toList();
  }

  /// Converts this config to a Map.
  Map<String, dynamic> toMap() {
    return {
      'path': path,
      if (provider != null) 'provider': provider,
      if (data != null) 'data': data,
      if (timeout != null) 'timeout': timeout,
      if (waitForSelector != null) 'wait_for_selector': waitForSelector,
    };
  }
}
