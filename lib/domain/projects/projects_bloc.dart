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
  ProjectsBloc(this._repository) : super(const ProjectsState.loading()) {
    on<LoadProjects>(_onLoadProjects);
  }

  final ProjectsRepository _repository;

  Future<void> _onLoadProjects(ProjectsEvent event, Emitter<ProjectsState> emit) async {
    final payload = await _repository.getProjects();
    final result = payload.fold(
      (failure) => const ProjectsState.error(),
      (projects) => ProjectsState.loaded(projects.map(_fromProject).toList()),
    );
    emit(result);
  }

  ProjectState _fromProject(Project project) => ProjectState(
        title: project.title,
        summary: project.summary,
        detail: project.detail,
        coverImageUrl: project.coverImageUrl,
        tags: project.tags.map(_mapProjectTagStyle).toList(),
        callToActions: project.callToActions.map(_mapProjectCallToActions).toList(),
      );

  ProjectTagState _mapProjectTagStyle(ProjectTag tag) => ProjectTagState(
        label: tag.label,
        color: tag.color,
        labelColor: tag.labelColor,
        style: ProjectTagStyle.values.firstWhere(
          (tagStyle) => _matchEnum(tagStyle, tag.style),
          orElse: () => ProjectTagStyle.outline,
        ),
      );

  ProjectCallToActionState _mapProjectCallToActions(ProjectCallToAction callToAction) => ProjectCallToActionState(
        type: ProjectCallToActionType.values.firstWhere(
          (callToActionType) => _matchEnum(callToActionType, callToAction.type),
          orElse: () => ProjectCallToActionType.route,
        ),
        style: ProjectCallToActionStyle.values.firstWhere(
          (callToActionStyle) => _matchEnum(callToActionStyle, callToAction.style),
          orElse: () => ProjectCallToActionStyle.secondary,
        ),
        action: callToAction.action,
        label: callToAction.label,
      );

  bool _matchEnum<T>(T t, String value) => t.toString().split('.')[1] == value;
}
