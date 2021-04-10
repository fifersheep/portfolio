import 'package:auto_route/annotations.dart';
import 'package:portfolio/presentation/blog/blog_page.dart';
import 'package:portfolio/presentation/core/page_not_found.dart';
import 'package:portfolio/presentation/experiences/experiences_page.dart';
import 'package:portfolio/presentation/intro/intro_page.dart';
import 'package:portfolio/presentation/projects/project_details_page.dart';
import 'package:portfolio/presentation/projects/projects_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(path: '/intro', page: IntroPage, initial: true),
    MaterialRoute(path: '/projects', page: ProjectsPage),
    MaterialRoute(path: '/projects/:id', page: ProjectDetailsPage),
    MaterialRoute(path: '/experiences', page: ExperiencesPage),
    MaterialRoute(path: '/blog', page: BlogPage),
    MaterialRoute(path: '*', page: PageNotFound),
  ],
)
class $Router {}
