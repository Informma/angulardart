import 'dom_apis.dart';

import 'package:angulardart/angulardart.dart';

/// Service for managing the document title with advanced features.
///
/// This service provides title management with support for:
/// - Title templates with placeholders
/// - Title suffixes/prefixes
/// - Title length limits
/// - Title history for back navigation
///
/// Example usage:
/// ```dart
/// @Component(
///   selector: 'my-page',
///   template: '...',
/// )
/// class MyPageComponent implements OnInit {
///   final TitleService _titleService;
///
///   MyPageComponent(this._titleService);
///
///   @override
///   void ngOnInit() {
///     _titleService
///       ..setTemplate('{{page}} | {{site}}')
///       ..setSiteName('My Website')
///       ..setTitle('Home');
///   }
/// }
/// ```
@Injectable()
class TitleService {
  final Document _document = document;

  /// The template for the title.
  /// Supports placeholders like {{page}}, {{site}}, {{category}}.
  String _template = '{{page}}';

  /// The site name to use in the title.
  String? _siteName;

  /// The default page title.
  String? _defaultTitle;

  /// The separator between title parts.
  String _separator = ' | ';

  /// Maximum length for the title (0 = no limit).
  int _maxLength = 0;

  /// Whether to append the site name.
  bool _appendSiteName = true;

  /// Whether to prepend the site name (overrides append if true).
  bool _prependSiteName = false;

  /// History of titles for back navigation.
  final List<String> _titleHistory = [];

  /// Maximum history size.
  final int _maxHistorySize = 50;

  TitleService();

  // ============================================================================
  // Configuration
  // ============================================================================

  /// Sets the title template.
  ///
  /// The template can contain placeholders:
  /// - {{page}} - The page title
  /// - {{site}} - The site name
  /// - {{category}} - The category (if set)
  /// - {{separator}} - The separator
  ///
  /// Example:
  /// ```dart
  /// titleService.setTemplate('{{page}} {{separator}} {{site}}');
  /// ```
  void setTemplate(String template) {
    _template = template;
  }

  /// Sets the site name.
  ///
  /// The site name is used in the title template as {{site}}.
  ///
  /// Example:
  /// ```dart
  /// titleService.setSiteName('My Website');
  /// ```
  void setSiteName(String name) {
    _siteName = name;
  }

  /// Sets the default page title.
  ///
  /// This is used when no page title is set.
  ///
  /// Example:
  /// ```dart
  /// titleService.setDefaultTitle('Welcome');
  /// ```
  void setDefaultTitle(String title) {
    _defaultTitle = title;
  }

  /// Sets the separator between title parts.
  ///
  /// Default is ' | '.
  ///
  /// Example:
  /// ```dart
  /// titleService.setSeparator(' - ');
  /// ```
  void setSeparator(String separator) {
    _separator = separator;
  }

  /// Sets the maximum length for the title.
  ///
  /// If the title exceeds this length, it will be truncated.
  /// Set to 0 to disable truncation.
  ///
  /// Example:
  /// ```dart
  /// titleService.setMaxLength(60);
  /// ```
  void setMaxLength(int length) {
    _maxLength = length;
  }

  /// Sets whether to append the site name to the title.
  ///
  /// Default is true.
  ///
  /// Example:
  /// ```dart
  /// titleService.setAppendSiteName(false);
  /// ```
  void setAppendSiteName(bool append) {
    _appendSiteName = append;
    if (append) _prependSiteName = false;
  }

  /// Sets whether to prepend the site name to the title.
  ///
  /// Default is false. If true, overrides appendSiteName.
  ///
  /// Example:
  /// ```dart
  /// titleService.setPrependSiteName(true);
  /// ```
  void setPrependSiteName(bool prepend) {
    _prependSiteName = prepend;
    if (prepend) _appendSiteName = false;
  }

  // ============================================================================
  // Title Setting
  // ============================================================================

  /// Sets the page title.
  ///
  /// This is the main method to set the title. It will be combined with
  /// the site name according to the configuration.
  ///
  /// Example:
  /// ```dart
  /// titleService.setTitle('About Us');
  /// // Result: "About Us | My Website"
  /// ```
  void setTitle(String pageTitle) {
    _addToHistory(pageTitle);
    final fullTitle = _buildTitle(pageTitle);
    _document.title = fullTitle;
  }

