import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class Api {
  Future getExperiences();
}

@LazySingleton(as: Api)
class SupabaseApi extends Api {
  final _instance = SupabaseClient(
    const String.fromEnvironment('SUPABASE_URL'),
    const String.fromEnvironment('SUPABASE_ANON_KEY'),
  );

  @override
  PostgrestTransformBuilder getExperiences() => _instance
      .from(
        'experiences',
      )
      .select()
      .order(
        'start_date',
        ascending: false,
      );
}