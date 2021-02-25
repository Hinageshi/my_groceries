import 'package:flutter/material.dart';
import 'package:my_groceries/core/widgets/busy_observer.dart';
import 'package:my_groceries/core/widgets/error_observer.dart';
import 'package:my_groceries/core/widgets/notifier_loader.dart';
import 'package:my_groceries/data/repositories/groceries.dart';
import 'package:my_groceries/modules/groceries/notifier.dart';
import 'package:provider/provider.dart';

class GroceriesView extends StatelessWidget {
  GroceriesView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProxyProvider0<GroceriesNotifier>(
      create: (_) => GroceriesNotifier(),
      update: (context, old) {
        return old..groceriesRepository = context.watch<GroceriesRepository>();
      },
      child: const GroceriesInternalView(),
    );
  }
}

@visibleForTesting
class GroceriesInternalView extends StatelessWidget {
  const GroceriesInternalView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final groceries = context.select(
      (GroceriesNotifier notifier) => notifier.groceries,
    );

    return NotifierLoader<GroceriesNotifier>(
      child: ErrorObserver<GroceriesNotifier>(
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Groceries'),
          ),
          body: BusyObserver<GroceriesNotifier>(
            child: Center(
              child: Text(groceries ?? 'No groceries.'),
            ),
          ),
        ),
      ),
    );
  }
}
