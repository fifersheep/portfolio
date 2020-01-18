import 'package:flutter/material.dart';
import 'navigation_route_observer.dart';
import 'navigation_routes.dart';
import 'navigation_header.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key key}) : super(key: key);

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
  Widget build(BuildContext context) => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            NavigationHeader(),
            ..._menuItems(context, _activeRoute, [
              const NavigationItem("Intro", Icons.face, NavigationRoute.intro),
              const NavigationItem(
                  "Projects", Icons.code, NavigationRoute.projects),
              const NavigationItem(
                  "Experience", Icons.assignment, NavigationRoute.experience),
              const NavigationItem(
                  "Blog", Icons.chat_bubble_outline, NavigationRoute.blog)
            ])
          ],
        ),
      );
}

class NavigationItem {
  final String label;
  final IconData icon;
  final String route;

  const NavigationItem(this.label, this.icon, this.route);
}

List<Widget> _menuItems(
    BuildContext context, String activeRoute, List<NavigationItem> items) {
  return items
      .map((item) => ListTile(
            title: Text(item.label),
            leading: Icon(item.icon),
            onTap: () {
              Navigator.pushNamed(context, item.route);
            },
            selected: item.route == activeRoute,
          ))
      .toList();
}
