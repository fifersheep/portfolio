import 'package:flutter/material.dart';
import 'package:portfolio/domain/projects/project_state.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/core/presentation_extensions.dart';
import 'package:portfolio/presentation/projects/widgets/project_tag.dart';

class FilledProjectTag extends StatelessWidget {
  const FilledProjectTag({Key? key, required this.tag}) : super(key: key);

  final ProjectTagState tag;

  @override
  Widget build(BuildContext context) {
    final color = tag.color?.toColor() ?? ThemeColors.primary;
    return ProjectTag(
      label: tag.label,
      labelColor: tag.labelColor.toColor(),
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(2)),
      ),
    );
  }
}
