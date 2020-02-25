import 'package:flutter/material.dart';

import 'text_emphasis_builder.dart';

class Paragraph extends StatelessWidget {
  const Paragraph(this.text, {this.emphases = const []});

  final String text;
  final List<String> emphases;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 8.0),
        child: TextEmphasisBuilder(
          text: text,
          emphases: emphases,
          emphasisStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColorLight,
          ),
        ),
      );
}
