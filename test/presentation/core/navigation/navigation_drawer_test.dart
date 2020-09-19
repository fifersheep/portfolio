import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
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
import 'package:portfolio/presentation/routes/routes.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

// todo: really to work out how to not depend on bloc mocks here
class MockExperiencesBloc extends MockBloc<ExperiencesState> implements ExperiencesBloc {}

class MockProjectsBloc extends MockBloc<ProjectsState> implements ProjectsBloc {}

void main() {
  setUpAll(() {
    getIt.registerLazySingleton<ExperiencesBloc>(() => MockExperiencesBloc());
    getIt.registerLazySingleton<ProjectsBloc>(() => MockProjectsBloc());
  });

  group('NavigationDrawer routing', () {
    NavigatorObserver navigatorObserver;

    setUp(() {
      NavigationRoute.configureRoutes();
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
                onGenerateRoute: NavigationRoute.router.generator,
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
