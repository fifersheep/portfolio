import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/domain/core/error/failures.dart';
import 'package:portfolio/domain/projects/entities/project.dart';
import 'package:portfolio/domain/projects/project_state.dart';
import 'package:portfolio/domain/projects/projects_bloc.dart';
import 'package:portfolio/domain/projects/projects_repository.dart';

class MockProjectsRepository extends Mock implements ProjectsRepository {}

void main() {
  ProjectsBloc bloc;
  ProjectsRepository repository;

  setUp(() {
    repository = MockProjectsRepository();
    bloc = ProjectsBloc(repository);
  });

  blocTest(
    'initial state should be loading',
    build: () => bloc,
    verify: (_) async => bloc.state == const ProjectsState.loading(),
  );

  group('LoadProjects', () {
    final projects = [
      const Project(
        title: 'Title',
        summary: 'Summary',
        detail: 'Detail',
        coverImageUrl: 'Cover Image Url',
        tags: [
          ProjectTag(
            label: 'Label',
            color: 'Color',
            labelColor: 'Label Color',
            style: 'outline',
          )
        ],
      )
    ];

    final projectStates = [
      const ProjectState(
        title: 'Title',
        summary: 'Summary',
        detail: 'Detail',
        coverImageUrl: 'Cover Image Url',
        tags: [
          ProjectTagsState(
            label: 'Label',
            color: 'Color',
            labelColor: 'Label Color',
            style: ProjectTagStyle.outline,
          )
        ],
      )
    ];

    blocTest(
      'should get data from get projects repository',
      build: () {
        when(repository.getProjects()).thenAnswer((_) async => Right(projects));
        return bloc;
      },
      act: (bloc) async => bloc.add(const ProjectsEvent.loadProjects()),
      verify: (_) async => verify(repository.getProjects()),
    );

    blocTest(
      'should emit [Loaded] when data is retrieved successfully',
      build: () {
        when(repository.getProjects()).thenAnswer((_) async => Right(projects));
        return bloc;
      },
      act: (bloc) async => bloc.add(const ProjectsEvent.loadProjects()),
      expect: [
        ProjectsState.loaded(projectStates),
      ],
    );

    final projectsWithStyles = [
      _projectWithTagStyle('fill'),
      _projectWithTagStyle('outline'),
      _projectWithTagStyle('naked'),
    ];

    final projectStatesWithStyles = [
      _projectStateWithTagStyle(ProjectTagStyle.fill),
      _projectStateWithTagStyle(ProjectTagStyle.outline),
      _projectStateWithTagStyle(ProjectTagStyle.naked),
    ];

    blocTest(
      'should map tag styles',
      build: () {
        when(repository.getProjects()).thenAnswer((_) async => Right(projectsWithStyles));
        return bloc;
      },
      act: (bloc) async => bloc.add(const ProjectsEvent.loadProjects()),
      expect: [
        ProjectsState.loaded(projectStatesWithStyles),
      ],
    );

    blocTest(
      'tag style should default to outline',
      build: () {
        when(repository.getProjects()).thenAnswer((_) async => Right([_projectWithTagStyle('unknown')]));
        return bloc;
      },
      act: (bloc) async => bloc.add(const ProjectsEvent.loadProjects()),
      expect: [
        ProjectsState.loaded([_projectStateWithTagStyle(ProjectTagStyle.outline)]),
      ],
    );

    blocTest(
      'should emit [Error] when data retrieval is unsuccessful',
      build: () {
        when(repository.getProjects()).thenAnswer((_) async => const Left(Failure.dataRetrievalFailure()));
        return bloc;
      },
      act: (bloc) async => bloc.add(const ProjectsEvent.loadProjects()),
      expect: [
        const ProjectsState.error(),
      ],
    );
  });
}

Project _projectWithTagStyle(String style) => Project(
      title: 'Title',
      summary: 'Summary',
      detail: 'Detail',
      coverImageUrl: 'Cover Image Url',
      tags: [
        ProjectTag(
          label: 'Label',
          color: 'Color',
          labelColor: 'Label Color',
          style: style,
        )
      ],
    );

ProjectState _projectStateWithTagStyle(ProjectTagStyle style) => ProjectState(
      title: 'Title',
      summary: 'Summary',
      detail: 'Detail',
      coverImageUrl: 'Cover Image Url',
      tags: [
        ProjectTagsState(
          label: 'Label',
          color: 'Color',
          labelColor: 'Label Color',
          style: style,
        )
      ],
    );
