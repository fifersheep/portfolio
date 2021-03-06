import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  const Headline(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 36, bottom: 16),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline4,
        ),
      );
}
