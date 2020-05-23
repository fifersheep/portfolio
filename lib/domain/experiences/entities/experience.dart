import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class Experience extends Equatable {
  const Experience({
    @required this.title,
    @required this.location,
    @required this.content,
    @required this.timeframe,
    @required this.category,
  });

  final String title;
  final String location;
  final String content;
  final String timeframe;
  final ExperienceCategory category;

  @override
  List<Object> get props => [title, location, content, timeframe, category];
}

enum ExperienceCategory { unknown, work, studies, home, love }
