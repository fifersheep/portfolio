import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  factory Project({
    required int id,
    required String title,
    required String summary,
    required String detail,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'cover_img_url') required String coverImageUrl,
    required List<ProjectTag> tags,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'call_to_actions') required List<ProjectCallToAction> callToActions,
  }) = _Project;

  factory Project.fromJson(dynamic json) => _$ProjectFromJson(json as Map<String, dynamic>);
}

@freezed
class ProjectTag with _$ProjectTag {
  factory ProjectTag({
    required int id,
    required String label,
    String? color,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'label_color') required String labelColor,
    required String style,
  }) = _ProjectTag;

  factory ProjectTag.fromJson(dynamic json) => _$ProjectTagFromJson(json as Map<String, dynamic>);
}

@freezed
class ProjectCallToAction with _$ProjectCallToAction {
  factory ProjectCallToAction({
    required int id,
    required String type,
    required String action,
    required String style,
    required String label,
  }) = _ProjectCallToAction;

  factory ProjectCallToAction.fromJson(dynamic json) => _$ProjectCallToActionFromJson(json as Map<String, dynamic>);
}
