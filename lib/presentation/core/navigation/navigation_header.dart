import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/constants/images.dart';
import 'package:portfolio/presentation/constants/strings.dart';

class NavigationHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.only(bottom: 16),
        color: Theme.of(context).primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(
                Images.of(context).avatar,
              ),
              radius: 64,
              backgroundColor: Theme.of(context).primaryColorDark,
            ),
            Container(
                margin: const EdgeInsets.only(top: 16),
                child: Text(Strings.of(context).navHeaderTitle,
                    style: Theme.of(context).primaryTextTheme.headline4.apply(color: ThemeColors.textOnPrimary))),
            Text(Strings.of(context).navHeaderSubtitle, style: Theme.of(context).primaryTextTheme.subtitle1),
          ],
        ),
      );
}
