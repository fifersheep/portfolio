import 'package:flutter/material.dart';

class ProjectTag extends StatelessWidget {
  const ProjectTag({super.key, required this.label, required this.labelColor, this.decoration});

  final String label;
  final Color labelColor;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(right: 4),
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
        decoration: decoration,
        child: Text(
          label,
          style: TextStyle(
            color: labelColor,
            fontSize: 12,
          ),
        ),
      );
}
