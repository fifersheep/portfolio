import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/routes/routes.dart';

import '../../../injection.dart';
import 'navigation_header.dart';
import 'navigation_route_observer.dart';

class NavigationDrawer extends StatefulWidget with RouteAware {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> with RouteAware {
  final NavigationRouteObserver _routeObserver = getIt<NavigationRouteObserver>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = ModalRoute.of(context);
    if (route != null) {
      _routeObserver.subscribe(this, route);
    }
  }

  @override
  void dispose() {
    _routeObserver.unsubscribe(this);
    super.dispose();
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
            ..._menuItems(context, [
              NavigationItem(Strings.of(context).navItemIntro, Icons.face, Routes.intro),
              NavigationItem(Strings.of(context).navItemProjects, Icons.code, Routes.projects),
              NavigationItem(Strings.of(context).navItemExperience, Icons.assignment, Routes.experiences),
              NavigationItem(Strings.of(context).navItemBlog, Icons.chat_bubble_outline, Routes.blog)
            ])
          ],
        ),
      ));
}

class NavigationItem {
  final String label;
  final IconData icon;
  final String route;

  const NavigationItem(this.label, this.icon, this.route);
}

List<Widget> _menuItems(BuildContext context, List<NavigationItem> items) {
  return items
      .map((item) => ListTile(
            key: Key(item.label),
            title: Text(item.label),
            leading: Icon(item.icon),
            onTap: () => context.router.navigateNamed(item.route),
            selected: context.router.isPathActive(item.route),
          ))
      .toList();
}
