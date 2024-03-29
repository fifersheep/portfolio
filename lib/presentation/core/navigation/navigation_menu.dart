import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/routes/routes.dart';

List<Widget> navigationMenuItems(BuildContext context) => _menuItems(context, [
      NavigationItem(Strings.of(context).navItemIntro, FontAwesomeIcons.idCard, Routes.intro),
      NavigationItem(Strings.of(context).navItemProjects, FontAwesomeIcons.terminal, Routes.projects),
      NavigationItem(Strings.of(context).navItemExperience, FontAwesomeIcons.earthEurope, Routes.experiences),
      // NavigationItem(Strings.of(context).navItemBlog, FontAwesomeIcons.featherAlt, Routes.blog)
    ]);

class NavigationItem {
  final String label;
  final IconData icon;
  final String route;

  const NavigationItem(this.label, this.icon, this.route);
}

List<Widget> _menuItems(BuildContext context, List<NavigationItem> items) {
  const borderRadius = BorderRadius.all(
    Radius.circular(32),
  );

  return items.map((item) {
    final isSelected = GoRouter.of(context).location.startsWith(item.route);
    final backgroundColor = isSelected ? ThemeColors.primary : Colors.transparent;
    final hoverColor = isSelected ? Colors.transparent : ThemeColors.primary[50];
    final labelColor = isSelected ? ThemeColors.textOnPrimary : ThemeColors.textOnWhite;
    final iconColor = isSelected ? ThemeColors.textOnPrimary : ThemeColors.primary[400];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: InkWell(
        hoverColor: hoverColor,
        focusColor: ThemeColors.primary[50],
        highlightColor: Colors.transparent,
        splashColor: ThemeColors.primary[100],
        borderRadius: borderRadius,
        onTap: () => context.go(item.route),
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Icon(
                  item.icon,
                  size: 20,
                  color: iconColor,
                ),
              ),
              Text(
                item.label,
                style: TextStyle(
                  fontSize: 16,
                  height: 1,
                  color: labelColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }).toList();
}
