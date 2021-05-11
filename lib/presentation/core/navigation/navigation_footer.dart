import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/presentation/constants/colors.dart';

class NavigationFooter extends StatelessWidget {
  const NavigationFooter({required this.width});

  final double width;

  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          width: width,
          margin: const EdgeInsets.all(16),
          alignment: Alignment.bottomLeft,
          child: GestureDetector(
            onTap: () => showLicensePage(context: context),
            child: const Icon(
              FontAwesomeIcons.questionCircle,
              color: ThemeColors.black25,
            ),
          ),
        ),
      );
}
