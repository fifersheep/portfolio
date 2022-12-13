// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../blog/blog_page.dart' as _i5;
import '../core/page_not_found.dart' as _i6;
import '../experiences/experiences_page.dart' as _i4;
import '../intro/intro_page.dart' as _i1;
import '../projects/project_details_page.dart' as _i3;
import '../projects/projects_page.dart' as _i2;

class Router extends _i7.RootStackRouter {
  Router([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    IntroRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.IntroPage(),
      );
    },
    ProjectsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.ProjectsPage(),
      );
    },
    ProjectDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProjectDetailsRouteArgs>(
          orElse: () => ProjectDetailsRouteArgs(id: pathParams.getString('id')));
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.ProjectDetailsPage(id: args.id),
      );
    },
    ExperiencesRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ExperiencesPage(),
      );
    },
    BlogRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.BlogPage(),
      );
    },
    RouteNotFound.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.PageNotFound(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/intro',
          fullMatch: true,
        ),
        _i7.RouteConfig(
          IntroRoute.name,
          path: '/intro',
        ),
        _i7.RouteConfig(
          ProjectsRoute.name,
          path: '/projects',
        ),
        _i7.RouteConfig(
          ProjectDetailsRoute.name,
          path: '/projects/:id',
        ),
        _i7.RouteConfig(
          ExperiencesRoute.name,
          path: '/experiences',
        ),
        _i7.RouteConfig(
          BlogRoute.name,
          path: '/blog',
        ),
        _i7.RouteConfig(
          RouteNotFound.name,
          path: '*',
        ),
      ];
}

/// generated route for
/// [_i1.IntroPage]
class IntroRoute extends _i7.PageRouteInfo<void> {
  const IntroRoute()
      : super(
          IntroRoute.name,
          path: '/intro',
        );

  static const String name = 'IntroRoute';
}

/// generated route for
/// [_i2.ProjectsPage]
class ProjectsRoute extends _i7.PageRouteInfo<void> {
  const ProjectsRoute()
      : super(
          ProjectsRoute.name,
          path: '/projects',
        );

  static const String name = 'ProjectsRoute';
}

/// generated route for
/// [_i3.ProjectDetailsPage]
class ProjectDetailsRoute extends _i7.PageRouteInfo<ProjectDetailsRouteArgs> {
  ProjectDetailsRoute({required String id})
      : super(
          ProjectDetailsRoute.name,
          path: '/projects/:id',
          args: ProjectDetailsRouteArgs(id: id),
          rawPathParams: {'id': id},
        );

  static const String name = 'ProjectDetailsRoute';
}

class ProjectDetailsRouteArgs {
  const ProjectDetailsRouteArgs({required this.id});

  final String id;

  @override
  String toString() {
    return 'ProjectDetailsRouteArgs{id: $id}';
  }
}

/// generated route for
/// [_i4.ExperiencesPage]
class ExperiencesRoute extends _i7.PageRouteInfo<void> {
  const ExperiencesRoute()
      : super(
          ExperiencesRoute.name,
          path: '/experiences',
        );

  static const String name = 'ExperiencesRoute';
}

/// generated route for
/// [_i5.BlogPage]
class BlogRoute extends _i7.PageRouteInfo<void> {
  const BlogRoute()
      : super(
          BlogRoute.name,
          path: '/blog',
        );

  static const String name = 'BlogRoute';
}

/// generated route for
/// [_i6.PageNotFound]
class RouteNotFound extends _i7.PageRouteInfo<void> {
  const RouteNotFound()
      : super(
          RouteNotFound.name,
          path: '*',
        );

  static const String name = 'RouteNotFound';
}
