import 'package:flutter/material.dart';
import 'package:portfolio/constants/images.dart';
import 'package:portfolio/constants/strings.dart';
import 'package:portfolio/ui/common/page_scaffold.dart';
import 'package:portfolio/widgets/text/heading_text.dart';
import 'package:portfolio/widgets/text/paragraph_text.dart';

class IntroPage extends StatelessWidget {
  const IntroPage();

  @override
  Widget build(BuildContext context) {
    var strings = Strings.of(context);

    return PageScaffold(
      title: strings.introTitle,
      headerBackground: Images.of(context).introHeaderBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Heading(strings.introHeader),
          Paragraph(strings.introContent),
        ],
      ),
    );
  }
}
