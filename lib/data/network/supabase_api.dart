import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class Api {
  Future<bool> signInWithGoogle();
  Future<void> signOut();
  Stream<AuthState> get onAuthStateChange;
  String? get email;
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
  Future<bool> signInWithGoogle() => _instance.auth.signInWithOAuth(
        Provider.google,
        // redirectTo: '${Uri.parse(const String.fromEnvironment('SUPABASE_URL'))}/auth/v1/callback',
      );

  @override
  Future<void> signOut() => _instance.auth.signOut();

  @override
  Stream<AuthState> get onAuthStateChange => _instance.auth.onAuthStateChange;

  @override
  String? get email {
    log('Reading email...');
    log(_instance.auth.currentSession?.toString() ?? 'Nah');
    return _instance.auth.currentSession?.user.email;
  }

  Future<Map<String, dynamic>> _get(String path) =>
      _instance.functions.invoke(path).then((res) => res.data as Map<String, dynamic>);

  @override
  Future<Map<String, dynamic>> getExperiences() => _get('experiences');

  @override
  Future<Map<String, dynamic>> getProjects() => _get('projects');
}
