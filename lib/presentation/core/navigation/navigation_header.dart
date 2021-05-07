import 'package:flutter/material.dart';

import 'identity.dart';
import 'navigation_header_painter.dart';
import 'social_bar.dart';

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
                Identity(),
                const SizedBox(height: 56),
                SocialBar(),
              ],
            ),
          ),
        ),
      );
}
