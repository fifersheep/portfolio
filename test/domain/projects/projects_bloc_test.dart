import 'package:bloc/bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/domain/core/error/failures.dart';
import 'package:portfolio/domain/projects/entities/project.dart';
import 'package:portfolio/domain/projects/project_state.dart';
import 'package:portfolio/domain/projects/projects_bloc.dart';
import 'package:portfolio/domain/projects/projects_repository.dart';
import 'package:test/test.dart';

import 'projects_bloc_test.mocks.dart';

@GenerateMocks([ProjectsRepository])
void main() {
  late ProjectsBloc bloc;
  late ProjectsRepository repository;

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
      Project(title: 'Title', summary: 'Summary', detail: 'Detail', coverImageUrl: 'Cover Image Url', tags: [
        ProjectTag(
          label: 'Label',
          color: 'Color',
          labelColor: 'Label Color',
          style: 'outline',
        )
      ], callToActions: [
        ProjectCallToAction(type: 'link', action: 'Action', style: 'primary', label: 'Label')
      ])
    ];

    final projectStates = [
      ProjectState(
        title: 'Title',
        summary: 'Summary',
        detail: 'Detail',
        coverImageUrl: 'Cover Image Url',
        tags: [
          ProjectTagState(
            label: 'Label',
            color: 'Color',
            labelColor: 'Label Color',
            style: ProjectTagStyle.outline,
          )
        ],
        callToActions: [
          ProjectCallToActionState(
              type: ProjectCallToActionType.link,
              style: ProjectCallToActionStyle.primary,
              action: 'Action',
              label: 'Label'),
        ],
      )
    ];

    blocTest(
      'should get data from get projects repository',
      build: () {
        when(repository.getProjects()).thenAnswer((_) async => Right(projects));
        return bloc;
      },
      act: (Bloc bloc) async => bloc.add(const ProjectsEvent.loadProjects()),
      verify: (_) async => verify(repository.getProjects()),
    );

    blocTest(
      'should emit [Loaded] when data is retrieved successfully',
      build: () {
        when(repository.getProjects()).thenAnswer((_) async => Right(projects));
        return bloc;
      },
      act: (Bloc bloc) async => bloc.add(const ProjectsEvent.loadProjects()),
      expect: () => [
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
      act: (Bloc bloc) async => bloc.add(const ProjectsEvent.loadProjects()),
      expect: () => [
        ProjectsState.loaded(projectStatesWithStyles),
      ],
    );

    blocTest(
      'tag style should default to outline',
      build: () {
        when(repository.getProjects()).thenAnswer((_) async => Right([_projectWithTagStyle('unknown')]));
        return bloc;
      },
      act: (Bloc bloc) async => bloc.add(const ProjectsEvent.loadProjects()),
      expect: () => [
        ProjectsState.loaded([_projectStateWithTagStyle(ProjectTagStyle.outline)]),
      ],
    );

    final projectWithCallToActions = [
      _projectWithCallToAction('link', 'primary'),
      _projectWithCallToAction('link', 'secondary'),
      _projectWithCallToAction('link', 'tertiary'),
      _projectWithCallToAction('route', 'primary'),
      _projectWithCallToAction('route', 'secondary'),
      _projectWithCallToAction('route', 'tertiary'),
    ];

    final projectStateWithCallToActions = [
      _projectStateWithCallToAction(ProjectCallToActionType.link, ProjectCallToActionStyle.primary),
      _projectStateWithCallToAction(ProjectCallToActionType.link, ProjectCallToActionStyle.secondary),
      _projectStateWithCallToAction(ProjectCallToActionType.link, ProjectCallToActionStyle.tertiary),
      _projectStateWithCallToAction(ProjectCallToActionType.route, ProjectCallToActionStyle.primary),
      _projectStateWithCallToAction(ProjectCallToActionType.route, ProjectCallToActionStyle.secondary),
      _projectStateWithCallToAction(ProjectCallToActionType.route, ProjectCallToActionStyle.tertiary),
    ];

    blocTest(
      'should map call to action types and styles',
      build: () {
        when(repository.getProjects()).thenAnswer((_) async => Right(projectWithCallToActions));
        return bloc;
      },
      act: (Bloc bloc) async => bloc.add(const ProjectsEvent.loadProjects()),
      expect: () => [
        ProjectsState.loaded(projectStateWithCallToActions),
      ],
    );

    blocTest(
      'call to action type and style should default to route and secondary',
      build: () {
        when(repository.getProjects()).thenAnswer((_) async => Right([_projectWithCallToAction('unknown', 'unknown')]));
        return bloc;
      },
      act: (Bloc bloc) async => bloc.add(const ProjectsEvent.loadProjects()),
      expect: () => [
        ProjectsState.loaded(
            [_projectStateWithCallToAction(ProjectCallToActionType.route, ProjectCallToActionStyle.secondary)]),
      ],
    );

    blocTest(
      'should emit [Error] when data retrieval is unsuccessful',
      build: () {
        when(repository.getProjects()).thenAnswer((_) async => const Left(Failure.dataRetrievalFailure()));
        return bloc;
      },
      act: (Bloc bloc) async => bloc.add(const ProjectsEvent.loadProjects()),
      expect: () => [
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
      callToActions: [],
    );

ProjectState _projectStateWithTagStyle(ProjectTagStyle style) => ProjectState(
      title: 'Title',
      summary: 'Summary',
      detail: 'Detail',
      coverImageUrl: 'Cover Image Url',
      tags: [
        ProjectTagState(
          label: 'Label',
          color: 'Color',
          labelColor: 'Label Color',
          style: style,
        )
      ],
      callToActions: [],
    );

Project _projectWithCallToAction(String type, String style) => Project(
    title: 'Title',
    summary: 'Summary',
    detail: 'Detail',
    coverImageUrl: 'Cover Image Url',
    tags: [],
    callToActions: [ProjectCallToAction(type: type, style: style, action: 'Action', label: 'Label')]);

ProjectState _projectStateWithCallToAction(ProjectCallToActionType type, ProjectCallToActionStyle style) =>
    ProjectState(
        title: 'Title',
        summary: 'Summary',
        detail: 'Detail',
        coverImageUrl: 'Cover Image Url',
        tags: [],
        callToActions: [ProjectCallToActionState(type: type, style: style, action: 'Action', label: 'Label')]);
