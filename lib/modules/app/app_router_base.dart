import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Signature for a function that creates a [Route].
///
/// Used by [Router].
typedef RouteBuilder = Route<T> Function<T>(
  WidgetBuilder builder,
  RouteSettings settings,
);

/// Signature for a function that creates an object
/// representing the arguments of a view by parsing a map of arguments.
///
/// Used by [Router].
typedef RouteArgumentsParser = Object Function(
  String routeName,
  Map<String, String> routeArguments,
);

/// Signature for a function that creates a [Widget] from [RouteSettings].
///
/// Used by [Router].
typedef RouteWidgetBuilder = Widget Function(
  BuildContext context,
  RouteSettings settings,
);

/// A default [RouteBuilder] for creating [MaterialPageRoute].
Route<T> generateMaterialPageRoute<T>(
  WidgetBuilder builder,
  RouteSettings settings,
) {
  return MaterialPageRoute<T>(
    builder: builder,
    settings: settings,
  );
}

/// A default [RouteBuilder] for creating [CupertinoPageRoute].
Route<T> generateCupertinoPageRoute<T>(
  WidgetBuilder builder,
  RouteSettings settings,
) {
  return CupertinoPageRoute<T>(
    builder: builder,
    settings: settings,
  );
}

/// Handles how to navigate to a route and from a [Uri].
@immutable
class Router {
  /// Creates a [Router].
  const Router({
    @required this.routeWidgetBuilder,
    this.routeBuilder = generateMaterialPageRoute,
    this.routeArgumentsParser,
  })  : assert(routeBuilder != null),
        assert(routeWidgetBuilder != null);

  /// Used to generate a [Route] from a [RouteSettings].
  final RouteBuilder routeBuilder;

  /// Used to generate the widget hosted by the [Route] from a [RouteSettings]
  final RouteWidgetBuilder routeWidgetBuilder;

  /// Used to parse the argument object from a [Map<String, String>].
  final RouteArgumentsParser routeArgumentsParser;

  /// The route generator callback to use when the app navigate to a
  /// named route.
  Route<T> onGenerateRoute<T>(RouteSettings settings) {
    return routeBuilder<T>(
      (BuildContext context) => routeWidgetBuilder(context, settings),
      settings,
    );
  }

  /// Parses the [url] as a [Uri] and navigate to the route specified
  /// by the [Uri].
  ///
  /// See [navigateFromUri] for more information.
  Future<T> navigateFromUrl<T>(BuildContext context, String url) {
    return navigateFromUri(context, Uri.parse(url));
  }

  /// Navigates to the route specified by [uri].
  /// The [uri] must be relative, and all parameters should be in the
  /// query parameters.
  ///
  /// For example if the [uri] is `/posts?id=4`, we will navigate to the
  /// route named `/posts` and with the argument `ìd` set to `4`.
  Future<T> navigateFromUri<T>(BuildContext context, Uri uri) {
    assert(
      uri != null,
      'The uri must not be null',
    );
    assert(
      !uri.isAbsolute,
      'The uri must be relative in order to navigate',
    );
    assert(
      routeArgumentsParser != null,
      'The routeArgumentsParser must not be null',
    );

    final String routeName = uri.path;
    final Map<String, String> routeParameters = uri.queryParameters;
    final Object arguments = routeArgumentsParser(routeName, routeParameters);

    return Navigator.pushNamed<T>(
      context,
      routeName,
      arguments: arguments,
    );
  }
}
