import 'package:flutter/material.dart';
import 'package:portfolio/constants/strings.dart';
import 'package:portfolio/ui/common/page_scaffold.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage();

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: Strings.of(context).projectsTitle,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Projects Content',
            ),
          ],
        ),
      ),
    );
  }
}
