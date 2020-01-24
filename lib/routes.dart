import 'package:flutter/material.dart';
import 'ui/blog/blog_page.dart';
import 'ui/experience/experience_page.dart';
import 'ui/intro/intro_page.dart';
import 'ui/projects/projects_page.dart';

class NavigationRoute {
  NavigationRoute._();

  static const String intro = '/intro';
  static const String projects = '/projects';
  static const String experience = '/experience';
  static const String blog = '/blog';

  static final routes = <String, WidgetBuilder>{
    NavigationRoute.intro: (_) => const IntroPage(),
    NavigationRoute.projects: (_) => const ProjectsPage(),
    NavigationRoute.experience: (_) => const ExperiencePage(),
    NavigationRoute.blog: (_) => const BlogPage(),
  };
}
