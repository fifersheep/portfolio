import 'package:flutter/material.dart' hide Router, NavigationDrawer;
import 'package:go_router/go_router.dart';
import 'package:portfolio/injection.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/constants/theme.dart';
import 'package:portfolio/presentation/core/navigation/navigation_drawer.dart';
import 'package:portfolio/presentation/core/navigation/navigation_route_observer.dart';
import 'package:portfolio/presentation/routes/routes.dart';

class App extends StatelessWidget {
  final _router = GoRouter(
    initialLocation: Routes.intro,
    routes: [
      ShellRoute(
        routes: routes,
        builder: (context, state, child) {
          final bool isMobile = MediaQuery.of(context).size.width < 1000;

          return Row(
            children: <Widget>[
              if (!isMobile) const NavigationDrawer(),
              Expanded(
                child: Scaffold(
                  drawer: isMobile ? const NavigationDrawer() : null,
                  body: child,
                ),
              ),
            ],
          );
        },
      ),
    ],
    observers: [getIt<NavigationRouteObserver>()],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: Strings.of(context).appTitle,
      theme: AppTheme.defaultTheme,
      routerConfig: _router,
    );
  }
}
