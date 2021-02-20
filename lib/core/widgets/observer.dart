import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

/// A widget which listen a single [listenable] and calls [onUpdated]
/// when the [listenable] is updated.
class Observer extends StatefulWidget {
  /// Creates a [Observer].
  const Observer({
    Key key,
    @required this.listenable,
    @required this.onUpdated,
    @required this.child,
  })  : assert(listenable != null),
        assert(onUpdated != null),
        assert(child != null),
        super(key: key);

  /// The listenable to listen.
  final Listenable listenable;

  /// Called when the [listenable] is updated.
  final VoidCallback onUpdated;

  /// The child.
  final Widget child;

  @override
  _ObserverState createState() => _ObserverState();
}

class _ObserverState extends State<Observer> {
  @override
  void initState() {
    super.initState();
    widget.listenable.addListener(_handleUpdate);
  }

  @override
  void didUpdateWidget(Observer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.listenable != widget.listenable) {
      oldWidget.listenable.removeListener(_handleUpdate);
      widget.listenable.addListener(_handleUpdate);
    }
  }

  @override
  void dispose() {
    widget.listenable.removeListener(_handleUpdate);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _handleUpdate() {
    widget.onUpdated();
  }
}

/// A widget which listen a single [listenable] and calls [onUpdated]
/// when the value held by the [listenable] is updated.
class OldValueObserver<T> extends StatelessWidget {
  /// Creates a [OldValueObserver].
  const OldValueObserver({
    Key key,
    @required this.listenable,
    @required this.onUpdated,
    @required this.child,
  })  : assert(listenable != null),
        assert(onUpdated != null),
        assert(child != null),
        super(key: key);

  /// The listenable to listen.
  final ValueListenable<T> listenable;

  /// Called when the [listenable] is updated.
  final ValueChanged<T> onUpdated;

  /// The child.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Observer(
      listenable: listenable,
      onUpdated: () => onUpdated(listenable.value),
      child: child,
    );
  }
}

/// A widget.
class ValueObserver<T> extends StatefulWidget {
  /// Creates a [_ValueObserver].
  const ValueObserver({
    Key key,
    @required this.value,
    @required this.onUpdated,
    @required this.child,
  })  : assert(onUpdated != null),
        assert(child != null),
        super(key: key);

  final T value;
  final ValueChanged<T> onUpdated;
  final Widget child;

  @override
  _ValueObserverState createState() => _ValueObserverState();
}

class _ValueObserverState extends State<ValueObserver> {
  @override
  void didUpdateWidget(ValueObserver oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.onUpdated(widget.value);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
