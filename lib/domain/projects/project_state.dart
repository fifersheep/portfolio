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
    List<ProjectTagState> tags,
    List<ProjectCallToActionState> callToActions,
  }) = _ProjectState;
}

@freezed
abstract class ProjectTagState with _$ProjectTagState {
  const factory ProjectTagState({
    String label,
    String color,
    String labelColor,
    ProjectTagStyle style,
  }) = _ProjectTagState;
}

@freezed
abstract class ProjectCallToActionState with _$ProjectCallToActionState {
  const factory ProjectCallToActionState({
    ProjectCallToActionType type,
    ProjectCallToActionStyle style,
    String action,
    String label,
  }) = _ProjectCallToActionState;
}
