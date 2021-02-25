import 'dart:async';

import 'package:my_groceries/core/exceptions/api_client_exception.dart';
import 'package:my_groceries/core/exceptions/app_exception.dart';
import 'package:my_groceries/core/exceptions/no_connection_exception.dart';

/// Call a `func` and throw an `AppException` if an error occured.
///
/// Should be used by a [ChangeNotifier].
///
/// The [AppException] thrown should then be managed by the [ChangeNotifier] caller.
Future<T> callOrThrow<T>(FutureOr<T> Function() func) async {
  try {
    return await func?.call();
  } on NoConnectionException catch (exception, stackTrace) {
    throw AppException(
      code: AppErrorCodes.noConnection,
      innerException: exception,
      innerStackTrace: stackTrace,
    );
  } on TimeoutException catch (exception, stackTrace) {
    throw AppException(
      code: AppErrorCodes.timeout,
      innerException: exception,
      innerStackTrace: stackTrace,
    );
  } on ApiClientException catch (exception, stackTrace) {
    throw AppException(
      // Should be an HttpStatus code.
      code: exception.code,
      innerException: exception,
      innerStackTrace: stackTrace,
    );
  } on Exception catch (exception, stackTrace) {
    throw AppException(
      code: AppErrorCodes.unknown,
      innerException: exception,
      innerStackTrace: stackTrace,
    );
  }
}
