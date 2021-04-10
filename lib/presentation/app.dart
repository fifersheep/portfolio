import 'package:flutter/material.dart' hide Router;
import 'package:portfolio/injection.dart';
import 'package:portfolio/presentation/routes/routes.gr.dart';

import 'constants/strings.dart';
import 'constants/theme.dart';
import 'core/navigation/navigation_route_observer.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = Router();

    return MaterialApp.router(
      title: Strings.of(context).appTitle,
      theme: appTheme,
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(
        initialRoutes: [const IntroRoute()],
        navigatorObservers: [getIt<NavigationRouteObserver>()],
      ),
    );
  }
}
