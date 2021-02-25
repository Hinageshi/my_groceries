import 'package:flutter/widgets.dart' hide Router;
import 'package:my_groceries/modules/app/app_router_base.dart';
import 'package:my_groceries/modules/groceries/view.dart';

/// Contains the name of the different routes.
class RouteNames {
  const RouteNames._();

  static const String groceriesView = '/';
}

Object _parseRouteArguments(
  String routeName,
  Map<String, String> routeArguments,
) {
  switch (routeName) {
    default:
      return null;
  }
}

Widget _generateRouteWidget(
  BuildContext context,
  RouteSettings settings,
) {
  switch (settings.name) {
    case RouteNames.groceriesView:
      return GroceriesView();

    default:
      throw ArgumentError('The route ${settings.name} is not defined.');
  }
}

/// Contains methods to handle navigation and to navigate from an [Uri].
class DefaultAppRouter extends Router {
  const DefaultAppRouter({
    RouteBuilder routeBuilder = generateMaterialPageRoute,
    RouteArgumentsParser routeArgumentsParser = _parseRouteArguments,
    RouteWidgetBuilder routeWidgetBuilder = _generateRouteWidget,
  }) : super(
          routeBuilder: routeBuilder,
          routeArgumentsParser: routeArgumentsParser,
          routeWidgetBuilder: routeWidgetBuilder,
        );
}
