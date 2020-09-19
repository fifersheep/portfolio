import 'package:flutter/material.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({@required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(id),
    );
  }
}
