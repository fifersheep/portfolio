part of 'projects_bloc.dart';

@freezed
class ProjectsState with _$ProjectsState {
  const factory ProjectsState.loading() = ProjectsLoading;
  const factory ProjectsState.loaded(List<ProjectState> projects) = ProjectsLoaded;
  const factory ProjectsState.error(String message) = ProjectsError;
}
