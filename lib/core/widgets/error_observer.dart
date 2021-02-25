import 'package:my_groceries/core/notifiers/error.dart';
import 'package:flutter/material.dart';
import 'package:my_groceries/core/widgets/observer.dart';
import 'package:provider/provider.dart';

/// Signature for a function that creates a dialog widget.
typedef ErrorDialogBuilder = Widget Function(
  BuildContext context,
  ErrorMessage errorMessage,
);

/// Observes an [ErrorNotifier] and displays an [AlertDialog] when
/// [ErrorNotifier.errorMessage] changes.
///
/// Be carefull when using it with `shouldObserveRoute = true` (by default),
/// you should have provided a [RouteObserver<PageRoute>] above the [MaterialApp].
class ErrorObserver<T extends ChangeNotifier> extends StatefulWidget {
  /// Creates an [ErrorObserver].
  const ErrorObserver({
    Key key,
    @required this.child,
    this.shouldObserveRoute = true,
    this.errorDialogBuilder,
  }) : super(key: key);

  /// The widget below in the tree.
  ///
  /// {@macro flutter.widgets.child}.
  final Widget child;

  /// Whether we observe the route or not.
  ///
  /// Defaults to `true`.
  final bool shouldObserveRoute;

  /// The builder of the error dialog.
  final ErrorDialogBuilder errorDialogBuilder;

  @override
  _ErrorObserverState<T> createState() => _ErrorObserverState<T>();
}

class _ErrorObserverState<T extends ChangeNotifier>
    extends State<ErrorObserver<T>> with RouteAware {
  RouteObserver<PageRoute> routeObserver;
  // To be sure to present dialog only if it's on screen currently.
  int pagesPushed = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (widget.shouldObserveRoute) {
      routeObserver = context.read<RouteObserver<PageRoute>>();
      routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
    }
  }

  @override
  void dispose() {
    routeObserver?.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ErrorMessage errorMessage = context.select<T, ErrorMessage>((x) {
      if (x is ErrorNotifier) {
        return x.errorMessage;
      } else {
        return null;
      }
    });
    return ValueObserver<ErrorMessage>(
      value: errorMessage,
      onUpdated: (errorMessage) => _handleOnErrorNotified(
        context,
        errorMessage,
      ),
      child: widget.child,
    );
  }

  void _handleOnErrorNotified(BuildContext context, ErrorMessage errorMessage) {
    if (errorMessage != null && pagesPushed == 0) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return widget.errorDialogBuilder?.call(context, errorMessage) ??
              _DefaultErrorDialog(
                errorMessage: errorMessage,
              );
        },
      );
    }
  }

  @override
  void didPopNext() => pagesPushed--;

  @override
  void didPushNext() => pagesPushed++;
}

class _DefaultErrorDialog extends StatelessWidget {
  const _DefaultErrorDialog({
    Key key,
    @required this.errorMessage,
  })  : assert(errorMessage != null),
        super(key: key);

  final ErrorMessage errorMessage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(errorMessage.title),
      content: Text(errorMessage.message),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
            if (errorMessage.onOk != null) {
              errorMessage.onOk(context);
            }
          },
          child: Text(errorMessage.okLabel),
        ),
        if (errorMessage.actionLabel != null)
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
              errorMessage.onAction(context);
            },
            child: Text(errorMessage.actionLabel),
          ),
      ],
    );
  }
}
