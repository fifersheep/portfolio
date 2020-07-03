import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';

@freezed
abstract class Project with _$Project {
  const factory Project({
    String title,
    String summary,
    String detail,
    List<ProjectTag> tags,
  }) = _Project;
}

@freezed
abstract class ProjectTag with _$ProjectTag {
  const factory ProjectTag({
    String label,
    String color,
    String style,
  }) = _ProjectTag;
}
