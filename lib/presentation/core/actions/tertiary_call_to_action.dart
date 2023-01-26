import 'package:flutter/material.dart';

class TertiaryCallToAction extends StatelessWidget {
  const TertiaryCallToAction({super.key, required this.label, required this.route, required this.onPressed});

  final String label;
  final String route;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
