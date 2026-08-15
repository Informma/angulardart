// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'dark_theme.dart';

import 'package:angulardart_meta/src/di_tokens.dart' as _i1;
import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref1;
import 'package:angulardart_components/theme/module.template.dart' as _ref2;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerFactory(AcxDarkTheme, (bool? p0) => AcxDarkTheme.new(p0));
  _ngRef.registerDependencies(AcxDarkTheme, const [
    [_ngRef.Inject(_i1.OpaqueToken<Object>('acxDarkTheme')), _ngRef.Optional()],
  ]);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
}
