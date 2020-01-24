import 'package:flutter/material.dart';
import 'package:portfolio/widgets/page_scaffold.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage();

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: Text("Projects Title"),
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
