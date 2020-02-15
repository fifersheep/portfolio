import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.display2,
        ),
      );
}
