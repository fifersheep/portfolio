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
            Container(
              width: 128,
              height: 128,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(
                  Images.of(context).avatar,
                )),
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColorDark,
                border: Border.all(
                  width: 2,
                  color: Theme.of(context).primaryTextTheme.headline6.color,
                ),
              ),
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
