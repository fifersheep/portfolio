import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class NavigationHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(24),
        margin: EdgeInsets.only(bottom: 16),
        color: primary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/avatar.jpeg',
              ),
              radius: 48,
              backgroundColor: primaryDark,
            ),
            Container(
                margin: EdgeInsets.only(top: 16),
                child: Text("Scott Laing",
                    style: Theme.of(context).primaryTextTheme.display1)),
            Text("Sowftware Engineer",
                style: Theme.of(context).primaryTextTheme.subhead),
          ],
        ),
      );
}
