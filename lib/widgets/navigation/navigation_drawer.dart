import 'package:flutter/material.dart';
import 'navigation_routes.dart';
import 'navigation_header.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            NavigationHeader(),
            ..._menuItems(context, [
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

List<Widget> _menuItems(BuildContext context, List<NavigationItem> items) {
  return items
      .map((item) => ListTile(
            title: Text(item.label),
            leading: Icon(item.icon),
            onTap: () {
              Navigator.pushNamed(context, item.route);
            },
          ))
      .toList();
}
