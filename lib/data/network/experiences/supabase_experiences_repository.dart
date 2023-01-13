import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:portfolio/data/network/response.dart';
import 'package:portfolio/data/network/supabase_client_extensions.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';
import 'package:portfolio/domain/experiences/experiences_repository.dart';

@LazySingleton(as: ExperiencesRepository)
class SupabaseExperiencesRepository implements ExperiencesRepository {
  @override
  Future<Response<List<Experience>>> getExperiences() async {
    return SupabaseClientExtensions.instance.from('experiences').select().order('start_date', ascending: false).then(
      (res) {
        final experiences = res as List;
        final mapped = experiences.map(
          (experience) => Experience.fromJson(experience),
        );
        return Response.success(List<Experience>.from(mapped));
      },
    );
  }
}
