import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience_state.freezed.dart';

@freezed
class ExperienceState with _$ExperienceState {
  const factory ExperienceState({
    required String title,
    required String location,
    required String content,
    required String timeframe,
    required ExperienceIcon icon,
    required ExperienceColor color,
  }) = _ExperienceState;
}

enum ExperienceIcon { code, book, home, heart, done }
enum ExperienceColor { red, orange, green, blue, purple }
