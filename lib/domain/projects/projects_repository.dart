import 'package:dartz/dartz.dart';
import 'package:portfolio/domain/core/error/failures.dart';
import 'package:portfolio/domain/projects/entities/project.dart';

abstract class ProjectsRepository {
  Future<Either<Failure, List<Project>>> getProjects();
}
