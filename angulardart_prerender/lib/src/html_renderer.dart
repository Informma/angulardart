import 'dart:async';
import 'dart:io';

import 'package:puppeteer/puppeteer.dart';
import 'package:logging/logging.dart';

import 'prerender_config.dart';

final _logger = Logger('HtmlRenderer');

/// Renders HTML pages using a headless browser (Puppeteer).
///
/// This class is responsible for:
/// 1. Launching a headless browser
/// 2. Navigating to each route
/// 3. Waiting for the page to be fully rendered
/// 4. Capturing the HTML content
/// 5. Applying post-processing (e.g., removing scripts)
class HtmlRenderer {
  final PrerenderConfig _config;
  Browser? _browser;
  Page? _page;
  bool _initialized = false;

  HtmlRenderer(this._config);

  /// Initializes the headless browser.
  Future<void> initialize() async {
    if (_initialized) return;

    _logger.info('Launching headless browser...');

    try {
      // Launch browser.
      _browser = await puppeteer.launch(
        executablePath: _config.browserExecutablePath,
        headless: true,
        args: [
          '--no-sandbox',
          '--disable-setuid-sandbox',
          '--disable-dev-shm-usage',
          '--disable-gpu',
          ..._config.browserArgs,
        ],
      );

      // Create a new page.
      _page = await _browser!.newPage();

      // Set viewport.
      await _page!.setViewport(DeviceViewport(
        width: _config.viewportWidth,
        height: _config.viewportHeight,
        deviceScaleFactor: _config.deviceScaleFactor,
        isMobile: _config.emulateMobile,
      ));

      // Set user agent.
      await _page!.setUserAgent(
        'Mozilla/5.0 (compatible; AngularDartPrerender/1.0; +https://angulardartreborn.com)',
      );

      _initialized = true;
      _logger.info('Browser launched successfully');
    } catch (e, stack) {
      _logger.severe('Failed to launch browser: $e');
      _logger.fine('Stack trace: $stack');
      rethrow;
    }
  }

  /// Renders a route and returns the HTML content.
  Future<String> renderRoute(String route) async {
    if (!_initialized) {
      throw StateError('Renderer not initialized. Call initialize() first.');
    }

    final page = _page!;
    final url = _buildUrl(route);

    _logger.fine('Rendering route: $route -> $url');

    try {
      // Navigate to the URL.
      await page.goto(
        url,
        wait: Until.networkIdle,
        timeout: Duration(milliseconds: _config.timeout),
      );

      // Wait for specific selector if configured.
      final waitForSelector = _config.waitForSelector;
      if (waitForSelector.isNotEmpty) {
        try {
          await page.waitForSelector(
            waitForSelector,
            timeout: Duration(milliseconds: _config.timeout),
          );
        } catch (e) {
          _logger.warning(
            'Timeout waiting for selector "$waitForSelector" on $route',
          );
        }
      }

      // Wait for network idle if configured.
      if (_config.waitForNetworkIdle && waitForSelector.isEmpty) {
        await Future.delayed(const Duration(milliseconds: 500));
      }

      // Get the HTML content.
      var html = await page.content ?? '';

      // Post-process the HTML.
      html = _postProcessHtml(html, route);

      return html;
    } catch (e, stack) {
      _logger.severe('Failed to render route $route: $e');
      _logger.fine('Stack trace: $stack');
      rethrow;
    }
  }

  /// Builds the full URL for a route.
  String _buildUrl(String route) {
    if (_config.baseUrl.isNotEmpty) {
      final baseUrl = _config.baseUrl.endsWith('/')
          ? _config.baseUrl.substring(0, _config.baseUrl.length - 1)
          : _config.baseUrl;
      return '$baseUrl$route';
    }

    // Use a local file URL for testing.
    // In production, you'd want to serve the app locally.
    return 'file://${Directory.current.path}/build/web/index.html#$route';
  }

  /// Post-processes the HTML content.
  String _postProcessHtml(String html, String route) {
    var processed = html;

    // Remove script tags (they're not needed in prerendered HTML).
    processed = processed.replaceAll(
      RegExp(r'<script[^>]*>.*?</script>', dotAll: true),
      '',
    );

    // Add prerendered marker.
    processed = processed.replaceFirst(
      '<html',
      '<html data-prerendered="true"',
    );

    // Add canonical URL if baseUrl is set.
    if (_config.baseUrl.isNotEmpty) {
      final canonicalUrl = '${_config.baseUrl}$route';
      if (!processed.contains('rel="canonical"')) {
        processed = processed.replaceFirst(
          '</head>',
          '<link rel="canonical" href="$canonicalUrl"></head>',
        );
      }
    }

    // Add prerender timestamp.
    final timestamp = DateTime.now().toIso8601String();
    processed = processed.replaceFirst(
      '</head>',
      '<meta name="prerender-timestamp" content="$timestamp"></head>',
    );

    return processed;
  }

  /// Disposes of the browser resources.
  Future<void> dispose() async {
    if (_browser != null) {
      _logger.info('Closing browser...');
      await _browser!.close();
      _browser = null;
      _page = null;
      _initialized = false;
      _logger.info('Browser closed');
    }
  }
}
