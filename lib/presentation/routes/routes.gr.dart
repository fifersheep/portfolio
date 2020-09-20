// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../blog/blog_page.dart';
import '../core/page_not_found.dart';
import '../experiences/experiences_page.dart';
import '../intro/intro_page.dart';
import '../projects/project_details_page.dart';
import '../projects/projects_page.dart';

class Routes {
  static const String introPage = '/intro';
  static const String projectsPage = '/projects';
  static const String _projectDetailsPage = '/projects/:id';
  static String projectDetailsPage({@required dynamic id}) => '/projects/$id';
  static const String experiencesPage = '/experiences';
  static const String blogPage = '/blog';
  static const String pageNotFound = '*';
  static const all = <String>{
    introPage,
    projectsPage,
    _projectDetailsPage,
    experiencesPage,
    blogPage,
    pageNotFound,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.introPage, page: IntroPage),
    RouteDef(Routes.projectsPage, page: ProjectsPage),
    RouteDef(Routes._projectDetailsPage, page: ProjectDetailsPage),
    RouteDef(Routes.experiencesPage, page: ExperiencesPage),
    RouteDef(Routes.blogPage, page: BlogPage),
    RouteDef(Routes.pageNotFound, page: PageNotFound),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    IntroPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => IntroPage(),
        settings: data,
      );
    },
    ProjectsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProjectsPage(),
        settings: data,
      );
    },
    ProjectDetailsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProjectDetailsPage(id: data.pathParams['id'].stringValue),
        settings: data,
      );
    },
    ExperiencesPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ExperiencesPage(),
        settings: data,
      );
    },
    BlogPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BlogPage(),
        settings: data,
      );
    },
    PageNotFound: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PageNotFound(),
        settings: data,
      );
    },
  };
}
