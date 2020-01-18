import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';

class NavigationHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DrawerHeader(
        child: Text('Drawer Header'),
        decoration: BoxDecoration(
          color: primaryDark,
        ),
      );
}
