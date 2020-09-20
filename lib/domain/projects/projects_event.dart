part of 'projects_bloc.dart';

@freezed
abstract class ProjectsEvent with _$ProjectsEvent {
  const factory ProjectsEvent.loadProjects() = LoadProjects;
}
