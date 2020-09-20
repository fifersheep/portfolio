import 'package:flutter/material.dart';
import 'package:portfolio/domain/projects/project_state.dart';
import 'package:portfolio/presentation/core/actions/primary_call_to_action.dart';
import 'package:portfolio/presentation/core/actions/secondary_call_to_action.dart';
import 'package:portfolio/presentation/core/actions/tertiary_call_to_action.dart';
import 'package:portfolio/presentation/projects/widgets/project_card_info.dart';
import 'package:url_launcher/url_launcher.dart';

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
            Column(
              children: [
                ProjectCardInfo(
                  title: project.title,
                  summary: project.summary,
                  tags: project.tags,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: (project.callToActions
                            ..sort((first, second) => second.style.index.compareTo(first.style.index)))
                          .map((callToAction) => _callToActionMapper(context, callToAction))
                          .toList()),
                ),
              ],
            )
          ],
        ),
      );

  Widget _callToActionMapper(BuildContext context, ProjectCallToActionState callToAction) {
    void onPressed() => callToAction.type == ProjectCallToActionType.route
        ? Navigator.pushNamed(context, callToAction.action)
        : launch(callToAction.action);

    final primaryCallToAction = PrimaryCallToAction(
      label: callToAction.label,
      route: callToAction.action,
      onPressed: onPressed,
    );

    final secondaryCallToAction = SecondaryCallToAction(
      label: callToAction.label,
      route: callToAction.action,
      onPressed: onPressed,
    );

    final tertiaryCallToAction = TertiaryCallToAction(
      label: callToAction.label,
      route: callToAction.action,
      onPressed: onPressed,
    );

    switch (callToAction.style) {
      case ProjectCallToActionStyle.primary:
        return primaryCallToAction;
      case ProjectCallToActionStyle.secondary:
        return secondaryCallToAction;
      case ProjectCallToActionStyle.tertiary:
        return tertiaryCallToAction;
      default:
        return secondaryCallToAction;
    }
  }
}