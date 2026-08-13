import 'dart:async';
import 'dart:io';

import 'package:logging/logging.dart';

import 'prerender_config.dart';

final _logger = Logger('RouteCollector');

/// Collects routes to prerender from configuration.
///
/// This class is responsible for:
/// 1. Reading routes from prerender.yaml configuration
/// 2. Expanding dynamic routes using route providers
/// 3. Filtering routes based on exclusion rules
class RouteCollector {
  final PrerenderConfig _config;

  RouteCollector(this._config);

  /// Collects all routes to prerender.
  ///
  /// This method:
  /// 1. Reads routes from configuration
  /// 2. Expands dynamic routes using providers
  /// 3. Filters out excluded routes
  /// 4. Returns a deduplicated list of routes
  Future<List<String>> collectRoutes() async {
    final routes = <String>{};

    // Add routes from configuration.
    for (final routeConfig in _config.routes) {
      if (routeConfig.isDynamic && routeConfig.provider != null) {
        // Expand dynamic route using provider.
        final expandedRoutes = await _expandDynamicRoute(routeConfig);
        routes.addAll(expandedRoutes);
      } else if (routeConfig.isDynamic) {
        _logger.warning(
          'Dynamic route "${routeConfig.path}" has no provider. '
          'Skipping. Add a provider to expand this route.',
        );
      } else {
        // Static route.
        routes.add(routeConfig.path);
      }
    }

    // Filter out excluded routes.
    final filteredRoutes = routes.where((route) {
      if (_config.shouldExclude(route)) {
        _logger.fine('Excluded route: $route');
        return false;
      }
      return true;
    }).toList();

    // Sort routes for consistent output.
    filteredRoutes.sort();

    return filteredRoutes;
  }

  /// Expands a dynamic route using its provider function.
  Future<List<String>> _expandDynamicRoute(RouteConfig routeConfig) async {
    final provider = routeConfig.provider;
    if (provider == null) return [];

    try {
      // Parse provider path: "file_path.dart#function_name"
      final parts = provider.split('#');
      if (parts.length != 2) {
        _logger.severe('Invalid provider format: $provider');
        return [];
      }

      final filePath = parts[0];
      final functionName = parts[1];

      // Try to load and execute the provider function.
      final routes = await _loadRoutesFromProvider(
        filePath,
        functionName,
        routeConfig.data,
      );

      _logger.info(
        'Expanded route "${routeConfig.path}" to ${routes.length} routes',
      );

      return routes;
    } catch (e, stack) {
      _logger.severe('Failed to expand route "${routeConfig.path}": $e');
      _logger.fine('Stack trace: $stack');
      return [];
    }
  }

  /// Loads routes from a provider function.
  Future<List<String>> _loadRoutesFromProvider(
    String filePath,
    String functionName,
    Map<String, dynamic>? data,
  ) async {
    try {
      // Read the provider file.
      final file = File(filePath);
      if (!await file.exists()) {
        _logger.warning('Provider file not found: $filePath');
        return [];
      }

      final content = await file.readAsString();

      // Parse the file to find the function.
      final functionRegex = RegExp(
        r'(?:Future<List<String>>|List<String>)\s+$functionName\s*\([^)]*\)\s*(?:async\s*)?\{([^}]+)\}',
        multiLine: true,
      );

      final match = functionRegex.firstMatch(content);
      if (match == null) {
        _logger.warning('Function $functionName not found in $filePath');
        return [];
      }

      // Extract route strings from the function body.
      final body = match.group(1)!;
      final routeRegex = RegExp(r'''['"]([^'"]+)['"]''');
      final routes = routeRegex
          .allMatches(body)
          .map((m) => m.group(1)!)
          .toList();

      return routes;
    } catch (e) {
      _logger.warning('Failed to read provider file $filePath: $e');
      return [];
    }
  }

  /// Validates that all routes are properly formatted.
  List<String> validateRoutes(List<String> routes) {
    final validRoutes = <String>[];
    final invalidRoutes = <String>[];

    for (final route in routes) {
      if (_isValidRoute(route)) {
        validRoutes.add(route);
      } else {
        invalidRoutes.add(route);
      }
    }

    if (invalidRoutes.isNotEmpty) {
      _logger.warning('Invalid routes found:');
      for (final route in invalidRoutes) {
        _logger.warning('  - $route');
      }
    }

    return validRoutes;
  }

  /// Checks if a route is properly formatted.
  bool _isValidRoute(String route) {
    // Must start with /.
    if (!route.startsWith('/')) return false;

    // Must not end with / (except for root).
    if (route != '/' && route.endsWith('/')) return false;

    // Must not contain consecutive slashes.
    if (route.contains('//')) return false;

    // Must not contain spaces.
    if (route.contains(' ')) return false;

    return true;
  }
}
