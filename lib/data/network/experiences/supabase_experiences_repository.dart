import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:portfolio/data/network/response.dart';
import 'package:portfolio/data/network/supabase_api.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';
import 'package:portfolio/domain/experiences/experiences_repository.dart';

@LazySingleton(as: ExperiencesRepository)
class SupabaseExperiencesRepository implements ExperiencesRepository {
  SupabaseExperiencesRepository(this._api);

  final Api _api;

  @override
  Future<Response<List<Experience>>> getExperiences() async {
    return _api.getExperiences().then((res) {
      final experiences = res['experiences'] as List;
      final mapped = experiences.map(
        (experience) => Experience.fromJson(experience),
      );
      return Response.success(List<Experience>.from(mapped));
    }).catchError(
      (_) => const Response<List<Experience>>.failure('Failed to parse experience'),
    );
  }
}
