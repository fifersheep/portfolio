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
  String get introOpening =>
      "My name is Scott Laing - welcome to my digital space where I'll share with you a little about me.";
  String get introInterestsHeader => 'Interests';
  String get introInterestsContent =>
      "I'm a ritualistic coffee drinker and am originally from Fife, Scotland. "
      "Like many computer nerds, I enjoy playing computer games and have done since childhood. Typically I'll go for an FPS (currently Hell Let Loose), but also "
      "partial to a strategy game. In fact, it's one of the elements I love about HLL, I can jump in as a Squad Leader or even Commander if "
      "I want to dabble in tactics or strategy of it!\n\n"
      "For a number of years now I've had an interest in American football, supporting the NFL's Pittsburgh Steelers as "
      "well as a local amateur team (when I can and when they're at home) - the Edinburgh Wolves\n\n";
  String get introCareerHeader => 'Career';
  String get introCareerContent =>
      "My career as a professional software engineer (since 2014) has had a focus on front-end, mostly Android app/sdk development. "
      "I have a keen interest in keeping up-to-date with the latest Android software patterns, especially those around reactive designs and declarative UI. "
      "For personal projects, I've also dabbled a bit with Google-backed Flutter cross-platform UI framework, including building a this web portfolio!";

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
