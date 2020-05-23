import 'package:dartz/dartz.dart';
import 'package:portfolio/domain/core/error/failures.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';

abstract class ExperiencesRepository {
  Future<Either<Failure, List<Experience>>> getExperiences();
}
