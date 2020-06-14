import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/domain/core/error/failures.dart';
import 'package:portfolio/domain/core/formatter/date_formatter.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';
import 'package:portfolio/domain/experiences/experience_state.dart';
import 'package:portfolio/domain/experiences/experiences_bloc.dart';
import 'package:portfolio/domain/experiences/experiences_repository.dart';

class MockExperiencesRepository extends Mock implements ExperiencesRepository {}

class MockDateFormatter extends Mock implements DateFormatter {}

void main() {
  ExperiencesBloc bloc;
  ExperiencesRepository repository;
  DateFormatter dateFormatter;

  setUp(() {
    repository = MockExperiencesRepository();
    dateFormatter = MockDateFormatter();
    bloc = ExperiencesBloc(repository, dateFormatter);
  });

  test('initial state should be loading', () async {
    expect(bloc.initialState, const ExperiencesState.loading());
  });

  group('LoadExperiences', () {
    final experiences = [
      Experience(
        title: 'Exp Title',
        location: 'Exp Location',
        content: 'Exp Content',
        startDate: startDate,
        endDate: endDate,
        category: ExperienceCategory.work,
      ),
    ];

    final experienceStates = [
      const ExperienceState(
        title: 'Exp Title',
        location: 'Exp Location',
        content: 'Exp Content',
        timeframe: timeframe,
        icon: ExperienceIcon.code,
        color: ExperienceColor.green,
      )
    ];

    test('should get data from get experiences repository', () async {
      when(repository.getExperiences()).thenAnswer((_) async => Right(experiences));

      bloc.add(const ExperiencesEvent.loadExperiences());
      await untilCalled(repository.getExperiences());

      verify(repository.getExperiences());
    });

    test('should emit [Loading, Loaded] when data is retrieved successfully', () async {
      when(repository.getExperiences()).thenAnswer((_) async => Right(experiences));
      when(dateFormatter.monthYearRange(startDate, endDate)).thenAnswer((_) => timeframe);

      final expected = [
        bloc.initialState,
        ExperiencesState.loaded(experienceStates),
      ];
      expectLater(bloc, emitsInOrder(expected));

      bloc.add(const ExperiencesEvent.loadExperiences());
    });

    test('should map categories to colors and icons', () async {
      final experiences = [
        _experienceWithCategory(ExperienceCategory.unknown),
        _experienceWithCategory(ExperienceCategory.work),
        _experienceWithCategory(ExperienceCategory.studies),
        _experienceWithCategory(ExperienceCategory.home),
        _experienceWithCategory(ExperienceCategory.love),
      ];

      final experienceStates = [
        _experienceStateWithColorAndIcon(ExperienceColor.blue, ExperienceIcon.done),
        _experienceStateWithColorAndIcon(ExperienceColor.green, ExperienceIcon.code),
        _experienceStateWithColorAndIcon(ExperienceColor.red, ExperienceIcon.book),
        _experienceStateWithColorAndIcon(ExperienceColor.orange, ExperienceIcon.home),
        _experienceStateWithColorAndIcon(ExperienceColor.purple, ExperienceIcon.heart),
      ];

      when(repository.getExperiences()).thenAnswer((_) async => Right(experiences));
      when(dateFormatter.monthYearRange(startDate, endDate)).thenAnswer((_) => timeframe);
      when(dateFormatter.monthYear(startDate)).thenAnswer((_) => timeframe);

      final expected = [
        bloc.initialState,
        ExperiencesState.loaded(experienceStates),
      ];
      expectLater(bloc, emitsInOrder(expected));

      bloc.add(const ExperiencesEvent.loadExperiences());
    });

    final formatForCategory = [
      Pair(ExperienceCategory.unknown, 'Range'),
      Pair(ExperienceCategory.work, 'Range'),
      Pair(ExperienceCategory.studies, 'Range'),
      Pair(ExperienceCategory.love, 'Date'),
      Pair(ExperienceCategory.home, 'Date'),
    ];

    for (final params in formatForCategory) {
      test('should format date(s) with ${params.second} for ${params.first}', () async {
        final experiences = [
          Experience(
            title: 'Exp Title',
            location: 'Exp Location',
            content: 'Exp Content',
            startDate: startDate,
            endDate: endDate,
            category: params.first,
          ),
        ];

        when(repository.getExperiences()).thenAnswer((_) async => Right(experiences));
        when(dateFormatter.monthYearRange(startDate, endDate)).thenAnswer((_) => 'Range');
        when(dateFormatter.monthYear(startDate)).thenAnswer((_) => 'Date');

        bloc.listen((state) {
          if (state is ExperiencesLoaded) {
            expect(state.experiences.any((exp) => exp.timeframe == params.second), equals(true));
          }
        });

        bloc.add(const ExperiencesEvent.loadExperiences());
      });
    }

    test('should emit [Loading, Error] when data retrieval is unsuccessful', () async {
      when(repository.getExperiences()).thenAnswer((_) async => Left(DataRetrievalFailure()));

      final expected = [
        bloc.initialState,
        const ExperiencesState.error(),
      ];
      expectLater(bloc, emitsInOrder(expected));

      bloc.add(const ExperiencesEvent.loadExperiences());
    });
  });
}

final DateTime startDate = DateTime.parse('2007-09-01');
final DateTime endDate = DateTime.parse('2007-09-30');
const String timeframe = 'Exp Timeframe';

Experience _experienceWithCategory(ExperienceCategory category) => Experience(
      title: 'Exp Title',
      location: 'Exp Location',
      content: 'Exp Content',
      startDate: startDate,
      endDate: endDate,
      category: category,
    );

ExperienceState _experienceStateWithColorAndIcon(ExperienceColor color, ExperienceIcon icon) => ExperienceState(
      title: 'Exp Title',
      location: 'Exp Location',
      content: 'Exp Content',
      timeframe: timeframe,
      icon: icon,
      color: color,
    );

class Pair<F, S> {
  Pair(this.first, this.second);

  final F first;
  final S second;
}
