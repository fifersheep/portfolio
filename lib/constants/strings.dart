import 'package:flutter/material.dart';

class Strings extends InheritedWidget {
  static Strings of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<Strings>();

  const Strings({Key key, @required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(Strings old) => false;

  final String appTitle = 'Scott Laing - Portfolio';

  final String navHeaderTitle = 'Scott Laing';
  final String navHeaderSubtitle = 'Sowftware Engineer';

  final String navItemIntro = 'Intro';
  final String navItemProjects = 'Projects';
  final String navItemExperience = 'Experience';
  final String navItemBlog = 'Blog';

  final String introTitle = 'Introduction';
  final String introHeader = 'Hello';
  final String introContent = '''
My name is Scott Laing - welcome to my software development portfolio.

I’ve spent the past 5 years as a professional software engineer with a focus on developing my front-end skillset, starting with *Android* app development and then lately a little bit of *React* web development.
''';

  final String blogTitle = 'Blog Title';
  final String experienceTitle = 'Experience Title';
  final String projectsTitle = 'Projects Title';
}
