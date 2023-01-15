import 'package:supabase_flutter/supabase_flutter.dart';

extension SupabaseClientExtensions on SupabaseClient {
  static final instance = SupabaseClient(
    const String.fromEnvironment('SUPABASE_URL'),
    const String.fromEnvironment('SUPABASE_ANON_KEY'),
  );
}
