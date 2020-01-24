import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/routes.dart';
import 'package:portfolio/ui/blog/blog_page.dart';
import 'package:portfolio/ui/experience/experience_page.dart';
import 'package:portfolio/ui/intro/intro_page.dart';
import 'package:portfolio/ui/projects/projects_page.dart';
import 'package:portfolio/widgets/navigation/navigation_drawer.dart';
import 'package:mockito/mockito.dart';

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
          routes: NavigationRoute.routes,
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
