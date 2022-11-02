import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/images.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/core/page_scaffold.dart';
import 'package:portfolio/presentation/core/text/headline_text.dart';
import 'package:portfolio/presentation/core/text/paragraph_text.dart';
import 'package:portfolio/presentation/core/text/section_headline_text.dart';

class IntroPage extends StatelessWidget {
  const IntroPage();

  @override
  Widget build(BuildContext context) {
    final strings = Strings.of(context);
    final emphasesStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Theme.of(context).primaryColor,
    );

    return PageScaffold(
      title: strings.introTitle,
      headerBackground: Images.of(context).introHeaderBanner,
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Headline(strings.introHeader),
            Paragraph(
              strings.introOpening,
              emphases: const ['Scott Laing'],
              emphasesStyle: emphasesStyle,
            ),
            SectionHeadline(strings.introInterestsHeader),
            Paragraph(
              strings.introInterestsContent,
              emphases: const ['coffee', 'Fife, Scotland', 'Pittsburgh Steelers', 'Edinburgh Wolves', 'Hell Let Loose'],
              emphasesStyle: emphasesStyle,
            ),
            SectionHeadline(strings.introCareerHeader),
            Paragraph(
              strings.introCareerContent,
              emphases: const ['Android', 'reactive', 'declarative UI', 'Flutter'],
              emphasesStyle: emphasesStyle,
            ),
          ],
        ),
      ),
    );
  }
}
