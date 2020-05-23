import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ExperienceState extends Equatable {
  const ExperienceState({
    @required this.title,
    @required this.location,
    @required this.content,
    @required this.timeframe,
    @required this.icon,
    @required this.color,
  });

  final String title;
  final String location;
  final String content;
  final String timeframe;
  final ExperienceIcon icon;
  final ExperienceColor color;

  @override
  List<Object> get props => [title, location, content, timeframe, icon, color];
}

enum ExperienceIcon { code, book, home, heart, done }
enum ExperienceColor { red, orange, green, blue, purple }
