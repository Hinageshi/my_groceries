import 'package:meta/meta.dart';

/// The codes that can be used in an application.
abstract class AppErrorCodes {
  /// Describes a no connection error.
  static const int noConnection = -1;

  /// Describes a timeout error.
  static const int timeout = -2;

  /// Describes an unknown error.
  static const int unknown = -3;
}

/// {@template app_exception}
/// The exception thrown when an error occured in the application.
/// {@endtemplate}
@immutable
class AppException implements Exception {
  /// {@macro app_exception}
  const AppException({
    @required this.code,
    @required this.innerException,
    this.innerStackTrace,
  });

  /// The error code of the response.
  final int code;

  /// The stacktrace of the exception.
  final StackTrace innerStackTrace;

  /// The exception throwed.
  final Object innerException;

  // Override the default string method to display more information about the exception.
  @override
  String toString() {
    return 'AppException: code: $code, innerException: $innerException, innerStackTrace: $innerStackTrace';
  }
}
