import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/domain/core/error/failures.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';
import 'package:portfolio/domain/experiences/experiences_repository.dart';

@LazySingleton(as: ExperiencesRepository)
class StubbedExperiencesRepository implements ExperiencesRepository {
  @override
  Future<Either<Failure, List<Experience>>> getExperiences() async => Right(
        [
          Experience(
            title: "Studies begin: Edinburgh Napier University",
            location: "Colinton, Edinburgh",
            content:
                "Few years of full time study built some of the foundations for my software engineering career. Started on a multimedia technology degree but switched to Software Engineering. Two years of study leaving with the equivalent of a DipHE.",
            startDate: DateTime(2007, 9),
            endDate: DateTime(2010, 5),
            category: ExperienceCategory.studies,
          ),
          Experience(
            title: "First real job: MGt",
            location: "Kirkcaldy, Fife",
            content:
                "The paper route definitely doesn't count as a job (sorry dad). Working in a customer contact centre for major clients such as Sky, Freeview, and TopUp TV, where communication is key, helped me develop the great communication skills that I have today - and not just in the workplace.",
            startDate: DateTime(2006, 6),
            endDate: DateTime(2008, 5),
            category: ExperienceCategory.work,
          ),
          Experience(
            title: "Career develops: FanDuel Software Engineer",
            location: "Edinburgh",
            content:
                "I've spent nearly 5 years working with FanDuel now on the development teams for our Android Daily Fantasy app, web app (a little), and the current Sportsbook Android app. FanDuel is a great place to work with a rich culture and supportive colleagues, so I expect to be here for the forseeable future.",
            startDate: DateTime(2015, 8),
            endDate: null,
            category: ExperienceCategory.work,
          ),
          Experience(
            title: "Career begins: Kotikan Software Engineer (Android)",
            location: "Edinburgh",
            content:
                "Starting with a 12 week mobile app development summer internship where I truly learned some of the fundamentals of software development, this is where my career as a software engineer began.\n\nIn the little over a year I spent at Kotikan, spent on the Android development teams for their two major clients: Skyscanner and FanDuel, I learned so much from my colleagues about both the technical and non-technical aspects of software engineering, before Kotikan’s acquisition by FanDuel. Without the Kotikan team’s kind nature and devotion to helping everyone develop I would not be where I am today. Thank you all!",
            startDate: DateTime(2014, 6),
            endDate: DateTime(2015, 8),
            category: ExperienceCategory.work,
          ),
          Experience(
            title: "Studies resume: BSc (Hon) Open: The Open University",
            location: "Edinburgh (distance learning)",
            content:
                "Continued formal study whilst continuing with internship and full-time work. Studied an Open degree, allowing for free selection of modules, choosing modules to further my software engineering career.\n\nThe modules selected were titled Software Development with Java, Software Engineering, Fundamentals of Interaction Design, Developing Concurrent Distributed Systems, and Data Management and Analysis.",
            startDate: DateTime(2014),
            endDate: DateTime(2018, 5),
            category: ExperienceCategory.studies,
          ),
          Experience(
            title: "Born and raised",
            location: "Leven, Fife",
            content: "The core of what makes me me.",
            startDate: DateTime(1989, 11),
            endDate: null,
            category: ExperienceCategory.home,
          ),
          Experience(
            title: "Edinburgh Zoo",
            location: "Corstorphine, Edinburgh",
            content:
                "Met a lot of great people here while working with Visitor Services team. Great team dynamics made for great shenanigans!",
            startDate: DateTime(2008, 5),
            endDate: DateTime(2014, 6),
            category: ExperienceCategory.work,
          ),
          Experience(
            title: "Away from home",
            location: "Edinburgh",
            content:
                "I moved to Edinburgh to pursue my career, although I really wasn’t sure what it was exactly… thankfully I’ve found my feet.",
            startDate: DateTime(2007, 9),
            endDate: null,
            category: ExperienceCategory.home,
          ),
        ],
      );
}
