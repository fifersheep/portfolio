import 'package:auto_route/annotations.dart';
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

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(path: Routes.intro, page: IntroPage, initial: true),
    MaterialRoute(path: Routes.projects, page: ProjectsPage),
    MaterialRoute(path: '/projects/:id', page: ProjectDetailsPage),
    MaterialRoute(path: Routes.experiences, page: ExperiencesPage),
    MaterialRoute(path: Routes.blog, page: BlogPage),
    MaterialRoute(path: '*', page: PageNotFound),
  ],
)
class $Router {}
