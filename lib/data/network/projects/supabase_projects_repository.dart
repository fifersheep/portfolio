import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:portfolio/data/network/response.dart';
import 'package:portfolio/data/network/supabase_api.dart';
import 'package:portfolio/domain/projects/entities/project.dart';
import 'package:portfolio/domain/projects/projects_repository.dart';

@LazySingleton(as: ProjectsRepository)
class SupabaseProjectsRepository implements ProjectsRepository {
  SupabaseProjectsRepository(this._api);

  final Api _api;

  @override
  Future<Response<List<Project>>> getProjects() async {
    return _api.getProjects().then((res) {
      final projects = res['projects'] as List;
      final mapped = projects.map(
        (project) => Project.fromJson(project),
      );
      return Response.success(List<Project>.from(mapped));
    }).catchError(
      (_) => const Response<List<Project>>.failure('Failed to parse project'),
    );
  }
}
