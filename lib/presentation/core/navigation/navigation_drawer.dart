import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/routes/routes.dart';

import 'navigation_header.dart';
import 'navigation_route_observer.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key key, @required this.pinOpen}) : super(key: key);

  final bool pinOpen;

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> with RouteAware {
  String _activeRoute;
  NavigationRouteObserver _routeObserver;

  @override
  void initState() {
    super.initState();
    _routeObserver = NavigationRouteObserver();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  void dispose() {
    _routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    setState(() => _activeRoute = ModalRoute.of(context).settings.name);
  }

  @override
  void didPop() {
    setState(() => _activeRoute = ModalRoute.of(context).settings.name);
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
              NavigationItem(Strings.of(context).navItemIntro, Icons.face, NavigationRoute.intro),
              NavigationItem(Strings.of(context).navItemProjects, Icons.code, NavigationRoute.projects),
              NavigationItem(Strings.of(context).navItemExperience, Icons.assignment, NavigationRoute.experiences),
              NavigationItem(Strings.of(context).navItemBlog, Icons.chat_bubble_outline, NavigationRoute.blog)
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

List<Widget> _menuItems(BuildContext context, String activeRoute, List<NavigationItem> items) {
  return items
      .map((item) => ListTile(
            key: Key(item.label),
            title: Text(item.label),
            leading: Icon(item.icon),
            onTap: () => NavigationRoute.to(context, item.route),
            selected: item.route == activeRoute,
          ))
      .toList();
}
