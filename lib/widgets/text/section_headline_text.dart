import 'package:flutter/material.dart';

class SectionHeadline extends StatelessWidget {
  const SectionHeadline(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(left: 24, right: 24, top: 36, bottom: 16),
    child: Text(
      text,
      style: Theme.of(context).textTheme.headline6,
    ),
  );
}