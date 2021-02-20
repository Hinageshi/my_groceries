import 'package:flutter/foundation.dart';

@immutable
class ErrorMessage {
  const ErrorMessage({
    @required this.title,
    @required this.message,
    this.actionLabel,
    this.onAction,
  })  : assert(title != null),
        assert(message != null),
        assert((actionLabel == null && onAction == null) ||
            (actionLabel != null && onAction != null));

  final String title;
  final String message;
  final String actionLabel;
  final VoidCallback onAction;
}

mixin ErrorNotifier on ChangeNotifier {
  ErrorMessage _errorMessage;
  ErrorMessage get errorMessage => _errorMessage;

  @protected
  set errorMessage(ErrorMessage value) {
    if (_errorMessage != value) {
      _errorMessage = value;
      notifyListeners();
    }
  }
}
