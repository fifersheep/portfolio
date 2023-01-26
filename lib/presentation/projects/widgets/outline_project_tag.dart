import 'package:flutter/material.dart';
import 'package:portfolio/domain/projects/project_state.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/core/presentation_extensions.dart';
import 'package:portfolio/presentation/projects/widgets/project_tag.dart';

class OutlineProjectTag extends StatelessWidget {
  const OutlineProjectTag({super.key, required this.tag});

  final ProjectTagState tag;

  @override
  Widget build(BuildContext context) => ProjectTag(
        label: tag.label,
        labelColor: tag.labelColor.toColor(),
        decoration: BoxDecoration(
          border: Border.all(
            color: tag.color?.toColor() ?? ThemeColors.primary,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(2)),
        ),
      );
}
