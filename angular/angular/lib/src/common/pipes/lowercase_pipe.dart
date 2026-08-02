import 'package:angulardart/src/meta.dart';

/// Transforms text to lowercase.
///
/// {@category Pipes}
@Pipe('lowercase')
class LowerCasePipe {
  String? transform(String? value) => value?.toLowerCase();

  const LowerCasePipe();
}
