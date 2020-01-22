import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/widgets/navigation/navigation_drawer.dart';
import 'package:portfolio/widgets/navigation/navigation_routes.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  group('NavigationDrawer routing', () {
    NavigatorObserver navigatorObserver;

    setUp(() {
      navigatorObserver = MockNavigatorObserver();
    });

    testWidgets('projects navigation item navigates to the projects page',
        (tester) async {
      await tester.pumpWidget(MaterialApp(
        navigatorObservers: [navigatorObserver],
        routes: routes,
        home: Scaffold(
          appBar: AppBar(),
          drawer: NavigationDrawer(),
        ),
      ));

      var locateDrawer = find.byTooltip('Open navigation menu');
      await tester.tap(locateDrawer);
      await tester.pumpAndSettle();

      var navItem = find.byKey(Key('Projects'));

      expect(navItem, findsOneWidget);

      await tester.tap(navItem);
      await tester.pumpAndSettle();

      verify(navigatorObserver.didPush(any, any));
      expect(find.text("Projects Title"), findsOneWidget);
    });
  });
}
