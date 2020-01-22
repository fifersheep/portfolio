import 'package:flutter/material.dart';

import 'theme/theme.dart';
import 'widgets/navigation/navigation_routes.dart';
import 'widgets/navigation/navigation_route_observer.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scott Laing - Portfolio',
      theme: appTheme,
      initialRoute: NavigationRoute.intro,
      routes: routes,
      navigatorObservers: [NavigationRouteObserver()],
    );
  }
}
