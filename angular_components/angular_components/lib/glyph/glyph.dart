// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angulardart_components/src/dom/dom_apis.dart';

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/model/ui/icon.dart';

/// Icons that should be horizontally flipped when the direction is RTL.
///
/// Please add to this list as needed.
const List<String> _flippedIcons = [
  'arrow_back',
  'arrow_forward',
  'chevron_left',
  'chevron_right',
  'navigate_before',
  'navigate_next',
  'last_page',
  'first_page',
  'open_in_new',
  'star_half',
  'exit_to_app',
];

/// A component that creates a material style icon. Currently only font icons
/// are supported and
/// [material-icons-extended](https://www.google.com/design/icons/) is the only
/// supported font.
///
/// This stylesheet should be included at the top of the page:
///
/// ```html
/// <link rel="stylesheet"
///     href="https://fonts.googleapis.com/icon?family=Material+Icons">
/// ```
///
/// Make sure to take RTL into account. Specifically, use the [flip] attribute
/// if the icon should be flipped for RTL UIs. Read [these
/// guidelines](https://material.io/guidelines/usability/bidirectionality.html#bidirectionality-rtl-mirroring-guidelines)
/// for advice on when and when not to flip the icon.
///
/// __Attributes:__
///
/// - `size: string {x-small, small, medium, large, x-large}` -- Sizes names for
///   the icon, corresponding to 12px, 13px, 16px, 18px, and 20px, respectively.
///   If no size is specified, the default of 24px is used.
/// - `flip` -- Whether the icon should be flipped for RTL languages.
@Deprecated('Use MaterialIconComponent instead')
@Component(
  selector: 'glyph',
  templateUrl: 'glyph.html',
  styleUrls: ['glyph.scss.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class GlyphComponent {
  static const String _materialIconsExtended = 'material-icons-extended';

  /// `Icon` model (lib/model/ui/icon.dart) or Icon identifier -
  /// see [https://www.google.com/design/icons/](https://goo.gl/YKrYlu) for
  /// available icons.
  @Input()
  set icon(dynamic value) {
    _icon = value;
    if (_flippedIcons.contains(iconName)) {
      _element.setAttribute('flip', '');
    }
  }

  dynamic get icon => _icon;
  dynamic _icon;

  bool get _isIconModel => icon is Icon;

  String get iconName => _isIconModel ? icon.name : icon;

  /// The icon font to use. Default (and only) is **material-icons-extended**.
  String? _iconSet;

  String get iconSet => _iconSet ?? _materialIconsExtended;

  /// The set of icons to use. Only allowed value currently is
  /// `material-icons-extended`.
  ///
  @Input()
  set iconSet(String value) {
    assert(value == _materialIconsExtended);
    _iconSet = value;
  }

  final bool _useMaterialIconsExtended = true;

  bool get useMaterialIconsExtended => _useMaterialIconsExtended;

  final HtmlElement _element;

  GlyphComponent(this._element);
}

/// Size names which can be used on the glyph icon.
class GlyphSize {
  static const xSmall = 'x-small';
  static const small = 'small';
  static const medium = 'medium';
  static const large = 'large';
  static const xLarge = 'x-large';
  // ignore: constant_identifier_names
  @Deprecated('Use xSmall instead')
  // ignore: constant_identifier_names
  static const X_SMALL = xSmall;
  @Deprecated('Use small instead')
  // ignore: constant_identifier_names
  static const SMALL = small;
  @Deprecated('Use medium instead')
  // ignore: constant_identifier_names
  static const MEDIUM = medium;
  @Deprecated('Use large instead')
  // ignore: constant_identifier_names
  static const LARGE = large;
  @Deprecated('Use xLarge instead')
  // ignore: constant_identifier_names
  static const X_LARGE = xLarge;
  // ignore: constant_identifier_names
  @Deprecated('Use empty string directly')
  // ignore: constant_identifier_names
  static const DEFAULT = '';
  List<String> get values => ['', xSmall, small, medium, large, xLarge];
}
