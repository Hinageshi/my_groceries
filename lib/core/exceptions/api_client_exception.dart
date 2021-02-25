import 'package:meta/meta.dart' show immutable, required;

/// {@template api_client_exception}
/// The exception thrown when a call to the API has
/// not been successful.
/// {@endtemplate}
@immutable
class ApiClientException implements Exception {
  /// {@macro api_client_exception}
  const ApiClientException({
    @required this.code,
    this.message,
    this.innerException,
  });

  /// The error code of the response.
  final int code;

  /// The message returned by the API.
  final String message;

  /// The exception throwed.
  final Object innerException;

  // Override the default string method to display more information about the exception.
  @override
  String toString() {
    return 'ApiClientException: message: $message, code: $code, innerException: $innerException';
  }
}
