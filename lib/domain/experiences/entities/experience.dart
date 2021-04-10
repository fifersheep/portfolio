import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience.freezed.dart';

@freezed
class Experience with _$Experience {
  factory Experience({
    required String title,
    required String location,
    required String content,
    required DateTime startDate,
    required DateTime endDate,
    required ExperienceCategory category,
  }) = _Experience;
}

enum ExperienceCategory { unknown, work, studies, home, love }
