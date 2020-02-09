import 'package:flutter/material.dart';
import 'package:portfolio/constants/strings.dart';
import 'package:portfolio/widgets/page_scaffold.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage();

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: Text(Strings.of(context).experienceTitle),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Experience Content',
            ),
          ],
        ),
      ),
    );
  }
}
