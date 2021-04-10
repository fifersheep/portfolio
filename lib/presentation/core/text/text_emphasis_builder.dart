import 'package:flutter/material.dart';

class TextEmphasisBuilder extends StatelessWidget {
  const TextEmphasisBuilder({
    required this.text,
    required this.textStyle,
    this.emphases = const [],
    required this.emphasisStyle,
    this.maxLines,
    required this.overflow,
  });

  final String text;
  final TextStyle textStyle;
  final List<String> emphases;
  final TextStyle emphasisStyle;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    final initial = [text];

    final textList = emphases.fold<List<String>>(initial, (strings, emphasis) {
      final last = strings.removeLast();
      final split = last.split(emphasis);
      return [...strings, split[0], emphasis, split[1]];
    });

    final spans = textList
        .map((text) => TextSpan(
              text: text,
              style: emphases.contains(text) ? emphasisStyle : textStyle,
            ))
        .toList();

    return Text.rich(
      TextSpan(children: spans),
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
