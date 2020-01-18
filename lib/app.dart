import 'package:flutter/material.dart';

import 'theme/theme.dart';
import 'widgets/intro/intro_page.dart';
import 'widgets/projects/projects_page.dart';
import 'widgets/experience/experience_page.dart';
import 'widgets/navigation/navigation_routes.dart';
import 'widgets/navigation/navigation_route_observer.dart';
import 'widgets/blog/blog_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scott Laing - Portfolio',
      theme: appTheme,
      initialRoute: NavigationRoute.intro,
      routes: {
        NavigationRoute.intro: (_) => IntroPage(),
        NavigationRoute.projects: (_) => ProjectsPage(),
        NavigationRoute.experience: (_) => ExperiencePage(),
        NavigationRoute.blog: (_) => BlogPage(),
      },
      navigatorObservers: [NavigationRouteObserver()],
    );
  }
}
