import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/routes/routes.gr.dart';

import '../../../injection.dart';
import 'navigation_header.dart';
import 'navigation_route_observer.dart';

class NavigationDrawer extends StatefulWidget {
  NavigationDrawer({Key? key}) : super(key: key);

  final NavigationRouteObserver routeObserver = getIt<NavigationRouteObserver>();

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> with RouteAware {
  String? _activeRoute;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = ModalRoute.of(context);
    if (route != null) {
      widget.routeObserver.subscribe(this, route);
    }
  }

  @override
  void dispose() {
    widget.routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    final route = ModalRoute.of(context);
    if (route != null) {
      setState(() => _activeRoute = route.settings.name);
    }
  }

  @override
  void didPop() {
    final route = ModalRoute.of(context);
    if (route != null) {
      setState(() => _activeRoute = route.settings.name);
    }
  }

  @override
  Widget build(BuildContext context) => Theme(
      data: Theme.of(context).copyWith(
        canvasColor: ThemeColors.white,
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            NavigationHeader(),
            ..._menuItems(context, _activeRoute, [
              NavigationItem(Strings.of(context).navItemIntro, Icons.face, const IntroRoute()),
              NavigationItem(Strings.of(context).navItemProjects, Icons.code, const ProjectsRoute()),
              NavigationItem(Strings.of(context).navItemExperience, Icons.assignment, const ExperiencesRoute()),
              NavigationItem(Strings.of(context).navItemBlog, Icons.chat_bubble_outline, const BlogRoute())
            ])
          ],
        ),
      ));
}

class NavigationItem {
  final String label;
  final IconData icon;
  final PageRouteInfo route;

  const NavigationItem(this.label, this.icon, this.route);
}

List<Widget> _menuItems(BuildContext context, String? activeRoute, List<NavigationItem> items) {
  return items
      .map((item) => ListTile(
            key: Key(item.label),
            title: Text(item.label),
            leading: Icon(item.icon),
            onTap: () => context.router.navigate(item.route),
            selected: item.route.routeName == activeRoute,
          ))
      .toList();
}
