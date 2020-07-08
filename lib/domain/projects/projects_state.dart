part of 'projects_bloc.dart';

@freezed
abstract class ProjectsState with _$ProjectsState {
  const factory ProjectsState.loading() = ProjectsLoading;
  const factory ProjectsState.loaded(List<ProjectState> projects) = ProjectsLoaded;
  const factory ProjectsState.error() = ProjectsError;
}
