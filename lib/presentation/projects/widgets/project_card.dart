import 'package:flutter/material.dart';
import 'package:portfolio/domain/projects/project_state.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/core/loading.dart';
import 'package:portfolio/presentation/projects/widgets/project_card_info.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({this.project});

  final ProjectState project;

  @override
  Widget build(BuildContext context) => Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Image.network(
                project.coverImageUrl,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(color: ThemeColors.white),
              child: ProjectCardInfo(
                title: project.title,
                summary: project.summary,
                tags: project.tags,
              ),
            )
          ],
        ),
      );
}
