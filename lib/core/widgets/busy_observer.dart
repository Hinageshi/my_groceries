import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_groceries/core/notifiers/busy.dart';
import 'package:provider/provider.dart';

class BusyObserver<T extends ChangeNotifier> extends StatelessWidget {
  const BusyObserver({
    Key key,
    @required this.child,
    this.loader,
  })  : assert(child != null),
        super(key: key);

  final Widget child;
  final Widget loader;

  @override
  Widget build(BuildContext context) {
    final bool isBusy = context.select<T, bool>((x) {
      if (x is BusyNotifier) {
        return x.busy;
      } else {
        return false;
      }
    });

    if (isBusy) {
      return loader ?? _DefaultLoader(child: child);
    } else {
      return child;
    }
  }
}

class _DefaultLoader extends StatelessWidget {
  const _DefaultLoader({Key key, @required this.child})
      : assert(child != null),
        super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          child,
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
