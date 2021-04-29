import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';

import 'experience_parser.dart';

@LazySingleton(as: ExperienceParser)
class FirestoreExperienceParser extends ExperienceParser<DocumentSnapshot> {
  @override
  Experience parse(DocumentSnapshot source) {
    final data = source.data();
    final startDate = data?['start_date'] as Timestamp?;
    final endDate = data?['end_date'] as Timestamp?;

    return Experience(
        title: data?['title'] as String,
        content: data?['content'] as String,
        location: data?['location'] as String,
        startDate: startDate?.toDate(),
        endDate: endDate?.toDate(),
        category: ExperienceCategory.values
            .firstWhere((e) => _matchCategory(e, source), orElse: () => ExperienceCategory.unknown));
  }

  bool _matchCategory(ExperienceCategory e, DocumentSnapshot document) =>
      e.toString().split('.')[1] == document.data()?['category'];
}
