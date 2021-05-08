import 'package:flutter/material.dart';

class Strings extends InheritedWidget {
  static Strings of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<Strings>();
    assert(result != null, 'No Strings found in context');
    return result!;
  }

  const Strings({Key? key, required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(Strings old) => false;

  String get appTitle => 'Scott Laing - Portfolio';

  String get navHeaderTitle => 'Scott\nLaing';
  String get navMessage =>
      'To accept the things I cannot change; Courage to change the things I can; And wisdom to know the difference.';

  String get navItemIntro => 'Intro';
  String get navItemProjects => 'Projects';
  String get navItemExperience => 'Life Experience';
  String get navItemBlog => 'Blog';

  String get introTitle => 'Introduction';
  String get introHeader => 'Hello';
  String get introCareerHeader => 'Career';
  String get introCareerContent =>
      'I’ve spent the past 5 years of my career as a professional software engineer with a focus on developing my front-end skillset, '
      'starting with Android app development and then lately a little bit of React web development.\n\n'
      "Lately, for personal projects, I've also been working with the Flutter framework to create various apps and this portfolio!";
  String get introContent =>
      "My name is Scott Laing - welcome to my digital space where I'll share with you a little about me.";
  String get introInterestsHeader => 'Interests';
  String get introInterestsContent =>
      "For around 10 years now I've followed American football supporting the NFL's Pittsburgh Steelers, and then lately have been getting into the XFL, "
      "although uncommited to a team as yet. I also like to watch a local amateur team where possible when they're at home - the Edinburgh Wolves.\n\n"
      "Like many computer nerds, I enjoy playing computer games and have done since childhood. Typically I'll go for a FPS (currently Battlefield V), "
      'but also partial to strategy games as well as the occassional sandbox/creation game such as Minecraft or Stardew Valley.';

  String get blogTitle => 'Blog Title';

  String get experienceTitle => 'Life Experience';
  String get experienceTimelineHeader => 'Life Experience Timeline';
  String get experienceTimelineDescription =>
      'A place not to list just career accomplishments but life accomplishments and events that I’m proud of.';

  String get projectsTitle => 'Projects';
  String get projectsHeader => 'Software';
  String get projectsDescription =>
      "Over the years I've worked on a number of software projects. Below I have a list of projects that I'd like to share with you";

  String get projectDetailsTitle => 'Project Details';
  String get projectDetailsComingSoon => 'Project Details Coming Soon';

  String get loading => 'Loading Content';
  String get genericError => "Something's Gone Wrong :(";
  String get pageNotFound => '404: Page Not Found';
}
