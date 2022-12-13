import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: SizedBox(
          height: 32,
          child: Row(
            children: const [
              SocialIcon(FontAwesomeIcons.gitlab, "https://gitlab.com/fifersheep"),
              SocialIcon(FontAwesomeIcons.twitter, "https://twitter.com/fifersheep"),
              SocialIcon(FontAwesomeIcons.linkedin, "https://linkedin.com/in/scott-laing-edi"),
            ],
          ),
        ),
      );
}

class SocialIcon extends StatefulWidget {
  const SocialIcon(this.iconData, this.url);

  final IconData iconData;
  final String url;

  @override
  _SocialIconState createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  final double _originalSize = 22;

  late double _size;

  @override
  void initState() {
    _size = _originalSize;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(right: 16),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (event) {
            setState(() {
              _size = 26;
            });
          },
          onExit: (event) {
            setState(() {
              _size = _originalSize;
            });
          },
          child: GestureDetector(
            onTap: () => launch(widget.url),
            child: TweenAnimationBuilder(
              duration: const Duration(milliseconds: 100),
              tween: Tween<double>(begin: _originalSize, end: _size),
              curve: Curves.easeInOut,
              builder: (_, double size, __) => Icon(
                widget.iconData,
                size: size,
                color: ThemeColors.primary[400],
              ),
            ),
          ),
        ),
      );
}
