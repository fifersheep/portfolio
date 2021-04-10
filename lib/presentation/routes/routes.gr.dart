// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../blog/blog_page.dart' as _i6;
import '../core/page_not_found.dart' as _i7;
import '../experiences/experiences_page.dart' as _i5;
import '../intro/intro_page.dart' as _i2;
import '../projects/project_details_page.dart' as _i4;
import '../projects/projects_page.dart' as _i3;

class Router extends _i1.RootStackRouter {
  Router();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    IntroRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.IntroPage());
    },
    ProjectsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.ProjectsPage());
    },
    ProjectDetailsRoute.name: (entry) {
      var pathParams = entry.routeData.pathParams;
      var args = entry.routeData
          .argsAs<ProjectDetailsRouteArgs>(orElse: () => ProjectDetailsRouteArgs(id: pathParams.getString('id')));
      return _i1.MaterialPageX(entry: entry, child: _i4.ProjectDetailsPage(id: args.id));
    },
    ExperiencesRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.ExperiencesPage());
    },
    BlogRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i6.BlogPage());
    },
    RouteNotFound.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i7.PageNotFound());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
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
      : super(name, path: '/projects/:id', args: ProjectDetailsRouteArgs(id: id), params: {'id': id});

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
