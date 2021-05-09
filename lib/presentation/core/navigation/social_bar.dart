import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: Row(
          children: const [
            SocialIcon(FontAwesomeIcons.gitlab, "https://gitlab.com/fifersheep"),
            SocialIcon(FontAwesomeIcons.twitter, "https://twitter.com/fifersheep"),
            SocialIcon(FontAwesomeIcons.linkedin, "https://linkedin.com/in/scott-laing-edi"),
          ],
        ),
      );
}

class SocialIcon extends StatelessWidget {
  const SocialIcon(this.iconData, this.url);

  final IconData iconData;
  final String url;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 16, right: 16),
        child: GestureDetector(
          onTap: () => launch(url),
          child: Icon(
            iconData,
            color: ThemeColors.primary[400],
          ),
        ),
      );
}
