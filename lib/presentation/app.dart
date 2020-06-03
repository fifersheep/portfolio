import 'package:flutter/material.dart';
import 'package:portfolio/injection.dart';

import 'constants/strings.dart';
import 'constants/theme.dart';
import 'core/navigation/navigation_route_observer.dart';
import 'routes/routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.of(context).appTitle,
      theme: appTheme,
      initialRoute: NavigationRoute.intro,
      routes: NavigationRoute.routes,
      navigatorObservers: [getIt<NavigationRouteObserver>()],
    );
  }
}