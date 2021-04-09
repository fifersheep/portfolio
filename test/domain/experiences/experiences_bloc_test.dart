import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/domain/core/error/failures.dart';
import 'package:portfolio/domain/core/formatter/date_formatter.dart';
import 'package:portfolio/domain/core/formatter/new_line_formatter.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';
import 'package:portfolio/domain/experiences/experience_state.dart';
import 'package:portfolio/domain/experiences/experiences_bloc.dart';
import 'package:portfolio/domain/experiences/experiences_repository.dart';

class MockExperiencesRepository extends Mock implements ExperiencesRepository {}

class MockDateFormatter extends Mock implements DateFormatter {}

class MockNewLineFormatter extends Mock implements NewLineFormatter {}

void main() {
  ExperiencesBloc bloc;
  ExperiencesRepository repository;
  DateFormatter dateFormatter;
  NewLineFormatter newLineFormatter;

  setUp(() {
    repository = MockExperiencesRepository();
    dateFormatter = MockDateFormatter();
    newLineFormatter = MockNewLineFormatter();
    bloc = ExperiencesBloc(repository, dateFormatter, newLineFormatter);

    when(dateFormatter.monthYearRange(startDate, endDate)).thenAnswer((_) => timeframe);
    when(dateFormatter.monthYear(startDate)).thenAnswer((_) => timeframe);
    when(newLineFormatter.format('Exp Content')).thenAnswer((_) => 'Exp Content');
  });

  blocTest(
    'initial state should be loading',
    build: () => bloc,
    verify: (_) async => bloc.state == const ExperiencesState.loading(),
  );

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

    blocTest(
      'should get data from get experiences repository',
      build: () {
        when(repository.getExperiences()).thenAnswer((_) async => Right(experiences));
        return bloc;
      },
      act: (bloc) async => bloc.add(const ExperiencesEvent.loadExperiences()),
      verify: (_) async => verify(repository.getExperiences()),
    );

    blocTest(
      'should emit [Loading, Loaded] when data is retrieved successfully',
      build: () {
        when(repository.getExperiences()).thenAnswer((_) async => Right(experiences));
        return bloc;
      },
      act: (bloc) async => bloc.add(const ExperiencesEvent.loadExperiences()),
      expect: () => [
        ExperiencesState.loaded(experienceStates),
      ],
    );

    final experiencesWithCategory = [
      _experienceWithCategory(ExperienceCategory.unknown),
      _experienceWithCategory(ExperienceCategory.work),
      _experienceWithCategory(ExperienceCategory.studies),
      _experienceWithCategory(ExperienceCategory.home),
      _experienceWithCategory(ExperienceCategory.love),
    ];

    final experienceStatesWithColorAndIcon = [
      _experienceStateWithColorAndIcon(ExperienceColor.blue, ExperienceIcon.done),
      _experienceStateWithColorAndIcon(ExperienceColor.green, ExperienceIcon.code),
      _experienceStateWithColorAndIcon(ExperienceColor.red, ExperienceIcon.book),
      _experienceStateWithColorAndIcon(ExperienceColor.orange, ExperienceIcon.home),
      _experienceStateWithColorAndIcon(ExperienceColor.purple, ExperienceIcon.heart),
    ];

    blocTest(
      'should map categories to colors and icons',
      build: () {
        when(repository.getExperiences()).thenAnswer((_) async => Right(experiencesWithCategory));
        return bloc;
      },
      act: (bloc) async => bloc.add(const ExperiencesEvent.loadExperiences()),
      expect: () => [
        ExperiencesState.loaded(experienceStatesWithColorAndIcon),
      ],
    );

    final formatForCategory = [
      Pair(ExperienceCategory.unknown, 'Range'),
      Pair(ExperienceCategory.work, 'Range'),
      Pair(ExperienceCategory.studies, 'Range'),
      Pair(ExperienceCategory.love, 'Date'),
      Pair(ExperienceCategory.home, 'Date'),
    ];

    for (final params in formatForCategory) {
      blocTest('should format date(s) with ${params.second} for ${params.first}',
          build: () {
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
            return bloc;
          },
          act: (bloc) async => bloc.add(const ExperiencesEvent.loadExperiences()),
          verify: (_) async {
            bloc.listen((state) {
              if (state is ExperiencesLoaded) {
                expect(state.experiences.any((exp) => exp.timeframe == params.second), equals(true));
              }
            });
          });
    }

    blocTest(
      'should format new lines in content',
      build: () {
        final content = 'Unformatted Content';
        final experiences = [
          Experience(
            title: 'Exp Title',
            location: 'Exp Location',
            content: content,
            startDate: startDate,
            endDate: endDate,
            category: ExperienceCategory.work,
          ),
        ];
        when(repository.getExperiences()).thenAnswer((_) async => Right(experiences));
        when(newLineFormatter.format(content)).thenAnswer((_) => 'Formatted Content');
        return bloc;
      },
      act: (bloc) async => bloc.add(const ExperiencesEvent.loadExperiences()),
      expect: () => [
        ExperiencesState.loaded([
          const ExperienceState(
            title: 'Exp Title',
            location: 'Exp Location',
            content: 'Formatted Content',
            timeframe: timeframe,
            icon: ExperienceIcon.code,
            color: ExperienceColor.green,
          )
        ]),
      ],
    );

    blocTest(
      'should emit [Loading, Error] when data retrieval is unsuccessful',
      build: () {
        when(repository.getExperiences()).thenAnswer((_) async => const Left(Failure.dataRetrievalFailure()));
        return bloc;
      },
      act: (bloc) async => bloc.add(const ExperiencesEvent.loadExperiences()),
      expect: () => [
        const ExperiencesState.error(),
      ],
    );
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
