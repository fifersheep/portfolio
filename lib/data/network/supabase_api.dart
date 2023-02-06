import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class Api {
  Future<Map<String, dynamic>> getExperiences();
}

@LazySingleton(as: Api)
class SupabaseApi extends Api {
  final _instance = SupabaseClient(
    const String.fromEnvironment('SUPABASE_URL'),
    const String.fromEnvironment('SUPABASE_ANON_KEY'),
  );

  @override
  Future<Map<String, dynamic>> getExperiences() =>
      _instance.functions.invoke('experiences').then((res) => res.data as Map<String, dynamic>);
}
