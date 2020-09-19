import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:portfolio/presentation/blog/blog_page.dart';
import 'package:portfolio/presentation/experiences/experiences_page.dart';
import 'package:portfolio/presentation/intro/intro_page.dart';
import 'package:portfolio/presentation/projects/project_details_page.dart';
import 'package:portfolio/presentation/projects/projects_page.dart';

class NavigationRoute {
  NavigationRoute._();

  static const String intro = '/intro';
  static const String projects = '/projects';
  static const String experiences = '/experiences';
  static const String blog = '/blog';

  static final router = Router.appRouter;

  static void to(BuildContext context, String path) => router.navigateTo(
        context,
        path,
        transition: TransitionType.custom,
        transitionBuilder: (_, __, ___, child) => child,
      );

  static void configureRoutes() {
    router.define(
      intro,
      handler: handle((context, params) => const IntroPage()),
    );
    router.define(
      projects,
      handler: handle((context, params) => const ProjectsPage()),
    );
    router.define(
      "/projects/:id",
      handler: handle((context, params) => ProjectDetailsPage(id: params["id"][0])),
    );
    router.define(
      experiences,
      handler: handle((context, params) => const ExperiencesPage()),
    );
    router.define(
      blog,
      handler: handle((context, params) => const BlogPage()),
    );
  }

  static Handler handle(HandlerFunc handler) => Handler(handlerFunc: handler);
}
