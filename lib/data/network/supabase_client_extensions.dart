import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

extension SupabaseClientExtensions on SupabaseClient {
  static final instance = SupabaseClient(
    dotenv.env['SUPABASE_URL'] ?? '',
    dotenv.env['SUPABASE_ANON_KEY'] ?? '',
  );
}
