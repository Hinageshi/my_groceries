import 'package:my_groceries/modules/app/app_providers.dart';
import 'package:my_groceries/modules/app/app_router.dart';
import 'package:flutter/material.dart';
import 'package:my_groceries/modules/groceries/view.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppProviders(
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'My Groceries',
            debugShowCheckedModeBanner: false,
            home: GroceriesView(),
            navigatorObservers: [
              context.watch<RouteObserver<PageRoute>>(),
            ],
            onGenerateRoute: const DefaultAppRouter().onGenerateRoute,
          );
        },
      ),
    );
  }
}
