import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/colors.dart';

import 'package:portfolio/presentation/core/navigation/navigation_header_painter.dart';
import 'package:portfolio/presentation/core/navigation/navigation_identity.dart';
import 'package:portfolio/presentation/core/navigation/social_bar.dart';

class NavigationHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: CustomPaint(
          painter: NavigationHeaderPainter(ThemeColors.primary),
          child: Container(
            padding: const EdgeInsets.only(left: 24, top: 32, right: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavigationIdentity(),
                const SizedBox(height: 56),
                SocialBar(),
              ],
            ),
          ),
        ),
      );
}
