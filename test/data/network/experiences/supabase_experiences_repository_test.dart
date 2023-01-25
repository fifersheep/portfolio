import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/data/network/supabase_api.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';
import 'package:portfolio/data/network/response.dart';
import 'package:portfolio/data/network/experiences/supabase_experiences_repository.dart';

import '../network_test.mocks.dart';

void main() {
  late Api api;
  late SupabaseExperiencesRepository repository;

  setUp(() {
    api = MockApi();
    repository = SupabaseExperiencesRepository(api);
  });

  test('experiences with no dates are successfully returned', () async {
    when(api.getExperiences()).thenAnswer((_) => Future.value([
          {
            'id': 123,
            'title': 'Title',
            'location': 'Location',
            'content': 'Content',
            'category': 'work',
          }
        ]));

    final actual = await repository.getExperiences();

    expect(
      actual,
      Response.success([
        Experience(
          id: 123,
          title: 'Title',
          location: 'Location',
          content: 'Content',
          startDate: null,
          endDate: null,
          category: ExperienceCategory.work,
        )
      ]),
    );
  });

  test('experiences with start dates are successfully returned', () async {
    final startDate = '2007-09-01';
    when(api.getExperiences()).thenAnswer((_) => Future.value([
          {
            'id': 123,
            'title': '',
            'location': '',
            'content': '',
            'category': 'work',
            'start_date': startDate,
          }
        ]));

    final actual = await repository.getExperiences();

    expect(
      actual,
      Response.success([
        Experience(
          id: 123,
          title: '',
          location: '',
          content: '',
          startDate: DateTime.parse(startDate),
          endDate: null,
          category: ExperienceCategory.work,
        )
      ]),
    );
  });
  test('experiences with end dates are successfully returned', () async {
    final endDate = '2007-09-01';
    when(api.getExperiences()).thenAnswer((_) => Future.value([
          {
            'id': 123,
            'title': '',
            'location': '',
            'content': '',
            'category': 'work',
            'end_date': endDate,
          }
        ]));

    final actual = await repository.getExperiences();

    expect(
      actual,
      Response.success([
        Experience(
          id: 123,
          title: '',
          location: '',
          content: '',
          startDate: null,
          endDate: DateTime.parse(endDate),
          category: ExperienceCategory.work,
        )
      ]),
    );
  });

  group('categories are parsed', () {
    final params = {
      'work': ExperienceCategory.work,
      'home': ExperienceCategory.home,
      'love': ExperienceCategory.love,
      'studies': ExperienceCategory.studies,
      // 'klfjadsklfj;': ExperienceCategory.unknown,
    };

    params.forEach((originalString, parsedCategory) {
      test(originalString, () async {
        when(api.getExperiences()).thenAnswer((_) => Future.value([
              {
                'id': 123,
                'title': '',
                'location': '',
                'content': '',
                'category': originalString,
              }
            ]));

        final actual = await repository.getExperiences();

        expect(
          actual,
          Response.success([
            Experience(
              id: 123,
              title: '',
              location: '',
              content: '',
              startDate: null,
              endDate: null,
              category: parsedCategory,
            )
          ]),
        );
      });
    });
  });

  test('a failure is returned when experience can\'t be parsed', () async {
    final endDate = '2007-09-01';
    when(api.getExperiences()).thenAnswer((_) => Future.value([
          {
            'nonsense': 'data',
          }
        ]));

    final actual = await repository.getExperiences();

    expect(
      actual,
      Response<List<Experience>>.failure('Failed to parse experience'),
    );
  });
}
