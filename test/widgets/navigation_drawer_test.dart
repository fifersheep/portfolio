import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/widgets/blog/blog_page.dart';
import 'package:portfolio/widgets/experience/experience_page.dart';
import 'package:portfolio/widgets/intro/intro_page.dart';
import 'package:portfolio/widgets/navigation/navigation_drawer.dart';
import 'package:portfolio/widgets/navigation/navigation_routes.dart';
import 'package:portfolio/widgets/projects/projects_page.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  group('NavigationDrawer routing', () {
    NavigatorObserver navigatorObserver;

    setUp(() {
      navigatorObserver = MockNavigatorObserver();
    });

    var routingTestParams = {
      "Intro": IntroPage,
      "Projects": ProjectsPage,
      "Experience": ExperiencePage,
      "Blog": BlogPage
    };
    routingTestParams.forEach((String key, Type widgetType) {
      testWidgets('$key navigation item navigates to the projects page',
          (tester) async {
        await tester.pumpWidget(MaterialApp(
          navigatorObservers: [navigatorObserver],
          routes: routes,
          home: Scaffold(
            appBar: AppBar(),
            drawer: NavigationDrawer(pinOpen: false),
          ),
        ));

        var locateDrawer = find.byTooltip('Open navigation menu');
        await tester.tap(locateDrawer);
        await tester.pumpAndSettle();

        var navItem = find.byKey(Key(key));
        expect(navItem, findsOneWidget);

        await tester.tap(navItem);
        await tester.pumpAndSettle();

        verify(navigatorObserver.didPush(any, any));
        expect(find.byType(widgetType), findsOneWidget);
      });
    });
  });
}
