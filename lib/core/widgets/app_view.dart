import 'package:my_groceries/core/notifiers/busy.dart';
import 'package:my_groceries/core/notifiers/error.dart';
import 'package:my_groceries/core/widgets/busy_observer.dart';
import 'package:my_groceries/core/widgets/error_observer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Inserts some observers before the child if needed.
class AppView<T extends ChangeNotifier> extends StatelessWidget {
  /// Creates an [AppView<T>].
  const AppView({
    Key key,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final T notifier = context.watch<T>();
    Widget result = child;
    if (notifier is BusyNotifier) {
      result = BusyObserver<T>(
        child: result,
      );
    }
    if (notifier is ErrorNotifier) {
      result = ErrorObserver<T>(
        child: result,
      );
    }
    return result;
  }
}
