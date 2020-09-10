import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';

@freezed
abstract class Project with _$Project {
  const factory Project({
    String title,
    String summary,
    String detail,
    String coverImageUrl,
    List<ProjectTag> tags,
    List<ProjectCallToAction> callToActions,
  }) = _Project;
}

@freezed
abstract class ProjectTag with _$ProjectTag {
  const factory ProjectTag({
    String label,
    String color,
    String labelColor,
    String style,
  }) = _ProjectTag;
}

@freezed
abstract class ProjectCallToAction with _$ProjectCallToAction {
  const factory ProjectCallToAction({
    String type,
    String action,
    String style,
  }) = _ProjectCallToAction;
}
