/// [Dutation] related methods for [int].
extension IntToDurationX on int {
  /// Converts the [int] to a [Duration] with the given [milliseconds].
  Duration get ms => Duration(milliseconds: this);
}
