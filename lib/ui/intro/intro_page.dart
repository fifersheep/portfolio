import 'package:flutter/material.dart';
import 'package:portfolio/constants/strings.dart';
import 'package:portfolio/widgets/heading_text.dart';
import 'package:portfolio/widgets/page_scaffold.dart';
import 'package:portfolio/widgets/paragraph_text.dart';

class IntroPage extends StatelessWidget {
  const IntroPage();

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: Text(
        Strings.of(context).introTitle,
        style: Theme.of(context).primaryTextTheme.title,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Heading(Strings.of(context).introHeader),
          Paragraph(Strings.of(context).introContent),
        ],
      ),
    );
  }
}
