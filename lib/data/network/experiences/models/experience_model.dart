import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';

class ExperienceModel extends Experience {
  const ExperienceModel({
    @required String title,
    @required String location,
    @required String content,
    @required String timeframe,
    @required ExperienceCategory category,
  }) : super(
          title: title,
          location: location,
          content: content,
          timeframe: timeframe,
          category: category,
        );

  factory ExperienceModel.fromJson(Map<String, dynamic> json) {
    return ExperienceModel(
        title: json['title'] as String,
        location: json['location'] as String,
        content: json['content'] as String,
        timeframe: json['timeframe'] as String,
        category: ExperienceCategory.values
            .firstWhere((e) => describeEnum(e) == json['category'], orElse: () => ExperienceCategory.unknown));
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'location': location,
      'content': content,
      'timeframe': timeframe,
      'category': category.toString().split('.')[1]
    };
  }
}
