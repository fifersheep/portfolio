import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/colors.dart';

class TertiaryCallToAction extends StatelessWidget {
  const TertiaryCallToAction({Key key, @required this.label, @required this.route, @required this.onPressed})
      : super(key: key);

  final String label;
  final String route;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      child: FlatButton(
        onPressed: onPressed,
        textColor: ThemeColors.blue,
        child: Text(label),
      ),
    );
  }
}
