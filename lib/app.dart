import 'package:flutter/material.dart';
import 'widgets/navigation/navigation_route_observer.dart';
import 'constants/theme.dart';
import 'routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scott Laing - Portfolio',
      theme: appTheme,
      initialRoute: NavigationRoute.intro,
      routes: NavigationRoute.routes,
      navigatorObservers: [NavigationRouteObserver()],
    );
  }
}
