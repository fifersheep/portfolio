import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience.freezed.dart';

@freezed
abstract class Experience with _$Experience {
  const factory Experience({
    String title,
    String location,
    String content,
    DateTime startDate,
    DateTime endDate,
    ExperienceCategory category,
  }) = _Experience;
}

enum ExperienceCategory { unknown, work, studies, home, love }
