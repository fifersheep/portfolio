import 'package:portfolio/data/network/response.dart';
import 'package:portfolio/domain/projects/entities/project.dart';

abstract class ProjectsRepository {
  Future<Response<List<Project>>> getProjects();
}
