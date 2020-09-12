import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_state.freezed.dart';

enum ProjectTagStyle { fill, outline, naked }
enum ProjectCallToActionType { route, link }
enum ProjectCallToActionStyle { primary, secondary, tertiary }

@freezed
abstract class ProjectState with _$ProjectState {
  const factory ProjectState({
    String title,
    String summary,
    String detail,
    String coverImageUrl,
    List<ProjectTagsState> tags,
    List<ProjectCallToActionState> callToActions,
  }) = _ProjectState;
}

@freezed
abstract class ProjectTagsState with _$ProjectTagsState {
  const factory ProjectTagsState({
    String label,
    String color,
    String labelColor,
    ProjectTagStyle style,
  }) = _ProjectTagsState;
}

@freezed
abstract class ProjectCallToActionState with _$ProjectCallToActionState {
  const factory ProjectCallToActionState({
    ProjectCallToActionType type,
    ProjectCallToActionStyle style,
    String action,
  }) = _ProjectCallToActionState;
}
