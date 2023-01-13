import 'package:portfolio/data/network/response.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';

abstract class ExperiencesRepository {
  Future<Response<List<Experience>>> getExperiences();
}
