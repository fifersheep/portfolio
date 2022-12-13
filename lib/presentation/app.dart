import 'package:flutter/material.dart' hide Router;
import 'package:portfolio/injection.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/constants/theme.dart';
import 'package:portfolio/presentation/core/navigation/navigation_route_observer.dart';
import 'package:portfolio/presentation/routes/routes.gr.dart';

class App extends StatelessWidget {
  final _router = Router();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: Strings.of(context).appTitle,
      theme: AppTheme.defaultTheme,
      routeInformationParser: _router.defaultRouteParser(),
      routerDelegate: _router.delegate(
        initialRoutes: [const IntroRoute()],
        navigatorObservers: () => [getIt<NavigationRouteObserver>()],
      ),
    );
  }
}
