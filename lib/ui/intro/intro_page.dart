import 'package:flutter/material.dart';
import 'package:portfolio/constants/images.dart';
import 'package:portfolio/constants/strings.dart';
import 'package:portfolio/ui/common/page_scaffold.dart';
import 'package:portfolio/widgets/text/headline_text.dart';
import 'package:portfolio/widgets/text/paragraph_text.dart';
import 'package:portfolio/widgets/text/section_headline_text.dart';

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
          Headline(strings.introHeader),
          Paragraph(strings.introContent,
            emphases: ['Scott Laing'],),
          SectionHeadline(strings.introCareerHeader),
          Paragraph(
            strings.introCareerContent,
            emphases: ['Android', 'React', 'Flutter'],
          ),
          SectionHeadline(strings.introInterestsHeader),
          Paragraph(strings.introInterestsContent,
            emphases: ['American football', 'Pittsburgh Steelers', 'Edinburgh Wolves', 'Battlefield V'],),
        ],
      ),
    );
  }
}
