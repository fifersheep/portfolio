import 'package:flutter/material.dart';
import 'package:portfolio/widgets/blog/blog_page.dart';
import 'package:portfolio/widgets/experience/experience_page.dart';
import 'package:portfolio/widgets/intro/intro_page.dart';
import 'package:portfolio/widgets/projects/projects_page.dart';

class NavigationRoute {
  static const String intro = '/intro';
  static const String projects = '/projects';
  static const String experience = '/experience';
  static const String blog = '/blog';
}

Map<String, WidgetBuilder> routes = {
  NavigationRoute.intro: (_) => const IntroPage(),
  NavigationRoute.projects: (_) => const ProjectsPage(),
  NavigationRoute.experience: (_) => const ExperiencePage(),
  NavigationRoute.blog: (_) => const BlogPage(),
};
