import 'package:flutter/material.dart';
import 'package:portfolio/presentation/blog/blog_page.dart';
import 'package:portfolio/presentation/intro/intro_page.dart';
import 'package:portfolio/presentation/projects/projects_page.dart';
import 'package:portfolio/presentation/experiences/experiences_page.dart';

class NavigationRoute {
  NavigationRoute._();

  static const String intro = '/intro';
  static const String projects = '/projects';
  static const String experiences = '/experiences';
  static const String blog = '/blog';

  static final Map<String, WidgetBuilder> routes = {
    NavigationRoute.intro: (_) => const IntroPage(),
    NavigationRoute.projects: (_) => const ProjectsPage(),
    NavigationRoute.experiences: (_) => const ExperiencesPage(),
    NavigationRoute.blog: (_) => const BlogPage(),
  };
}
