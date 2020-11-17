import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/colors.dart';

class SecondaryCallToAction extends StatelessWidget {
  const SecondaryCallToAction({Key key, @required this.label, @required this.route, @required this.onPressed})
      : super(key: key);

  final String label;
  final String route;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        side: const BorderSide(
          color: ThemeColors.blue,
        ),
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
