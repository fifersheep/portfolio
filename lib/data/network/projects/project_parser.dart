import 'package:portfolio/domain/projects/entities/project.dart';

abstract class ProjectParser<R> {
  Project parseProject(R projectDoc, List<R> tagsDoc);
}
