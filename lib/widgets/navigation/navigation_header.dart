import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';

class NavigationHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => UserAccountsDrawerHeader(
        accountName: Text("Scott Laing"),
        accountEmail: Text("Sowftware Engineer"),
        currentAccountPicture: CircleAvatar(
          child: Icon(
            Icons.face,
            color: white,
          ),
          backgroundColor: primaryDark,
        ),
      );
}
