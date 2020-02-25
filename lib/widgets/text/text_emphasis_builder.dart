import 'package:flutter/material.dart';

class TextEmphasisBuilder extends StatelessWidget {
  const TextEmphasisBuilder({this.text, this.textStyle, this.emphases = const [], this.emphasisStyle});

  final String text;
  final TextStyle textStyle;
  final List<String> emphases;
  final TextStyle emphasisStyle;

  @override
  Widget build(BuildContext context) {
    List<String> initial = [text];

    List<String> textList = emphases.fold(initial, (strings, emphasis) {
      String last = strings.removeLast();
      List<String> split = last.split(emphasis);
      return [...strings, split[0], emphasis, split[1]];
    });

    List<TextSpan> spans = textList
        .map((text) => TextSpan(
              text: text,
              style: emphases.contains(text) ? emphasisStyle : textStyle,
            ))
        .toList();

    return Text.rich(
      TextSpan(children: spans),
    );
  }
}
