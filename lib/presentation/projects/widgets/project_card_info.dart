import 'package:flutter/material.dart';
import 'package:portfolio/domain/projects/project_state.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/core/text/paragraph_text.dart';
import 'package:portfolio/presentation/projects/widgets/filled_project_tag.dart';
import 'package:portfolio/presentation/projects/widgets/naked_project_tag.dart';
import 'package:portfolio/presentation/projects/widgets/outline_project_tag.dart';

class ProjectCardInfo extends StatelessWidget {
  const ProjectCardInfo({super.key, required this.title, required this.summary, required this.tags});

  final String title;
  final String summary;
  final List<ProjectTagState> tags;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
        decoration: const BoxDecoration(color: ThemeColors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 21),
            ),
            const SizedBox(height: 8),
            Row(
              children: tags.map(_tagMapper).toList(),
            ),
            const SizedBox(height: 8),
            Paragraph(
              summary,
              maxLines: 3,
            )
          ],
        ),
      );

  Widget _tagMapper(ProjectTagState tag) {
    switch (tag.style) {
      case ProjectTagStyle.fill:
        return FilledProjectTag(tag: tag);
      case ProjectTagStyle.outline:
        return OutlineProjectTag(tag: tag);
      case ProjectTagStyle.naked:
        return NakedProjectTag(tag: tag);
      default:
        return OutlineProjectTag(tag: tag);
    }
  }
}
