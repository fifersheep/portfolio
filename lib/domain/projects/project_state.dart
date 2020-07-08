import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_state.freezed.dart';

@freezed
abstract class ProjectState with _$ProjectState {
  const factory ProjectState({
    String title,
    String summary,
    String detail,
    List<ProjectTagsState> tags,
  }) = _ProjectState;
}

@freezed
abstract class ProjectTagsState with _$ProjectTagsState {
  const factory ProjectTagsState({
    String label,
    String color,
    ProjectTagStyle style,
  }) = _ProjectTagsState;
}

enum ProjectTagStyle { prominent, normal, subtle }
