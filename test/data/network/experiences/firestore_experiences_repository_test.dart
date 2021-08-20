import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/data/network/experiences/firestore_experience_parser.dart';
import 'package:portfolio/data/network/experiences/firestore_experiences_repository.dart';
import 'package:portfolio/domain/core/error/failures.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';
import 'package:test/test.dart';

import '../utils/firestore_mocks.dart';
import '../utils/firestore_mocks.mocks.dart';
import 'firestore_experiences_repository_test.mocks.dart';

@GenerateMocks([FirestoreExperienceParser])
void main() {
  late FirestoreExperiencesRepository repository;
  late FirebaseFirestore firestore;
  late FirestoreExperienceParser parser;
  late MockCollectionReference<Map<String, dynamic>> reference;
  late MockQuery<Map<String, dynamic>> query;
  late MockQuerySnapshot<Map<String, dynamic>> querySnapshot;

  setUp(() async {
    firestore = MockFirebaseFirestore();
    parser = MockFirestoreExperienceParser();
    repository = FirestoreExperiencesRepository(firestore, parser);

    reference = MockCollectionReference<Map<String, dynamic>>();
    query = MockQuery();
    querySnapshot = MockQuerySnapshot();

    when(firestore.collection('experiences')).thenReturn(reference);
    when(reference.orderBy('start_date', descending: true)).thenReturn(query);
    when(query.get()).thenAnswer((_) async => querySnapshot);
  });

  test('should return an empty list of experiences when firestore returns none',
      () async {
    when(querySnapshot.docs).thenReturn([]);

    final actual = await repository.getExperiences();

    actual.fold(
      (l) => null,
      (r) => expect(r, equals([])),
    );
  });

  test('should return a list of experiences when firestore returns values',
      () async {
    final experience = Experience(
      title: 'Title',
      location: 'Location',
      content: 'Content',
      startDate: DateTime.parse('2007-09-30'),
      endDate: DateTime.parse('2010-05-29'),
      category: ExperienceCategory.work,
    );

    final queryDocumentSnapshot = StubbedQueryDocumentSnapshot();
    when(querySnapshot.docs).thenReturn([queryDocumentSnapshot]);
    when(parser.parse(queryDocumentSnapshot)).thenReturn(experience);

    final actual = await repository.getExperiences();

    expect(actual | [], equals([experience]));
  });

  test('should return an error when firestore throws an exception', () async {
    when(query.get()).thenAnswer((_) async => throw FormatException());

    final actual = await repository.getExperiences();

    expect(actual, equals(const Left(Failure.dataRetrievalFailure())));
  });
}
