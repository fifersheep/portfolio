// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart' hide Router;
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
// import 'package:mocktail/mocktail.dart' hide Mock, any, verify, when;
// import 'package:portfolio/domain/experiences/experiences_bloc.dart';
// import 'package:portfolio/domain/projects/projects_bloc.dart';
// import 'package:portfolio/injection.dart';
// import 'package:portfolio/presentation/blog/blog_page.dart';
// import 'package:portfolio/presentation/constants/strings.dart';
// import 'package:portfolio/presentation/core/navigation/navigation_route_observer.dart';
// import 'package:portfolio/presentation/experiences/experiences_page.dart';
// import 'package:portfolio/presentation/intro/intro_page.dart';
// import 'package:portfolio/presentation/projects/projects_page.dart';
// import 'package:portfolio/presentation/routes/routes.gr.dart';
//
// import 'navigation_drawer_test.mocks.dart';
//
// @GenerateMocks(
//   [ExperiencesBloc, ProjectsBloc],
// )
// TODO: would have been nice to get this working with null-safety
void main() {
//   late FakeNavigatorObserver navigatorObserver;
//
//   setUpAll(() {
//     getIt.registerLazySingleton<ExperiencesBloc>(() => MockExperiencesBloc());
//     registerFallbackValue<ExperiencesEvent>(ExperiencesEvent.loadExperiences());
//     registerFallbackValue<ExperiencesState>(ExperiencesState.loading());
//
//     getIt.registerLazySingleton<ProjectsBloc>(() => MockProjectsBloc());
//     registerFallbackValue<ProjectsEvent>(ProjectsEvent.loadProjects());
//     registerFallbackValue<ProjectsState>(ProjectsState.loading());
//
//     navigatorObserver = FakeNavigatorObserver();
//     getIt.registerLazySingleton<NavigationRouteObserver>(() => navigatorObserver);
//   });
//
//   group('NavigationDrawer routing', () {
//
//     final routingTestParams = {
//       "Intro": IntroPage,
//       "Projects": ProjectsPage,
//       "Life Experience": ExperiencesPage,
//       "Blog": BlogPage
//     };
//
//     final router = Router();
//
//     routingTestParams.forEach((String key, Type widgetType) {
//       testWidgets('$key navigation item navigates to the projects page', (tester) async {
//         var isPushed = false;
//         final route = PageRouteInfo("name", path: "path");
//         await tester.pumpWidget(
//           Strings(
//             child: MaterialApp.router(
//               routeInformationParser: router.defaultRouteParser(),
//               routerDelegate: router.delegate(
//                 initialRoutes: [route],
//                 navigatorObservers: () => [navigatorObserver],
//               ),
//               // home: Scaffold(
//               //   appBar: AppBar(),
//               //   drawer: const NavigationDrawer(pinOpen: false),
//               // ),
//             ),
//           ),
//         );
//
//         navigatorObserver.attachPushRouteObserver(key, () {
//           isPushed = true;
//         });
//
//         final locateDrawer = find.byTooltip('Open navigation menu');
//         await tester.tap(locateDrawer);
//         await tester.pumpAndSettle();
//
//         final navItem = find.byKey(Key(key));
//         expect(navItem, findsOneWidget);
//
//         await tester.tap(navItem);
//         await tester.pumpAndSettle();
//
//         expect(isPushed, true);
//         expect(find.byType(widgetType), findsOneWidget);
//       });
//     });
//   }, skip: true);
}
//
// class FakeNavigator extends Fake implements Navigator {
//   final List<NavigatorObserver> observers;
//
//   FakeNavigator(this.observers);
//
//   String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
//     return "FakeNavigatorState";
//   }
// }
//
// class FakeNavigatorState extends Fake implements NavigatorState {
//   FakeNavigatorState(this.observers);
//
//   final List<NavigatorObserver> observers;
//
//   Navigator get widget => FakeNavigator(observers);
//
//   String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
//     return "FakeNavigatorState";
//   }
// }
//
// class FakeNavigatorObserver extends Fake implements NavigationRouteObserver {
//   NavigatorState? get navigator => FakeNavigatorState([this]);
//
//   late void Function(Route<dynamic> route, Route<dynamic>? previousRoute) onPushed;
//
//   @override
//   void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     if (onPushed != null) {
//       onPushed(route, previousRoute);
//     }
//   }
//
//   attachPushRouteObserver(String expectedRouteName, Function pushCallback) {
//     onPushed = (route, previousRoute) {
//       final isExpectedRoutePushed = route.settings.name == expectedRouteName;
//       if (isExpectedRoutePushed) {
//         pushCallback();
//       }
//     };
//   }
// }
