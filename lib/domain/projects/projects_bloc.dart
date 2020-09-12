import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/domain/projects/entities/project.dart';

import 'project_state.dart';
import 'projects_repository.dart';

part 'projects_bloc.freezed.dart';

part 'projects_event.dart';

part 'projects_state.dart';

@lazySingleton
class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc(this._repository) : super(const ProjectsState.loading());

  final ProjectsRepository _repository;

  @override
  Stream<ProjectsState> mapEventToState(ProjectsEvent event) async* {
    final payload = await _repository.getProjects();
    yield payload.fold(
      (failure) => const ProjectsState.error(),
      (projects) => ProjectsState.loaded(projects.map(_fromProject).toList()),
    );
  }

  ProjectState _fromProject(Project project) {
    return ProjectState(
      title: project.title,
      summary: project.summary,
      detail: project.detail,
      coverImageUrl: project.coverImageUrl,
      tags: project.tags.map(_mapProjectTagStyle).toList(),
      callToActions: project.callToActions.map(_mapProjectCallToActions).toList(),
    );
  }

  ProjectTagsState _mapProjectTagStyle(ProjectTag tag) {
    final style = ProjectTagStyle.values.firstWhere(
      (tagStyle) => _matchEnum(tagStyle, tag.style),
      orElse: () => ProjectTagStyle.outline,
    );
    return ProjectTagsState(label: tag.label, color: tag.color, labelColor: tag.labelColor, style: style);
  }

  ProjectCallToActionState _mapProjectCallToActions(ProjectCallToAction callToAction) {
    final type = ProjectCallToActionType.values.firstWhere(
      (callToActionType) => _matchEnum(callToActionType, callToAction.type),
      orElse: () => ProjectCallToActionType.route,
    );
    final style = ProjectCallToActionStyle.values.firstWhere(
      (callToActionStyle) => _matchEnum(callToActionStyle, callToAction.style),
      orElse: () => ProjectCallToActionStyle.secondary,
    );
    return ProjectCallToActionState(type: type, style: style, action: callToAction.action);
  }

  bool _matchEnum<T>(T t, String value) => t.toString().split('.')[1] == value;
}
