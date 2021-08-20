// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../blog/blog_page.dart' as _i7;
import '../core/page_not_found.dart' as _i8;
import '../experiences/experiences_page.dart' as _i6;
import '../intro/intro_page.dart' as _i3;
import '../projects/project_details_page.dart' as _i5;
import '../projects/projects_page.dart' as _i4;

class Router extends _i1.RootStackRouter {
  Router([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    IntroRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.IntroPage();
        }),
    ProjectsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.ProjectsPage();
        }),
    ProjectDetailsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<ProjectDetailsRouteArgs>(
              orElse: () => ProjectDetailsRouteArgs(id: pathParams.getString('id')));
          return _i5.ProjectDetailsPage(id: args.id);
        }),
    ExperiencesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.ExperiencesPage();
        }),
    BlogRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.BlogPage();
        }),
    RouteNotFound.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.PageNotFound();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect', path: '/', redirectTo: '/intro', fullMatch: true),
        _i1.RouteConfig(IntroRoute.name, path: '/intro'),
        _i1.RouteConfig(ProjectsRoute.name, path: '/projects'),
        _i1.RouteConfig(ProjectDetailsRoute.name, path: '/projects/:id'),
        _i1.RouteConfig(ExperiencesRoute.name, path: '/experiences'),
        _i1.RouteConfig(BlogRoute.name, path: '/blog'),
        _i1.RouteConfig(RouteNotFound.name, path: '*')
      ];
}

class IntroRoute extends _i1.PageRouteInfo {
  const IntroRoute() : super(name, path: '/intro');

  static const String name = 'IntroRoute';
}

class ProjectsRoute extends _i1.PageRouteInfo {
  const ProjectsRoute() : super(name, path: '/projects');

  static const String name = 'ProjectsRoute';
}

class ProjectDetailsRoute extends _i1.PageRouteInfo<ProjectDetailsRouteArgs> {
  ProjectDetailsRoute({required String id})
      : super(name, path: '/projects/:id', args: ProjectDetailsRouteArgs(id: id), rawPathParams: {'id': id});

  static const String name = 'ProjectDetailsRoute';
}

class ProjectDetailsRouteArgs {
  const ProjectDetailsRouteArgs({required this.id});

  final String id;
}

class ExperiencesRoute extends _i1.PageRouteInfo {
  const ExperiencesRoute() : super(name, path: '/experiences');

  static const String name = 'ExperiencesRoute';
}

class BlogRoute extends _i1.PageRouteInfo {
  const BlogRoute() : super(name, path: '/blog');

  static const String name = 'BlogRoute';
}

class RouteNotFound extends _i1.PageRouteInfo {
  const RouteNotFound() : super(name, path: '*');

  static const String name = 'RouteNotFound';
}
