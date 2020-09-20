import 'package:flutter/material.dart';
import 'package:portfolio/domain/projects/project_state.dart';
import 'package:portfolio/presentation/projects/widgets/project_tag.dart';
import 'package:portfolio/presentation/core/presentation_extensions.dart';

class NakedProjectTag extends StatelessWidget {
  const NakedProjectTag({Key key, this.tag}) : super(key: key);

  final ProjectTagState tag;

  @override
  Widget build(BuildContext context) => ProjectTag(label: tag.label, labelColor: tag.labelColor.toColor());
}
