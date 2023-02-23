import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/presentation/auth/login_page.dart';
import 'package:portfolio/presentation/blog/blog_page.dart';
import 'package:portfolio/presentation/core/page_not_found.dart';
import 'package:portfolio/presentation/experiences/experiences_page.dart';
import 'package:portfolio/presentation/intro/intro_page.dart';
import 'package:portfolio/presentation/projects/project_details_page.dart';
import 'package:portfolio/presentation/projects/projects_page.dart';

class Routes {
  Routes._();

  static const String intro = '/intro';
  static const String projects = '/projects';
  static const String experiences = '/experiences';
  static const String blog = '/blog';
  static const String login = '/login';
}

Page _page(Widget child) => NoTransitionPage<void>(child: child);

final routes = [
  GoRoute(
    path: Routes.intro,
    pageBuilder: (context, state) => _page(const IntroPage()),
  ),
  GoRoute(
    path: Routes.projects,
    pageBuilder: (context, state) => _page(const ProjectsPage()),
  ),
  GoRoute(
    path: '/projects/:id',
    pageBuilder: (context, state) => _page(ProjectDetailsPage(id: state.params['id'] ?? '')),
  ),
  GoRoute(
    path: Routes.experiences,
    pageBuilder: (context, state) => _page(const ExperiencesPage()),
  ),
  GoRoute(
    path: Routes.blog,
    pageBuilder: (context, state) => _page(const BlogPage()),
  ),
  GoRoute(
    path: Routes.login,
    pageBuilder: (context, state) => _page(const LoginPage()),
  ),
  GoRoute(
    path: '/*',
    pageBuilder: (context, state) => _page(PageNotFound()),
  ),
];
