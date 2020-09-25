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

    return PageScaffold(
      title: strings.introTitle,
      headerBackground: Images.of(context).introHeaderBanner,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Headline(strings.introHeader),
          Paragraph(
            strings.introContent,
            emphases: const ['Scott Laing'],
          ),
          SectionHeadline(strings.introCareerHeader),
          Paragraph(
            strings.introCareerContent,
            emphases: const ['Android', 'React', 'Flutter'],
          ),
          SectionHeadline(strings.introInterestsHeader),
          Paragraph(
            strings.introInterestsContent,
            emphases: const ['American football', 'Pittsburgh Steelers', 'Edinburgh Wolves', 'Battlefield V'],
          ),
        ],
      ),
    );
  }
}
