import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience.freezed.dart';
part 'experience.g.dart';

@freezed
class Experience with _$Experience {
  factory Experience({
    required int id,
    required String title,
    required String location,
    required String content,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'start_date') required DateTime? startDate,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'end_date') required DateTime? endDate,
    required ExperienceCategory category,
  }) = _Experience;

  factory Experience.fromJson(dynamic json) => _$ExperienceFromJson(json as Map<String, dynamic>);
}

enum ExperienceCategory { unknown, work, studies, home, love }
