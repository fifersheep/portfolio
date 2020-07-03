import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/data/network/experiences/firestore_experience_parser.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';

import '../utils/firestore_mocks.dart';

void main() {
  FirestoreExperienceParser parser;

  setUp(() async {
    parser = FirestoreExperienceParser();
  });

  test('should parse an experience with all properties', () async {
    final startDate = DateTime.parse('2020-05-01');
    final endDate = DateTime.parse('2020-05-30');
    final document = MockDocumentSnapshot();
    when(document['title']).thenReturn('Title');
    when(document['location']).thenReturn('Location');
    when(document['content']).thenReturn('Content');
    when(document['start_date']).thenReturn(Timestamp.fromDate(startDate));
    when(document['end_date']).thenReturn(Timestamp.fromDate(endDate));
    when(document['category']).thenReturn('work');

    final actual = parser.parse(document);

    final expected = Experience(
      title: 'Title',
      location: "Location",
      content: 'Content',
      startDate: startDate,
      endDate: endDate,
      category: ExperienceCategory.work,
    );

    expect(actual, equals(expected));
  });

  test('should parse an experience with no end date', () async {
    final document = MockDocumentSnapshot();
    when(document['end_date']).thenReturn(null);

    final actual = parser.parse(document);

    expect(actual.endDate, equals(null));
  });

  final categories = {
    'asdfasdf': ExperienceCategory.unknown,
    'work': ExperienceCategory.work,
    'studies': ExperienceCategory.studies,
    'love': ExperienceCategory.love,
    'home': ExperienceCategory.home,
  };

  categories.forEach((key, category) {
    test('should parse an experience with $category', () async {
      final document = MockDocumentSnapshot();
      when(document['category']).thenReturn(key);

      final actual = parser.parse(document);

      expect(actual.category, equals(category));
    });
  });
}
