import 'package:flutter/material.dart';

class Strings extends InheritedWidget {
  static Strings of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<Strings>();

  const Strings({Key key, @required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(Strings old) => false;

  final String appTitle = 'Scott Laing - Portfolio';

  final String navHeaderTitle = 'Scott Laing';
  final String navHeaderSubtitle = 'Software Engineer';

  final String navItemIntro = 'Intro';
  final String navItemProjects = 'Projects';
  final String navItemExperience = 'Experience';
  final String navItemBlog = 'Blog';

  final String introTitle = 'Introduction';
  final String introHeader = 'Hello';
  final String introCareerHeader = 'Career';
  final String introCareerContent = 'I’ve spent the past 5 years of my career as a professional software engineer with a focus on developing my front-end skillset, starting with Android app development and then lately a little bit of React web development.\n\n'
      'Lately, for personal projects, I\'ve also been working with the Flutter framework to create various apps and this portfolio!';
  final String introContent = 'My name is Scott Laing - welcome to my digital space where I\'ll share with you a little about me.';
  final String introInterestsHeader = 'Interests';
  final String introInterestsContent = 'For around 10 years now I\'ve followed American football supporting the NFL\'s Pittsburgh Steelers, and then lately have been getting into the XFL, although uncommited to a team as yet. I also like to watch a local amateur team where possible when they\'re at home - the Edinburgh Wolves.\n\n'
      'Like many computer nerds, I enjoy playing computer games and have done since childhood. Typically I\'ll go for a FPS (currently Battlefield V), but also partial to strategy games as well as the occassional sandbox/creation game such as Minecraft or Stardew Valley.';

  final String blogTitle = 'Blog Title';
  final String experienceTitle = 'Experience Title';
  final String projectsTitle = 'Projects Title';
}
