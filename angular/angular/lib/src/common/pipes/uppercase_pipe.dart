import 'package:angulardart/src/meta.dart';

/// Implements uppercase transforms to text.
///
/// {@category Pipes}
@Pipe('uppercase')
class UpperCasePipe {
  String? transform(String? value) => value?.toUpperCase();

  const UpperCasePipe();
}
