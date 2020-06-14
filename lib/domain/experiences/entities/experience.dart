import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class Experience extends Equatable {
  const Experience({
    @required this.title,
    @required this.location,
    @required this.content,
    @required this.startDate,
    @required this.endDate,
    @required this.category,
  });

  final String title;
  final String location;
  final String content;
  final DateTime startDate;
  final DateTime endDate;
  final ExperienceCategory category;

  @override
  List<Object> get props => [title, location, content, startDate, endDate, category];

  @override
  bool get stringify => true;
}

enum ExperienceCategory { unknown, work, studies, home, love }
