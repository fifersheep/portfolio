import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_state.freezed.dart';

enum ProjectTagStyle { fill, outline, naked }
enum ProjectCallToActionType { route, link }
enum ProjectCallToActionStyle { primary, secondary, tertiary }

@freezed
class ProjectState with _$ProjectState {
  factory ProjectState({
    required String title,
    required String summary,
    required String detail,
    required String coverImageUrl,
    required List<ProjectTagState> tags,
    required List<ProjectCallToActionState> callToActions,
  }) = _ProjectState;
}

@freezed
class ProjectTagState with _$ProjectTagState {
  factory ProjectTagState({
    required String label,
    String? color,
    required String labelColor,
    required ProjectTagStyle style,
  }) = _ProjectTagState;
}

@freezed
class ProjectCallToActionState with _$ProjectCallToActionState {
  factory ProjectCallToActionState({
    required ProjectCallToActionType type,
    required ProjectCallToActionStyle style,
    required String action,
    required String label,
  }) = _ProjectCallToActionState;
}
