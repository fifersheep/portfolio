import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/data/network/supabase_api.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_repository.freezed.dart';

part 'auth_state.dart';

@lazySingleton
class AuthRepository extends Cubit<AuthState> {
  AuthRepository(this._api) : super(const AuthState.signedOut()) {
    _api.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;
      emit(
        event == AuthChangeEvent.signedIn
            ? AuthState.signedIn(data.session?.user.email ?? 'No email')
            : const AuthState.signedOut(),
      );
    });
  }

  final Api _api;

  Future<void> signIn(String email, String password) async => _api.signInWithEmail(email, password);

  Future<void> signOut() async => _api.signOut();
}