  /// Sets the title with a category.
  ///
  /// Example:
  /// ```dart
  /// titleService.setTitleWithCategory('Product Name', 'Products');
  /// // Result: "Product Name - Products | My Website"
  /// ```
  void setTitleWithCategory(String pageTitle, String category) {
    _addToHistory(pageTitle);
    final titleWithCategory = '$pageTitle$_separator$category';
    final fullTitle = _buildTitle(titleWithCategory);
    _document.title = fullTitle;
  }

  /// Sets a custom full title, bypassing the template.
  ///
  /// Use this when you need complete control over the title.
  ///
  /// Example:
  /// ```dart
  /// titleService.setFullTitle('Custom Title - No Template');
  /// ```
  void setFullTitle(String title) {
    _addToHistory(title);
    _document.title = _truncate(title);
  }

  /// Gets the current document title.
  String get currentTitle => _document.title;

  /// Gets the title history.
  List<String> get titleHistory => List.unmodifiable(_titleHistory);

  /// Goes back to the previous title in history.
  ///
  /// Returns true if successful, false if no history.
  bool goBack() {
    if (_titleHistory.length < 2) return false;
    _titleHistory.removeLast();
    final previousTitle = _titleHistory.last;
    _document.title = _buildTitle(previousTitle);
    return true;
  }

  /// Clears the title history.
  void clearHistory() {
    _titleHistory.clear();
  }

  // ============================================================================
  // Convenience Methods
  // ============================================================================

  /// Sets the title for a blog post or article.
  ///
  /// Example:
  /// ```dart
  /// titleService.setArticleTitle('How to Use AngularDart', 'Blog');
  /// // Result: "How to Use AngularDart - Blog | My Website"
  /// ```
  void setArticleTitle(String articleTitle, [String? category]) {
    if (category != null) {
      setTitleWithCategory(articleTitle, category);
    } else {
      setTitle(articleTitle);
    }
  }

  /// Sets the title for a product page.
  ///
  /// Example:
  /// ```dart
  /// titleService.setProductTitle('Widget Pro', 'Widgets');
  /// // Result: "Widget Pro - Widgets | My Website"
  /// ```
  void setProductTitle(String productName, [String? category]) {
    if (category != null) {
      setTitleWithCategory(productName, category);
    } else {
      setTitle(productName);
    }
  }

  /// Sets the title for a category or listing page.
  ///
  /// Example:
  /// ```dart
  /// titleService.setCategoryTitle('Widgets');
  /// // Result: "Widgets | My Website"
  /// ```
  void setCategoryTitle(String categoryName) {
    setTitle(categoryName);
  }

  /// Sets the title for a search results page.
  ///
  /// Example:
  /// ```dart
  /// titleService.setSearchTitle('angular dart');
  /// // Result: "Search results for: angular dart | My Website"
  /// ```
  void setSearchTitle(String query) {
    setTitle('Search results for: $query');
  }

  /// Sets the title for an error page.
  ///
  /// Example:
  /// ```dart
  /// titleService.setErrorTitle(404, 'Page Not Found');
  /// // Result: "404 - Page Not Found | My Website"
  /// ```
  void setErrorTitle(int code, String message) {
    setTitleWithCategory(message, code.toString());
  }

  /// Resets the title to the default.
  void resetToDefault() {
    if (_defaultTitle != null) {
      setTitle(_defaultTitle!);
    } else {
      _document.title = _siteName ?? '';
    }
  }

  // ============================================================================
  // Private Methods
  // ============================================================================

  String _buildTitle(String pageTitle) {
    var title = _template;

    // Replace placeholders.
    title = title.replaceAll('{{page}}', pageTitle);
    title = title.replaceAll('{{site}}', _siteName ?? '');
    title = title.replaceAll('{{separator}}', _separator);

    // If no template placeholders were used, build title manually.
    if (title == _template && !_template.contains('{{')) {
      if (_prependSiteName && _siteName != null) {
        title = '$_siteName$_separator$pageTitle';
      } else if (_appendSiteName && _siteName != null) {
        title = '$pageTitle$_separator$_siteName';
      } else {
        title = pageTitle;
      }
    }

    return _truncate(title);
  }

  String _truncate(String title) {
    if (_maxLength <= 0 || title.length <= _maxLength) {
      return title;
    }
    return '${title.substring(0, _maxLength - 3)}...';
  }

  void _addToHistory(String title) {
    _titleHistory.add(title);
    if (_titleHistory.length > _maxHistorySize) {
      _titleHistory.removeAt(0);
    }
  }
}
