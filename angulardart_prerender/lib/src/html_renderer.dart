import 'dart:async';

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
  final int _port;
  Browser? _browser;
  Page? _page;
  bool _initialized = false;

  HtmlRenderer(this._config, [int port = 8080]) : _port = port;

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
    final routeTimeout = _config.timeout;

    _logger.info('Rendering route: $route -> $url');

    // Collect JS errors for reporting.
    final jsErrors = <String>[];
    page.onConsole.listen((msg) {
      if (msg.type.name.toLowerCase() == 'error') {
        final text = msg.text ?? '<empty>';
        jsErrors.add(text);
      }
    });

    try {
      // Navigate to the URL and wait for DOMContentLoaded + JS execution.
      await page.goto(
        url,
        wait: Until.load,
        timeout: Duration(milliseconds: routeTimeout),
      );

      // Wait for specific selector if configured (route-level or global).
      final waitForSelector = _config.waitForSelector;
      if (waitForSelector.isNotEmpty) {
        try {
          await page.waitForSelector(
            waitForSelector,
            timeout: Duration(milliseconds: routeTimeout),
          );
        } catch (e) {
          _logger.warning(
            'Timeout waiting for selector "$waitForSelector" on $route',
          );
        }
      }

      // Wait for the render delay to let AngularDart finish rendering.
      if (_config.renderDelayMs > 0) {
        await Future.delayed(Duration(milliseconds: _config.renderDelayMs));
      }

      // Report JS errors found during navigation.
      if (jsErrors.isNotEmpty) {
        _logger.warning('JS errors on $route (${jsErrors.length} error(s)):');
        for (final err in jsErrors.take(5)) {
          _logger.warning('  $err');
        }
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
    // Always use the local server since we start it before prerendering.
    return 'http://localhost:$_port$route';
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
