import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/routes/routes.dart';

List<Widget> navigationMenuItems(BuildContext context) => _menuItems(context.router, [
      NavigationItem(Strings.of(context).navItemIntro, Icons.face, Routes.intro),
      NavigationItem(Strings.of(context).navItemProjects, Icons.code, Routes.projects),
      NavigationItem(Strings.of(context).navItemExperience, Icons.assignment, Routes.experiences),
      NavigationItem(Strings.of(context).navItemBlog, Icons.chat_bubble_outline, Routes.blog)
    ]);

class NavigationItem {
  final String label;
  final IconData icon;
  final String route;

  const NavigationItem(this.label, this.icon, this.route);
}

List<Widget> _menuItems(StackRouter router, List<NavigationItem> items) {
  return items
      .map((item) => ListTile(
            key: Key(item.label),
            title: Text(item.label),
            leading: Icon(item.icon),
            onTap: () => router.navigateNamed(item.route),
            selected: router.isPathActive(item.route),
          ))
      .toList();
}
