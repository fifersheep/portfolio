import 'package:flutter/material.dart';
import 'package:portfolio/domain/projects/project_state.dart';
import 'package:portfolio/presentation/projects/widgets/project_tag.dart';
import 'package:portfolio/presentation/core/presentation_extensions.dart';

class FilledProjectTag extends StatelessWidget {
  const FilledProjectTag({Key key, this.tag}) : super(key: key);

  final ProjectTagsState tag;

  @override
  Widget build(BuildContext context) => ProjectTag(
      label: tag.label,
      labelColor: tag.labelColor.toColor(),
      decoration: BoxDecoration(
        border: Border.all(
          color: tag.color.toColor(),
        ),
        color: tag.color.toColor(),
        borderRadius: const BorderRadius.all(Radius.circular(2)),
      ));
}
