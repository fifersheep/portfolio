import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  const Headline(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: Theme.of(context).textTheme.headlineMedium,
      );
}
