import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/data/network/experiences/firestore_experience_parser.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';
import 'package:test/test.dart';

import '../utils/firestore_mocks.mocks.dart';

void main() {
  late FirestoreExperienceParser parser;

  setUp(() async {
    parser = FirestoreExperienceParser();
  });

  test('should parse an experience with all properties', () async {
    final startDate = DateTime.parse('2020-05-01');
    final endDate = DateTime.parse('2020-05-30');
    final document = MockQueryDocumentSnapshot();
    final data = {
      'title': 'Title',
      'location': 'Location',
      'content': 'Content',
      'start_date': Timestamp.fromDate(startDate),
      'end_date': Timestamp.fromDate(endDate),
      'category': 'work',
    };
    when(document.data()).thenReturn(data);

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

  test('should parse an experience with no start date', () async {
    final endDate = DateTime.parse('2020-05-30');
    final document = MockQueryDocumentSnapshot();
    final data = {
      'title': 'Title',
      'location': 'Location',
      'content': 'Content',
      'start_date': null,
      'end_date': Timestamp.fromDate(endDate),
      'category': 'work',
    };
    when(document.data()).thenReturn(data);

    final actual = parser.parse(document);

    expect(actual.startDate, equals(null));
  });

  test('should parse an experience with no end date', () async {
    final startDate = DateTime.parse('2020-05-01');
    final document = MockQueryDocumentSnapshot();
    final data = {
      'title': 'Title',
      'location': 'Location',
      'content': 'Content',
      'start_date': Timestamp.fromDate(startDate),
      'end_date': null,
      'category': 'work',
    };
    when(document.data()).thenReturn(data);

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
      final startDate = DateTime.parse('2020-05-01');
      final endDate = DateTime.parse('2020-05-30');
      final document = MockQueryDocumentSnapshot();
      final data = {
        'title': 'Title',
        'location': 'Location',
        'content': 'Content',
        'start_date': Timestamp.fromDate(startDate),
        'end_date': Timestamp.fromDate(endDate),
        'category': key,
      };
      when(document.data()).thenReturn(data);

      final actual = parser.parse(document);

      expect(actual.category, equals(category));
    });
  });
}
