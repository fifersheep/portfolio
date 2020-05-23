import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/core/page_scaffold.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage();

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: Strings.of(context).projectsTitle,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Projects Content',
            ),
          ],
        ),
      ),
    );
  }
}
