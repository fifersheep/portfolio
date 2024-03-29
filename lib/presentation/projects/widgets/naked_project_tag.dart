import 'package:flutter/material.dart';
import 'package:portfolio/domain/projects/project_state.dart';
import 'package:portfolio/presentation/core/presentation_extensions.dart';
import 'package:portfolio/presentation/projects/widgets/project_tag.dart';

class NakedProjectTag extends StatelessWidget {
  const NakedProjectTag({super.key, required this.tag});

  final ProjectTagState tag;

  @override
  Widget build(BuildContext context) => ProjectTag(label: tag.label, labelColor: tag.labelColor.toColor());
}
