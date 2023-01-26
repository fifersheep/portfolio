import 'package:flutter/material.dart';

import 'package:portfolio/presentation/core/text/text_emphasis_builder.dart';

class Paragraph extends StatelessWidget {
  const Paragraph(
    this.text, {
    this.emphases = const [],
    this.emphasesStyle,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final List<String> emphases;
  final TextStyle? emphasesStyle;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.bodyMedium;
    return TextEmphasisBuilder(
      text: text,
      textStyle: textTheme,
      maxLines: maxLines,
      overflow: overflow,
      emphases: emphases,
      emphasisStyle: textTheme?.merge(emphasesStyle),
    );
  }
}
