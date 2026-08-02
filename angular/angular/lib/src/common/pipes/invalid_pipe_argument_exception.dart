/// Exception thrown when a pipe receives an argument of an invalid type.
///
/// For example, passing a `String` to [DatePipe] which expects a [DateTime]
/// will throw this exception.
class InvalidPipeArgumentException extends FormatException {
  /// Creates an exception indicating that [value] is not valid for [type].
  InvalidPipeArgumentException(Type type, Object? value)
      : super("Invalid argument '$value' for pipe '$type'");
}
