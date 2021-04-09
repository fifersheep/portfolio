import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart' hide Mock, any, verify;
import 'package:portfolio/domain/experiences/experiences_bloc.dart';
import 'package:portfolio/domain/projects/projects_bloc.dart';
import 'package:portfolio/injection.dart';
import 'package:portfolio/presentation/blog/blog_page.dart';
import 'package:portfolio/presentation/constants/images.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/core/navigation/navigation_drawer.dart';
import 'package:portfolio/presentation/experiences/experiences_page.dart';
import 'package:portfolio/presentation/intro/intro_page.dart';
import 'package:portfolio/presentation/projects/projects_page.dart';
import 'package:portfolio/presentation/routes/routes.gr.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

// todo: really to work out how to not depend on bloc mocks here
class MockExperiencesBloc extends MockBloc<ExperiencesEvent, ExperiencesState> implements ExperiencesBloc {}

class MockProjectsBloc extends MockBloc<ProjectsEvent, ProjectsState> implements ProjectsBloc {}

void main() {
  setUpAll(() {
    getIt.registerLazySingleton<ExperiencesBloc>(() => MockExperiencesBloc());
    registerFallbackValue<ExperiencesEvent>(ExperiencesEvent.loadExperiences());
    registerFallbackValue<ExperiencesState>(ExperiencesState.loading());

    getIt.registerLazySingleton<ProjectsBloc>(() => MockProjectsBloc());
    registerFallbackValue<ProjectsEvent>(ProjectsEvent.loadProjects());
    registerFallbackValue<ProjectsState>(ProjectsState.loading());
  });

  group('NavigationDrawer routing', () {
    NavigatorObserver navigatorObserver;

    setUp(() {
      navigatorObserver = MockNavigatorObserver();
    });

    final routingTestParams = {
      "Intro": IntroPage,
      "Projects": ProjectsPage,
      "Life Experience": ExperiencesPage,
      "Blog": BlogPage
    };
    routingTestParams.forEach((String key, Type widgetType) {
      testWidgets('$key navigation item navigates to the projects page', (tester) async {
        await tester.pumpWidget(
          Images(
            child: Strings(
              child: MaterialApp(
                navigatorObservers: [navigatorObserver],
                onGenerateRoute: Router(),
                home: Scaffold(
                  appBar: AppBar(),
                  drawer: const NavigationDrawer(pinOpen: false),
                ),
              ),
            ),
          ),
        );

        final locateDrawer = find.byTooltip('Open navigation menu');
        await tester.tap(locateDrawer);
        await tester.pumpAndSettle();

        final navItem = find.byKey(Key(key));
        expect(navItem, findsOneWidget);

        await tester.tap(navItem);
        await tester.pumpAndSettle();

        verify(navigatorObserver.didPush(any, any));
        expect(find.byType(widgetType), findsOneWidget);
      });
    });
  });
}
