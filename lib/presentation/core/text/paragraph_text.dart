import 'package:flutter/material.dart';

import 'text_emphasis_builder.dart';

class Paragraph extends StatelessWidget {
  const Paragraph(
    this.text, {
    this.emphases = const [],
    this.maxLines,
    this.overflow,
  });

  final String text;
  final List<String> emphases;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.bodyText2;
    return TextEmphasisBuilder(
      text: text,
      textStyle: textTheme,
      maxLines: maxLines,
      overflow: overflow,
      emphases: emphases,
      emphasisStyle: textTheme?.copyWith(
        fontWeight: FontWeight.bold,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
