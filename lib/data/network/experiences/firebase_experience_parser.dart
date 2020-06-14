import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';

import 'experience_parser.dart';

@LazySingleton(as: ExperienceParser)
class FirebaseExperienceParser extends ExperienceParser<DocumentSnapshot> {
  @override
  Experience parse(DocumentSnapshot source) {
    return Experience(
        title: source['title'] as String,
        content: source['content'] as String,
        location: source['location'] as String,
        startDate: (source['start_date'] as Timestamp)?.toDate(),
        endDate: (source['end_date'] as Timestamp)?.toDate(),
        category: ExperienceCategory.values
            .firstWhere((e) => _matchCategory(e, source), orElse: () => ExperienceCategory.unknown));
  }

  bool _matchCategory(ExperienceCategory e, DocumentSnapshot document) =>
      e.toString().split('.')[1] == document['category'];
}
