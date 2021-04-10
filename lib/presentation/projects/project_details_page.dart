import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/core/page_scaffold.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({@PathParam() required this.id});

  final String id;

  @override
  Widget build(BuildContext context) => PageScaffold(
        title: Strings.of(context).projectDetailsTitle,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Strings.of(context).projectDetailsComingSoon),
              const SizedBox(height: 8),
              Text('Project ID: $id'),
            ],
          ),
        ),
      );
}
