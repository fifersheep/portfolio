import 'package:flutter/material.dart';
import 'package:portfolio/domain/projects/project_state.dart';
import 'package:portfolio/presentation/projects/widgets/filled_project_tag.dart';
import 'package:portfolio/presentation/projects/widgets/naked_project_tag.dart';
import 'package:portfolio/presentation/projects/widgets/outline_project_tag.dart';

class ProjectCardInfo extends StatelessWidget {
  const ProjectCardInfo({Key key, this.title, this.summary, this.tags}) : super(key: key);

  final String title;
  final String summary;
  final List<ProjectTagState> tags;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Text(
          summary,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }

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
