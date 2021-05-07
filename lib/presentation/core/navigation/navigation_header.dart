import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/constants/images.dart';
import 'package:portfolio/presentation/constants/strings.dart';

import 'navigation_header_painter.dart';

class NavigationHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: CustomPaint(
          painter: NavigationHeaderPainter(Theme.of(context).primaryColor),
          child: Container(
            padding: const EdgeInsets.only(left: 24, top: 32, right: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                nameAndFace(context),
                description(context),
                buttonBar,
              ],
            ),
          ),
        ),
      );
}

Widget nameAndFace(BuildContext context) => Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16),
          child: Text(
            Strings.of(context).navHeaderTitle,
            style: const TextStyle(
              fontSize: 32.0,
              height: 1.2,
              letterSpacing: 0.25,
              color: ThemeColors.textOnPrimary,
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                Images.of(context).avatar,
              )),
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColorDark,
              border: Border.all(
                width: 2,
                color: ThemeColors.textOnPrimary,
              ),
            ),
          ),
        ),
      ],
    );

Widget description(BuildContext context) => Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 28),
      child: Text(Strings.of(context).navHeaderSubtitle,
          style: Theme.of(context).primaryTextTheme.headline6?.apply(heightFactor: 0.5)),
    );

Widget buttonBar = Padding(
  padding: const EdgeInsets.only(left: 32.0),
  child: Row(
    children: [
      icon(),
      icon(),
      icon(),
    ],
  ),
);

Widget icon() => const Padding(
      padding: EdgeInsets.only(top: 8, right: 8),
      child: Icon(Icons.face),
    );
