import 'package:flutter/material.dart';
import 'package:my_groceries/data/repositories/groceries.dart';
import 'package:my_groceries/data/sources/hive_boxes.dart';
import 'package:provider/provider.dart';

class AppProviders extends StatelessWidget {
  const AppProviders({
    Key key,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        /// Data sources
        Provider(
          create: (_) => HiveBoxes(),
        ),

        /// Repositories
        ProxyProvider0<GroceriesRepository>(
          update: (context, old) => GroceriesRepository.update(
            context.watch<HiveBoxes>(),
            old,
          ),
        ),

        /// Router
        Provider<RouteObserver<PageRoute>>(
          create: (_) => RouteObserver<PageRoute>(),
        ),
      ],
      child: child,
    );
  }
}
