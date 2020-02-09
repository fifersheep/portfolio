import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  const Paragraph(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 8.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.body1,
        ),
      );
}
