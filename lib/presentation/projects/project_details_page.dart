import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({@required @PathParam() this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(id),
    );
  }
}
