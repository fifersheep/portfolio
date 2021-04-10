import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';

@freezed
class Project with _$Project {
  factory Project({
    required String title,
    required String summary,
    required String detail,
    required String coverImageUrl,
    required List<ProjectTag> tags,
    required List<ProjectCallToAction> callToActions,
  }) = _Project;
}

@freezed
class ProjectTag with _$ProjectTag {
  factory ProjectTag({
    required String label,
    required String color,
    required String labelColor,
    required String style,
  }) = _ProjectTag;
}

@freezed
class ProjectCallToAction with _$ProjectCallToAction {
  factory ProjectCallToAction({
    required String type,
    required String action,
    required String style,
    required String label,
  }) = _ProjectCallToAction;
}
