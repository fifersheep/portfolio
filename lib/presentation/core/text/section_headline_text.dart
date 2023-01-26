import 'package:flutter/material.dart';

class SectionHeadline extends StatelessWidget {
  const SectionHeadline(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: Theme.of(context).textTheme.titleLarge,
      );
}
