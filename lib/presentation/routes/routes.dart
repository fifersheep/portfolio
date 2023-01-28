import 'package:go_router/go_router.dart';
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
}

final routes = <RouteBase>[
  GoRoute(path: Routes.intro, builder: (context, state) => const IntroPage()),
  GoRoute(path: Routes.projects, builder: (context, state) => const ProjectsPage()),
  GoRoute(path: '/projects/:id', builder: (context, state) => ProjectDetailsPage(id: state.params['id'] ?? '')),
  GoRoute(path: Routes.experiences, builder: (context, state) => const ExperiencesPage()),
  GoRoute(path: Routes.blog, builder: (context, state) => const BlogPage()),
  GoRoute(path: '/*', builder: (context, state) => PageNotFound()),
];
