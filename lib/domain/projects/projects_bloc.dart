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
  ProjectsBloc(this._repository);

  final ProjectsRepository _repository;

  @override
  ProjectsState get initialState => const ProjectsState.loading();

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
      tags: project.tags.map(_mapProjectTagStyle).toList(),
    );
  }

  ProjectTagsState _mapProjectTagStyle(ProjectTag tag) {
    final style = ProjectTagStyle.values
        .firstWhere((tagStyle) => _matchTagStyle(tagStyle, tag.style), orElse: () => ProjectTagStyle.outline);
    return ProjectTagsState(label: tag.label, color: tag.color, labelColor: tag.labelColor, style: style);
  }

  bool _matchTagStyle(ProjectTagStyle t, String style) => t.toString().split('.')[1] == style;
}
