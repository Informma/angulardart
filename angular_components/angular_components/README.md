![AngularDart Components banner](https://github.com/flutterdocteur/angulardart/raw/main/media/banner.png)

<p align="center">
  <a href="https://angulardartreborn.com">
    <img src="https://img.shields.io/badge/website-angulardartreborn.com-blue" alt="Website" />
  </a>
  <a href="https://pub.dev/packages/angulardart_components">
    <img src="https://img.shields.io/pub/v/angulardart_components" alt="pub package" />
  </a>
</p>

# AngularDart Components

**Material Design UI components for AngularDart. Community-maintained fork of Google's original components.**

Part of the [AngularDart](https://pub.dev/packages/angulardart) ecosystem.

## Components

### Buttons
- `MaterialButtonComponent` - Standard button
- `MaterialFabComponent` - Floating action button
- `MaterialIconButtonComponent` - Icon-only button
- `MaterialYesNoButtonsComponent` - Confirm/cancel buttons

### Form Controls
- `MaterialCheckboxComponent` - Checkbox input
- `MaterialRadioComponent` / `MaterialRadioGroupComponent` - Radio buttons
- `MaterialInputComponent` - Text input with floating label
- `MaterialAutoSuggestInputComponent` - Input with autocomplete
- `MaterialSelectComponent` / `MaterialDropdownSelectComponent` - Dropdown selection
- `MaterialToggleComponent` - Toggle switch
- `MaterialSliderComponent` - Range slider
- `MaterialDatepickerComponent` - Date picker
- `MaterialDateRangePickerComponent` - Date range picker
- `MaterialTimePickerComponent` - Time picker

### Navigation
- `MaterialTabComponent` / `MaterialTabPanelComponent` - Tabs
- `MaterialMenuComponent` / `MaterialDropdownMenuComponent` - Menus
- `MaterialTreeComponent` - Tree view
- `MaterialStepperComponent` - Step-by-step wizard

### Layout
- `MaterialCardComponent` - Card container
- `MaterialDialogComponent` - Modal dialog
- `MaterialExpansionPanelComponent` - Expandable panel
- `MaterialPopupComponent` - Popup overlay
- `MaterialTooltipComponent` / `MaterialIconTooltipComponent` - Tooltips
- `MaterialSpinnerComponent` - Loading indicator
- `MaterialProgressComponent` - Progress bar

### Content
- `MaterialIconComponent` - Material icons
- `MaterialGlyphComponent` - Custom glyphs
- `MaterialChipComponent` / `MaterialChipsComponent` - Chips/tags
- `MaterialListComponent` / `MaterialListItemComponent` - List items
- `MaterialScorecardComponent` / `MaterialScoreboardComponent` - Score display
- `MaterialReorderListComponent` - Drag-and-drop reorderable list
- `SimpleHtmlComponent` - Safe HTML rendering

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  angulardart: ^8.0.0
  angulardart_components: ^2.0.0
```

## Quick Start

```dart
import 'package:angulardart/angular.dart';
import 'package:angulardart_components/angulardart_components.dart';

@Component(
  selector: 'my-app',
  template: '''
    <material-button (trigger)="onClick()">Click me</material-button>
    <material-checkbox [(checked)]="isChecked">Accept terms</material-checkbox>
    <material-input label="Name" [(ngModel)]="name"></material-input>
  ''',
  directives: [
    MaterialButtonComponent,
    MaterialCheckboxComponent,
    MaterialInputComponent,
  ],
)
class AppComponent {
  bool isChecked = false;
  String name = '';
  
  void onClick() {
    print('Button clicked!');
  }
}
```

## Material Design Theming

Customize the look and feel with Material Design themes:

```dart
import 'package:angulardart_components/css/material/material.scss';
```

## Forms Integration

Use components with AngularDart Forms:

```dart
@Component(
  selector: 'my-form',
  template: '''
    <material-input
      label="Email"
      [ngModel]="email"
      (ngModelChange)="email = \$event"
      required>
    </material-input>
    <material-checkbox [(ngModel)]="acceptTerms">
      I accept the terms
    </material-checkbox>
  ''',
  directives: [
    MaterialInputComponent,
    MaterialCheckboxComponent,
    formDirectives,
  ],
)
class MyForm {
  String email = '';
  bool acceptTerms = false;
}
```

## Dialogs

```dart
@Component(
  selector: 'my-app',
  template: '''
    <material-button (trigger)="showDialog()">Open Dialog</material-button>
    <material-dialog #dialog>
      <h3 header>Confirm</h3>
      <div>Are you sure?</div>
      <material-yes-no-buttons
        footer
        (yes)="dialog.close()"
        (no)="dialog.close()">
      </material-yes-no-buttons>
    </material-dialog>
  ''',
  directives: [
    MaterialButtonComponent,
    MaterialDialogComponent,
    MaterialYesNoButtonsComponent,
  ],
)
class AppComponent {
  @ViewChild('dialog')
  MaterialDialogComponent? dialog;
  
  void showDialog() {
    dialog?.open();
  }
}
```

## Documentation

- [API Reference](https://pub.dev/documentation/angulardart_components/latest/)
- [AngularDart main package](https://pub.dev/packages/angulardart)
- [SEO & Prerendering Guide](https://github.com/flutterdocteur/angulardart/blob/main/docs/SEO_PRERENDER_USER_GUIDE.md) - Add SEO meta tags and static prerendering to your components

## Related Packages

- [angulardart_seo](https://pub.dev/packages/angulardart_seo) - Dynamic meta tags, titles, Open Graph, Twitter Cards
- [angulardart_prerender](https://pub.dev/packages/angulardart_prerender) - Static prerendering for search engine optimization

## Requirements

- Dart SDK >= 3.0.0
- AngularDart >= 8.0.0

## License

MIT License

---

## Disclaimer

**AngularDart Reborn** is a community-maintained fork of Google's original [AngularDart](https://pub.dev/packages/angulardart) framework (formerly known as AngularDart by Google). This project is **not affiliated with, endorsed by, or sponsored by Google LLC**.

- **Angular**, **AngularDart**, and all associated packages (`angulardart`, `angulardart_router`, `angulardart_compiler`, `angulardart_forms`, `angulardart_meta`, `angulardart_ast`, `angulardart_cli`, `angulardart_seo`, `angulardart_prerender`, `angulardart_test`, `angulardart_components`) are trademarks and projects of the AngularDart Reborn community.
- The original AngularDart framework was developed by Google LLC and hosted at [github.com/angulardart](https://github.com/angulardart).
- This is an independent, 100% community-driven project that continues the work started by Google's AngularDart team after Google ceased active maintenance.

For the official Angular Framework (TypeScript/JavaScript), visit [angular.io](https://angular.io). For the original Google-maintained AngularDart repository, see [github.com/angulardart](https://github.com/angulardart).
