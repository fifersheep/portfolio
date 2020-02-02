import 'package:flutter/material.dart';
import 'package:portfolio/widgets/page_scaffold.dart';

class IntroPage extends StatelessWidget {
  const IntroPage();

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: Text(
        "Introduction",
        style: Theme.of(context).primaryTextTheme.title,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Intro Content',
            ),
          ],
        ),
      ),
    );
  }
}
