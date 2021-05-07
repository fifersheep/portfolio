import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/constants/images.dart';
import 'package:portfolio/presentation/constants/strings.dart';

class Identity extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
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
}
