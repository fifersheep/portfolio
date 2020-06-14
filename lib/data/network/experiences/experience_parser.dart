import 'package:portfolio/domain/experiences/entities/experience.dart';

abstract class ExperienceParser<R> {
  Experience parse(R source);
}
