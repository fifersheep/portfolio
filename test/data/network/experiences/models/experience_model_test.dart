import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/data/network/experiences/models/experience_model.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  test('should be a subclass of Experience', () async {
    expect(
        const ExperienceModel(
          title: 'Title',
          location: "Location",
          content: 'Content',
          timeframe: 'Timeframe',
          category: ExperienceCategory.work,
        ),
        isA<Experience>());
  });

  group('fromJson', () {
    test('should return a valid model from json', () async {
      final jsonMap = json.decode(fixture('experience.json')) as Map<String, dynamic>;
      const expected = ExperienceModel(
        title: 'Title',
        location: "Location",
        content: 'Content',
        timeframe: 'Timeframe',
        category: ExperienceCategory.work,
      );
      expect(ExperienceModel.fromJson(jsonMap), expected);
    });

    test('should return a valid model from json', () async {
      final jsonMap = json.decode(fixture('experience_unknown_icon.json')) as Map<String, dynamic>;
      const expected = ExperienceModel(
        title: 'Title',
        location: "Location",
        content: 'Content',
        timeframe: 'Timeframe',
        category: ExperienceCategory.work,
      );
      expect(ExperienceModel.fromJson(jsonMap), expected);
    });

    test('should return a valid model from json', () async {
      final jsonMap = json.decode(fixture('experience_unknown_category.json')) as Map<String, dynamic>;
      const expected = ExperienceModel(
        title: 'Title',
        location: "Location",
        content: 'Content',
        timeframe: 'Timeframe',
        category: ExperienceCategory.unknown,
      );
      expect(ExperienceModel.fromJson(jsonMap), expected);
    });
  });

  group('toJson', () {
    test('converts to a json map', () async {
      const model = ExperienceModel(
        title: 'Title',
        location: "Location",
        content: 'Content',
        timeframe: 'Timeframe',
        category: ExperienceCategory.work,
      );
      final expected = {
        'title': 'Title',
        'location': 'Location',
        'content': 'Content',
        'timeframe': 'Timeframe',
        'category': 'work'
      };
      expect(model.toJson(), expected);
    });
  });
}
