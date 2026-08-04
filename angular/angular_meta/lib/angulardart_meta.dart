/// Metadata annotations and core types for AngularDart.
///
/// This package contains the annotations, DI primitives, and utility
/// functions shared between `angulardart` (the framework) and
/// `angulardart_compiler` (the code generator).
///
/// By extracting these into a standalone package with no dependency on
/// either `angulardart` or `angulardart_compiler`, we break the circular
/// dependency that previously existed between those two packages.
library angulardart_meta;

export 'src/change_detection_constants.dart';
export 'src/change_detection_link.dart';
export 'src/di_arguments.dart';
export 'src/di_generate_injector.dart';
export 'src/di_modules.dart';
export 'src/di_providers.dart';
export 'src/di_tokens.dart';
export 'src/directives.dart';
export 'src/is_dev_mode.dart';
export 'src/lifecycle_hooks.dart';
export 'src/typed.dart';
export 'src/unsafe_cast.dart';
export 'src/view.dart';
export 'src/visibility.dart';

const visibleForTemplate = _VisibleForTemplate();

class _VisibleForTemplate {
  const _VisibleForTemplate();
}
