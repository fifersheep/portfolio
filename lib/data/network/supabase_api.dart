import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class Api {
  Future<void> signInWithEmail(String email, String password);
  Future<void> signOut();
  Stream<AuthState> get onAuthStateChange;
  Future<Map<String, dynamic>> getExperiences();
  Future<Map<String, dynamic>> getProjects();
}

@LazySingleton(as: Api)
class SupabaseApi extends Api {
  final _instance = SupabaseClient(
    const String.fromEnvironment('SUPABASE_URL'),
    const String.fromEnvironment('SUPABASE_ANON_KEY'),
  );

  @override
  Future<void> signInWithEmail(String email, String password) => _instance.auth.signInWithPassword(
        email: email,
        password: password,
      );

  @override
  Future<void> signOut() => _instance.auth.signOut();

  @override
  Stream<AuthState> get onAuthStateChange => _instance.auth.onAuthStateChange;

  Future<Map<String, dynamic>> _get(String path) =>
      _instance.functions.invoke(path).then((res) => res.data as Map<String, dynamic>);

  @override
  Future<Map<String, dynamic>> getExperiences() => _get('experiences');

  @override
  Future<Map<String, dynamic>> getProjects() => _get('projects');
}
