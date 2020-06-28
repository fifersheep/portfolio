import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience_state.freezed.dart';

@freezed
abstract class ExperienceState with _$ExperienceState {
  const factory ExperienceState({
    String title,
    String location,
    String content,
    String timeframe,
    ExperienceIcon icon,
    ExperienceColor color,
  }) = _ExperienceState;
}

enum ExperienceIcon { code, book, home, heart, done }
enum ExperienceColor { red, orange, green, blue, purple }
