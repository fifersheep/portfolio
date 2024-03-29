import 'package:flutter/material.dart';

class PrimaryCallToAction extends StatelessWidget {
  const PrimaryCallToAction({super.key, required this.label, required this.route, required this.onPressed});

  final String label;
  final String route;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
