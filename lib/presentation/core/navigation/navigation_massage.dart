import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/core/text/paragraph_text.dart';

class NavigationMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final message = Strings.of(context).navMessage;
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 40, top: 16, bottom: 40),
      child: Paragraph(
        message,
        emphases: [message],
        emphasesStyle: const TextStyle(
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
