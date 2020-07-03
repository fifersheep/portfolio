import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/data/network/experiences/firestore_experience_parser.dart';
import 'package:portfolio/data/network/experiences/firestore_experiences_repository.dart';
import 'package:portfolio/domain/core/error/failures.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';

void main() {
  FirestoreExperiencesRepository repository;
  Firestore firestore;
  FirestoreExperienceParser parser;

  setUp(() async {
    firestore = MockFirestoreInstance();
    parser = FirestoreExperienceParser(); // todo: find a way to run these tests while stubbing the parser
    repository = FirestoreExperiencesRepository(firestore, parser);
  });

  test('should return an empty list of expeiences when firestore returns none', () async {
    final actual = await repository.getExperiences();
    expect(actual.getOrElse(() => null), equals([]));
  });

  test('should return a list of experiences when firestore returns values', () async {
    final experience = Experience(
      title: 'Title',
      location: 'Location',
      content: 'Content',
      startDate: DateTime.parse('2007-09-30'),
      endDate: DateTime.parse('2010-05-29'),
      category: ExperienceCategory.work,
    );

    final data = {
      'title': 'Title',
      'location': 'Location',
      'content': 'Content',
      'start_date': DateTime.parse('2007-09-30'),
      'end_date': DateTime.parse('2010-05-29'),
      'category': 'work',
    };

    await firestore.collection('experiences').add(data);

    final actual = await repository.getExperiences();

    expect(
        actual | null,
        equals([
          experience,
        ]));
  });

  test('should return a list of experiences ordered by descending start date', () async {
    final earliestExperience = Experience(
        title: 'Earliest Experience',
        location: 'Location',
        content: 'Content',
        startDate: DateTime.parse('2007-09-30'),
        endDate: DateTime.parse('2010-05-29'),
        category: ExperienceCategory.studies);

    final latestExperience = Experience(
        title: 'Latest Experience',
        location: 'Location',
        content: 'Content',
        startDate: DateTime.parse('2010-10-01'),
        endDate: DateTime.parse('2010-12-31'),
        category: ExperienceCategory.work);

    final earliestData = {
      'title': 'Earliest Experience',
      'location': 'Location',
      'content': 'Content',
      'start_date': DateTime.parse('2007-09-30'),
      'end_date': DateTime.parse('2010-05-29'),
      'category': 'studies',
    };

    final latestData = {
      'title': 'Latest Experience',
      'location': 'Location',
      'content': 'Content',
      'start_date': DateTime.parse('2010-10-01'),
      'end_date': DateTime.parse('2010-12-31'),
      'category': 'work',
    };

    await firestore.collection('experiences').add(earliestData);
    await firestore.collection('experiences').add(latestData);

    final actual = await repository.getExperiences();

    expect(
        actual | null,
        equals([
          latestExperience,
          earliestExperience,
        ]));
  });

  test('should return an error when firestore experiences are malformed', () async {
    await firestore.collection('experiences').add({});
    await firestore.collection('experiences').add({});

    final actual = await repository.getExperiences();

    expect(actual, equals(const Left(Failure.dataRetrievalFailure())));
  });
}
