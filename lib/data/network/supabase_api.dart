import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class Api {
  Future<Map<String, dynamic>> getExperiences();
  Future<Map<String, dynamic>> getProjects();
}

@LazySingleton(as: Api)
class SupabaseApi extends Api {
  final _instance = SupabaseClient(
    const String.fromEnvironment('SUPABASE_URL'),
    const String.fromEnvironment('SUPABASE_ANON_KEY'),
  );

  Future<Map<String, dynamic>> _get(String path) =>
      _instance.functions.invoke(path).then((res) => res.data as Map<String, dynamic>);

  @override
  Future<Map<String, dynamic>> getExperiences() => _get('experiences');

  @override
  Future<Map<String, dynamic>> getProjects() => _get('projects');
}
