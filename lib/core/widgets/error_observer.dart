import 'package:my_groceries/core/notifiers/error.dart';
import 'package:my_groceries/core/widgets/observer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Listens an [ErrorNotifier] and displays an [AlertDialog] when
/// [ErrorNotifier.errorMessage] changes..
class ErrorObserver<T extends ChangeNotifier> extends StatelessWidget {
  /// Creates an [ErrorListener].
  const ErrorObserver({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final ErrorMessage errorMessage = context.select<T, ErrorMessage>((x) {
      if (x is ErrorNotifier) {
        return x.errorMessage;
      } else {
        return null;
      }
    });
    return ValueObserver(
      value: errorMessage,
      onUpdated: (_) => _handleOnErrorNotified(context, errorMessage),
      child: child,
    );
  }

  void _handleOnErrorNotified(BuildContext context, ErrorMessage errorMessage) {
    if (errorMessage != null) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(errorMessage.title),
            content: Text(errorMessage.message),
            actions: <Widget>[
              FlatButton(
                child: const Text('Ok'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              if (errorMessage.actionLabel != null)
                FlatButton(
                  child: Text(errorMessage.actionLabel),
                  onPressed: () {
                    Navigator.pop(context);
                    errorMessage.onAction();
                  },
                ),
            ],
          );
        },
      );
    }
  }
}
