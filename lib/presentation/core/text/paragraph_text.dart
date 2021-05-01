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
  Widget build(BuildContext context) => TextEmphasisBuilder(
        text: text,
        textStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
          height: 1.5,
          fontFamilyFallback: [
            'Noto Color Emoji',
          ],
        ),
        maxLines: maxLines,
        overflow: overflow,
        emphases: emphases,
        emphasisStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,
        ),
      );
}
